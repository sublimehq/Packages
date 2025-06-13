.. SYNTAX TEST "Packages/RestructuredText/reStructuredText.sublime-syntax"
.. <- text.restructuredtext



.. BODY ELEMENTS / HEADINGS AND TRANSITIONS ...................................



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

paragraph before section separator

----

paragraph after section separator



.. BODY ELEMENTS / PARAGRAPHS .................................................



A paragraph with some text.
..                         ^ meta.paragraph

A paragraph with some text,
on two lines.
..           ^ meta.paragraph



.. BODY ELEMENTS / EXPLICIT MARKUP BLOCKS / FOOTNOTES .........................



.. [1] This is a footnote.
.. ^^^^^^^^^^^^^^^^^^^^^^^ meta.link.footnote.def
.. ^^^ meta.link.footnote.def constant.other.footnote.link
.. ^ meta.link.footnote.def constant.other.footnote.link punctuation.definition.constant.begin
..   ^ meta.link.footnote.def constant.other.footnote.link punctuation.definition.constant.end
..     ^^^^^^^^^^^^^^^^^^^ meta.link.footnote.def meta.string string.other.footnote
.. ^^^^^^^^^^^^^^^^^^^^^^^^ - meta.link.footnote.def meta.link.footnote.def
.. [2] A footnote contains body elements,
   consistently indented
   by at least 3 spaces.
.. ^^^^^^^^^^^^^^^^^^^^^ meta.link.footnote.def meta.string string.other.footnote
.. [3] This is a footnote.



.. BODY ELEMENTS / EXPLICIT MARKUP BLOCKS / CITATIONS .........................



.. [CIT001]_ This is a citation.
.. ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.citation.def
.. ^^^^^^^^^ meta.link.citation.def constant.other.citation.link
.. ^ meta.link.citation.def constant.other.citation.link punctuation.definition.constant.begin
..        ^^ meta.link.citation.def constant.other.citation.link punctuation.definition.constant.end
..           ^^^^^^^^^^^^^^^^^^^ meta.link.citation.def meta.string string.other.citation
.. ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.link.citation.def meta.link.citation.def
.. [CIT002]_ Just like a footnote,
   except the label
   is textual.
   Also consistently indented
   by at least 3 spaces.
.. ^^^^^^^^^^^^^^^^^^^^^ meta.link.citation.def meta.string string.other.citation
.. [CIT003]_ This is a citation.



.. BODY ELEMENTS / EXPLICIT MARKUP BLOCKS / EXPLICIT HYPERLINK TARGETS ........



.. FIXME: fix tests

.. _description text: https://subdomain.domain.tld/root-folder/

.. _description text: https://
    subdomain.domain.tld/
    root-folder/

.. _description text:
   https://subdomain.domain.tld/root-folder/

.. _description text: ../local\ path\ with\ spaces/

.. _description text: underscore\_

.. __: ../anonymous/explicit/hyperlink/target/

.. __: ../anonymous/
   explicit/
   hyperlink/
   target/

.. __:
   anonymous/
   explicit/
   hyperlink/
   target/

.. comment

__ ../anonymous/explicit/hyperlink/target/

.. comment

__ ../anonymous/
   explicit/
   hyperlink/
   target/

.. comment

__
  anonymous/
  explicit/
  hyperlink/
  target/

.. comment



.. BODY ELEMENTS / EXPLICIT MARKUP BLOCKS / RAW-CODE DIRECTIVES ...............



.. raw:: text
.. ^^^^^^^^^^ meta.directive.raw-code
.. ^^^^^^^^^^ - meta.directive.raw-code meta.directive.raw-code

.. raw:: css
   @media (max-width: 50%) {
       #page {
           color: #000 !important;
       }
   }
..  ^ meta.directive.raw-code text.restructuredtext.embedded.css source.css.embedded.restructuredtext

.. code-block:: html
    <b>
    Blank lines are fine

    </b>
..      ^ meta.directive.raw-code text.restructuredtext.embedded.html text.html.basic.embedded.restructuredtext

.. code:: html
    <b>
    Blank lines are fine

    </b>
..      ^ meta.directive.raw-code text.restructuredtext.embedded.html text.html.basic.embedded.restructuredtext

.. raw:: html
    <b>
    Blank lines are fine

    </b>
..      ^ meta.directive.raw-code text.restructuredtext.embedded.html text.html.basic.embedded.restructuredtext

.. raw:: javascript
   this.func()
