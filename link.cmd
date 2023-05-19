@if not defined DEBUG (echo off)

@setlocal DisableDelayedExpansion

@goto :main


:fmt_log #[io] (message = "")
    echo(%~1
    goto :EOF

:fmt_error #[io] (message = "")
    >&2 echo(%\E%[31m[%~n0 error]%\E%[0m: %~1
    goto :EOF

:is_directory (object) -> Result
    for /f "tokens=1,2 delims=d" %%a in ("-%~a1") do if not "%%~b"=="" (
        exit /b 0 &@rem Directory
    ) else if not "%%~a"=="-" (
        exit /b 1 &@rem File
    ) else (
        exit /b 2 &@rem Who knows...
    )

:link #[io] (sublime_path, package) -> Result
    setlocal & (if "%~1"=="" (exit /b 2)) & (if "%~2"=="" (exit /b 2))

    for /f "delims=" %%p in ("%~dp0.") do set "cwd=%%~fp" & set "package=%~2"

    if /i not "%~f2"=="%cwd%\%package%" (
        call :die 1 "'%package%' does not name a package, but is a path or a glob"
    )

    for /f "delims=" %%r in ("%~f1") do set "data_root=%%~fr"

    ::: Backup the entire directory first lest something breaks while symlinking
    robocopy "%data_root%\Packages" "%data_root%\Backup Packages" /z /xj /mir /sec /im >nul 2>&1

    set "junction=%data_root%\Packages\%package%"

    call :is_directory "%junction%" & if ERRORLEVEL 1 (
        mklink /J "%junction%" "%cwd%\%package%" >nul 2>&1 && (
            call :fmt_log "Installed '%\E%[1m%package%%\E%[0m' package override to '%junction%'."
        ) || (
            call :die 1 "could not create a directory junction (os error 2)"
        )
    ) else (
        rmdir /q "%junction%" 2>nul && (
            call :fmt_log "Removed '%\E%[1m%package%%\E%[0m' package override from '%junction%'."
        ) || (
            call :die 1 "could not unlink the specified directory (os error 2)"
        )
    )

    endlocal & exit /b 0

:list (sublime_path) -> Result
    setlocal & (if "%~1"=="" (exit /b 2)) & set "junctions="

    for /f "delims=" %%p in ("%~f1\Packages") do set "package_root=%%~fp"

    for /f "delims=" %%d in ('dir /a:dl /b /o:n "%package_root%" 2^>nul') do (
        if not defined junctions (
            set "junctions=true"

            call :fmt_log "Local package override(s) found:"
            call :fmt_log
        )

        call :fmt_log "    %\E%[1m%%~d:%\E%[0m %package_root%\%%~d"
    )

    if not defined junctions call :fmt_log "No local package overrides found."

    endlocal & exit /b 0

:die (exit_code, message = "") -> Result
    call :fmt_error "%~2"

    (goto) 2>nul & exit /b %1

:usage () -> Result
    call :fmt_log "A simple tool to keep track of locally overridden Sublime syntax packages."
    call :fmt_log
    call :fmt_log "%\E%[1m%\E%[4mUsage:%\E%[0m %\E%[1m%~n0%\E%[0m             List all created package overrides"
    call :fmt_log                      "       %\E%[1m%~n0%\E%[0m [PACKAGE]   Link or unlink the given package"
    call :fmt_log
    call :fmt_log "%\E%[1m%\E%[4mArguments:%\E%[0m"
    call :fmt_log "  [PACKAGE]         Sublime syntax package to install or remove"
    call :fmt_log
    call :fmt_log "%\E%[1m%\E%[4mOptions:%\E%[0m"
    call :fmt_log "  %\E%[1m/?, -h, --help%\E%[0m    Print help"

    (goto) 2>nul & exit /b 0

@:main
    ::: Default installation - can be overridden via global environment variable
    ::: This doesn't necessarily have to target Sublime Text - Merge is fine too
    if not defined SUBLIME_PATH set "sublime_path=%APPDATA%\Sublime Text"

    for /f %%E in ('echo(prompt $E^| "%ComSpec%" /d /q 2^>nul') do set "\E=%%~E"

    if defined sublime_path call :is_directory "%sublime_path%\Local" && (
        call :is_directory "%sublime_path%\Installed Packages"
    ) && (
        call :is_directory "%sublime_path%\Packages"
    ) || (
        call :die 1 "SUBLIME_PATH does not point to a Sublime data directory: '%sublime_path%'"
    )

    if not "%~2"=="" (
        call :die 2 "invalid arguments: '%*'"
    ) else if "%~1"=="-h" (
        call :usage
    ) else if "%~1"=="--help" (
        call :usage
    ) else if "%~1"=="/?" (
        call :usage
    ) else if "%~1"=="" (
        call :list "%sublime_path%"
    ) else call :is_directory "%~1" & if ERRORLEVEL 1 (
        call :die 1 "'%~1' is not a directory"
    ) else (
        call :link "%sublime_path%" "%~1"
    )
