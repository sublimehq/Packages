.. SYNTAX TEST "Packages/RestructuredText/reStructuredText.sublime-syntax"
.. <- text.restructuredtext



.. BODY ELEMENTS / HEADINGS ...................................................



=====
Title
=====
.. <- meta.paragraph markup.heading punctuation.definition.heading

--------
Subtitle
--------
.. <- meta.paragraph markup.heading punctuation.definition.heading

A heading
=========
.. <- meta.paragraph markup.heading punctuation.definition.heading

A heading
---------
.. <- meta.paragraph markup.heading punctuation.definition.heading

A heading
~~~~~~~~~
.. <- meta.paragraph markup.heading punctuation.definition.heading

A heading
#########
.. <- meta.paragraph markup.heading punctuation.definition.heading

A heading
"""""""""
.. <- meta.paragraph markup.heading punctuation.definition.heading

A heading
^^^^^^^^^
.. <- meta.paragraph markup.heading punctuation.definition.heading

A heading
+++++++++
.. <- meta.paragraph markup.heading punctuation.definition.heading

A heading
*********
.. <- meta.paragraph markup.heading punctuation.definition.heading



.. BODY ELEMENTS / PARAGRAPHS .................................................



A paragraph with some text.
..                         ^ meta.paragraph.restructuredtext

A paragraph with some text,
on two lines.
..           ^ meta.paragraph.restructuredtext



.. BODY ELEMENTS / EXPLICIT MARKUP BLOCKS / FOOTNOTES .........................



.. [1] This is a footnote.
.. ^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.footnote.def
.. ^^^ meta.link.footnote.def constant.other.footnote.link
.. ^ meta.link.footnote.def constant.other.footnote.link punctuation.definition.constant.begin
..   ^ meta.link.footnote.def constant.other.footnote.link punctuation.definition.constant.end
..     ^^^^^^^^^^^^^^^^^^^^ meta.link.footnote.def meta.string string.other.footnote
.. [2] A footnote contains body elements,
   consistently indented
   by at least 3 spaces.
.. ^^^^^^^^^^^^^^^^^^^^^^ meta.link.footnote.def meta.string string.other.footnote
.. [3] This is a footnote.



.. BODY ELEMENTS / EXPLICIT MARKUP BLOCKS / CITATIONS .........................



.. [CIT001]_ This is a citation.
.. ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.citation.def
.. ^^^^^^^^ meta.link.citation.def constant.other.citation.link
.. ^ meta.link.citation.def constant.other.citation.link punctuation.definition.constant.begin
..        ^^ meta.link.citation.def constant.other.citation.link punctuation.definition.constant.end
..           ^^^^^^^^^^^^^^^^^^^^ meta.link.citation.def meta.string string.other.citation
.. [CIT002]_ Just like a footnote,
   except the label
   is textual.
   Also consistently indented
   by at least 3 spaces.
.. ^^^^^^^^^^^^^^^^^^^^^^ meta.link.citation.def meta.string string.other.citation
.. [CIT003]_ This is a citation.



.. BODY ELEMENTS / EXPLICIT MARKUP BLOCKS / HYPERLINK TARGETS .................

.. TODO: # # # # # # # # # #

.. BODY ELEMENTS / EXPLICIT MARKUP BLOCKS / HTML DIRECTIVES ...................



.. raw:: html
    <b>
    Blank lines are fine

    </b>
..  ^^^^ text.html.basic



.. BODY ELEMENTS / EXPLICIT MARKUP BLOCKS / OTHER DIRECTIVES ..................



.. note:: Single line note
.. <- punctuation.definition.directive
.. ^^^^ meta.other.directive
..     ^^ punctuation.separator.key-value

..     note::
    .. ^^^^ meta.other.directive
    ..     ^^ punctuation.separator.key-value

    Outer note

    .. note:: Inner single line note
    .. <- punctuation.definition.directive
    .. ^^^^ meta.other.directive
    ..     ^^ punctuation.separator.key-value



.. BODY ELEMENTS / EXPLICIT MARKUP BLOCKS / SUBSTITUTION DEFINITIONS ..........

.. TODO: # # # # # # # # # #

.. BODY ELEMENTS / EXPLICIT MARKUP BLOCKS / COMMENTS ..........................



.. a comment
.. <- comment.block.double-dot punctuation.definition.comment
 .. <- comment.block.double-dot punctuation.definition.comment
..^^^^^^^^^^^ comment.block.double-dot

..
  a multi-line comment is indented after initial ..
..^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.double-dot

..
  a multi-line comment ends at the first character in the
  first column
This is not a comment
.. <- meta.paragraph - comment

.. multi line comments can contain blank lines.

  These are still part of the comment
  if they're indented.
..                    ^ comment.block.double-dot

.. Comments
   .. cannot be nested.
.. ^^^^^^^^^^^^^^^^^^^^^ comment.block.double-dot - comment comment



.. BODY ELEMENTS / BLOCK QUOTES ...............................................

.. TODO: # # # # # # # # # #

.. BODY ELEMENTS / DOCTEST BLOCKS .............................................



>>> print("hello world")
..  ^^^^^ support.function.builtin.python

.. <- text.restructuredtext - source.python.embedded



.. BODY ELEMENTS / TABLES / GRID TABLES .......................................

.. TODO: # # # # # # # # # #

.. BODY ELEMENTS / TABLES / SIMPLE TABLES .....................................

.. TODO: # # # # # # # # # #

.. BODY ELEMENTS / LISTS / BULLET LISTS .......................................



.. with a star

* one
* two
  two

  two
* three

.. or a minus

- one
- two
  two

  two
- three

.. or a plus

+ one
+ two
  two

  two
+ three



.. BODY ELEMENTS / LISTS / ENUMERATED LISTS ...................................



.. with a number

1. one
(2) two
    two

    two
3) three

.. or a letter

a. one
(b) two
    two

    two
c) three

.. or a Roman numeral

I. one
(II) two
     two

     two
III) three



.. BODY ELEMENTS / LISTS / DEFINITION LISTS ...................................



one
    Definition one.
two
    Definition two.
three
    Definition three.



.. BODY ELEMENTS / LISTS / FIELD LISTS ........................................



:one: Field body one.

:two: Field body two.
      two.
      two.

:three: Field body three.



.. BODY ELEMENTS / LISTS / OPTION LISTS .......................................

.. TODO: # # # # # # # # # #

.. BODY ELEMENTS / LINE BLOCKS ................................................



| This is a line block,
  with some **bold** text on the next line.
..          ^^^^^^^^ markup.bold
..                                         ^ meta.block markup.quote.line-block

Some other paragraph.

    | This is some indented line block.
..  ^ meta.block markup.quote.line-block punctuation.definition.generic

Some other paragraph.

    | This is an indented line block,
      with some **bold** text on the next line.
..              ^^^^^^^^ markup.bold
..                                             ^ meta.block markup.quote.line-block



.. BODY ELEMENTS / LITERAL BLOCKS .............................................



::

    Verbatim
..  ^^^^^^^^ meta.raw.block

Can start with other text::

    Verbatim
..  ^^^^^^^^ meta.raw.block

.. blank lines should not cause scopes to be left

::

    Verbatim

    Also Verbatim
..  ^^^^^^^^^^^^^ meta.raw.block

::

    Verbatim

      Also Verbatim
..    ^^^^^^^^^^^^^ meta.raw.block

::

    Verbatim

Not verbatim
.. <- meta.paragraph



.. INLINE MARKUP / TEXT STYLES ................................................



Test    Test **bold bold** Test
..           ^^^^^^^^^^^^^ markup.bold
..           ^^ punctuation.definition.bold.begin
..                      ^^ punctuation.definition.bold.end

Test    Test *italic italic* Test
..           ^^^^^^^^^^^^^^^ markup.italic
..           ^ punctuation.definition.italic.begin
..                         ^ punctuation.definition.italic.end



.. INLINE MARKUP / LITERALS ...................................................



Test    Test ``literal literal`` Test
..           ^^^^^^^^^^^^^^^^^^^ markup.raw
..           ^^ punctuation.definition.raw.begin
..                            ^^ punctuation.definition.raw.end



.. INLINE MARKUP / INTERNAL TARGETS ...........................................

.. TODO: # # # # # # # # # #

.. INLINE MARKUP / HYPERLINK REFERENCES .......................................

.. TODO: # # # # # # # # # #

.. INLINE MARKUP / INTERPRETED TEXT ...........................................



Test    Test `interpreted interpreted` Test
..           ^^^^^^^^^^^^^^^^^^^^^^^^^ markup.other.command
..           ^ punctuation.definition.markup.interpreted.begin
..                                   ^ punctuation.definition.markup.interpreted.end



.. INLINE MARKUP / FOOTNOTE REFERENCES ........................................



Test    Test [0]_ Test
..           ^^^^ meta.link.footnote.numeric
..           ^^^ meta.link.footnote.numeric constant.other.footnote.link

Test    Test [#]_ Test [#footnote]_ Test
..           ^^^^ meta.link.footnote.auto
..           ^^^ meta.link.footnote.auto constant.other.footnote.link
..                     ^^^^^^^^^^^^ meta.link.footnote.auto
..                     ^^^^^^^^^^^ meta.link.footnote.auto constant.other.footnote.link

Test    Test [†]_ Test [‡]_ Test [§]_ Test [¶]_ Test [#]_ Test
..           ^^^^ meta.link.footnote.symbol.auto
..           ^^^ meta.link.footnote.symbol.auto constant.other.footnote.link
..                     ^^^^ meta.link.footnote.symbol.auto
..                     ^^^ meta.link.footnote.symbol.auto constant.other.footnote.link
..                               ^^^^ meta.link.footnote.symbol.auto
..                               ^^^ meta.link.footnote.symbol.auto constant.other.footnote.link
..                                         ^^^^ meta.link.footnote.symbol.auto
..                                         ^^^ meta.link.footnote.symbol.auto constant.other.footnote.link
.. TODO: meta.link.footnote.symbol.auto
.. TODO: meta.link.footnote.symbol.auto constant.other.footnote.link

Test    Test [♠️]_ Test [♥️]_ Test [♦️]_ Test [♣️]_ Test
..           ^^^^^ meta.link.footnote.symbol.auto
..           ^^^^ meta.link.footnote.symbol.auto constant.other.footnote.link
..                      ^^^^^ meta.link.footnote.symbol.auto
..                      ^^^^ meta.link.footnote.symbol.auto constant.other.footnote.link
..                                 ^^^^^ meta.link.footnote.symbol.auto
..                                 ^^^^ meta.link.footnote.symbol.auto constant.other.footnote.link
..                                            ^^^^^ meta.link.footnote.symbol.auto
..                                            ^^^^ meta.link.footnote.symbol.auto constant.other.footnote.link



.. INLINE MARKUP / HYPERLINKS SIMPLE ..........................................

.. TODO: # # # # # # # # # #

.. INLINE MARKUP / SUBSTITUTION REFERENCES ....................................



Test    Test |substitution substitution| Test
..           ^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.substitution
..           ^ punctuation.definition.substitution.begin
..                                     ^ punctuation.definition.substitution.end

Test    Test |substitution substitution|_ Test
..           ^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.substitution
..           ^ punctuation.definition.substitution.begin
..                                     ^ punctuation.definition.substitution.end

Test    Test |substitution substitution|__ Test
..           ^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.substitution
..           ^ punctuation.definition.substitution.begin
..                                     ^ punctuation.definition.substitution.end



.. INLINE MARKUP / STANDALONE LINKS ...........................................

.. TODO: # # # # # # # # # #
