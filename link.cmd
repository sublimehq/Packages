@if not defined DEBUG (echo off)
@setlocal DisableDelayedExpansion
@goto :main


:fmt_log #[io] (message)
    echo(%~1
    goto :EOF

:fmt_error #[io] (message)
    >&2 echo(%\E%[31m[%~n0 error]%\E%[0m: %~1
    goto :EOF

:is_directory (object) -> Result
    for /f "tokens=1,2 delims=d" %%a in ("-%~a1") do if not "%%~b"=="" (
        exit /b 0 &@rem Directory
    ) else (
        exit /b 1 &@rem File or something else...
    )

:link #[io] (sublime_path, package) -> Result
    setlocal & (if "%~1"=="" (exit /b 1)) & (if "%~2"=="" (exit /b 1))

    for /f "delims=" %%p in ("%~dp0.") do if /i not "%~f2"=="%%~fp\%~2" (
        call :die 1 "'%~2' does not name a package, but is a path or a glob instead"
    )

    for /f "delims=" %%r in ("%~f1") do set data_root=%%~fr
    set "package=%~2"

    ::: Backup the entire directory first lest something breaks while symlinking
    robocopy "%data_root%\Packages" "%data_root%\Backup Packages" /z /xj /mir /sec /im >nul 2>&1

    ::: Symlink the changed package (*de facto* create a directory junction)
    if not "%package%"=="%%" mklink /J "%data_root%\Packages\%package%" "%cwd%\%package%" >nul 2>&1 && (
        call :fmt_log "Installed '%package%' package to %data_root%\Packages\%package%"
    ) || (
        call :die 1 "couldn't create directory junction (does the target already exist?)"
    )

    endlocal & exit /b 0

:list (sublime_path) -> Result
    setlocal & (if "%~1"=="" (exit /b 1)) & set junctions=

    for /f "delims=" %%p in ("%~f1\Packages") do set package_root=%%~fp

    for /f "delims=" %%d in ('dir /a:dl /b /o:n "%package_root%" 2^>nul') do (
        if not defined junctions (
            set "junctions=true"
            call :fmt_log "Linked Sublime syntax packages:"
            call :fmt_log
        )

        for /f "skip=9 tokens=1,2,*" %%j in ('fsutil reparsepoint query "%package_root%\%%~d"') do (
            if "%%~j"=="Print" if "%%~k"=="Name:" if not "%%~l"=="" (
                call :fmt_log "    %\E%[1m%%~d:%\E%[0m %package_root%\%%~d"
            )
        )
    )

    if not defined junctions (call :fmt_log "Couldn't find any default package overrides.")

    endlocal & exit /b 0

:die (code = 0, message = "") -> Result
    call :fmt_error "%~2"

    (set /a "code=0|%~1" || set /a "code=0") >nul 2>&1

    (goto) 2>nul & exit /b %code%

:usage () -> Result
    call :fmt_log "A simple tool to keep track of locally overridden Sublime syntax packages."
    call :fmt_log
    call :fmt_log "%\E%[1m%\E%[4mUsage:%\E%[0m %\E%[1m%~n0%\E%[0m             List all created directory junctions"
    call :fmt_log                      "       %\E%[1m%~n0%\E%[0m [PACKAGE]   Link the given default syntax package"
    call :fmt_log
    call :fmt_log "%\E%[1m%\E%[4mArguments:%\E%[0m"
    call :fmt_log "  [PACKAGE]     Default Sublime syntax package to install (symlink)"
    call :fmt_log
    call :fmt_log "%\E%[1m%\E%[4mOptions:%\E%[0m"
    call :fmt_log "  %\E%[1m-h, --help%\E%[0m    Print help"

    (goto) 2>nul & exit /b 0

@:main
    ::: Default installation - can be overridden via global environment variable
    ::: This doesn't necessarily have to target Sublime Text - Merge is fine too
    if not defined SUBLIME_PATH (set "sublime_path=%APPDATA%\Sublime Text")

    for /f %%E in ('echo(prompt $E^| "%ComSpec%" /d /q 2^>nul') do (set \E=%%~E)

    if defined sublime_path call :is_directory "%sublime_path%\Local" || (
        call :die 1 "SUBLIME_PATH does not point to a Sublime data directory: '%sublime_path%'"
    )

    if not "%~2"=="" (
        call :die 2 "invalid arguments: '%*'"
    ) else if "%~1"=="-h" (
        call :usage
    ) else if "%~1"=="--help" (
        call :usage
    ) else if "%~1"=="" (
        call :list "%sublime_path%"
    ) else call :is_directory "%~1" & if ERRORLEVEL 1 (
        call :die 1 "'%~1' is not a directory"
    ) else (
        call :link "%sublime_path%" "%~1"
    )
