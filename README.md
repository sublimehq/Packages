# Sublime Packages

> **Note that these packages will ONLY work with [Sublime Text 3](https://sublimetext.com/3) or [Sublime Text 3 Dev](https://www.sublimetext.com/3dev) builds 3092 or later.**

## Installation

If you want to make changes to these packages and test them locally, fork this repository and then symlink the changed packages into your **`./Packages/`** folder. For example, on OS X:

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

Alternatively, download the portable version, and clone this repository directly as a subdirectory of the **`./Data/`** folder.

---

After you've finished, keep in mind that you're now overriding a default package. When Sublime Text updates to a new version, you'll run the risk of having an out-of-date package unless you pull the latest changes from this repository.

## Issues

Please [search for existing issues and pull requests](https://github.com/sublimehq/packages/issues/?q=is%3Aopen) before opening new issues and when filing new issues make sure you fill out the form ([`.github/ISSUE_TEMPLATE.md`](.github/ISSUE_TEMPLATE.md)).

## Pull Requests

Please follow the instructions in the [`.github/PULL_REQUEST_TEMPLATE.md`](.github/PULL_REQUEST_TEMPLATE.md) file.

### New Packages

Pull requests for new packages won't be accepted at this stage, as new packages can cause issues for users who have a package with the same name installed via Package Control. There are some planned changes that will address this in the future.

Complex plugins such as auto complete systems and linters should generally be in a stand-alone package, rather than included in the default set of packages.

## Missing Packages

This repository only contains syntax-definition-focused packages. Notably, packages such as **`Default`** and **`Theme - Default`** are not included.
