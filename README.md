# Sublime Packages

> **Note that these packages will not work with any version of Sublime Text older than [Dev Build](http://sublimetext.com/3dev) 3092.**

## Installation

If you want to make changes to these packages and test them locally, fork this repository and then symlink the changed packages into your *Packages* folder. For example, on OS X:

```bash
$ git clone https://github.com/sublimehq/Packages.git
$ ln -s `pwd`/Packages/Python ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Python
```

---

On Windows, you can use directory junctions instead of symlinks (symlinks require administrative rights; directory junctions don't):

```powershell
# Using PowerShell
PS> git clone https://github.com/sublimehq/Packages.git
PS> cmd /c mklink /J "$env:LOCALAPPDATA/Sublime Text 3/Packages/Python" (convert-path ./Packages/Python)
```

Alternatively, download the portable version, and clone this repository directly as a subdirectory of the *Data* folder.

---

After you've finished, keep in mind that you're now overriding a default package. When Sublime Text updates to a new version, you'll run the risk of having an out-of-date package unless you pull the latest changes from this repository.

## Pull Requests

Pull requests for new packages won't be accepted at this stage, as new packages can cause issues for users who have a package with the same name installed via Package Control. There are some planned changes that will address this in the future.

Complex plugins such as auto complete systems and linters should generally be in a stand-alone package, rather than included in the default set of packages.

## Missing Packages

This repository only contains syntax-definition-focused packages. Notably, packages such as *Default* and *Theme - Default* are not included.
