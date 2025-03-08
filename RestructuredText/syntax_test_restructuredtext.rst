.. SYNTAX TEST "Packages/RestructuredText/reStructuredText.sublime-syntax"

.. a comment
.. <- punctuation.definition.comment.restructuredtext
.. ^^^^^^^^^ comment.line.double-dot.restructuredtext


..
  a multi-line comment is indented after initial ..
..^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dot.restructuredtext


..
  a multi-line comment ends at the first character in the
  first column
This is not a comment
.. <- meta.paragraph.restructuredtext

.. multi line comments can contain blank lines.

 These are still part of the comment if they're indented.
.. <- comment.line.double-dot.restructuredtext


<<<<<<< HEAD
.. <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
..^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
..     ^ meta.block.conflict.begin.diff - entity - punctuation
..      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
..          ^ meta.block.conflict.begin.diff - entity - punctuation

>>>>>>> master
.. <- meta.block.conflict.end.diff punctuation.section.block.end.diff
..^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
..     ^ meta.block.conflict.end.diff - entity - punctuation
..      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
..            ^ meta.block.conflict.end.diff - entity - punctuation


Some text
.. <- meta.paragraph.restructuredtext


Paragraph of text
.. <- meta.paragraph.restructuredtext

A heading
=========
.. <- meta.paragraph.restructuredtext markup.heading.restructuredtext punctuation.definition.heading.restructuredtext

A heading
---------
.. <- meta.paragraph.restructuredtext markup.heading.restructuredtext punctuation.definition.heading.restructuredtext

A heading
~~~~~~~~~
.. <- meta.paragraph.restructuredtext markup.heading.restructuredtext punctuation.definition.heading.restructuredtext

A heading
#########
.. <- meta.paragraph.restructuredtext markup.heading.restructuredtext punctuation.definition.heading.restructuredtext

A heading
"""""""""
.. <- meta.paragraph.restructuredtext markup.heading.restructuredtext punctuation.definition.heading.restructuredtext

A heading
^^^^^^^^^
.. <- meta.paragraph.restructuredtext markup.heading.restructuredtext punctuation.definition.heading.restructuredtext

A heading
+++++++++
.. <- meta.paragraph.restructuredtext markup.heading.restructuredtext punctuation.definition.heading.restructuredtext

A heading
*********
.. <- meta.paragraph.restructuredtext markup.heading.restructuredtext punctuation.definition.heading.restructuredtext


This is *italic*.
..      ^^^^^^^^ markup.italic.restructuredtext
..      ^        punctuation.definition.italic.restructuredtext

this is **bold**.
..      ^^^^^^^^ markup.bold.restructuredtext


Directive tests
--------------

.. note that comments within multiline directives must be indented, else they
   convert the contents of that directive into a comment

.. note:: Single line note
.. <- punctuation.definition.directive.restructuredtext
.. ^^^^ meta.other.directive.restructuredtext
..     ^^ punctuation.separator.key-value.restructuredtext

..     note::
    .. ^^^^ meta.other.directive.restructuredtext
    ..     ^^ punctuation.separator.key-value.restructuredtext

    Outer note

    .. note:: Inner single line note
    .. <- punctuation.definition.directive.restructuredtext
    .. ^^^^ meta.other.directive.restructuredtext
    ..     ^^ punctuation.separator.key-value.restructuredtext


Verbatim tests
--------------

::

    Verbatim
..  ^^^^^^^^ meta.raw.block.restructuredtext

Can start with other text::

    Verbatim
..  ^^^^^^^^ meta.raw.block.restructuredtext

.. blank lines should not cause scopes to be left

::

    Verbatim

    Also Verbatim
..  ^^^^^^^^^^^^^ meta.raw.block.restructuredtext

::

    Verbatim

      Also Verbatim
..    ^^^^^^^^^^^^^ meta.raw.block.restructuredtext


::

    Verbatim

Not verbatim
.. <- meta.paragraph.restructuredtext

.. raw:: html
    <b>
    Blank lines are fine

    </b>
..  ^^^^ text.html.basic