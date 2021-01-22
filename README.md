[![SublimeHQ Discord](https://img.shields.io/discord/280102180189634562?label=SublimeHQ%20Discord&logo=discord&style=flat-square)](https://forum.sublimetext.com/t/resources-and-bug-tracking/22985)

# Sublime Packages

> **These packages are developed against the latest dev build of Sublime Text, currently build 4094. These syntaxes may be incompatible, sometimes in very subtle ways, with older builds.**

## Installation

If you want to make changes to these packages and test them locally, fork this repository and then symlink the changed packages into your *`Packages`* folder.

*Replace `Python` in the following commands with the name of the syntax to install.*

The directions for all three platforms here will be wrong if you upgraded from an ST3 install, since it will keep using your ST3 `Data` dir. You need to look for the `Data` dir used by your ST installation by using `Preferences > Browse Packages ...` from the menu.

### Sublime Text 3 Users

Sublime Text 3 users are best served by the version of packages shipped with the latest release. For some minor updates, the `st3` branch in this repo may be used:

<https://github.com/sublimehq/Packages/tree/st3>

### OS X

```bash
$ git clone https://github.com/sublimehq/Packages.git
$ ln -s `pwd`/Packages/Python ~/Library/Application\ Support/Sublime\ Text/Packages/
```

### Linux

```bash
$ git clone https://github.com/sublimehq/Packages.git
$ ln -s `pwd`/Packages/Python ~/.config/sublime-text/Packages/
```

### Windows

On Windows, you can use directory junctions instead of symlinks (symlinks require administrative rights; directory junctions don't):

```powershell
# Using PowerShell
PS> git clone https://github.com/sublimehq/Packages.git
PS> cmd /c mklink /J "$env:APPDATA/Sublime Text/Packages/Python" (convert-path ./Packages/Python)
```

---

After you've finished, keep in mind that you're now overriding a default package. When Sublime Text updates to a new version, you'll run the risk of having an out-of-date package unless you pull the latest changes from this repository.

## Pull Requests

Pull requests should:

 1. Start with the name of the package in square brackets, e.g. `[XML]`.
 2. Be as small and self-contained as is reasonable. *Smaller changes are quicker to review.*
 3. Include a new, or enhanced, [syntax test](http://www.sublimetext.com/docs/syntax.html) when changing a `.sublime-syntax` file.
 4. Have multiple syntax tests and a set of performance measurements (old vs. new) when making significant changes.

### New Packages

Pull requests for new packages won't be accepted at this stage, as new packages can cause issues for users who have a package with the same name installed via Package Control. There are some planned changes that will address this in the future.

Complex plugins such as auto complete systems and linters should generally be in a stand-alone package, rather than included in the default set of packages.

## Missing Packages

This repository only contains syntax-definition-focused packages. Notably, packages such as *Default* and *Theme - Default* are not included.