..            ^ meta.directive.raw-code text.restructuredtext.embedded.javascript source.javascript.embedded.restructuredtext

.. raw:: js
   this.func()
..            ^ meta.directive.raw-code text.restructuredtext.embedded.javascript source.javascript.embedded.restructuredtext

.. raw:: json
   { "one": 1, "two": 2 }
..                       ^ meta.directive.raw-code text.restructuredtext.embedded.json source.json.embedded.restructuredtext

.. raw:: jsonc
   { "one": 1, /* comment */ "two": 2 }
..                                     ^ meta.directive.raw-code text.restructuredtext.embedded.json source.json.embedded.restructuredtext

.. raw:: python
    print("blank lines are fine")

    print("Hello, world!")
..                        ^ meta.directive.raw-code text.restructuredtext.embedded.python source.python.embedded.restructuredtext

.. raw:: toml
   table = { key = "value" }
..                          ^ meta.directive.raw-code text.restructuredtext.embedded.toml source.toml.embedded.restructuredtext

.. raw:: yaml
   one:
     two: 'three'
..               ^ meta.directive.raw-code text.restructuredtext.embedded.yaml source.yaml.embedded.restructuredtext



.. BODY ELEMENTS / EXPLICIT MARKUP BLOCKS / OTHER DIRECTIVES ..................



.. directive-option-test::
   :alt: alternative text
   :class: one two three
   :code: python
   :end-before: some text
   :escape: "
   :figclass: one two three
   :figname: name
   :file: /path/to/file
   :format: html5
   :language: python
   :name: name
   :parser: rst
   :prefix: 1.2.3.
   :quote: "
   :start-after: some text
   :subtitle: subtitle
   :suffix: no suffix
   :target: `reference name`_
   :url: /path/to/URI/
   :depth: 6
   :end-line: 99
   :header-rows: 2
   :number-lines: 5
   :stub-columns: 2
   :start: 2
   :start-line: 2
   :tab-width: 2
   :keepspace:
   :literal:
   :local:
   :ltrim:
   :number-lines:
   :rtrim:
   :trim:
   :align: top
   :backlinks: entry
   :delim: ,
   :encoding: utf_8
   :height: 100px
   :loading: lazy
   :scale: 50%
   :width: 100px
   :widths: 2,2,2,2,2

   directive option test body

.. note:: Single line note
.. <- meta.other.directive punctuation.definition.directive
 .. <- meta.other.directive punctuation.definition.directive
..^^^^^^^^^^^^^^^^^^^^^^^^ meta.other.directive
..     ^^ meta.other.directive punctuation.separator.key-value

.. note::
   .. <- meta.other.directive constant.language.directive-name
    .. <- meta.other.directive constant.language.directive-name
   ..^^ meta.other.directive constant.language.directive-name
   ..  ^^ meta.other.directive
   ..  ^^ punctuation.separator.key-value

    Outer note

    .. note:: Inner single line note
    .. <- punctuation.definition.directive
    .. ^^^^ meta.other.directive
    ..     ^^ punctuation.separator.key-value

.. someOtherN4M3:: paragraph
.. ^^^^^^^^^^^^^ meta.other.directive constant.other.directive-name



.. BODY ELEMENTS / EXPLICIT MARKUP BLOCKS / SUBSTITUTION DEFINITIONS ..........



.. |substitution substitution| image:: img.png
.. ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.info.substitution-definition
.. ^ markup.info.substitution-definition punctuation.definition.substitution.begin
..  ^^^^^^^^^^^^^^^^^^^^^^^^^ markup.info.substitution-definition markup.deleted
..                           ^ markup.info.substitution-definition punctuation.definition.substitution.end
..                            ^ markup.info.substitution-definition
..                             ^^^^^^^^^^^^^^^ markup.info.substitution-definition markup.inserted
..                             ^^^^^ meta.generic.inline-compatible-directive
..                                  ^^ punctuation.definition.directive



.. BODY ELEMENTS / EXPLICIT MARKUP BLOCKS / COMMENTS ..........................



.. a comment
.. <- comment.block.double-dot punctuation.definition.comment
 .. <- comment.block.double-dot punctuation.definition.comment
..^^^^^^^^^^ comment.block.double-dot

..
  a multi-line comment is indented after initial ..
..^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.double-dot

..
  a multi-line comment ends at the first character in the
  first column
This is not a comment
.. <- meta.paragraph - comment

.. multi line comments can contain blank lines.

  These are still part of the comment
  if they're indented.
