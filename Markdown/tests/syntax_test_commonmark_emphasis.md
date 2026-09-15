| SYNTAX TEST "Packages/Markdown/Markdown.sublime-syntax"

# TEST: COMMONMARK 0.31.2 NON-EMPHASIS #######################################

The examples below render without emphasis or strong emphasis according to
CommonMark 0.31.2 section 6.2. Delimiters must remain plain text.

## https://spec.commonmark.org/0.31.2/#example-351

a * foo bar*
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-352

a*"foo"*
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-353

* a *
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-354

*$*alpha.
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

*£*bravo.
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

*€*charlie.
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-358

_ foo bar_
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-359

a_"foo"_
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-360

foo_bar_
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-361

5_6_78
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-362

пристаням_стремятся_
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-363

aa_"bb"_cc
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-365

_foo*
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-366

*foo bar *
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-367

*foo bar
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
*
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-368

*(*foo)
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-371

_foo bar _
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-372

_(_foo)
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-374

_foo_bar
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-375

_пристаням_стремятся
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-379

** foo bar**
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-380

a**"foo"**
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-383

__ foo bar__
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-384

__
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
foo bar__
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-385

a__"foo"__
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-386

foo__bar__
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-387

5__6__78
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-388

пристаням__стремятся__
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-391

**foo bar **
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-392

**(**foo)
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-397

__foo bar __
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-398

__(__foo)
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-400

__foo__bar
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-401

__пристаням__стремятся
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-420

** is not an empty emphasis
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^^^^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-421

**** is not an empty strong emphasis
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-434

__ is not an empty emphasis
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^^^^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-435

____ is not an empty strong emphasis
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-436

foo ***
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-439

foo *****
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-448

foo ___
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-451

foo _____
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-473

*[bar*](/url)
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-474

_foo [bar_](/url)
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-475

*<img src="foo" title="*"/>
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^^^^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-476

**<a href="**">
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-477

__<a href="__">
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-481

__a<https://foo.bar/?q=__>
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^^^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

## https://spec.commonmark.org/0.31.2/#example-480

**a<https://foo.bar/?q=**>
| <- - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold
|^^^^^^^^^^^^^^^^^^^^^^^^^ - markup.italic.markdown - markup.bold.markdown - punctuation.definition.italic - punctuation.definition.bold

The End.
| <- - markup.italic.markdown - markup.bold.markdown
