# C# TextMate Bundle ![Project status](http://stillmaintained.com/wintermi/csharp-tmbundle.png)

This is the C# language TextMate bundle

## Authors

* Matthew Winter [@wintermi](https://github.com/wintermi)
* Adam Lickel [@lickel](https://github.com/lickel)

## License

This bundle is dual-licensed under MIT and GPL licenses.

* [http://www.opensource.org/licenses/mit-license.php](http://www.opensource.org/licenses/mit-license.php)
* [http://www.gnu.org/licenses/gpl.html](http://www.gnu.org/licenses/gpl.html)

Use it, change it, fork it, sell it. Do what you will, but please leave the author attribution.

## Install

The quickest way to install the bundle is via the command line. If you have Git installed, you'll probably want to install with Git. With or without, you can simply copy and paste each line one by one into the Terminal instructions ( lifted from [drnic](http://github.com/drnic/ruby-on-rails-tmbundle) ):

### Install with Git

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles
    cd ~/Library/Application\ Support/TextMate/Bundles
    git clone https://github.com/wintermi/csharp-tmbundle.git "C#.tmbundle"
    osascript -e 'tell app "TextMate" to reload bundles'

### Install without Git:

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles
    cd ~/Library/Application\ Support/TextMate/Bundles
    wget https://github.com/wintermi/csharp-tmbundle/tarball/master
    tar zxf master
    rm master
    mv wintermi-csharp-tmbundle* "C#.tmbundle"
    osascript -e 'tell app "TextMate" to reload bundles'

## Download

If you'd like to avoid the command line altogether, you can download the bundle and install it:

1. download the zip from [https://github.com/wintermi/csharp-tmbundle/zipball/master](https://github.com/wintermi/csharp-tmbundle/zipball/master)
2. find the zip file on your local machine and double-click to unzip it
3. change the file name from *wintermi-csharp-tmbundle-really_long_alpha_numeric_sequence* to *C#.tmbundle* (with a dot rather than a hyphen).
4. double-click the *C#.tmbundle* file
5. open TextMate and select the following menu item: *Bundles > Bundle Editor > Reload Bundles*
6. show the Bundle Editor (*Bundles > Bundle Editor > Show Bundle Editor*)
7. scroll through the list of bundles to confirm that the bundle has been properly installed

## Known Issues

* Mathematical Operators are missing from the symbol list
* Properties where '{' are on a new line aren't in the symbol list
* Methods with generics in the name are missing from the symbol list
* Certain methods, e.g. TimeSpan.FromSeconds() are incorrectly added to the symbol list
* Method signature variables with generic types aren't correctly *italicized* in TextMate 2
* Method signatures with array [] aren't correctly *italicized* (though array[] works) in TextMate 2
* Method calls do not correctly highlight out and ref keywords (though method signatures do)

## Other Stuff

* You can [report a bug or request a feature here](https://github.com/wintermi/csharp-tmbundle/issues)

## History

### Version 2

This is a substantial rewrite of the original C# bundle heavily inspired by the Java bundle.

It has a hierarchical definition, allowing inner classes, etc. The symbol list will show up to several layers deep. Regions are marked in the symbol list as well at an appropriate depth.

### Version 1

The original bundle was designed for use by TextMate 1.x and the e-Text Editor (Windows), so if you have issues with Version 2 of the bundle, please report a bug.

If you need access to the original bundle, then this has been tagged on GitHub and made available to download. [C# Bundle v1.0](https://github.com/wintermi/csharp-tmbundle/zipball/v1.0)