..                   ^ comment.block.double-dot

.. Comments
   .. cannot be nested.
.. ^^^^^^^^^^^^^^^^^^^^ comment.block.double-dot - comment comment

..
  _comment: comment!
..^^^^^^^^^^^^^^^^^^ comment.block.double-dot - markup

..
  [comment] comment!
..^^^^^^^^^^^^^^^^^^ comment.block.double-dot - markup

..
  comment:: comment!
..^^^^^^^^^^^^^^^^^^ comment.block.double-dot - markup - meta.other.directive

..
  |comment| comment:: |
..^^^^^^^^^^^^^^^^^^^^^ comment.block.double-dot - markup
.. TODO: not substitution definition

paragraph before empty block comment

..

paragraph after empty block comment

... not a comment
..  ^^^^^^^^^^^^^ meta.paragraph - comment



.. BODY ELEMENTS / BLOCK QUOTES ...............................................



.. FIXME: highlighting attributions
.. TODO: fix block-quotes separated by empty comments

start block-quote test

block-quote with three dashes attribution

        block-quote paragraph with **bold text** test
        block-quote paragraph with *italic text* test
        --- Attribution
            Attribution

block-quote with three dashes (and no whitespace) attribution

        block-quote paragraph with **bold text** test
        block-quote paragraph with *italic text* test
        ---Attribution
           Attribution

block-quote with two dashes attribution

        block-quote paragraph with **bold text** test
        block-quote paragraph with *italic text* test
        -- Attribution
           Attribution

block-quote with two dashes (and no whitespace) attribution

        block-quote paragraph with **bold text** test
        block-quote paragraph with *italic text* test
        --Attribution
          Attribution

block-quote with one em-dash attribution

        block-quote paragraph with **bold text** test
        block-quote paragraph with *italic text* test
        — Attribution
          Attribution

block-quote with one em-dash (and no whitespace) attribution

        block-quote paragraph with **bold text** test
        block-quote paragraph with *italic text* test
        —Attribution
         Attribution

end block-quote test



.. BODY ELEMENTS / DOCTEST BLOCKS .............................................



>>> print("hello world")
..  ^^^^^^^^^^^^^^^^^^^^^ text.restructuredtext.embedded.python source.python.embedded

.. <- text.restructuredtext - source



.. BODY ELEMENTS / TABLES / GRID TABLES .......................................



+------------------------+------------+----------+----------+
| Header row, column 1   | Header 2   | Header 3 | Header 4 |
| (header rows optional) |            |          |          |
+========================+============+==========+==========+
| body row 1, column 1   | column 2   | column 3 | column 4 |
+------------------------+------------+----------+----------+
| body row 2             | Cells may span columns.          |
+------------------------+------------+---------------------+
| body row 3             | Cells may  | - Table cells       |
+------------------------+ span rows. | - contain           |
| body row 4             |            | - body elements.    |
+------------------------+------------+---------------------+
| ``inline literal``     |            |                     |
+------------------------+------------+---------------------+
| **inline bold**        |            |                     |
+------------------------+------------+---------------------+
| *inline italic*        |            |                     |
+------------------------+------------+---------------------+
| _`internal target`     |            |                     |
+------------------------+------------+---------------------+
| `test test's`_         | named hyperlink                  |
+------------------------+------------+---------------------+
| `test test's`__        | anonymous hyperlink              |
+------------------------+------------+---------------------+
| - unordered list item  |            |                     |
+------------------------+------------+---------------------+
| * unordered list item  |            |                     |
+------------------------+------------+---------------------+
| 1. ordered list item   |            |                     |
+------------------------+------------+---------------------+
| a. ordered list item   |            |                     |
+------------------------+------------+---------------------+
| I. ordered list item   |            |                     |
+------------------------+------------+---------------------+



.. BODY ELEMENTS / TABLES / SIMPLE TABLES .....................................

.. TODO: # # # # # # # # # #

.. BODY ELEMENTS / LISTS / BULLET LISTS .......................................



.. with a star

* one
* two
  two

  two
* three
.. <- markup.list.unnumbered markup.list.unnumbered.bullet punctuation.definition.list_item
 .. <- markup.list.unnumbered - bullet - punctuation
..^^^^^ markup.list.unnumbered

.. or a minus

- one
- two
  two

  two
- three
.. <- markup.list.unnumbered markup.list.unnumbered.bullet punctuation.definition.list_item
 .. <- markup.list.unnumbered - bullet - punctuation
