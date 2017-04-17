| SYNTAX TEST "Packages/Markdown/Markdown.sublime-syntax"

# Heading
| <- markup.heading.1 punctuation.definition.heading
|^^^^^^^^ markup.heading

## Second Heading
| <- markup.heading.2 punctuation.definition.heading
|^^^^^^^^^^^^^^^^ markup.heading

Alternate Heading
=================
|^^^^^^^^^^^^^^^^ markup.heading.1 punctuation.definition

Paragraph of text that should be scoped as meta.paragraph.
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.paragraph
A [link](https://example.com), *italic text* and **bold**.
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.inline
| ^ punctuation.definition.link.begin
|      ^ punctuation.definition.link.end
|       ^ punctuation.definition.metadata
|        ^^^^^^^^^^^^^^^^^^^ markup.underline.link
|                           ^ punctuation.definition.metadata
|                              ^^^^^^^^^^^^^ markup.italic
|                              ^ punctuation.definition.italic
|                                          ^ punctuation.definition.italic
|                                                ^^ punctuation.definition.bold
|                                                ^^^^^^^^ markup.bold
|                                                      ^^ punctuation.definition.bold

Inline `code sample`.
|      ^^^^^^^^^^^^^ markup.raw.inline
|      ^ punctuation.definition.raw
|                  ^ punctuation.definition.raw

Here is a [reference link][name].
|         ^^^^^^^^^^^^^^^^^^^^^^ meta.link.reference
|                         ^ punctuation.definition.constant.begin
|                          ^^^^ constant.other.reference.link
|                              ^ punctuation.definition.constant.end

Here is a [blank reference link][].
|         ^^^^^^^^^^^^^^^^^^^^^^ meta.link.reference
|                               ^ punctuation.definition.constant.begin
|                                ^ punctuation.definition.constant.end

Here is a ![Image Alt Text](https://example.com/cat.gif).
|         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.image.inline
|          ^ punctuation.definition.image.begin
|                         ^ punctuation.definition.image.end - string
|                          ^ punctuation.definition.metadata
|                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.image
|                                                      ^ punctuation.definition.metadata

Here is a ![Image Ref Alt][1].
|         ^^^^^^^^^^^^^^^^^^^ meta.image.reference
|         ^^ punctuation.definition.image.begin
|                        ^ punctuation.definition.image.end
|                         ^ punctuation.definition.constant
|                          ^ constant.other.reference.link
|                           ^ punctuation.definition.constant


  1. Ordered list item
| ^^^^^^^^^^^^^^^^^^^^^ markup.list.numbered
| ^^ markup.list.numbered.bullet - markup.list.numbered markup.list.numbered
|  ^ punctuation.definition.list_item
  2. Ordered list item #2
| ^^^^^^^^^^^^^^^^^^^^^^^^ markup.list.numbered - markup.list.numbered markup.list.numbered
| ^^ markup.list.numbered.bullet
|  ^ punctuation.definition.list_item
     1. Subitem
     2. Another subitem
|^^^^^^^^^^^^^^^^^^^^^^^ markup.list.numbered
|    ^^ markup.list.numbered.bullet
|     ^ punctuation.definition.list_item
|       ^^^^^^^^^^^^^^^^ meta.paragraph.list - meta.paragraph.list meta.paragraph.list

Paragraph break.

  - Unordered list item
| ^^^^^^^^^^^^^^^^^^^^ markup.list.unnumbered - markup.list.unnumbered markup.list.unnumbered
| ^ markup.list.unnumbered.bullet punctuation.definition.list_item
  - Unordered list item #2
| ^^^^^^^^^^^^^^^^^^^^^^^ markup.list.unnumbered - markup.list.unnumbered markup.list.unnumbered
| ^ markup.list.unnumbered.bullet punctuation.definition.list_item

Paragraph break.

  * Unordered list item
| ^^^^^^^^^^^^^^^^^^^^ markup.list.unnumbered - markup.list.unnumbered markup.list.unnumbered
| ^ markup.list.unnumbered.bullet punctuation.definition.list_item
  + Unordered list item #2
| ^^^^^^^^^^^^^^^^^^^^^^ markup.list.unnumbered - markup.list.unnumbered markup.list.unnumbered
| ^ markup.list.unnumbered.bullet punctuation.definition.list_item
    + Subitem 1
|   ^ punctuation.definition.list_item
  + Item
    + Subitem
    + Another subitem
|   ^ markup.list.unnumbered.bullet punctuation.definition.list_item - meta.paragraph.list
|     ^^^^^^^^^^^^^^^ meta.paragraph.list
      + Nested Subitem
|     ^ markup.list.unnumbered.bullet punctuation.definition.list_item - markup.list.unnumbered markup.list.unnumbered
        + Nested + Subitem
|       ^ markup.list.unnumbered.bullet punctuation.definition.list_item
|                ^ - punctuation.definition.list_item

Paragraph break.

> This is a block quote. It contains markup.
> Including things like *italics*
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.quote
|                       ^^^^^^^^^ markup.italic

Paragraph break.

--------
|^^^^^^^^ meta.block-level meta.separator.thematic-break
|^^^^^^^ punctuation.definition.thematic-break

[1]: https://google.com
| <- meta.link.reference.def
|^^^^^^^^^^^^^^^^^^^^^^ meta.link.reference.def
|^ constant.other.reference.link
|  ^ punctuation.separator.key-value
|    ^^^^^^^^^^^^^^^^^^ markup.underline.link

<div>this is HTML until <span>the corresponding closing tag</span> on the same line</div>
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.disable-markdown
non-disabled markdown
| <- - meta.disable-markdown

<div>this is HTML until the closing tag on another line
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.disable-markdown
still <span>HTML</span>
|      ^^^^ meta.tag.inline.any.html entity.name.tag.inline.any.html
</div>
| ^^^^ meta.disable-markdown
non-disabled markdown
| <- - meta.disable-markdown

<div>nested tags don't count <div>test</div>
|                                     ^^^^^^ meta.disable-markdown meta.tag.block.any.html
non-disabled markdown
| <- - meta.disable-markdown

<div>nested tags don't count <div>test
|                                 ^^^^^ meta.disable-markdown
</div>
non-disabled markdown
| <- - meta.disable-markdown

<div>one line</div> disable
| ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.disable-markdown
non-disabled markdown
| <- - meta.disable-markdown

<div>one line</div> <span>disable</span> test
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.disable-markdown
|                   ^^^^^^ meta.tag.inline.any.html
non-disabled markdown
| <- - meta.disable-markdown

> Quote
| <- meta.block-level markup.quote punctuation.definition.blockquote
| ^^^^^^ meta.block-level markup.quote

> Quote followed by an empty block quote line
>
| <- meta.block-level markup.quote punctuation.definition.blockquote

> Quote followed by an empty block quote line
>
> Followed by more quoted text
| <- meta.block-level markup.quote punctuation.definition.blockquote

> > Nested quote
| <- meta.block-level markup.quote punctuation.definition.blockquote
| ^ meta.block-level markup.quote markup.quote punctuation.definition.blockquote

> > Nested quote
> Followed by more quoted text that is not nested
| <- meta.block-level markup.quote punctuation.definition.blockquote - markup.quote markup.quote

> Here is a quote block
This quote continues on.  Line breaking is OK in markdown
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block-level markup.quote
> Here it is again
| <- punctuation.definition.blockquote

paragraph
| <- meta.paragraph - meta.block-level

>     > this is code in a quote block, not a nested quote
| <- punctuation.definition.blockquote
|     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.raw.block - markup.quote markup.quote

Code block below:

    this is code!
| ^^^^^^^^^^^^^^^^ meta.block-level markup.raw.block

    more code
    spanning multiple lines
| ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block-level markup.raw.block

paragraph
| <- meta.paragraph - meta.block-level

- - - -
| ^^^^^^ meta.block-level meta.separator
| ^ punctuation.definition.thematic-break
|   ^ punctuation.definition.thematic-break
|     ^ punctuation.definition.thematic-break
|  ^ - punctuation
* * * * *
| ^^^^^^^^ meta.block-level meta.separator

_ _ _ _ _ _ _
| ^^^^^^^^^^^^ meta.block-level meta.separator
| ^ punctuation.definition.thematic-break
|   ^ punctuation.definition.thematic-break
|  ^ - punctuation

-  -  -  - 
| <- meta.block-level meta.separator.thematic-break punctuation.definition.thematic-break
|^^ - punctuation
|  ^ punctuation
|        ^ punctuation

<mailto:test+test@test.com>
| ^^^^^^^^^^^^^^^^^^^^^^^^ meta.paragraph meta.link.email.lt-gt markup.underline.link
<http://www.test.com/>
| ^^^^^^^^^^^^^^^^^^^ meta.paragraph meta.link.inet markup.underline.link
<https://test.com/>
| ^^^^^^^^^^^^^^^^ meta.paragraph meta.link.inet markup.underline.link
<ftp://test.com/>
| ^^^^^^^^^^^^^^ meta.paragraph meta.link.inet markup.underline.link

Visit www.commonmark.org/help for more information.
|     ^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link
|                            ^^^^^^^^^^^^^^^^^^^^^^^ - markup.underline.link
Visit www.commonmark.org.
|     ^^^^^^^^^^^^^^^^^^ meta.paragraph markup.underline.link
|                       ^^ - markup.underline.link
Visit www.commonmark.org/a.b.
|     ^^^^^^^^^^^^^^^^^^^^^^ meta.paragraph markup.underline.link
|                           ^ - markup.underline.link
www.google.com/search?q=(business))+ok
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link
|                                     ^ - markup.underline.link
www.commonmark.org/he<lp>
|^^^^^^^^^^^^^^^^^^^^ markup.underline.link
|                    ^ - markup.underline.link
http://commonmark.org
|^^^^^^^^^^^^^^^^^^^^ markup.underline.link
www.google.com/search?q=commonmark&hl=en
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link
|                                       ^ - markup.underline.link
www.google.com/search?q=commonmark&hl;
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link
|                                 ^^^^ constant.character.entity.html - markup.underline.link
(Visit https://encrypted.google.com/search?q=Markup+(business))
|      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link
|                                                             ^^ - markup.underline.link
Anonymous FTP is available at ftp://foo.bar.baz.
|                             ^^^^^^^^^^^^^^^^^ markup.underline.link
|                                              ^^ - markup.underline.link

foo@bar.baz
|^^^^^^^^^^ markup.underline.link
hello@mail+xyz.example isn't valid, but hello+xyz@mail.example is.
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - markup.underline.link
|                                       ^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link
 a.b-c_d@a.b
|^^^^^^^^^^^ markup.underline.link
|           ^ - markup.underline.link
a.b-c_d@a.b.
|^^^^^^^^^^ markup.underline.link
|          ^^ - markup.underline.link
 a.b-c_d@a.b-
|^^^^^^^^^^^^^ - markup.underline.link
 a.b-c_d@a.b_
|^^^^^^^^^^^^^ - markup.underline.link
 test@test.test.me
|^^^^^^^^^^^^^^^^^ markup.underline.link

this is a raw ampersand & does not require HTML escaping
|                       ^ meta.other.valid-ampersand

[2]: https://github.com/sublimehq/Packages "Packages Repo"
| <- meta.link.reference.def
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.reference.def
|^ constant.other.reference.link
|  ^ punctuation.separator.key-value
|    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link
|                                          ^^^^^^^^^^^^^^^ string.other.link.description.title
|                                          ^ punctuation.definition.string.begin
|                                                        ^ punctuation.definition.string.end

[3]: https://github.com/sublimehq/Packages/issues/ 'Issues on Packages Repo'
| <- meta.link.reference.def
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.reference.def
|^ constant.other.reference.link
|  ^ punctuation.separator.key-value
|    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link
|                                                  ^^^^^^^^^^^^^^^^^^^^^^^^^ string.other.link.description.title
|                                                  ^ punctuation.definition.string.begin
|                                                                          ^ punctuation.definition.string.end

heading underlined with dashes
------------------------------
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.heading.2 punctuation.definition.heading

underlined heading followed by a separator
-------------------
------
| <- meta.block-level meta.separator - markup.heading

underlined heading followed by another one that should be treated as a normal paragraph
==================
=====
| <- - markup.heading

Paragraph followed immediately by a list, no blank line in between
- list item 1
| <- markup.list.unnumbered punctuation.definition.list_item

Paragraph followed immediately by a numbered list, no blank line in between
 1. list item 1
|^^^^^^^^^^^^^^^ markup.list.numbered
|^^ markup.list.numbered.bullet
| ^ punctuation.definition.list_item
|   ^^^^^^^^^^^^ meta.paragraph.list
  more text - this punctuation should be ignored 2.
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.list.numbered meta.paragraph.list
|           ^ - punctuation.definition.list_item
|                                                 ^ - punctuation.definition.list_item

Paragraph not followed immediately by a numbered list,
because it doesn't begin with the number one:
 2. text
| ^ - markup.list.numbered - punctuation.definition.list_item


> Block quote with list items
> - list item 1
| ^ meta.block-level markup.quote punctuation.definition.list_item
> - list item 2
| ^ markup.list.unnumbered.bullet punctuation.definition.list_item
| ^^^^^^^^^^^^^^ meta.block-level markup.quote markup.list.unnumbered
|   ^^^^^^^^^^^^ meta.paragraph.list
>   1. sub list item
| <- meta.block-level markup.quote punctuation.definition.blockquote
|^^^^^^^^^^^^^^^^^^^^ meta.block-level markup.quote
|    ^ punctuation.definition.list_item
|   ^^ markup.list.numbered.bullet
| ^^^^^^^^^^^^^^^^^^^ markup.list.numbered
|      ^^^^^^^^^^^^^^ meta.paragraph.list

* this is a list

   > This is a blockquote.
|  ^ markup.list.unnumbered markup.quote punctuation.definition.blockquote

 This is a paragraph still part of the 
 list item
| ^^^^^^^^^ markup.list.unnumbered meta.paragraph.list - meta.paragraph.list meta.paragraph.list

* Lorem ipsum

        This is a code block
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.list.unnumbered markup.raw.block
* list continues
| <- markup.list.unnumbered punctuation.definition.list_item - markup.raw.block
* list continues

- `code` - <a name="demo"></a>
| ^ markup.list.unnumbered meta.paragraph.list markup.raw.inline punctuation.definition.raw
|          ^^^^^^^^^^^^^^^^^^^ meta.tag.inline.a.html
 3. [see `demo`](#demo "demo")
| ^ punctuation.definition.list_item
|   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.inline
|    ^^^^^^^^^^ meta.link.inline.description
|               ^ punctuation.definition.metadata.begin
|                      ^ punctuation.definition.string.begin
|                           ^ punctuation.definition.string.end
|                            ^ punctuation.definition.metadata.end
    [see `demo`](#demo (demo))
|   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.inline
|    ^^^^^^^^^^ meta.link.inline.description
|               ^ punctuation.definition.metadata.begin
|                      ^ punctuation.definition.string.begin
|                           ^ punctuation.definition.string.end
|                            ^ punctuation.definition.metadata.end
    [see `demo`](#demo 'demo')
|   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.inline
|    ^^^^^^^^^^ meta.link.inline.description
|               ^ punctuation.definition.metadata.begin
|                      ^ punctuation.definition.string.begin
|                           ^ punctuation.definition.string.end
|                            ^ punctuation.definition.metadata.end
    Here is a ![example image](https://test.com/sublime.png "A demonstration").
|             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.list.unnumbered meta.paragraph.list meta.image.inline
|             ^^ punctuation.definition.image.begin
|               ^^^^^^^^^^^^^ meta.image.inline.description
|                            ^ punctuation.definition.image.end
|                             ^ punctuation.definition.metadata
|                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.image
|                                                           ^^^^^^^^^^^^^^^^^ string.other.link.description.title
|                                                           ^ punctuation.definition.string.begin
|                                                                           ^ punctuation.definition.string.end
|                                                                            ^ punctuation.definition.metadata
    Here is a ![example image](https://test.com/sublime.png 'A demonstration').
|             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.list.unnumbered meta.paragraph.list meta.image.inline
|             ^^ punctuation.definition.image.begin
|               ^^^^^^^^^^^^^ meta.image.inline.description
|                            ^ punctuation.definition.image.end
|                             ^ punctuation.definition.metadata
|                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.image
|                                                           ^^^^^^^^^^^^^^^^^ string.other.link.description.title
|                                                           ^ punctuation.definition.string.begin
|                                                                           ^ punctuation.definition.string.end
|                                                                            ^ punctuation.definition.metadata
    Here is a ![example image](https://test.com/sublime.png (A demonstration)).
|             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.list.unnumbered meta.paragraph.list meta.image.inline
|             ^^ punctuation.definition.image.begin
|               ^^^^^^^^^^^^^ meta.image.inline.description
|                            ^ punctuation.definition.image.end
|                             ^ punctuation.definition.metadata
|                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.image
|                                                           ^^^^^^^^^^^^^^^^^ string.other.link.description.title
|                                                           ^ punctuation.definition.string.begin
|                                                                           ^ punctuation.definition.string.end
|                                                                            ^ punctuation.definition.metadata

  <!-- HTML comment -->
| ^^^^^^^^^^^^^^^^^^^^^ comment.block.html

## Heading with ending hashes ##
| <- punctuation.definition.heading
|  ^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.section
|                            ^ - entity.name.section
|                             ^^ punctuation.definition.heading

*italic text <span>HTML element</span> end of italic text*
| <- punctuation.definition.italic
|                                                        ^ punctuation.definition.italic
|            ^^^^^^ meta.tag.inline.any.html
|                              ^^^^^^^ meta.tag.inline.any.html

_italic text <span>HTML element</span> end of italic text_
| <- punctuation.definition.italic
|                                                        ^ punctuation.definition.italic
|            ^^^^^^ meta.tag.inline.any.html
|                              ^^^^^^^ meta.tag.inline.any.html

**bold text <span>HTML element</span> end of bold text**
| <- punctuation.definition.bold
|                                                     ^^ punctuation.definition.bold
|           ^^^^^^ meta.tag.inline.any.html
|                             ^^^^^^^ meta.tag.inline.any.html

__bold text <span>HTML element</span> end of bold text__
| <- punctuation.definition.bold
|                                                     ^^ punctuation.definition.bold
|           ^^^^^^ meta.tag.inline.any.html
|                             ^^^^^^^ meta.tag.inline.any.html

*italic text <span>HTML element</span> end of italic text*
| <- punctuation.definition.italic
|                                                        ^ punctuation.definition.italic
|            ^^^^^^ meta.tag.inline.any.html
|                              ^^^^^^^ meta.tag.inline.any.html

_italic text <span>HTML element</span> end of italic text_
| <- punctuation.definition.italic
|                                                        ^ punctuation.definition.italic
|            ^^^^^^ meta.tag.inline.any.html
|                              ^^^^^^^ meta.tag.inline.any.html

[link [containing] [square] brackets](#backticks)
|<- punctuation.definition.link.begin
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.inline.description
|                                   ^ punctuation.definition.link.end
[link `containing square] brackets] in backticks`[]](#wow)
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.inline.description
|     ^ punctuation.definition.raw.begin
|                                               ^ punctuation.definition.raw.end
|                                                  ^ punctuation.definition.link.end
[link ``containing square]` brackets[[][] in backticks``](#wow)
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.inline.description
|     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.raw.inline
|     ^^ punctuation.definition.raw.begin
|                                                     ^^ punctuation.definition.raw.end
|                                                       ^ punctuation.definition.link.end
`inline markup <span></span>`
|              ^^^^^^^^^^^^^ markup.raw.inline - meta.tag.inline.any.html
escaped backtick \`this is not code\`
|                ^^ constant.character.escape
|                                  ^^ constant.character.escape
|                  ^^^^^^^^^^^^^^^^ - markup.raw.inline

Example 328:
*foo bar*
| <- punctuation.definition.italic.begin
|       ^ punctuation.definition.italic.end

Example 329:
This is not emphasis, because the opening `*` is followed by whitespace, and hence not part of a left-flanking delimiter run:
a * foo bar*
| ^^^^^^^^^^^ - punctuation

Example 332:
Intraword emphasis with `*` is permitted:
foo*bar*
|  ^ punctuation.definition.italic.begin
|      ^ punctuation.definition.italic.end
Example 333:
5*6*78
|^ punctuation.definition.italic.begin
|  ^ punctuation.definition.italic.end

Example 334:
_foo bar_
| <- punctuation.definition.italic.begin
|       ^ punctuation.definition.italic.end

Example 335:
This is not emphasis, because the opening `_` is followed by whitespace:
_ foo bar_
| <- - punctuation
| ^^^^^^^^^ - punctuation

Example 336:
This is not emphasis, because the opening `_` is preceded by an alphanumeric and followed by punctuation:
a_"foo"_
|^^^^^^^^ - punctuation

Example 337:
Emphasis with `_` is not allowed inside words:
foo_bar_
|  ^^^^^ - punctuation

Example 338:
5_6_78
|^^^^^ - punctuation

Example 339:
пристаням_стремятся_
|        ^^^^^^^^^^^ - punctuation

aa_"bb"_cc_
| ^ - punctuation
|      ^ punctuation.definition.italic.begin
|         ^ punctuation.definition.italic.end

Example 341:
foo-_(bar)_
|   ^ punctuation.definition.italic.begin
|         ^ punctuation.definition.italic.end

*foo bar *
| <- punctuation.definition.italic.begin
|        ^ - punctuation
*
| <- - punctuation
abc*
|  ^ punctuation.definition.italic.end

Example 347:
*foo*bar
| <- punctuation.definition.italic.begin
|   ^ punctuation.definition.italic.end

Example 348:
_foo bar _
| <- punctuation.definition.italic.begin
|        ^ - punctuation
_
| <- - punctuation
abc_
|  ^ punctuation.definition.italic.end

Intraword emphasis is disallowed for `_`:
_foo_bar
| <- punctuation.definition.italic.begin
|   ^ - punctuation
abc_
|  ^ punctuation.definition.italic.end

Example 353:
_foo_bar_baz_
| <- punctuation.definition.italic.begin
|   ^^^^^ - punctuation
|           ^ punctuation.definition.italic.end

Example 354:
_(bar)_.
| <-  punctuation.definition.italic.begin
|     ^ punctuation.definition.italic.end

Example 355:
 **foo bar**
|^^ punctuation.definition.bold.begin
|         ^^ punctuation.definition.bold.end

Example 356:
** foo bar**
| <- - punctuation
|         ^^ - punctuation

Example 358:
foo**bar**
|  ^^ punctuation.definition.bold.begin
|       ^^ punctuation.definition.bold.end

Example 359:
 __foo bar__
|^^ punctuation.definition.bold.begin
|         ^^ punctuation.definition.bold.end

Example 360:
This is not strong emphasis, because the opening delimiter is followed by whitespace:
__ foo bar__
| <- - punctuation
|         ^^ - punctuation

Example 361:
__
| <- - punctuation

Example 362:
a__"foo"__
|^^^^^^^^^ - punctuation

Example 363:
Intraword strong emphasis is forbidden with `__`:
foo__bar__
|  ^^^^^^^ - punctuation

Example 364:
5__6__78
|^^^^^^^ - punctuation

Example 367:
foo-__(bar)__
|   ^^ punctuation.definition.bold.begin
|          ^^ punctuation.definition.bold.end

Example 368:
**foo bar **
| <- punctuation.definition.bold.begin
|         ^^ - punctuation
abc**
|  ^^ punctuation.definition.bold.end

Example 373:
Intraword emphasis:
 **foo**bar
|^^ punctuation.definition.bold.begin
|     ^^ punctuation.definition.bold.end

Example 374:
 __foo bar __
|^^ punctuation.definition.bold.begin
|          ^^ - punctuation
abc__
|  ^^ punctuation.definition.bold.end

Example 376:
_(__foo__)_
| <- punctuation.definition.italic.begin
| ^^ punctuation.definition.bold.begin
|      ^^ punctuation.definition.bold.end
|         ^ punctuation.definition.italic.end

Example 377:
Intraword strong emphasis is forbidden with `__`:
__foo__bar
| <- punctuation.definition.bold.begin
|    ^^ - punctuation
abc__
|  ^^ punctuation.definition.bold.end

Example 379:
__foo__bar__baz__
| <- punctuation.definition.bold.begin
|              ^^ punctuation.definition.bold.end
|    ^^^^^^^^^^ - punctuation

Example 380:
This is strong emphasis, even though the closing delimiter is both left- and right-flanking, because it is followed by punctuation:
__(bar)__.
| <- punctuation.definition.bold.begin
|      ^^ punctuation.definition.bold.end

Example 381:
*foo [bar](/url)*
| <- punctuation.definition.italic.begin
|               ^ punctuation.definition.italic.end
|    ^^^^^^^^^^^ meta.link.inline

Example 382:
*foo
| <- punctuation.definition.italic.begin
bar*
|  ^ punctuation.definition.italic.end

Example 383:
_foo __bar__ baz_
| <- punctuation.definition.italic.begin
|    ^^ punctuation.definition.bold.begin
|         ^^ punctuation.definition.bold.end
|               ^ punctuation.definition.italic.end

Example 394:
** is not an empty emphasis
| <- - punctuation
|^ - punctuation

Example 395:
**** is not an empty strong emphasis
| <- - punctuation
|^^^ - punctuation

Example 396:
**foo [bar](/url)**
| <- punctuation.definition.bold.begin
|     ^^^^^^^^^^^ meta.link.inline
|                ^^ punctuation.definition.bold.end

Example 397:
**foo
| <- punctuation.definition.bold.begin
bar**
|  ^^ punctuation.definition.bold.end

Example 398:
__foo _bar_ baz__
| <- punctuation.definition.bold.begin
|     ^ punctuation.definition.italic.begin
|         ^ punctuation.definition.italic.end
|              ^^ punctuation.definition.bold.end

Example 408:
__ is not an empty emphasis
| <- - punctuation
|^ - punctuation

Example 409:
____ is not an empty strong emphasis
| <- - punctuation
|^^^ - punctuation


Example 410:
foo ***
|   ^^^ - punctuation

Example 411:
foo *\**
|   ^ punctuation.definition.italic.begin
|    ^^ constant.character.escape
|      ^ punctuation.definition.italic.end

Example 412:
foo *_*
|   ^ punctuation.definition.italic.begin
|    ^ - punctuation
|     ^ punctuation.definition.italic.end

Example 414:
foo **\***
|   ^^ punctuation.definition.bold.begin
|     ^^ constant.character.escape
|       ^^ punctuation.definition.bold.end

Example 415:
foo **_**
|   ^^ punctuation.definition.bold.begin
|     ^ - punctuation
|      ^^ punctuation.definition.bold.end

Example 422:
foo ___
|   ^^^^ - punctuation

Example 423:
foo _\__
|   ^ punctuation.definition.italic.begin
|    ^^ constant.character.escape
|      ^ punctuation.definition.italic.end

Example 424:
foo _*_
|   ^ punctuation.definition.italic.begin
|    ^ - punctuation
|     ^ punctuation.definition.italic.end

Example 426:
foo __\___
|   ^^ punctuation.definition.bold.begin
|     ^^ constant.character.escape
|       ^^ punctuation.definition.bold.end

Example 427:

foo __*__
|   ^^ punctuation.definition.bold.begin
|     ^ - punctuation
|      ^^ punctuation.definition.bold.end

This text is _bold_, but this__text__is neither bold_nor_italic
|            ^ punctuation.definition.italic
|             ^^^^ markup.italic
|                 ^ punctuation.definition.italic
|                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - markup.bold - markup.italic

the following is italic *and doesn't end here * but does end here*
|                       ^ punctuation.definition.italic.begin
|                                             ^ - punctuation.definition.italic
|                                                                ^ punctuation.definition.italic.end
the following is bold **and doesn't end here ** but does end here**
|                     ^^ punctuation.definition.bold.begin
|                                            ^^ - punctuation.definition.bold
|                                                                ^^ punctuation.definition.bold.end
the following is not bold ** test ****
|                         ^^ - punctuation.definition.bold.begin
|                                 ^^^^ - punctuation.definition.bold
the following is not italic _ test ____
|                           ^ - punctuation.definition.italic.begin
|                                  ^^^^ - punctuation.definition.italic

more **tests *** ** here**
|    ^^ punctuation.definition.bold.begin
|            ^^^^^^ - punctuation.definition
|                       ^^ punctuation.definition.bold.end
more __tests *** ** example __ here__
|    ^^ punctuation.definition.bold.begin
|            ^^^^^^^^^^^^^^^^^^^^^^ - punctuation.definition
|                                  ^^ punctuation.definition.bold.end
more _tests <span class="test_">here</span>_
|    ^ punctuation.definition.italic.begin
|                            ^ - punctuation.definition
|                                          ^ punctuation.definition.italic.end
more _tests <span class="test_">_here</span>_
|    ^ punctuation.definition.italic.begin
|                            ^ - punctuation.definition
|                               ^ - punctuation
|                                           ^ punctuation.definition.italic.end
_more `tests_` here_
| <- punctuation.definition.italic.begin
|     ^^^^^^^^ markup.raw.inline
|                  ^ punctuation.definition.italic.end
__more `tests__` here__
| <- punctuation.definition.bold.begin
|      ^^^^^^^^^ markup.raw.inline
|                    ^^ punctuation.definition.bold.end
**more `tests__` here**
| <- punctuation.definition.bold.begin
|      ^^^^^^^^^ markup.raw.inline
|                    ^^ punctuation.definition.bold.end
**more `tests**` here**
| <- punctuation.definition.bold.begin
|      ^^^^^^^^^ markup.raw.inline
|                    ^^ punctuation.definition.bold.end
*more `tests__` here**
| <- punctuation.definition.italic.begin
|                   ^^ - punctuation
abc*
|  ^ punctuation.definition.italic.end

_test <span>text_ foobar</span>
| <- punctuation
|               ^ punctuation.definition.italic.end
__test <span>text__ not formatted</span>
| <- punctuation
|                ^^ punctuation.definition.bold.end
*test <span>text* not formatted</span>
| <- punctuation
|               ^ punctuation.definition.italic.end
**test <span>text** not formatted</span>
| <- punctuation
|                ^^ punctuation.definition.bold.end
_test <span>text **formatted**</span>_
| <- punctuation
|                ^^ punctuation
|                           ^^ punctuation
|                                    ^ punctuation
*test <span>text __formatted__</span>*
| <- punctuation
|                ^^ punctuation
|                           ^^ punctuation
|                                    ^ punctuation
*test <span>text __formatted__</span>* **more** _text_
| <- punctuation
|                ^^ punctuation
|                           ^^ punctuation
|                                    ^ punctuation
|                                      ^^ punctuation
|                                            ^^ punctuation
|                                               ^ punctuation
|                                                    ^ punctuation
*test <span>text* __formatted</span>__
| <- punctuation
|               ^ punctuation
|                 ^^ punctuation
|                                   ^^ punctuation

__test <span>text__ *formatted</span>*
| <- punctuation
|                ^^ punctuation
|                   ^ punctuation
|                                    ^ punctuation

This is ***bold italic***
|       ^^^^^^^^^^^^^^^^^ markup.bold
|       ^^ punctuation.definition.bold.begin
|         ^ punctuation.definition.italic.begin
|         ^^^^^^^^^^^^^ markup.italic
|                     ^ punctuation.definition.italic.end
|                      ^^ punctuation.definition.bold.end

This is ***bold italic* and just bold**
|       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.bold
|       ^^ punctuation.definition.bold.begin
|         ^ punctuation.definition.italic.begin
|         ^^^^^^^^^^^^^ markup.italic
|                     ^ punctuation.definition.italic.end
|                      ^^^^^^^^^^^^^^^^ - markup.italic
|                                    ^^ punctuation.definition.bold.end

The next scope overlap funny because we have to pick one order
to scope three indicators in a row
This is ***bold italic** and just italic*
|       ^^^^^^^^^^^^^^^^ markup.bold
|       ^^ punctuation.definition.bold.begin
|         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.italic
|         ^ punctuation.definition.italic.begin
|                     ^^ punctuation.definition.bold.end
|                       ^^^^^^^^^^^^^^^^^ - markup.bold
|                                       ^ punctuation.definition.italic.end

This is **_bold italic_**
|       ^^^^^^^^^^^^^^^^^ markup.bold
|       ^^ punctuation.definition.bold.begin
|         ^ punctuation.definition.italic.begin
|         ^^^^^^^^^^^^^ markup.italic
|                     ^ punctuation.definition.italic.end
|                      ^^ punctuation.definition.bold.end

This is __*bold italic*__
|       ^^^^^^^^^^^^^^^^^ markup.bold
|       ^^ punctuation.definition.bold.begin
|         ^ punctuation.definition.italic.begin
|         ^^^^^^^^^^^^^ markup.italic
|                     ^ punctuation.definition.italic.end
|                      ^^ punctuation.definition.bold.end

This is ___bold italic___
|       ^^^^^^^^^^^^^^^^^ markup.bold
|       ^^ punctuation.definition.bold.begin
|         ^ punctuation.definition.italic.begin
|         ^^^^^^^^^^^^^ markup.italic
|                     ^ punctuation.definition.italic.end
|                      ^^ punctuation.definition.bold.end

This is ___bold italic_ and just bold__
|       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.bold
|       ^^ punctuation.definition.bold.begin
|         ^ punctuation.definition.italic.begin
|         ^^^^^^^^^^^^^ markup.italic
|                     ^ punctuation.definition.italic.end
|                      ^^^^^^^^^^^^^^^^ - markup.italic
|                                    ^^ punctuation.definition.bold.end

The next scope overlap funny because we have to pick one order
to scope three indicators in a row
This is ___bold italic__ and just italic_
|       ^^^^^^^^^^^^^^^ markup.bold
|       ^^ punctuation.definition.bold.begin
|         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.italic
|         ^ punctuation.definition.italic.begin
|                     ^^ punctuation.definition.bold.end
|                       ^^^^^^^^^^^^^^^^^ - markup.bold
|                                       ^ punctuation.definition.italic.end

This is _**italic bold**_
|       ^^^^^^^^^^^^^^^^^ markup.italic
|       ^ punctuation.definition.italic.begin
|        ^^^^^^^^^^^^^^^ markup.bold
|        ^^ punctuation.definition.bold.begin
|                     ^^ punctuation.definition.bold.end
|                       ^ punctuation.definition.italic.end

This is *__italic bold__*
|       ^^^^^^^^^^^^^^^^^ markup.italic
|       ^ punctuation.definition.italic.begin
|        ^^^^^^^^^^^^^^^ markup.bold
|        ^^ punctuation.definition.bold.begin
|                     ^^ punctuation.definition.bold.end
|                       ^ punctuation.definition.italic.end

```js
| <- punctuation.definition.raw.code-fence.begin
|  ^^ constant.other.language-name
for (var i = 0; i < 10; i++) {
    console.log(i);
}
```
| <- punctuation.definition.raw.code-fence.end

```testing``123```
| <- punctuation.definition.raw.begin
|         ^^ - punctuation
|              ^^^ punctuation.definition.raw.end
```testing``123````
| <- punctuation.definition.raw.begin
|        ^ - punctuation
|            ^^^^ - punctuation
```
| <- punctuation.definition.raw.end
``testing`123````
| <- punctuation.definition.raw.begin
|        ^ - punctuation
|            ^^^^ - punctuation
more text``
|        ^^ punctuation.definition.raw.end
``text

| <- invalid.illegal.non-terminated.raw
text
| <- - markup.raw

inline backticks must be followed by non-whitespace `` characters``
|                                                   ^^ invalid.deprecated.unescaped-backticks
|                                                                ^^ invalid.deprecated.unescaped-backticks

~~~~ 
| <- punctuation.definition.raw.code-fence.begin
 ~~~~
| ^^^ punctuation.definition.raw.code-fence.end

~~~~~test~
| ^^^^^^^^^ meta.paragraph - punctuation - constant - markup.raw

~~~~~~test
| ^^^^ punctuation.definition.raw.code-fence.begin
|     ^^^^ constant.other.language-name
~~~~~~
| ^^^^^ punctuation.definition.raw.code-fence.end

```test
|  ^^^^ constant.other.language-name
  ```
| ^^^ punctuation.definition.raw.code-fence.end

hello world ````test````
|           ^^^^^^^^^^^^ markup.raw.inline
|                       ^ - markup.raw

`foo `` bar`
|    ^^^^^^ markup.raw.inline - punctuation
|          ^ punctuation.definition.raw.end

hard line break  
|              ^^ meta.hard-line-break punctuation.definition.hard-line-break
hard line break\
|              ^ meta.hard-line-break constant.character.escape
hard line break     
|              ^^^^^ meta.hard-line-break punctuation.definition.hard-line-break
soft line break 
|              ^^ - meta.hard-line-break
soft line break
|             ^^ - meta.hard-line-break

### foo  
|      ^^^ - meta.hard-line-break
### foo\
|      ^ - meta.hard-line-break

`inline code with trailing spaces  
|                                ^^^ - meta.hard-line-break
not a hard line break`

*test

| <- invalid.illegal.non-terminated.bold-italic
abc*
|  ^ - punctuation

_test

| <- invalid.illegal.non-terminated.bold-italic
abc_
|  ^ - punctuation

**test

| <- invalid.illegal.non-terminated.bold-italic
abc**
|  ^^ - punctuation

__test

| <- invalid.illegal.non-terminated.bold-italic
abc__
|  ^^ - punctuation

__test\
|     ^ meta.hard-line-break constant.character.escape
testing__

- test *testing
blah*
|   ^ markup.list.unnumbered meta.paragraph.list markup.italic punctuation.definition.italic.end - meta.paragraph.list meta.paragraph.list
- fgh
- *ghgh
| ^ markup.list.unnumbered meta.paragraph.list markup.italic punctuation.definition.italic.begin - meta.paragraph.list meta.paragraph.list
- fgfg
| <- markup.list.unnumbered.bullet punctuation.definition.list_item
- _test

| <- markup.list.unnumbered meta.paragraph.list markup.italic invalid.illegal.non-terminated.bold-italic
  still a list item
| ^^^^^^^^^^^^^^^^^^ markup.list.unnumbered meta.paragraph.list
- * * * * * * *
| <- punctuation.definition.list_item
| ^^^^^^^^ markup.list.unnumbered meta.paragraph.list meta.separator.thematic-break - meta.paragraph.list meta.paragraph.list
| ^ punctuation.definition.thematic-break
|   ^ punctuation.definition.thematic-break
|     ^ punctuation.definition.thematic-break
|       ^ punctuation.definition.thematic-break
|         ^ punctuation.definition.thematic-break
|           ^ punctuation.definition.thematic-break
|             ^ punctuation.definition.thematic-break
|  ^ - punctuation.definition.thematic-break
|    ^ - punctuation.definition.thematic-break
|      ^ - punctuation.definition.thematic-break
|        ^ - punctuation.definition.thematic-break
|          ^ - punctuation.definition.thematic-break
|            ^ - punctuation.definition.thematic-break
  still a list item
| ^^^^^^^^^^^^^^^^^^ markup.list.unnumbered meta.paragraph.list - meta.paragraph.list meta.paragraph.list

Example 407:
**foo [*bar*](/url)**
| <- punctuation.definition.bold.begin
|     ^^^^^^^^^^^^^ markup.bold meta.link.inline
|                  ^^ punctuation.definition.bold.end
|      ^ punctuation.definition.italic.begin
|          ^ punctuation.definition.italic.end
**foo [_bar_](/url)**
| <- punctuation.definition.bold.begin
|     ^^^^^^^^^^^^^ markup.bold meta.link.inline
|                  ^^ punctuation.definition.bold.end
|      ^ punctuation.definition.italic.begin
|          ^ punctuation.definition.italic.end
_foo [**bar**](/url)_
| <- punctuation.definition.italic.begin
|    ^^^^^^^^^^^^^^^ markup.italic meta.link.inline
|                   ^ punctuation.definition.italic.end
|     ^^ punctuation.definition.bold.begin
|          ^^ punctuation.definition.bold.end


1. Open `Command Palette` using menu item `Tools → Command Palette...`
|^ markup.list.numbered punctuation.definition.list_item
|                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.list.numbered meta.paragraph.list markup.raw.inline
2. Choose `Package Control: Install Package`

[**Read more &#8594;**][details]
|^^ punctuation.definition.bold.begin
|            ^^^^^^^ constant.character.entity.html
|                   ^^ punctuation.definition.bold.end
|                       ^^^^^^^ constant.other.reference.link

[Read more &#8594;][details]
|          ^^^^^^^ constant.character.entity.html
|                   ^^^^^^^ constant.other.reference.link

[Read more <span style="font-weight: bold;">&#8594;</span>][details]
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.reference.description
|                       ^^^^^^^^^^^^^^^^^^ source.css
|                                           ^^^^^^^ constant.character.entity.html
|                                                           ^^^^^^^ constant.other.reference.link

[![Cool ★ Image - Click to Enlarge][img-example]][img-example]
|^ punctuation.definition.image.begin
|                                   ^^^^^^^^^^^ constant.other.reference.link
|                                               ^ punctuation.definition.link.end
|                                                 ^^^^^^^^^^^ constant.other.reference.link

[![Cool ★ Image - Click to Enlarge](http://www.sublimetext.com/anim/rename2_packed.png)](http://www.sublimetext.com/anim/rename2_packed.png)
|^ punctuation.definition.image.begin
|                                  ^ punctuation.definition.metadata.begin
|                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.image
|                                                                                     ^ punctuation.definition.metadata.end
|                                                                                       ^ punctuation.definition.metadata.begin
|                                                                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link
|                                                                                                                                          ^ punctuation.definition.metadata.end

[img-example]: http://www.sublimetext.com/anim/rename2_packed.png
|^^^^^^^^^^^ meta.link.reference.def constant.other.reference.link
|            ^ punctuation.separator.key-value
|              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link

[//]: # (This is a comment without a line-break.)
|     ^ meta.link.reference.def markup.underline.link
|       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.other.link.description.title

[//]: # (This is a comment with a
|     ^ meta.link.reference.def markup.underline.link
|       ^ punctuation.definition.string.begin
        line-break.)
|                  ^ punctuation.definition.string.end

[//]: # (testing)blah
|       ^ punctuation.definition.string.begin
|^^^^^^^^^^^^^^^^ meta.link.reference.def
|               ^ punctuation.definition.string.end
|                ^^^^ invalid.illegal.expected-eol

[//]: # (testing
blah
| <- meta.link.reference.def string.other.link.description.title

| <- invalid.illegal.non-terminated.link-title
text
| <- meta.paragraph - meta.link.reference.def

[foo]: <bar> "test"
|      ^ punctuation.definition.link.begin
|       ^^^ markup.underline.link
|          ^ punctuation.definition.link.end
|            ^^^^^^ string.other.link.description.title

[foo]: <bar>> "test"
|      ^ punctuation.definition.link.begin
|       ^^^ markup.underline.link
|          ^ punctuation.definition.link.end
|           ^^^^^^^^ invalid.illegal.expected-eol

- a
  - b
    - c
      - d
|     ^ markup.list.unnumbered.bullet punctuation.definition.list_item
        text here
|       ^^^^^^^^^^ markup.list.unnumbered meta.paragraph.list - markup.raw.block - meta.paragraph.list meta.paragraph.list

            code here
            | ^^^^^^^^ markup.raw.block

      - e
|     ^ markup.list.unnumbered.bullet punctuation.definition.list_item

            code here

            >     block quote code here
|           ^ markup.list.unnumbered markup.quote punctuation.definition.blockquote
|                 ^^^^^^^^^^^^^^^^^^^^^^ markup.list.unnumbered markup.quote markup.raw.block

            > > test
|           ^ markup.list.unnumbered markup.quote punctuation.definition.blockquote
|             ^ markup.list.unnumbered markup.quote markup.quote punctuation.definition.blockquote - markup.raw.block

      - f
|     ^ markup.list.unnumbered.bullet punctuation.definition.list_item
        1. test
|       ^^ markup.list.numbered.bullet
|        ^ punctuation.definition.list_item

abc
| <- meta.paragraph - markup.list

| foo | bar |
|^^^^^^^^^^^^^ meta.block-level meta.table.header
| <- punctuation.separator.table-cell
|     ^ punctuation.separator.table-cell
|           ^ punctuation.separator.table-cell
| ^^^^ - punctuation.separator.table-cell
| --- | --- |
| baz | bim |
| <- meta.block-level meta.table punctuation.separator.table-cell

| <- - meta.block-level - meta.table

| abc | defghi |
:-: | -----------:
|^^^^^^^^^^^^^^^^^ meta.block-level meta.table.header-separator
| <- punctuation.definition.table-cell-alignment
|^ punctuation.section.table-header
|   ^ punctuation.separator.table-cell
|     ^^^^^^^^^^^ punctuation.section.table-header
|                ^ punctuation.definition.table-cell-alignment - punctuation.section.table-header
bar | baz
|   ^ meta.block-level meta.table punctuation.separator.table-cell

| f\|oo  |
| <- meta.block-level meta.table punctuation.separator.table-cell
|  ^^ meta.block-level meta.table constant.character.escape - punctuation.separator.table-cell
|        ^ meta.block-level meta.table punctuation.separator.table-cell
| ------ |
| b `|` az |
|   ^^^ meta.block-level meta.table markup.raw.inline - meta.table.header-separator
|          ^ meta.block-level meta.table punctuation.separator.table-cell
| b **|** im |
| <- meta.block-level meta.table punctuation.separator.table-cell
|   ^^^^^ meta.block-level meta.table markup.bold - punctuation.separator.table-cell
|            ^ meta.block-level meta.table punctuation.separator.table-cell

| abc | def |
| --- | --- |
| bar | baz |
|^^^^^^^^^^^^^ meta.block-level meta.table
test
|^^^^ meta.block-level meta.table
> bar
| <- meta.block-level markup.quote punctuation.definition.blockquote - meta.table

`|` this `|` example `|` is not a table `|`
| ^ punctuation.definition.raw.end - meta.table
| nor is this | because it is not at block level, it immediately follows a paragraph |
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.paragraph - meta.table

| First Header  | Second Header | Third Header         |
| :------------ | :-----------: | -------------------: |
| First row     | Data          | Very long data entry |
| Second row    | **Cell**      | *Cell*               |
| Third row     | Cell that spans across two columns  ||
| ^^^^^^^^^^^^^^ meta.block-level meta.table
|                                                     ^^ punctuation.separator.table-cell

 | table that doesn't start at column 0 |
  | ---- |
  | blah |
| ^^^^^^^^ meta.table
| ^ punctuation.separator.table-cell

not a table | 
| ^^^^^^^^^^^^^ - meta.table

 abc | def
 --- | ---
 --- | ---
| ^^^^ meta.block-level meta.table - meta.table.header

| test | me |
|------|----|
|^^^^^^ punctuation.section.table-header
|*test | me |
|^^^^^^ - markup.bold
|      ^ punctuation.separator.table-cell
|           ^ punctuation.separator.table-cell
|`test | me |
|^ invalid.deprecated.unescaped-backticks
|      ^ punctuation.separator.table-cell

1. test
|  ^^^^^ markup.list.numbered meta.paragraph.list
   - test
|^^^^^^^^^ markup.list.unnumbered
|  ^ markup.list.unnumbered.bullet punctuation.definition.list_item
|    ^^^^^ meta.paragraph.list
   - test
|^^^^^^^^^ markup.list.unnumbered
|  ^ markup.list.unnumbered.bullet punctuation.definition.list_item
|    ^^^^^ meta.paragraph.list
   test
|^^^^^^^ markup.list.numbered meta.paragraph.list
 ****test****
|^^^^^^^^^^^^^ markup.list.numbered meta.paragraph.list - punctuation

 - - test
|^ punctuation.definition.list_item
|  ^^^^^^^ markup.list.unnumbered meta.paragraph.list - punctuation
- - - - test
| <- punctuation.definition.list_item
| ^^^^^^^^^^^ markup.list.unnumbered meta.paragraph.list - punctuation

paragraph

  * List Item 1
    Text under Item 1
  * List Item 2
    Text under Item 2

  * List Item 3
    Text under Item 3
|   ^^^^^^^^^^^^^^^^^^ markup.list.unnumbered meta.paragraph.list - markup.raw
