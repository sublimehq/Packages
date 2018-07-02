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