..^^^^^ markup.list.unnumbered

.. or a plus

+ one
+ two
  two

  two
+ three
.. <- markup.list.unnumbered markup.list.unnumbered.bullet punctuation.definition.list_item
 .. <- markup.list.unnumbered - bullet - punctuation
..^^^^^ markup.list.unnumbered



.. BODY ELEMENTS / LISTS / ENUMERATED LISTS ...................................



.. with a number

1. one
(2) two
    two

    two
3) three
.. <- markup.list.numbered markup.list.numbered.bullet punctuation.definition.list_item
 .. <- markup.list.numbered markup.list.numbered.bullet punctuation.definition.list_item
..^^^^^^ markup.list.numbered - bullet - punctuation

.. or a letter

a. one
(b) two
    two

    two
c) three
.. <- markup.list.numbered markup.list.numbered.bullet punctuation.definition.list_item
 .. <- markup.list.numbered markup.list.numbered.bullet punctuation.definition.list_item
..^^^^^^ markup.list.numbered - bullet - punctuation

.. or a Roman numeral

I. one
(II) two
     two

     two
III) three
.. <- markup.list.numbered markup.list.numbered.bullet punctuation.definition.list_item
 .. <- markup.list.numbered markup.list.numbered.bullet punctuation.definition.list_item
..^^ markup.list.numbered markup.list.numbered.bullet punctuation.definition.list_item
..  ^^^^^^ markup.list.numbered - bullet - punctuation



.. BODY ELEMENTS / LISTS / DEFINITION LISTS ...................................



one
    Definition one.
two : optional-classifier : optional-classifier : optional-classifier
    Definition two.
    Definition two.
    Definition two.
three
    Definition three.



.. BODY ELEMENTS / LISTS / FIELD LISTS ........................................



:Date: 2024-12-31

:Authors: - Author A
          - Author B
          - Author C

:Version: 2024.12.31
.. <- markup.list.field meta.field-list-item punctuation.definition.generic.begin
 .. <- markup.list.field meta.field-list-item entity.name.tag
..^^^^^^^^ markup.list.field meta.field-list-item
..^^^^^^ entity.name.tag
..      ^ punctuation.definition.generic.end
..       ^^^^^^^^^^^ markup.list.field



.. BODY ELEMENTS / LISTS / OPTION LISTS .......................................



.. TODO: # # # # # # # # # #



.. BODY ELEMENTS / LINE BLOCKS ................................................



| This is a line block,
  with some **bold** text on the next line.
..          ^^^^^^^^ markup.bold
..                                        ^ meta.block markup.quote.line-block

Some other paragraph.

    | This is some indented line block.
..  ^ meta.block markup.quote.line-block punctuation.definition.generic

Some other paragraph.

    | This is an indented line block,
      with some **bold** text on the next line.
..              ^^^^^^^^ markup.bold
..                                            ^ meta.block markup.quote.line-block



.. BODY ELEMENTS / LITERAL BLOCKS .............................................



::

    literal block
..              ^ meta.raw.block markup.raw.block

Can start with other text::

    literal block
..              ^ meta.raw.block markup.raw.block

::

    literal block

    still literal block
..                    ^ meta.raw.block markup.raw.block

::

    literal block

      still literal block without **bold** or other inline markup
..                                ^^^^^^^^ - markup.bold
..                                                              ^ meta.raw.block markup.raw.block

::

    literal block

paragraph
.. <- meta.paragraph - meta.raw.block - markup.raw.block



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



Test    Test ````` Test
..           ^^^^^ markup.raw.inline
..           ^^ markup.raw.inline punctuation.definition.raw.begin
..              ^^ markup.raw.inline punctuation.definition.raw.end

Test    Test ``literal literal`` Test
..           ^^^^^^^^^^^^^^^^^^^ markup.raw.inline
..           ^^ markup.raw.inline punctuation.definition.raw.begin
..                            ^^ markup.raw.inline punctuation.definition.raw.end

Test    Test ``literal
..           ^^^^^^^^^ markup.raw.inline
..           ^^ markup.raw.inline punctuation.definition.raw.begin
..                    ^ markup.raw.inline invalid.illegal.newline



.. INLINE MARKUP / INTERNAL TARGETS ...........................................



Test    _`internal target` Test
..      ^^^^^^^^^^^^^^^^^^ markup.underline.link
..      ^^ markup.underline.link punctuation.definition.generic.begin
..                       ^ markup.underline.link punctuation.definition.generic.end

Test    _`internal
..      ^^^^^^^^^^ markup.underline.link
..      ^^ markup.underline.link punctuation.definition.generic.begin
..                ^ markup.underline.link invalid.illegal.newline



