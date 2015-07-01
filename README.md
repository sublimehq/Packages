# Sublime Packages

> **Note that these packages will not work with any version of Sublime Text older than [Dev Build](http://sublimetext.com/3dev) 3092.**

## Installation

If you wish to make any changes to these and test them locally, the simplest way is to fork the repository, and then symlink the package(s) of interest into your `Packages` folder, e.g., on OSX:

```bash
$ git clone https://github.com/sublimehq/Packages.git
$ ln -s `pwd`/Packages/Python ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Python
```

After you've finished, keep in mind that you're now overriding a default package, and when Sublime Text updates to a new version, unless you pull the latest changes from the repository, you'll run the risk of having an out-of-date package.

On Windows, rather than fiddling around with symlinks, the simplest approach would likely be to download the portable version, and clone this repository directly as a subdirectory of `Data`.

## Pull Requests

Pull requests for new packages won't be accepted at this stage, as it can cause issues for users who have a package with the same name via Package Control. There are some planned changes in the future that will address this.

Complex plugins such as auto complete systems and linters should generally be in a standalone package, rather than included in the default set.

## Missing Packages

This repository only contains syntax definition focused packages. Notably, Packages such as 'Default' and 'Theme - Default' are not included.
