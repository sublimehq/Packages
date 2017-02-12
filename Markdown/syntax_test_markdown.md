| SYNTAX TEST "Packages/Markdown/Markdown.sublime-syntax"

# Heading
| <- markup.heading punctuation.definition.heading
|^^^^^^^^ markup.heading

## Second Heading
| <- markup.heading punctuation.definition.heading
|^^^^^^^^^^^^^^^^ markup.heading

Alternate Heading
=================
|^^^^^^^^^^^^^^^^ markup.heading.1 punctuation.definition

Paragraph of text that should be scoped as meta.paragraph.
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.paragraph
A [link](https://example.com), *italic text* and **bold**.
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.inline
| ^ punctuation.definition.string.begin
|      ^ punctuation.definition.string.end
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

Here is a ![Image Alt Text](htts://example.com/cat.git).
|         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.image.inline
|          ^ punctuation.definition.string.begin
|                         ^ punctuation.definition.string.end
|                          ^ punctuation.definition.metadata
|                           ^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.image
|                                                     ^ punctuation.definition.metadata

Here is a ![Image Ref Alt][1].
|         ^^^^^^^^^^^^^^^^^^^ meta.image.reference
|          ^ punctuation.definition.string.begin
|                        ^ punctuation.definition.string.end
|                         ^ punctuation.definition.constant
|                          ^ constant.other.reference.link
|                           ^ punctuation.definition.constant


  1. Ordered list item
|  ^ punctuation.definition.list_item
| ^^^^^^^^^^^^^^^^^^^^^ markup.list.numbered
  2. Ordered list item #2
| ^^^^^^^^^^^^^^^^^^^^^^^^ markup.list.numbered
|  ^ punctuation.definition.list_item
     1. Subitem
     2. Another subitem
|     ^ punctuation.definition.list_item
|^^^^^^^^^^^^^^^^^^^^^^^ markup.list.numbered meta.paragraph.list

Paragraph break.

  - Unordered list item
| ^ punctuation.definition.list_item
| ^^^^^^^^^^^^^^^^^^^^ markup.list.unnumbered
  - Unordered list item #2
| ^^^^^^^^^^^^^^^^^^^^^^^ markup.list.unnumbered
| ^ punctuation.definition.list_item

Paragraph break.

  * Unordered list item
| ^ punctuation.definition.list_item
| ^^^^^^^^^^^^^^^^^^^^ markup.list.unnumbered
  + Unordered list item #2
| ^^^^^^^^^^^^^^^^^^^^^^ markup.list.unnumbered
| ^ punctuation.definition.list_item
    + Subitem 1
|   ^ punctuation.definition.list_item
  + Item
    + Subitem
    + Another subitem
|   ^ meta.paragraph.list punctuation.definition.list_item
      + Nested Subitem
|     ^ punctuation.definition.list_item
        + Nested + Subitem
|       ^ punctuation.definition.list_item
|                ^ - punctuation.definition.list_item

Paragraph break.

> This is a block quote. It contains markup.
> Including things like *italics*
|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.quote
|                       ^^^^^^^^^ markup.italic

Paragraph break.

--------
|^^^^^^^ meta.separator

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

* * * * *
| ^^^^^^^^ meta.block-level meta.separator

_ _ _ _ _ _ _
| ^^^^^^^^^^^^ meta.block-level meta.separator

<mailto:test+test@test.com>
| ^^^^^^^^^^^^^^^^^^^^^^^^ meta.paragraph meta.link.email.lt-gt markup.underline.link
<http://www.test.com/>
| ^^^^^^^^^^^^^^^^^^^ meta.paragraph meta.link.inet markup.underline.link
<https://test.com/>
| ^^^^^^^^^^^^^^^^ meta.paragraph meta.link.inet markup.underline.link
<ftp://test.com/>
| ^^^^^^^^^^^^^^ meta.paragraph meta.link.inet markup.underline.link

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

This text is _bold_, but this__text__is neither bold_nor_italic
|            ^ punctuation.definition.italic
|             ^^^^ markup.italic
|                 ^ punctuation.definition.italic
|                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - markup.bold - markup.italic
_perform_complicated_task
| <- punctuation.definition.italic
|       ^ punctuation.definition.italic
|^^^^^^^ markup.italic
|        ^^^^^^^^^^^^^^^^^ - markup.italic
__perform__complicated__task
| <- punctuation.definition.bold
|^ punctuation.definition.bold
|        ^^ punctuation.definition.bold
|^^^^^^^^ markup.bold
|          ^^^^^^^^^^^^^^^^^^ - markup.bold

Paragraph followed immediately by a list, no blank line in between
- list item 1
| <- markup.list.unnumbered punctuation.definition.list_item

Paragraph followed immediately by a numbered list, no blank line in between
 1. list item 1
| ^ markup.list.numbered punctuation.definition.list_item
  more text - this punctuation should be ignored 2.
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
| ^ meta.block-level markup.quote punctuation.definition.list_item
>   1. sub list item
|    ^ meta.block-level markup.quote punctuation.definition.list_item

* this is a list

   > This is a blockquote.
|  ^ markup.list.unnumbered markup.quote punctuation.definition.blockquote

 This is a paragraph still part of the 
 list item
| ^^^^^^^^^ markup.list.unnumbered meta.paragraph.list

* Lorem ipsum

        This is a code block
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.list.unnumbered markup.raw.block
* list continues
| <- markup.list.unnumbered punctuation.definition.list_item - markup.raw.block
* list continues

- `code` - <a name="demo"></a>
| ^ markup.list.unnumbered meta.paragraph.list markup.raw.inline punctuation.definition.raw
|          ^^^^^^^^^^^^^^^^^^^ meta.tag.inline.a.html
 3. [see `demo`](#demo)
| ^ punctuation.definition.list_item
|    ^^^^^^^^^^ string.other.link.title