.. INLINE MARKUP / HYPERLINK REFERENCES .......................................



.. with one underscore: named

Test    test_ Test
..      ^^^^^ meta.link.reference string.other.link.title
..          ^ meta.link.reference string.other.link.title punctuation.definition.link

Test    test's_ Test
..      ^^^^^^^ meta.link.reference string.other.link.title
..            ^ meta.link.reference string.other.link.title punctuation.definition.link

Test    `test test`_ Test
..      ^^^^^^^^^^^^ meta.link.reference string.other.link.title
..      ^ meta.link.reference string.other.link.title punctuation.definition.link.begin
..                ^^ meta.link.reference string.other.link.title punctuation.definition.link.end

Test    `test test's`_ Test
..      ^^^^^^^^^^^^^^ meta.link.reference string.other.link.title
..      ^ meta.link.reference string.other.link.title punctuation.definition.link.begin
..                  ^^ meta.link.reference string.other.link.title punctuation.definition.link.end

Test    `test test <https://www.domain.tld/path/>`_ Test
..      ^^^^^^^^^^^^^^^^^^^ meta.link.inline
..      ^ meta.link.inline punctuation.definition.link.begin
..       ^^^^^^^^^ meta.link.inline string.other.link.title
..                ^ meta.link.inline
..                 ^ meta.link.inline punctuation.definition.location.begin
..                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.link.inline markup.underline.link
..                                              ^ meta.link.inline punctuation.definition.location.end
..                                               ^^ meta.link.inline punctuation.definition.link.end

Test    `test test <test test_>`_ Test
..      ^^^^^^^^^^^^^^^^^^^ meta.link.inline
..      ^ meta.link.inline punctuation.definition.link.begin
..       ^^^^^^^^^ meta.link.inline string.other.link.title
..                ^ meta.link.inline
..                 ^ meta.link.inline punctuation.definition.location.begin
..                  ^^^^^^^^^^ meta.link.inline markup.underline.link
..                            ^ meta.link.inline punctuation.definition.location.end
..                             ^^ meta.link.inline punctuation.definition.link.end

.. with two underscores: anonymous

Test    test__ Test
..      ^^^^^^ meta.link.reference string.other.link.title
..          ^^ meta.link.reference string.other.link.title punctuation.definition.link

Test    test's__ Test
..      ^^^^^^^^ meta.link.reference string.other.link.title
..            ^^ meta.link.reference string.other.link.title punctuation.definition.link

Test    `test test`__ Test
..      ^^^^^^^^^^^^^ meta.link.reference string.other.link.title
..      ^ meta.link.reference string.other.link.title punctuation.definition.link.begin
..                ^^^ meta.link.reference string.other.link.title punctuation.definition.link.end

Test    `test test's`__ Test
..      ^^^^^^^^^^^^^^^ meta.link.reference string.other.link.title
..      ^ meta.link.reference string.other.link.title punctuation.definition.link.begin
..                  ^^^ meta.link.reference string.other.link.title punctuation.definition.link.end



.. INLINE MARKUP / INTERPRETED TEXT ...........................................



Test    Test `interpreted interpreted` Test
..           ^^^^^^^^^^^^^^^^^^^^^^^^^ markup.other
..           ^ punctuation.definition.markup.interpreted.begin
..                                   ^ punctuation.definition.markup.interpreted.end

Test    Test :emphasis:`interpreted interpreted` Test
..           ^^^^^^^^^^^^^^^^^^^^^^^^^ markup.other
..           ^^^^^^^^^^ storage.type
..                     ^ punctuation.definition.markup.interpreted.begin
..                                             ^ punctuation.definition.markup.interpreted.end

Test    Test `interpreted interpreted`:emphasis: Test
..           ^^^^^^^^^^^^^^^^^^^^^^^^^ markup.other
..           ^ punctuation.definition.markup.interpreted.begin
..                                   ^ punctuation.definition.markup.interpreted.end
..                                    ^^^^^^^^^^ storage.type

Test    Test :raw-text:`interpreted interpreted` Test
..           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.other
..           ^^^^^^^^^^ storage.type
..                     ^ punctuation.definition.markup.interpreted.begin
..                                             ^ punctuation.definition.markup.interpreted.end



.. INLINE MARKUP / FOOTNOTE REFERENCES ........................................



Test    Test [0]_ Test
..           ^^^^ meta.link.footnote.numeric
..           ^ meta.link.footnote.numeric punctuation.definition.footnote-reference.begin
..            ^ meta.link.footnote.numeric constant.other.footnote.link
..             ^^ meta.link.footnote.numeric punctuation.definition.footnote-reference.end

Test    Test [#]_ Test [#a]_ Test [#0]_ Test [#footnote]_ Test
..           ^^^^ meta.link.footnote.auto
..           ^^ meta.link.footnote.auto punctuation.definition.footnote-reference.begin
..             ^^ meta.link.footnote.auto punctuation.definition.footnote-reference.end
..                     ^^^^^ meta.link.footnote.auto
..                     ^^ meta.link.footnote.auto punctuation.definition.footnote-reference.begin
..                       ^ meta.link.footnote.auto constant.other.footnote.link
..                        ^^ meta.link.footnote.auto punctuation.definition.footnote-reference.end
..                                ^^^^^ meta.link.footnote.auto
..                                ^^ meta.link.footnote.auto punctuation.definition.footnote-reference.begin
..                                  ^ meta.link.footnote.auto constant.other.footnote.link
..                                   ^^ meta.link.footnote.auto punctuation.definition.footnote-reference.end
..                                           ^^^^^^^^^^^^ meta.link.footnote.auto
..                                           ^^ meta.link.footnote.auto punctuation.definition.footnote-reference.begin
..                                             ^^^^^^^^ meta.link.footnote.auto constant.other.footnote.link
..                                                     ^^ meta.link.footnote.auto punctuation.definition.footnote-reference.end

Test    Test [†]_ Test [‡]_ Test [§]_ Test [¶]_ Test [#]_ Test
..           ^^^^ meta.link.footnote.symbol.auto
..           ^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.begin
..            ^ meta.link.footnote.symbol.auto constant.other.footnote.link
..             ^^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.end
..                     ^^^^ meta.link.footnote.symbol.auto
..                     ^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.begin
..                      ^ meta.link.footnote.symbol.auto constant.other.footnote.link
..                       ^^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.end
..                               ^^^^ meta.link.footnote.symbol.auto
..                               ^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.begin
..                                ^ meta.link.footnote.symbol.auto constant.other.footnote.link
..                                 ^^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.end
..                                         ^^^^ meta.link.footnote.symbol.auto
..                                         ^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.begin
..                                          ^ meta.link.footnote.symbol.auto constant.other.footnote.link
..                                           ^^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.end
.. TODO: meta.link.footnote.symbol.auto
.. TODO: meta.link.footnote.symbol.auto constant.other.footnote.link

Test    Test [♠️]_ Test [♥️]_ Test [♦️]_ Test [♣️]_ Test
..           ^^^^^ meta.link.footnote.symbol.auto
..           ^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.begin
..            ^^ meta.link.footnote.symbol.auto constant.other.footnote.link
..              ^^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.end
..                      ^^^^^ meta.link.footnote.symbol.auto
..                      ^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.begin
..                       ^^ meta.link.footnote.symbol.auto constant.other.footnote.link
..                         ^^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.end
..                                 ^^^^^ meta.link.footnote.symbol.auto
..                                 ^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.begin
..                                  ^^ meta.link.footnote.symbol.auto constant.other.footnote.link
..                                    ^^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.end
..                                            ^^^^^ meta.link.footnote.symbol.auto
..                                            ^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.begin
..                                             ^^ meta.link.footnote.symbol.auto constant.other.footnote.link
..                                               ^^ meta.link.footnote.symbol.auto punctuation.definition.footnote-reference.end



.. INLINE MARKUP / SUBSTITUTION REFERENCES ....................................



Test    Test |substitution substitution| Test
..           ^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.substitution
..           ^ punctuation.definition.substitution.begin
..                                     ^ punctuation.definition.substitution.end
..                                      ^ - markup

Test    Test |substitution substitution|_ Test
..           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.substitution
..           ^ punctuation.definition.substitution.begin
..                                     ^^ punctuation.definition.substitution.end
..                                       ^ - markup

Test    Test |substitution substitution|__ Test
..           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.substitution
..           ^ punctuation.definition.substitution.begin
..                                     ^^^ punctuation.definition.substitution.end
..                                        ^ - markup


.. INLINE MARKUP / STANDALONE LINKS ...........................................

.. TODO: # # # # # # # # # #
