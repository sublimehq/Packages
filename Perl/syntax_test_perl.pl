# SYNTAX TEST "Packages/Perl/Perl.sublime-syntax"

# comment ; still in here
# ^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.perl
#         ^ - punctuation

###[ POD TESTS ] #############################################################

=head1 Section 1
# <- comment.block.documentation.perl meta.heading.perl entity.name.tag.pod.perl
#^^^^^^^^^^^^^^^^ comment.block.documentation.perl meta.heading.perl
#^^^^^ entity.name.tag.pod.perl
#     ^ - entity
#      ^^^^^^^^^ entity.name.section.perl
Paragraph
# <- comment.block.documentation.perl
#^^^^^^^^^ comment.block.documentation.perl
=head2 Section 1.1
# <- comment.block.documentation.perl meta.heading.perl entity.name.tag.pod.perl
#^^^^^^^^^^^^^^^^^^ comment.block.documentation.perl meta.heading.perl
#^^^^^ entity.name.tag.pod.perl
#     ^ - entity
#      ^^^^^^^^^^^ entity.name.section.perl
Paragraph
# <- comment.block.documentation.perl
#^^^^^^^^^ comment.block.documentation.perl
=item Using C<$|> to Control Buffering
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.perl
#^^^^ entity.name.tag.pod.perl
#    ^ - entity - string
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.unquoted.perl
#           ^ entity.name.tag.code.perl
#            ^ punctuation.definition.tag.begin.perl
#             ^^ markup.quote.perl
#               ^ punctuation.definition.tag.end.perl
=cut
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^ comment.block.documentation.perl entity.name.tag.pod.perl

=pod
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^ comment.block.documentation.perl entity.name.tag.pod.perl
=encoding utf8
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^^^^^^^^^^^ comment.block.documentation.perl
#^^^^^^^^ entity.name.tag.pod.perl
#        ^ - entity - string
#         ^^^^ meta.string.perl string.unquoted.perl
=head1 B<--param>
# <- comment.block.documentation.perl meta.heading.perl entity.name.tag.pod.perl
#^^^^^^^^^^^^^^^^^ comment.block.documentation.perl meta.heading.perl
#^^^^^ entity.name.tag.pod.perl
#     ^ - entity - string
#      ^^^^^^^^^^ entity.name.section.perl
#      ^ entity.name.tag.bold.perl
#       ^ punctuation.definition.tag.begin.perl
#        ^^^^^^^ markup.bold.perl
#               ^ punctuation.definition.tag.end.perl
   B<bold>
#  ^^^^^^^ comment.block.documentation.perl
#  ^ entity.name.tag.bold.perl
#   ^ punctuation.definition.tag.begin.perl
#    ^^^^ markup.bold.perl
#        ^ punctuation.definition.tag.end.perl
   C<code>
#  ^^^^^^^ comment.block.documentation.perl
#  ^ entity.name.tag.code.perl
#   ^ punctuation.definition.tag.begin.perl
#    ^^^^ markup.quote.perl
#        ^ punctuation.definition.tag.end.perl
   E<lt>
#  ^^^^^ comment.block.documentation.perl
#  ^ entity.name.tag.escaped.perl
#   ^ punctuation.definition.tag.begin.perl
#    ^^ constant.character.escape.perl
#      ^ punctuation.definition.tag.end.perl
   F<file.ext>
#  ^^^^^^^^^^^ comment.block.documentation.perl
#  ^ entity.name.tag.filename.perl
#   ^ punctuation.definition.tag.begin.perl
#    ^^^^^^^^ meta.string.perl string.unquoted.perl
#            ^ punctuation.definition.tag.end.perl
   I<italic>
#  ^^^^^^^^^ comment.block.documentation.perl
#  ^ entity.name.tag.italic.perl
#   ^ punctuation.definition.tag.begin.perl
#    ^^^^^^ markup.italic.perl
#          ^ punctuation.definition.tag.end.perl

   L<http://www.perl.org/>
#  ^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.perl
#  ^ entity.name.tag.link.perl
#   ^ punctuation.definition.tag.begin.perl
#    ^^^^^^^^^^^^^^^^^^^^ markup.underline.link.perl
#                        ^ punctuation.definition.tag.end.perl
   L<The Perl Home Page|http://www.perl.org/>
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.perl
#  ^ entity.name.tag.link.perl
#   ^ punctuation.definition.tag.begin.perl
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.perl
#                                           ^ punctuation.definition.tag.end.perl
  S<[ B<-A> ]>
# ^ entity.name.tag.non-breaking.perl
#  ^ punctuation.definition.tag.begin.perl
#     ^ entity.name.tag.bold.perl
#      ^ punctuation.definition.tag.begin.perl
#       ^^ markup.bold.perl
#         ^ punctuation.definition.tag.end.perl
#            ^ punctuation.definition.tag.end.perl
   X<index entry>
#  ^^^^^^^^^^^^^^ comment.block.documentation.perl
#  ^ entity.name.tag.index.perl
#   ^ punctuation.definition.tag.begin.perl
#    ^^^^^^^^^^^ entity.name.label.perl
#               ^ punctuation.definition.tag.end.perl
    Copyright 2018 E<lt>email@provider.comE<gt>
#                  ^ entity.name.tag.escaped.perl
#                                         ^ entity.name.tag.escaped.perl

=begin css
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^^^^^^^^ comment.block.documentation.perl
#^^^^^ entity.name.tag.pod.perl
#     ^ - constant - entity
#      ^^^ constant.other.language-name.perl
  a {  };
# ^^^^^^^^ comment.block.documentation.perl source.css.embedded.perl
=end
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^ comment.block.documentation.perl entity.name.tag.pod.perl

=begin html
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^^^^^^^^^ comment.block.documentation.perl
#^^^^^ entity.name.tag.pod.perl
#     ^ - constant - entity
#      ^^^^ constant.other.language-name.perl
    <html>
# <- comment.block.documentation.perl text.html.embedded.perl
#^^^^^^^^^^ comment.block.documentation.perl text.html.embedded.perl
    </html>
# <- comment.block.documentation.perl text.html.embedded.perl
#^^^^^^^^^^ comment.block.documentation.perl text.html.embedded.perl
=end
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^ comment.block.documentation.perl entity.name.tag.pod.perl

=begin json
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^^^^^^^^^ comment.block.documentation.perl
#^^^^^ entity.name.tag.pod.perl
#     ^ - constant - entity
#      ^^^^ constant.other.language-name.perl
  {
# ^ comment.block.documentation.perl source.json.embedded.perl meta.mapping.json punctuation.section.mapping.begin.json
    "key": "value",
#   ^^^^^^^^^^^^^^^^ comment.block.documentation.perl source.json.embedded.perl
  }
# ^ comment.block.documentation.perl source.json.embedded.perl meta.mapping.json punctuation.section.mapping.end.json
=end
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^ comment.block.documentation.perl entity.name.tag.pod.perl

=begin sql
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^^^^^^^^ comment.block.documentation.perl
#^^^^^ entity.name.tag.pod.perl
#     ^ - constant - entity
#      ^^^ constant.other.language-name.perl
  SELECT * FROM `table`
#^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.perl source.sql.embedded.perl
=end
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^ comment.block.documentation.perl entity.name.tag.pod.perl

# stray =cut tag

=cut
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^ comment.block.documentation.perl entity.name.tag.pod.perl

###[ MERGE CONFLICT MARKERS ]#################################################

<<<<<<< HEAD
#  <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation

=======
#  <- meta.block.conflict.separator.diff punctuation.section.block.diff
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
#  <- meta.block.conflict.end.diff punctuation.section.block.end.diff
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation

{ # conflicts in blocks

<<<<<<< HEAD
#  <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation

=======
#  <- meta.block.conflict.separator.diff punctuation.section.block.diff
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
#  <- meta.block.conflict.end.diff punctuation.section.block.end.diff
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation

}

( # conflicts in blocks

<<<<<<< HEAD
#  <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
# ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#      ^ meta.block.conflict.begin.diff - entity - punctuation
#       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
#           ^ meta.block.conflict.begin.diff - entity - punctuation

=======
#  <- meta.block.conflict.separator.diff punctuation.section.block.diff
# ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
#      ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
#  <- meta.block.conflict.end.diff punctuation.section.block.end.diff
# ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
#      ^ meta.block.conflict.end.diff - entity - punctuation
#       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
#             ^ meta.block.conflict.end.diff - entity - punctuation

)

# conflicts in HEREDOC strings

$plain_heredoc = <<MERGE
  before
#^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
<<<<<<< HEAD
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl meta.block.conflict.begin.diff
#^^^^^^ punctuation.section.block.begin.diff
#       ^^^^ entity.name.section.diff
  ours
#^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
=======
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl meta.block.conflict.separator.diff punctuation.section.block.diff
  base
#^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
|||||||
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl meta.block.conflict.separator.diff punctuation.section.block.diff
  theires
#^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
>>>>>>> master
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl meta.block.conflict.end.diff punctuation.section.block.end.diff
#^^^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl meta.block.conflict.end.diff
#^^^^^^ punctuation.section.block.end.diff
#       ^^^^^^ entity.name.section.diff
  after
#^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
MERGE
# <- meta.string.heredoc.perl meta.tag.heredoc.perl entity.name.tag.heredoc.plain.perl
#^^^^ meta.string.heredoc.perl meta.tag.heredoc.perl entity.name.tag.heredoc.plain.perl

$css_heredoc = <<CSS
<<<<<<< HEAD
# <- meta.string.heredoc.perl source.css.embedded.perl source.css meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#^^^^^^^^^^^ meta.string.heredoc.perl source.css.embedded.perl source.css meta.block.conflict.begin.diff
#^^^^^^ punctuation.section.block.begin.diff
#       ^^^^ entity.name.section.diff
=======
# <- meta.string.heredoc.perl source.css.embedded.perl source.css meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^ meta.string.heredoc.perl source.css.embedded.perl source.css meta.block.conflict.separator.diff punctuation.section.block.diff
|||||||
# <- meta.string.heredoc.perl source.css.embedded.perl source.css meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^ meta.string.heredoc.perl source.css.embedded.perl source.css meta.block.conflict.separator.diff punctuation.section.block.diff
>>>>>>> master
# <- meta.string.heredoc.perl source.css.embedded.perl source.css meta.block.conflict.end.diff punctuation.section.block.end.diff
#^^^^^^^^^^^^^ meta.string.heredoc.perl source.css.embedded.perl source.css meta.block.conflict.end.diff
#^^^^^^ punctuation.section.block.end.diff
#       ^^^^^^ entity.name.section.diff
CSS
# <- meta.string.heredoc.perl meta.tag.heredoc.perl entity.name.tag.heredoc.css.perl
#^^ meta.string.heredoc.perl meta.tag.heredoc.perl entity.name.tag.heredoc.css.perl

# multiline strings

$double_quoted_string = "
  before
#^^^^^^^ meta.string.perl string.quoted.double.perl
<<<<<<< HEAD
# <- meta.string.perl string.quoted.double.perl meta.block.conflict.begin.diff punctuation.section.block.begin.diff
#^^^^^^^^^^^ meta.string.perl string.quoted.double.perl meta.block.conflict.begin.diff
#^^^^^^ punctuation.section.block.begin.diff
#       ^^^^ entity.name.section.diff
  ours
#^^^^^ meta.string.perl string.quoted.double.perl
=======
# <- meta.string.perl string.quoted.double.perl meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^ meta.string.perl string.quoted.double.perl meta.block.conflict.separator.diff punctuation.section.block.diff
  base
#^^^^^ meta.string.perl string.quoted.double.perl
|||||||
# <- meta.string.perl string.quoted.double.perl meta.block.conflict.separator.diff punctuation.section.block.diff
#^^^^^^ meta.string.perl string.quoted.double.perl meta.block.conflict.separator.diff punctuation.section.block.diff
  theires
#^^^^^^^^ meta.string.perl string.quoted.double.perl
>>>>>>> master
# <- meta.string.perl string.quoted.double.perl meta.block.conflict.end.diff punctuation.section.block.end.diff
#^^^^^^^^^^^^^ meta.string.perl string.quoted.double.perl meta.block.conflict.end.diff
#^^^^^^ punctuation.section.block.end.diff
#       ^^^^^^ entity.name.section.diff
  after
#^^^^^^ meta.string.perl string.quoted.double.perl
"

###[ FORMAT ]#################################################################

format.
#^^^^^ meta.format.perl storage.type.format.perl
#     ^ meta.format.perl invalid.illegal.identifier.perl

format =
#^^^^^ meta.format.perl storage.type.format.perl
#      ^ meta.format.perl keyword.operator.assignment.perl
  text
# ^^^^^ meta.format.perl meta.string.perl string.unquoted.perl
.
# <- meta.format.perl punctuation.terminator.format.perl

format
#^^^^^ meta.format.perl storage.type.format.perl
  =
# ^ meta.format.perl keyword.operator.assignment.perl
  text
# ^^^^^ meta.format.perl meta.string.perl string.unquoted.perl
.
# <- meta.format.perl punctuation.terminator.format.perl

format format
#^^^^^ meta.format.perl storage.type.format.perl
#      ^^^^^^ meta.format.perl variable.other.readwrite.perl
illegal
#^^^^^^ meta.format.perl invalid.illegal.identifier.perl

format format =
#^^^^^ meta.format.perl storage.type.format.perl
#      ^^^^^^ meta.format.perl variable.other.readwrite.perl
#             ^ meta.format.perl keyword.operator.assignment.perl
  text
# ^^^^^ meta.format.perl meta.string.perl string.unquoted.perl
.
# <- meta.format.perl punctuation.terminator.format.perl

format
#^^^^^ meta.format.perl storage.type.format.perl
  format
# ^^^^^^ meta.format.perl variable.other.readwrite.perl
  =
# ^ meta.format.perl keyword.operator.assignment.perl
  text
# ^^^^^ meta.format.perl meta.string.perl string.unquoted.perl
.
# <- meta.format.perl punctuation.terminator.format.perl

format if::format =
#^^^^^^^^^^^^^^^^^^^ meta.format.perl
#^^^^^ storage.type.format.perl
#      ^^ meta.path.perl variable.namespace.perl
#        ^^ meta.path.perl punctuation.accessor.double-colon.perl
#          ^^^^^^ meta.path.perl variable.other.readwrite.perl
#                 ^ keyword.operator.assignment.perl
  text
# ^^^^^ meta.format.perl meta.string.perl string.unquoted.perl
.
# <- meta.format.perl punctuation.terminator.format.perl

CORE::format if::format =
#^^^ support.namespace.perl - meta.format
#     ^^^^^^^^^^^^^^^^^^^^ meta.format.perl
#   ^^ punctuation.accessor.double-colon.perl
#     ^^^^^^ storage.type.format.perl
#            ^^ meta.path.perl variable.namespace.perl
#              ^^ meta.path.perl punctuation.accessor.double-colon.perl
#                ^^^^^^ meta.path.perl variable.other.readwrite.perl
#                       ^ keyword.operator.assignment.perl
  text
# ^^^^^ meta.format.perl meta.string.perl string.unquoted.perl
.
# <- meta.format.perl punctuation.terminator.format.perl

core::format
#     ^^^^^^ - storage.type.format.perl
format::func
#^^^^^ - storage.type.format.perl
format $var =
#^^^^^^^^^^ meta.format.perl
#           ^^ - meta.format.perl
#      ^^^^ invalid.illegal.identifier.perl
#           ^ keyword.operator.assignment.perl
format var[0] =
#^^^^^^^^^^^^ meta.format.perl
#             ^^ - meta.format.perl
#      ^^^ variable.other.readwrite.perl
#         ^^^ invalid.illegal.identifier.perl
#             ^ keyword.operator.assignment.perl
format ns::$ns::var =
#^^^^^^^^^^^^^^^^^^ meta.format.perl
#                   ^^ - meta.format.perl
#      ^^ variable.namespace.perl
#          ^^^^^^^^ invalid.illegal.identifier.perl
#                   ^ keyword.operator.assignment.perl
format var =
# <- storage.type.format.perl
#^^^^^ meta.format.perl storage.type.format.perl
#      ^^^ variable.other.readwrite.perl
#          ^ keyword.operator.assignment.perl
  ...  terminate a text field, show "..." as truncation evidence
#^ meta.string.perl string.unquoted.perl - constant
# ^^^ meta.string.perl string.unquoted.perl constant.other.placeholder.text.perl
#    ^ meta.string.perl string.unquoted.perl - constant
  ....
#^^^^^^ meta.string.perl string.unquoted.perl - constant
  ~    suppress line with all fields empty
#^ meta.string.perl string.unquoted.perl - constant
# ^ meta.string.perl string.unquoted.perl constant.other.placeholder.text.perl
#  ^ meta.string.perl string.unquoted.perl - constant
  ~~   repeat line until all fields are exhausted
#^ meta.string.perl string.unquoted.perl - constant
# ^^ meta.string.perl string.unquoted.perl constant.other.placeholder.text.perl
#   ^ meta.string.perl string.unquoted.perl - constant
  ~~~~
#^^^^^^ meta.string.perl string.unquoted.perl - constant
  ^0.###
#^ meta.string.perl string.unquoted.perl - constant
# ^^^^^^ meta.string.perl constant.other.placeholder.numeric.perl
# ^ punctuation.definition.placeholder.begin.perl
#       ^ meta.string.perl string.unquoted.perl - constant
  ^0##.#
#^ meta.string.perl string.unquoted.perl - constant
# ^^^^^^ meta.string.perl constant.other.placeholder.numeric.perl
# ^ punctuation.definition.placeholder.begin.perl
#       ^ meta.string.perl string.unquoted.perl - constant
  ^#.###
#^ meta.string.perl string.unquoted.perl - constant
# ^^^^^^ meta.string.perl constant.other.placeholder.numeric.perl
# ^ punctuation.definition.placeholder.begin.perl
#       ^ meta.string.perl string.unquoted.perl - constant
  ^<<<<<   ^|||||   ^>>>>>
#^ meta.string.perl string.unquoted.perl - constant
# ^^^^^^ meta.string.perl constant.other.placeholder.text.perl
# ^ punctuation.definition.placeholder.begin.perl
#       ^^^ meta.string.perl string.unquoted.perl - constant
#          ^^^^^^ meta.string.perl constant.other.placeholder.text.perl
#          ^ punctuation.definition.placeholder.begin.perl
#                ^^^ meta.string.perl string.unquoted.perl - constant
#                   ^^^^^^ meta.string.perl constant.other.placeholder.text.perl
#                   ^ punctuation.definition.placeholder.begin.perl
#                         ^ meta.string.perl string.unquoted.perl - constant
  @#.###   @0.###   @0##.#
#^ meta.string.perl string.unquoted.perl - constant
# ^^^^^^ meta.string.perl constant.other.placeholder.numeric.perl
# ^ punctuation.definition.placeholder.begin.perl
#       ^^^ meta.string.perl string.unquoted.perl - constant
#          ^^^^^^ meta.string.perl constant.other.placeholder.numeric.perl
#          ^ punctuation.definition.placeholder.begin.perl
#                ^^^ meta.string.perl string.unquoted.perl - constant
#                   ^^^^^^ meta.string.perl constant.other.placeholder.numeric.perl
#                   ^ punctuation.definition.placeholder.begin.perl
#                         ^ meta.string.perl string.unquoted.perl - constant
  @<<<<<   @|||||   @>>>>>
#^ meta.string.perl string.unquoted.perl - constant
# ^^^^^^ meta.string.perl constant.other.placeholder.text.perl
# ^ punctuation.definition.placeholder.begin.perl
#       ^^^ meta.string.perl string.unquoted.perl - constant
#          ^^^^^^ meta.string.perl constant.other.placeholder.text.perl
#          ^ punctuation.definition.placeholder.begin.perl
#                ^^^ meta.string.perl string.unquoted.perl - constant
#                   ^^^^^^ meta.string.perl constant.other.placeholder.text.perl
#                   ^ punctuation.definition.placeholder.begin.perl
#                         ^ meta.string.perl string.unquoted.perl - constant
  ^*   variable width field for next line of a multi-line value
#^ meta.string.perl string.unquoted.perl - constant
# ^^ meta.string.perl constant.other.placeholder.text.perl
# ^ punctuation.definition.placeholder.begin.perl
#   ^ meta.string.perl string.unquoted.perl - constant
  @*   variable width field for a multi-line value
# ^^ meta.string.perl constant.other.placeholder.text.perl
# ^ punctuation.definition.placeholder.begin.perl
#   ^ meta.string.perl string.unquoted.perl - constant
  @variable as test @array[0] @noarray [0]
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^^^^^^^^ meta.string.perl meta.interpolation.perl variable.other.readwrite.perl - string.unquoted
#          ^^^^^^^^^ meta.string.perl string.unquoted.perl - meta.interpolation
#                   ^^^^^^^^^ meta.string.perl meta.interpolation.perl - string.unquoted
#                            ^ meta.string.perl string.unquoted.perl - meta.interpolation
#                             ^^^^^^^^ meta.string.perl meta.interpolation.perl - string.unquoted
#                                     ^^^^^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^ punctuation.definition.variable.perl
  $& $&[0] $&{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match.perl - string.unquoted
# ^ punctuation.definition.variable.perl
#   ^ meta.string.perl string.unquoted.perl - meta.interpolation
#    ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match.perl - string.unquoted
#      ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#         ^ meta.string.perl string.unquoted.perl - meta.interpolation
#          ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match.perl - string.unquoted
#            ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                   ^ meta.string.perl string.unquoted.perl - meta.interpolation
  $` $`[0] $`{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match.perl - string.unquoted
# ^ punctuation.definition.variable.perl
#   ^ meta.string.perl string.unquoted.perl - meta.interpolation
#    ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match.perl - string.unquoted
#      ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#         ^ meta.string.perl string.unquoted.perl - meta.interpolation
#          ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match.perl - string.unquoted
#            ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                   ^ meta.string.perl string.unquoted.perl - meta.interpolation
  $' $'[0] $'{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match.perl - string.unquoted
# ^ punctuation.definition.variable.perl
#   ^ meta.string.perl string.unquoted.perl - meta.interpolation
#    ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match.perl - string.unquoted
#      ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#         ^ meta.string.perl string.unquoted.perl - meta.interpolation
#          ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match.perl - string.unquoted
#            ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                   ^ meta.string.perl string.unquoted.perl - meta.interpolation
  $+ $+[0] $+{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match-group.perl - string.unquoted
# ^ punctuation.definition.variable.perl
#   ^ meta.string.perl string.unquoted.perl - meta.interpolation
#    ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match-group.perl - string.unquoted
#      ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#         ^ meta.string.perl string.unquoted.perl - meta.interpolation
#          ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match-group.perl - string.unquoted
#            ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                   ^ meta.string.perl string.unquoted.perl - meta.interpolation
  $" $"[0] $"{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
# ^ punctuation.definition.variable.perl
#   ^ meta.string.perl string.unquoted.perl - meta.interpolation
#    ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#      ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#         ^ meta.string.perl string.unquoted.perl - meta.interpolation
#          ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#            ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                   ^ meta.string.perl string.unquoted.perl - meta.interpolation
  $0 $0[0] $0{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
# ^ punctuation.definition.variable.perl
#   ^ meta.string.perl string.unquoted.perl - meta.interpolation
#    ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#      ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#         ^ meta.string.perl string.unquoted.perl - meta.interpolation
#          ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#            ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                   ^ meta.string.perl string.unquoted.perl - meta.interpolation
  @0 @0[0] @0{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
# ^ punctuation.definition.variable.perl
#   ^ meta.string.perl string.unquoted.perl - meta.interpolation
#    ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#      ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#         ^ meta.string.perl string.unquoted.perl - meta.interpolation
#          ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#            ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                   ^ meta.string.perl string.unquoted.perl - meta.interpolation
  %0 %0[0] %0{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
# ^ punctuation.definition.variable.perl
#   ^ meta.string.perl string.unquoted.perl - meta.interpolation
#    ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#      ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#         ^ meta.string.perl string.unquoted.perl - meta.interpolation
#          ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#            ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                   ^ meta.string.perl string.unquoted.perl - meta.interpolation
  $1 $1[0] $1{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match-group.perl - string.unquoted
# ^ punctuation.definition.variable.perl
#   ^ meta.string.perl string.unquoted.perl - meta.interpolation
#    ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match-group.perl - string.unquoted
#      ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#         ^ meta.string.perl string.unquoted.perl - meta.interpolation
#          ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match-group.perl - string.unquoted
#            ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                   ^ meta.string.perl string.unquoted.perl - meta.interpolation
  $_ $_[0] $_{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
# ^ punctuation.definition.variable.perl
#   ^ meta.string.perl string.unquoted.perl - meta.interpolation
#    ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#      ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#         ^ meta.string.perl string.unquoted.perl - meta.interpolation
#          ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#            ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                   ^ meta.string.perl string.unquoted.perl - meta.interpolation
  @_ @_[0] @_{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
# ^ punctuation.definition.variable.perl
#   ^ meta.string.perl string.unquoted.perl - meta.interpolation
#    ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#      ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#         ^ meta.string.perl string.unquoted.perl - meta.interpolation
#          ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#            ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                   ^ meta.string.perl string.unquoted.perl - meta.interpolation
  %_ %_[0] %_{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
# ^ punctuation.definition.variable.perl
#   ^ meta.string.perl string.unquoted.perl - meta.interpolation
#    ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#      ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#         ^ meta.string.perl string.unquoted.perl - meta.interpolation
#          ^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#            ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                   ^ meta.string.perl string.unquoted.perl - meta.interpolation
  $#0 $#0[0] $#0{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#    ^ meta.string.perl string.unquoted.perl - meta.interpolation
#     ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#        ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#           ^ meta.string.perl string.unquoted.perl - meta.interpolation
#            ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#               ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                      ^ meta.string.perl string.unquoted.perl - meta.interpolation
  @#0 @#0[0] @#0{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#    ^ meta.string.perl string.unquoted.perl - meta.interpolation
#     ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#        ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#           ^ meta.string.perl string.unquoted.perl - meta.interpolation
#            ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#               ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                      ^ meta.string.perl string.unquoted.perl - meta.interpolation
  %#0 %#0[0] %#0{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#    ^ meta.string.perl string.unquoted.perl - meta.interpolation
#     ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#        ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#           ^ meta.string.perl string.unquoted.perl - meta.interpolation
#            ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#               ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                      ^ meta.string.perl string.unquoted.perl - meta.interpolation
  $#_ $#_[0] $#_{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#    ^ meta.string.perl string.unquoted.perl - meta.interpolation
#     ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#        ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#           ^ meta.string.perl string.unquoted.perl - meta.interpolation
#            ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#               ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                      ^ meta.string.perl string.unquoted.perl - meta.interpolation
  @#_ @#_[0] @#_{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#    ^ meta.string.perl string.unquoted.perl - meta.interpolation
#     ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#        ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#           ^ meta.string.perl string.unquoted.perl - meta.interpolation
#            ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#               ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                      ^ meta.string.perl string.unquoted.perl - meta.interpolation
  %#_ %#_[0] %#_{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#    ^ meta.string.perl string.unquoted.perl - meta.interpolation
#     ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#        ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#           ^ meta.string.perl string.unquoted.perl - meta.interpolation
#            ^^^ meta.string.perl meta.interpolation.perl variable.language.perl - string.unquoted
#               ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                      ^ meta.string.perl string.unquoted.perl - meta.interpolation
  $Foo::Bar::baz $Foo::Bar::baz[0] $Foo::Bar::baz{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^^^^^^^^^^^^^ meta.string.perl meta.path.perl
#               ^ meta.string.perl string.unquoted.perl - meta.interpolation
#                ^^^^^^^^^^^^^^ meta.string.perl meta.path.perl
#                              ^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                                 ^ meta.string.perl string.unquoted.perl - meta.interpolation
#                                  ^^^^^^^^^^^^^^ meta.string.perl meta.path.perl
#                                                ^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                                                       ^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^ punctuation.definition.variable.perl
#  ^^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ variable.namespace.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^ variable.other.readwrite.perl
  ${ $foo[4] + $bar{baz} }[0]{'key'}
#^ meta.string.perl string.unquoted.perl - meta.interpolation
# ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl meta.variable.perl
#                         ^^^^^^^^^^ meta.string.perl meta.interpolation.perl meta.item-access.perl - string.unquoted
#                                   ^ meta.string.perl string.unquoted.perl - meta.interpolation
.
# <- meta.format.perl punctuation.terminator.format.perl

###[ SPRINTF FORMAT ]#########################################################

  "%<index>?<flag>?<width>?[<vector>|<precision>]<size>?<sequence>

  # sequences

   %%    a percent sign
#  ^^ constant.character.escape.perl

   %c %s %d %u %o %x %e %f %g %i
# ^ - constant.other.placeholder
#  ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#   ^ constant.other.placeholder.perl
#    ^ - constant.other.placeholder
#     ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#      ^ constant.other.placeholder.perl
#       ^ - constant.other.placeholder
#        ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#         ^ constant.other.placeholder.perl
#          ^ - constant.other.placeholder
#           ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#            ^ constant.other.placeholder.perl
#             ^ - constant.other.placeholder
#              ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#               ^ constant.other.placeholder.perl
#                ^ - constant.other.placeholder
#                 ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                  ^ constant.other.placeholder.perl
#                   ^ - constant.other.placeholder
#                    ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                     ^ constant.other.placeholder.perl
#                      ^ - constant.other.placeholder
#                       ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                        ^ constant.other.placeholder.perl
#                         ^ - constant.other.placeholder
#                          ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                           ^ constant.other.placeholder.perl
#                            ^ - constant.other.placeholder
#                             ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                              ^ constant.other.placeholder.perl
#                               ^ - constant.other.placeholder

   %X %E %G %b %B %p %n %a %A %F
# ^ - constant.other.placeholder
#  ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#   ^ constant.other.placeholder.perl
#    ^ - constant.other.placeholder
#     ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#      ^ constant.other.placeholder.perl
#       ^ - constant.other.placeholder
#        ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#         ^ constant.other.placeholder.perl
#          ^ - constant.other.placeholder
#           ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#            ^ constant.other.placeholder.perl
#             ^ - constant.other.placeholder
#              ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#               ^ constant.other.placeholder.perl
#                ^ - constant.other.placeholder
#                 ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                  ^ constant.other.placeholder.perl
#                   ^ - constant.other.placeholder
#                    ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                     ^ constant.other.placeholder.perl
#                      ^ - constant.other.placeholder
#                       ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                        ^ constant.other.placeholder.perl
#                         ^ - constant.other.placeholder
#                          ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                           ^ constant.other.placeholder.perl
#                            ^ - constant.other.placeholder
#                             ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                              ^ constant.other.placeholder.perl
#                               ^ - constant.other.placeholder

   %D = %ld %U = %lu %O = %lo %F = %f
# ^ - constant.other.placeholder
#  ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#   ^ constant.other.placeholder.perl
#    ^^^ - constant.other.placeholder
#       ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#        ^^ constant.other.placeholder.perl
#          ^ - constant.other.placeholder
#           ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#            ^ constant.other.placeholder.perl
#             ^^^ - constant.other.placeholder
#                ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                 ^^ constant.other.placeholder.perl
#                   ^ - constant.other.placeholder
#                    ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                     ^ constant.other.placeholder.perl
#                      ^^^ - constant.other.placeholder
#                         ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                          ^^ constant.other.placeholder.perl
#                            ^ - constant.other.placeholder
#                             ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                              ^ constant.other.placeholder.perl
#                               ^^^ - constant.other.placeholder
#                                  ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                                   ^ constant.other.placeholder.perl

  # flags

   % d %+d %+ d % +d
# ^ - constant.other.placeholder
#  ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#   ^^ constant.other.placeholder.perl
#     ^ - constant.other.placeholder
#      ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#       ^^ constant.other.placeholder.perl
#         ^ - constant.other.placeholder
#          ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#           ^^^ constant.other.placeholder.perl
#              ^ - constant.other.placeholder
#               ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                ^^^ constant.other.placeholder.perl
#                   ^ - constant.other.placeholder
   %*s %6s %-6s %06s %*2$s %10.5s
#  ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#   ^^ constant.other.placeholder.perl
#     ^ - constant.other.placeholder
#      ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#       ^^ constant.other.placeholder.perl
#         ^ - constant.other.placeholder
#          ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#           ^^^ constant.other.placeholder.perl
#              ^ - constant.other.placeholder
#               ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                ^^^ constant.other.placeholder.perl
#                   ^ - constant.other.placeholder
#                    ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                     ^^^^ constant.other.placeholder.perl
#                         ^ - constant.other.placeholder
#                          ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                           ^^^^^ constant.other.placeholder.perl
#                             ^ punctuation.separator.decimal.perl
#                                ^ - constant.other.placeholder
   %#o %#O
# ^ - constant.other.placeholder
#  ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#   ^^ constant.other.placeholder.perl
#     ^ - constant.other.placeholder
#      ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#       ^^ constant.other.placeholder.perl
#         ^ - constant.other.placeholder
   %#x %#X
# ^ - constant.other.placeholder
#  ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#   ^^ constant.other.placeholder.perl
#     ^ - constant.other.placeholder
#      ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#       ^^ constant.other.placeholder.perl
#         ^ - constant.other.placeholder
   %#b %#B
# ^ - constant.other.placeholder
#  ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#   ^^ constant.other.placeholder.perl
#     ^ - constant.other.placeholder
#      ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#       ^^ constant.other.placeholder.perl
#         ^ - constant.other.placeholder

  # vector flag

  v%vd
# ^ - constant.other.placeholder
#  ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#   ^^ constant.other.placeholder.perl
#     ^ - constant.other.placeholder
  %0*v8b
#^ - constant.other.placeholder
# ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#  ^^^^^ constant.other.placeholder.perl
#       ^ - constant.other.placeholder
  %*4$vX
#^ - constant.other.placeholder
# ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#  ^^^^^ constant.other.placeholder.perl
#       ^ - constant.other.placeholder

  # precision

  %#.5o
#^ - constant.other.placeholder
# ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#  ^^^^ constant.other.placeholder.perl
#   ^ punctuation.separator.decimal.perl
#      ^ - constant.other.placeholder

  %f %.1f %.0f %e %0.1e
#^ - constant.other.placeholder
# ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#  ^ constant.other.placeholder.perl
#   ^ - constant.other.placeholder
#    ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#     ^^^ constant.other.placeholder.perl
#     ^ punctuation.separator.decimal.perl
#        ^ - constant.other.placeholder
#         ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#          ^^^ constant.other.placeholder.perl
#          ^ punctuation.separator.decimal.perl
#             ^ - constant.other.placeholder
#              ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#               ^ constant.other.placeholder.perl
#                ^ - constant.other.placeholder
#                 ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                  ^^^^ constant.other.placeholder.perl
#                   ^ punctuation.separator.decimal.perl
#                      ^ - constant.other.placeholder

  %-10.6d %#.6x %010.6x %6.*2$x
#^ - constant.other.placeholder
# ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#  ^^^^^^ constant.other.placeholder.perl
#     ^ punctuation.separator.decimal.perl
#        ^ - constant.other.placeholder
#         ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#          ^^^^ constant.other.placeholder.perl
#           ^ punctuation.separator.decimal.perl
#              ^ - constant.other.placeholder
#               ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                ^^^^^^ constant.other.placeholder.perl
#                   ^ punctuation.separator.decimal.perl
#                      ^ - constant.other.placeholder
#                       ^ constant.other.placeholder.perl punctuation.definition.placeholder.perl
#                        ^^^^^^ constant.other.placeholder.perl
#                         ^ punctuation.separator.decimal.perl
#                              ^ - constant.other.placeholder

  # placeholder with interpolation (good luck!)
"

###[ HEREDOC ]################################################################

$var = <<CSS;
# <- variable.other.readwrite.perl
#^^^ variable.other.readwrite.perl
#    ^ keyword.operator.assignment.perl
#      ^^^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^ meta.tag.heredoc.perl entity.name.tag.heredoc.css.perl
#           ^ punctuation.terminator.statement.perl
#            ^ - source.css.embedded.perl
  a {  };
# ^^^^^^^ meta.string.heredoc.perl source.css.embedded.perl source.css
CSS
# <- meta.string.heredoc.perl entity.name.tag.heredoc.css.perl
#^^ meta.string.heredoc.perl entity.name.tag.heredoc.css.perl

$var = <<HTML;
# <- variable.other.readwrite.perl
#^^^ variable.other.readwrite.perl
#    ^ keyword.operator.assignment.perl
#      ^^^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^ meta.tag.heredoc.perl entity.name.tag.heredoc.html.perl
#            ^ punctuation.terminator.statement.perl
#             ^ - source.html.embedded.perl
  <div />
# <- meta.string.heredoc.perl text.html.embedded.perl
#^^^^^^^^^ meta.string.heredoc.perl text.html.embedded.perl
HTML
# <- meta.string.heredoc.perl entity.name.tag.heredoc.html.perl
#^^^ meta.string.heredoc.perl entity.name.tag.heredoc.html.perl

$var = <<'HTML';
# <- variable.other.readwrite.perl
#^^^ variable.other.readwrite.perl
#    ^ keyword.operator.assignment.perl
#      ^^^^^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^ punctuation.definition.tag.begin.perl
#        ^^^^^^ meta.tag.heredoc.perl
#         ^^^^ entity.name.tag.heredoc.html.perl
#             ^ punctuation.definition.tag.end.perl
#              ^ punctuation.terminator.statement.perl
#               ^ - source.html.embedded.perl
  <div />
# <- meta.string.heredoc.perl text.html.embedded.perl
#^^^^^^^^^ meta.string.heredoc.perl text.html.embedded.perl
HTML
# <- meta.string.heredoc.perl entity.name.tag.heredoc.html.perl
#^^^ meta.string.heredoc.perl entity.name.tag.heredoc.html.perl

$var = <<"HTML";
# <- variable.other.readwrite.perl
#^^^ variable.other.readwrite.perl
#    ^ keyword.operator.assignment.perl
#      ^^^^^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^ punctuation.definition.tag.begin.perl
#        ^^^^^^ meta.tag.heredoc.perl
#         ^^^^ entity.name.tag.heredoc.html.perl
#             ^ punctuation.definition.tag.end.perl
#              ^ punctuation.terminator.statement.perl
#               ^ - source.html.embedded.perl
  <div />
# <- meta.string.heredoc.perl text.html.embedded.perl
#^^^^^^^^^ meta.string.heredoc.perl text.html.embedded.perl
HTML
# <- meta.string.heredoc.perl entity.name.tag.heredoc.html.perl
#^^^ meta.string.heredoc.perl entity.name.tag.heredoc.html.perl

$var ? <<HTML : <<HTML;
# <- variable.other.readwrite.perl
#^^^ variable.other.readwrite.perl
#    ^ keyword.operator.logical.perl
#      ^^^^^^^^^^^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^ meta.tag.heredoc.perl entity.name.tag.heredoc.html.perl
#             ^ keyword.operator.logical.perl
#               ^^ keyword.operator.heredoc.perl
#                 ^^^^ meta.tag.heredoc.perl entity.name.tag.heredoc.html.perl
#                     ^ punctuation.terminator.statement.perl
#                      ^ - source.html.embedded.perl
  <div />
# <- meta.string.heredoc.perl text.html.embedded.perl
#^^^^^^^^^ meta.string.heredoc.perl text.html.embedded.perl
HTML
# <- meta.string.heredoc.perl entity.name.tag.heredoc.html.perl
#^^^ meta.string.heredoc.perl entity.name.tag.heredoc.html.perl
#   ^ - source.html.embedded.perl
  <div />
# <- meta.string.heredoc.perl text.html.embedded.perl
#^^^^^^^^^ meta.string.heredoc.perl text.html.embedded.perl
   HTML
#  ^^^^ meta.string.heredoc.perl text.html.embedded.perl - constant - entity
HTML
# <- meta.string.heredoc.perl entity.name.tag.heredoc.html.perl
#^^^ meta.string.heredoc.perl entity.name.tag.heredoc.html.perl
#   ^ - meta.string.heredoc.perl
HTML
# <- constant.other.perl
#^^^ constant.other.perl

$var = <<JAVASCRIPT;
# <- variable.other.readwrite.perl punctuation.definition.variable.perl
#^^^ variable.other.readwrite.perl
#    ^ keyword.operator.assignment.perl
#      ^^^^^^^^^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^^^^^^^ meta.tag.heredoc.perl entity.name.tag.heredoc.js.perl
#                   ^ - source.js.embedded.perl
  var basic;
# <- meta.string.heredoc.perl source.js.embedded.perl source.js
# ^^^ meta.string.heredoc.perl source.js.embedded.perl source.js keyword.declaration
JAVASCRIPT
# <- meta.string.heredoc.perl entity.name.tag.heredoc.js.perl
#^^^^^^^^^ meta.string.heredoc.perl entity.name.tag.heredoc.js.perl

$var = <<JSON;
#      ^^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^ meta.tag.heredoc.perl entity.name.tag.heredoc.json.perl
#            ^ punctuation.terminator.statement.perl
#             ^ - source.json.embedded.perl
JSON
# <- meta.string.heredoc.perl entity.name.tag.heredoc.json.perl
#^^^ meta.string.heredoc.perl entity.name.tag.heredoc.json.perl

$var = <<SQL;
#      ^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^ meta.tag.heredoc.perl entity.name.tag.heredoc.sql.perl
#           ^ punctuation.terminator.statement.perl
#            ^ - source.sql.embedded.perl
  SELECT * FROM `table`
# ^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.perl source.sql.embedded.perl
SQL
# <- meta.string.heredoc.perl entity.name.tag.heredoc.sql.perl
#^^ meta.string.heredoc.perl entity.name.tag.heredoc.sql.perl

$var = <<XML;
#      ^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^ meta.tag.heredoc.perl entity.name.tag.heredoc.xml.perl
#           ^ punctuation.terminator.statement.perl
#            ^ - source.xml.embedded.perl
  <t:tag></t:tag>
# ^^^^^^^^^^^^^^^ meta.string.heredoc.perl text.xml.embedded.perl
XML
# <- meta.string.heredoc.perl entity.name.tag.heredoc.xml.perl
#^^ meta.string.heredoc.perl entity.name.tag.heredoc.xml.perl

$var = <<_EOD_;
#      ^^^^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^^ meta.tag.heredoc.perl entity.name.tag.heredoc.plain.perl
#             ^ punctuation.terminator.statement.perl
#              ^ - string.unquoted.heredoc.perl
HEREDOC \$with _&a_$var interpolation.
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.perl
#^^^^^^^^^^^^^^^^^^ string.unquoted.heredoc.perl - meta.interpolation
#       ^^ constant.character.escape.perl
#                  ^^^^ meta.interpolation.perl - string
#                      ^^^^^^^^^^^^^^^ string.unquoted.heredoc.perl - meta.interpolation
_EOD_
# <- meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl
#^^^^ meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl

$var = << _EOD_
#      ^^^^^^^^^ - meta.string.heredoc
#      ^^ keyword.operator.bitwise.perl
#         ^^^^^ constant.other.perl

$var = << '    _EOD_';
#      ^^^^^^^^^^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#         ^ punctuation.definition.tag.begin.perl
#         ^^^^^^^^^^^ meta.tag.heredoc.perl
#          ^^^^^^^^^ entity.name.tag.heredoc.plain.perl
#                   ^ punctuation.definition.tag.end.perl
#                    ^ punctuation.terminator.statement.perl
#                     ^ - string.unquoted.heredoc.perl
HEREDOC \$without $var interpolation.
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
  _EOD_
# ^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
    _EOD_
# <- meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl
#^^^^^^^^ meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl

$var = << "    _EOD_";
#      ^^^^^^^^^^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#         ^ punctuation.definition.tag.begin.perl
#         ^^^^^^^^^^^ meta.tag.heredoc.perl
#          ^^^^^^^^^ entity.name.tag.heredoc.plain.perl
#                   ^ punctuation.definition.tag.end.perl
#                    ^ punctuation.terminator.statement.perl
#                     ^ - string.unquoted.heredoc.perl
HEREDOC \$with $var interpolation.
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.perl
#^^^^^^^^^^^^^^ string.unquoted.heredoc - meta.interpolation
#       ^^ constant.character.escape.perl
#              ^^^^ meta.interpolation.perl - string
#                  ^^^^^^^^^^^^^^^ string.unquoted.heredoc - meta.interpolation
  _EOD_
# ^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
    _EOD_
# <- meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl
#^^^^^^^^ meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl

$var = <<EOF # comment
# no comment
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl - comment
#^^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl - comment
EOF

$var = <<'EOF' # comment
# no comment
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl - comment
#^^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl - comment
EOF

$var = <<"EOF" # comment
# no comment
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl - comment
#^^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl - comment
EOF

chomp (my $common_end = <<"EOF") =~ s/(.*)/$1/g if $opt_o;
# <- support.function.perl
#^^^^ support.function.perl
#                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.perl
#                       ^^ keyword.operator.heredoc.perl
#                                ^^ keyword.operator.comparison.perl
  foo bar baz
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl
# ^^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
EOF
# <- meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl
#^^ meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl

$var ? <<'EOT' : <<'EOT';
# <- variable.other.readwrite.perl
#^^^ variable.other.readwrite.perl
#    ^ keyword.operator.logical.perl
#      ^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#         ^^^ entity.name.tag.heredoc.plain.perl
#              ^ keyword.operator.logical.perl
#                ^^ keyword.operator.heredoc.perl
#                   ^^^ entity.name.tag.heredoc.plain.perl
#                       ^punctuation.terminator.statement.perl
  foo bar baz
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl
# ^^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
EOT
# <- meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl
#^^ meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl
  foo bar baz
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl
# ^^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
EOT
# <- meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl
#^^ meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl

print << 'EOT-EOT-EOT';
#     ^^^ meta.string.heredoc.perl - meta.tag
#        ^^^^^^^^^^^^^ meta.string.heredoc.perl meta.tag.heredoc.perl
#                     ^^ meta.string.heredoc.perl - meta.tag
#     ^^ keyword.operator.heredoc.perl
  Heredoc
# ^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
EOT-EOT-EOT
# <- meta.string.heredoc.perl meta.tag.heredoc.perl entity.name.tag.heredoc.plain.perl
#^^^^^^^^^^ meta.string.heredoc.perl meta.tag.heredoc.perl entity.name.tag.heredoc.plain.perl
#          ^ - meta.string

print << "EOT-EOT-EOT";
#     ^^^ meta.string.heredoc.perl - meta.tag
#        ^^^^^^^^^^^^^ meta.string.heredoc.perl meta.tag.heredoc.perl
#                     ^^ meta.string.heredoc.perl - meta.tag
#     ^^ keyword.operator.heredoc.perl
  Heredoc
# ^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
EOT-EOT-EOT
# <- meta.string.heredoc.perl meta.tag.heredoc.perl entity.name.tag.heredoc.plain.perl
#^^^^^^^^^^ meta.string.heredoc.perl meta.tag.heredoc.perl entity.name.tag.heredoc.plain.perl
#          ^ - meta.string

# MUST NOT BE HEREDOC
  (1 << 0) ;
#    ^^^^^^^ - meta.string.heredoc.perl
#    ^^ - keyword.operator.heredoc.perl
  (1 << $var) ;
#    ^^^^^^^^^^ - meta.string.heredoc.perl
#    ^^ - keyword.operator.heredoc.perl

###[ INDENTED HEREDOC ]#######################################################

$var = <<~EOF # comment
# no comment
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl - comment
#^^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl - comment
  EOF
#^^^^ meta.string.heredoc.perl meta.tag.heredoc.perl
# ^^^ entity.name.tag.heredoc.plain.perl

$var = <<~'EOF' # comment
# no comment
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl - comment
#^^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl - comment
  EOF
#^^^^ meta.string.heredoc.perl meta.tag.heredoc.perl
# ^^^ entity.name.tag.heredoc.plain.perl

$var = <<~"EOF" # comment
# no comment
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl - comment
#^^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl - comment
  EOF
#^^^^ meta.string.heredoc.perl meta.tag.heredoc.perl
# ^^^ entity.name.tag.heredoc.plain.perl

###[ OPERATORS ]##############################################################
  ,
# ^ punctuation.separator.sequence.perl
  ;
# ^ punctuation.terminator.statement.perl
  ::
# ^^ punctuation.accessor.double-colon.perl
  ->
# ^^ punctuation.accessor.arrow.perl
  **=
# ^^^ keyword.operator.assignment.perl
  -=
# ^^ keyword.operator.assignment.perl
  +=
# ^^ keyword.operator.assignment.perl
  *=
# ^^ keyword.operator.assignment.perl
  /=
# ^^ keyword.operator.assignment.perl
  %=
# ^^ keyword.operator.assignment.perl
  --
# ^^ keyword.operator.arithmetic.perl
  ++
# ^^ keyword.operator.arithmetic.perl
  **
# ^^ keyword.operator.arithmetic.perl
  /
# ^ keyword.operator.arithmetic.perl
  %
# ^ keyword.operator.arithmetic.perl
  !~
# ^^ keyword.operator.comparison.perl
  =~
# ^^ keyword.operator.comparison.perl
  ~~
# ^^ keyword.operator.comparison.perl
  <=>
# ^^^ keyword.operator.comparison.perl
  //
# ^^ keyword.operator.logical.perl
  &&
# ^^ keyword.operator.logical.perl
  ||
# ^^ keyword.operator.logical.perl
  ==
# ^^ keyword.operator.comparison.perl
  !=
# ^^ keyword.operator.comparison.perl
  >=
# ^^ keyword.operator.comparison.perl
  <=
# ^^ keyword.operator.comparison.perl
  >
# ^ keyword.operator.comparison.perl
  <
# ^ keyword.operator.comparison.perl
  !
# ^ keyword.operator.logical.perl
  ?
# ^ keyword.operator.logical.perl
  :
# ^ keyword.operator.logical.perl
  &
# ^ keyword.operator.bitwise.perl
  |
# ^ keyword.operator.bitwise.perl
  ^
# ^ keyword.operator.bitwise.perl
  ~
# ^ keyword.operator.bitwise.perl
  .
# ^ keyword.operator.concatenation.perl
  .=
# ^^ keyword.operator.concatenation.perl
  ..
# ^^ keyword.operator.range.perl
  \  \\  \\\
# ^ keyword.operator.reference.perl
#    ^^ keyword.operator.reference.perl
#        ^^^ keyword.operator.reference.perl

  and or xor as cmp eq gt ge lt le ne not
#^ - keyword
# ^^^ keyword.operator.logical.perl
#    ^ - keyword
#     ^^ keyword.operator.logical.perl
#       ^ - keyword
#        ^^^ keyword.operator.logical.perl
#           ^ - keyword
#            ^^ keyword.operator.logical.perl
#              ^ - keyword
#               ^^^ keyword.operator.logical.perl
#                  ^ - keyword
#                   ^^ keyword.operator.logical.perl
#                     ^ - keyword
#                      ^^ keyword.operator.logical.perl
#                        ^ - keyword
#                         ^^ keyword.operator.logical.perl
#                           ^ - keyword
#                            ^^ keyword.operator.logical.perl
#                              ^ - keyword
#                               ^^ keyword.operator.logical.perl
#                                 ^ - keyword
#                                  ^^ keyword.operator.logical.perl
#                                    ^ - keyword
#                                     ^^^ keyword.operator.logical.perl
#                                        ^ - keyword

  -f
# ^^ keyword.operator.filetest.perl
  -foo
# ^^ - keyword.operator.filetest.perl

###[ CONSTANTS ] #############################################################

  1234             # decimal integer
# ^^^^ meta.number.integer.decimal.perl constant.numeric.value.perl
  12_4             # decimal integer
# ^^^^ meta.number.integer.decimal.perl constant.numeric.value.perl
  +1234            # decimal integer
# ^ keyword.operator.arithmetic.perl
#  ^^^^ meta.number.integer.decimal.perl constant.numeric.value.perl
  + 1234           # decimal integer
# ^ keyword.operator.arithmetic.perl
#   ^^^^ meta.number.integer.decimal.perl constant.numeric.value.perl
  1234+            # decimal integer
# ^^^^ meta.number.integer.decimal.perl constant.numeric.value.perl
#     ^ keyword.operator.arithmetic.perl
  -1234            # decimal integer
# ^ keyword.operator.arithmetic.perl
#  ^^^^ meta.number.integer.decimal.perl constant.numeric.value.perl
  - 1234           # decimal integer
# ^ keyword.operator.arithmetic.perl
#   ^^^^ meta.number.integer.decimal.perl constant.numeric.value.perl
  1234-            # decimal integer
# ^^^^ meta.number.integer.decimal.perl constant.numeric.value.perl
#     ^ keyword.operator.arithmetic.perl
  0B0              # binary integer
# ^^ meta.number.integer.binary.perl constant.numeric.base.perl
#   ^ meta.number.integer.binary.perl constant.numeric.value.perl
  0b0              # binary integer
# ^^ meta.number.integer.binary.perl constant.numeric.base.perl
#   ^ meta.number.integer.binary.perl constant.numeric.value.perl
  -0b0             # binary integer
# ^ keyword.operator.arithmetic.perl
#  ^^ meta.number.integer.binary.perl constant.numeric.base.perl
#    ^ meta.number.integer.binary.perl constant.numeric.value.perl
  0b0-             # binary integer
# ^^ meta.number.integer.binary.perl constant.numeric.base.perl
#   ^ meta.number.integer.binary.perl constant.numeric.value.perl
#    ^ keyword.operator.arithmetic.perl
  0b1.0b1
# ^^ meta.number.integer.binary.perl constant.numeric.base.perl
#   ^ meta.number.integer.binary.perl constant.numeric.value.perl
#    ^ keyword.operator.concatenation.perl
#     ^^ meta.number.integer.binary.perl constant.numeric.base.perl
#       ^ meta.number.integer.binary.perl constant.numeric.value.perl
  0b11__011        # binary integer
# ^^ meta.number.integer.binary.perl constant.numeric.base.perl
#   ^^^^^^^ meta.number.integer.binary.perl constant.numeric.value.perl
  01_34            # octal integer
# ^ meta.number.integer.octal.perl constant.numeric.base.perl
#  ^^^^ meta.number.integer.octal.perl constant.numeric.value.perl
  -01234            # octal integer
# ^ keyword.operator.arithmetic.perl
#  ^ meta.number.integer.octal.perl constant.numeric.base.perl
#   ^^^^ meta.number.integer.octal.perl constant.numeric.value.perl
  012_4-           # octal integer
# ^ meta.number.integer.octal.perl constant.numeric.base.perl
#  ^^^^ meta.number.integer.octal.perl constant.numeric.value.perl
#      ^ keyword.operator.arithmetic.perl
  0x_234           # hexadecimal integer
# ^^ meta.number.integer.hexadecimal.perl constant.numeric.base.perl
#   ^^^^ meta.number.integer.hexadecimal.perl constant.numeric.value.perl
  0X123_           # hexadecimal integer
# ^^ meta.number.integer.hexadecimal.perl constant.numeric.base.perl
#   ^^^^ meta.number.integer.hexadecimal.perl constant.numeric.value.perl
  0x9              # hexadecimal integer
# ^^ meta.number.integer.hexadecimal.perl constant.numeric.base.perl
#   ^ meta.number.integer.hexadecimal.perl constant.numeric.value.perl
  +0x9             # hexadecimal integer
# ^ keyword.operator.arithmetic.perl
#  ^^ meta.number.integer.hexadecimal.perl constant.numeric.base.perl
#    ^ meta.number.integer.hexadecimal.perl constant.numeric.value.perl
  0x9-             # hexadecimal integer
# ^^ meta.number.integer.hexadecimal.perl constant.numeric.base.perl
#   ^ meta.number.integer.hexadecimal.perl constant.numeric.value.perl
#    ^ keyword.operator.arithmetic.perl
  0x9.0x10         # hexadecimal integer
# ^^ meta.number.integer.hexadecimal.perl constant.numeric.base.perl
#   ^ meta.number.integer.hexadecimal.perl constant.numeric.value.perl
#    ^ keyword.operator.concatenation.perl
#     ^^ meta.number.integer.hexadecimal.perl constant.numeric.base.perl
#       ^^ meta.number.integer.hexadecimal.perl constant.numeric.value.perl
  01.1             # normal float
# ^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#   ^ punctuation.separator.decimal.perl
  1.1              # normal float
# ^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#  ^ punctuation.separator.decimal.perl
  -1.1             # normal float
# ^ keyword.operator.arithmetic.perl
#  ^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#   ^ punctuation.separator.decimal.perl
  1.1-             # normal float
# ^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#  ^ punctuation.separator.decimal.perl
#    ^ keyword.operator.arithmetic.perl
  .1               # normal float
# ^ punctuation.separator.decimal.perl
# ^^ meta.number.float.decimal.perl constant.numeric.value.perl
  -.1              # normal float
# ^ keyword.operator.arithmetic.perl
#  ^ punctuation.separator.decimal.perl
#  ^^ meta.number.float.decimal.perl constant.numeric.value.perl
  .1-              # normal float
# ^ punctuation.separator.decimal.perl
# ^^ meta.number.float.decimal.perl constant.numeric.value.perl
#   ^ keyword.operator.arithmetic.perl
  1.               # normal float
# ^^ meta.number.float.decimal.perl constant.numeric.value.perl
#  ^ punctuation.separator.decimal.perl
  -1.              # normal float
# ^ keyword.operator.arithmetic.perl
#  ^^ meta.number.float.decimal.perl constant.numeric.value.perl
#   ^ punctuation.separator.decimal.perl
  1.-              # normal float
# ^^ meta.number.float.decimal.perl constant.numeric.value.perl
#  ^ punctuation.separator.decimal.perl
#   ^ keyword.operator.arithmetic.perl
  1e5 1E5          # exponential notation
# ^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#     ^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#     ^^^ meta.number.float.decimal.perl constant.numeric.value.perl
  -1e5             # exponential notation
# ^ keyword.operator.arithmetic.perl
#  ^^^ meta.number.float.decimal.perl constant.numeric.value.perl
  1e5-             # exponential notation
# ^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#    ^ keyword.operator.arithmetic.perl
  1.e5             # exponential notation
# ^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#  ^ punctuation.separator.decimal.perl
  12.34e56         # exponential notation
# ^^^^^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#   ^ punctuation.separator.decimal.perl
  _2._4E_6         # exponential notation
# ^^^^^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#   ^ punctuation.separator.decimal.perl
  -12.34e-56       # exponential notation
# ^ keyword.operator.arithmetic.perl
#  ^^^^^^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#    ^ punctuation.separator.decimal.perl
  - 12.34e-56      # exponential notation
# ^ keyword.operator.arithmetic.perl
#   ^^^^^^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#     ^ punctuation.separator.decimal.perl
  12.34e+56        # exponential notation
# ^^^^^^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#   ^ punctuation.separator.decimal.perl
  12.34e+56-       # exponential notation
# ^^^^^^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#   ^ punctuation.separator.decimal.perl
#          ^ keyword.operator.arithmetic.perl
  "12_4"           # number specified as a string
# ^^^^^^ meta.string.perl string.quoted.double.perl
#  ^^^^ meta.number.integer.decimal.perl constant.numeric.value.perl
  "-1234"          # number specified as a string
# ^^^^^^^ meta.string.perl string.quoted.double.perl
#  ^ meta.number.integer.decimal.perl constant.numeric.sign.perl
#   ^^^^ meta.number.integer.decimal.perl constant.numeric.value.perl
  "01234"          # number specified as a string
# ^^^^^^^ meta.string.perl string.quoted.double.perl
#  ^^^^^ meta.number.integer.decimal.perl constant.numeric.value.perl - punctuation
  "-01234"         # number specified as a string
# ^^^^^^^^ meta.string.perl string.quoted.double.perl
#  ^ meta.number.integer.decimal.perl constant.numeric.sign.perl
#   ^^^^^ meta.number.integer.decimal.perl constant.numeric.value.perl
  "1.1"            # normal float
# ^^^^^ meta.string.perl string.quoted.double.perl
#  ^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#   ^ punctuation.separator.decimal.perl
  "-1.1"           # normal float
# ^^^^^^ meta.string.perl string.quoted.double.perl
#  ^ meta.number.float.decimal.perl constant.numeric.sign.perl
#   ^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#    ^ punctuation.separator.decimal.perl
  ".1"             # normal float
# ^^^^ meta.string.perl string.quoted.double.perl
#  ^ punctuation.separator.decimal.perl
#  ^^ meta.number.float.decimal.perl constant.numeric.value.perl
  "-.1"            # normal float
# ^^^^^ meta.string.perl string.quoted.double.perl
#  ^ meta.number.float.decimal.perl constant.numeric.sign.perl
#   ^^ meta.number.float.decimal.perl constant.numeric.value.perl
#   ^ punctuation.separator.decimal.perl
  "1."             # normal float
# ^^^^ meta.string.perl string.quoted.double.perl
#  ^^ meta.number.float.decimal.perl constant.numeric.value.perl
#   ^ punctuation.separator.decimal.perl
  "-1."            # normal float
# ^^^^^ meta.string.perl string.quoted.double.perl
#  ^ meta.number.float.decimal.perl constant.numeric.sign.perl
#   ^^ meta.number.float.decimal.perl constant.numeric.value.perl
#    ^ punctuation.separator.decimal.perl
  "1e5"            # exponential notation
# ^^^^^ meta.string.perl string.quoted.double.perl
#  ^^^ meta.number.float.decimal.perl constant.numeric.value.perl
  "-1e5"           # exponential notation
# ^^^^^^ meta.string.perl string.quoted.double.perl
#  ^ meta.number.float.decimal.perl constant.numeric.sign.perl
#   ^^^ meta.number.float.decimal.perl constant.numeric.value.perl
  "1.e5"           # exponential notation
# ^^^^^^ meta.string.perl string.quoted.double.perl
#  ^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#   ^ punctuation.separator.decimal.perl
  "12.34e56"       # exponential notation
# ^^^^^^^^^^ meta.string.perl string.quoted.double.perl
#  ^^^^^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#    ^ punctuation.separator.decimal.perl
  "-12.34e-56"     # exponential notation
# ^^^^^^^^^^^^ meta.string.perl string.quoted.double.perl
#  ^ meta.number.float.decimal.perl constant.numeric.sign.perl
#   ^^^^^^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#         ^ - constant.numeric.sign
#     ^ punctuation.separator.decimal.perl
  '0.00_01'
#  ^^^^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#   ^ punctuation.separator.decimal.perl
  '01bau'
#  ^^^^^ - constant.numeric
  __PACKAGE__
# ^^^^^^^^^^^ constant.language.perl
  __FILE__
# ^^^^^^^^ constant.language.perl
  __LINE__
# ^^^^^^^^ constant.language.perl
  __END__
# ^^^^^^^ constant.language.perl

  # note: language constants keep their scope
  ARGV
# ^^^^ constant.language.filehandle.perl
  ARGV::
# ^^^^ constant.language.filehandle.perl
  ARGV->func
# ^^^^ constant.language.filehandle.perl
  ARGV()
# ^^^^ constant.language.filehandle.perl

  # note: user constants adapt their scope
  URI
# ^^^ constant.other.perl
  URI::
# ^^^ variable.namespace.perl
  URI->func
# ^^^ variable.namespace.perl
  URI()
# ^^^ variable.function.perl

###[ STRINGS ]################################################################

  "$" "@" "%" "*" "$repl$" "%repl%"
# ^ punctuation.definition.string.begin.perl
# ^^^ meta.string.perl string.quoted.double.perl
#   ^ punctuation.definition.string.end.perl
#    ^ - meta.string - string
#     ^ punctuation.definition.string.begin.perl
#     ^^^ meta.string.perl string.quoted.double.perl
#       ^ punctuation.definition.string.end.perl
#        ^ - meta.string - string
#         ^ punctuation.definition.string.begin.perl
#         ^^^ meta.string.perl string.quoted.double.perl
#           ^ punctuation.definition.string.end.perl
#            ^ - meta.string - string
#             ^ punctuation.definition.string.begin.perl
#             ^^^ meta.string.perl string.quoted.double.perl
#               ^ punctuation.definition.string.end.perl
#                ^ - meta.string - string
#                 ^ meta.string.perl string.quoted.double.perl punctuation.definition.string.begin.perl
#                  ^^^^^ meta.string.perl meta.interpolation.perl variable.other.readwrite.perl
#                       ^ meta.string.perl string.quoted.double.perl
#                        ^ meta.string.perl string.quoted.double.perl punctuation.definition.string.end.perl
#                         ^ - meta.string - string
#                          ^ meta.string.perl string.quoted.double.perl punctuation.definition.string.begin.perl
#                           ^^^^^ meta.string.perl meta.interpolation.perl variable.other.readwrite.perl
#                                ^ meta.string.perl string.quoted.double.perl
#                                 ^ meta.string.perl string.quoted.double.perl punctuation.definition.string.end.perl
#                                  ^ - meta.string - string
  `$` `@` `%` `*` `$repl$` `%repl%`
# ^ punctuation.definition.string.begin.perl
# ^^^ meta.string.perl string.quoted.backtick.perl
#   ^ punctuation.definition.string.end.perl
#    ^ - meta.string - string
#     ^ punctuation.definition.string.begin.perl
#     ^^^ meta.string.perl string.quoted.backtick.perl
#       ^ punctuation.definition.string.end.perl
#        ^ - meta.string - string
#         ^ punctuation.definition.string.begin.perl
#         ^^^ meta.string.perl string.quoted.backtick.perl
#           ^ punctuation.definition.string.end.perl
#            ^ - meta.string - string
#             ^ punctuation.definition.string.begin.perl
#             ^^^ meta.string.perl string.quoted.backtick.perl
#               ^ punctuation.definition.string.end.perl
#                ^ - meta.string - string
#                 ^ meta.string.perl string.quoted.backtick.perl punctuation.definition.string.begin.perl
#                  ^^^^^ meta.string.perl meta.interpolation.perl variable.other.readwrite.perl
#                       ^ meta.string.perl string.quoted.backtick.perl
#                        ^ meta.string.perl string.quoted.backtick.perl punctuation.definition.string.end.perl
#                         ^ - meta.string - string
#                          ^ meta.string.perl string.quoted.backtick.perl punctuation.definition.string.begin.perl
#                           ^^^^^ meta.string.perl meta.interpolation.perl variable.other.readwrite.perl
#                                ^ meta.string.perl string.quoted.backtick.perl
#                                 ^ meta.string.perl string.quoted.backtick.perl punctuation.definition.string.end.perl
#                                  ^ - meta.string - string
  <$>.<@>.<%>.<*>.<$repl$>.<%repl%>
# ^ punctuation.definition.string.begin.perl
# ^^^ meta.string.perl string.quoted.angle.perl
#   ^ punctuation.definition.string.end.perl
#    ^ - meta.string - string
#     ^ punctuation.definition.string.begin.perl
#     ^^^ meta.string.perl string.quoted.angle.perl
#       ^ punctuation.definition.string.end.perl
#        ^ - meta.string - string
#         ^ punctuation.definition.string.begin.perl
#         ^^^ meta.string.perl string.quoted.angle.perl
#           ^ punctuation.definition.string.end.perl
#            ^ - meta.string - string
#             ^ punctuation.definition.string.begin.perl
#             ^^^ meta.string.perl string.quoted.angle.perl
#               ^ punctuation.definition.string.end.perl
#                ^ - meta.string - string
#                 ^ meta.string.perl string.quoted.angle.perl punctuation.definition.string.begin.perl
#                  ^^^^^ meta.string.perl meta.interpolation.perl variable.other.readwrite.perl
#                       ^ meta.string.perl string.quoted.angle.perl
#                        ^ meta.string.perl string.quoted.angle.perl punctuation.definition.string.end.perl
#                         ^ - meta.string - string
#                          ^ meta.string.perl string.quoted.angle.perl punctuation.definition.string.begin.perl
#                           ^^^^^ meta.string.perl meta.interpolation.perl variable.other.readwrite.perl
#                                ^ meta.string.perl string.quoted.angle.perl
#                                 ^ meta.string.perl string.quoted.angle.perl punctuation.definition.string.end.perl
#                                  ^ - meta.string - string
  "quoted \"interpolated\" \foo 'bar' $baz $"
# ^ punctuation.definition.string.begin.perl
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.quoted.double.perl - meta.interpolation
#                                     ^^^^ meta.string.perl meta.interpolation.perl - string
#                                         ^^^ meta.string.perl string.quoted.double.perl - meta.interpolation
#         ^^ constant.character.escape.perl
#                       ^^ constant.character.escape.perl
#                          ^^ constant.character.escape.perl
#                                     ^^^^ variable.other.readwrite.perl
#                                          ^ - variable
#                                           ^ punctuation.definition.string.end.perl
  'quoted "interpolated" \foo \'bar\' $baz $'
# ^ punctuation.definition.string.begin.perl
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.quoted.single.perl
#                        ^^ - constant.character.escape
#                             ^^ constant.character.escape.perl
#                                  ^^ constant.character.escape.perl
#                                     ^^^^ - variable
#                                          ^ - variable
#                                           ^ punctuation.definition.string.end.perl
  'foo \' foo\\\' bar\\\\'
# ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.quoted.single.perl
# ^ punctuation.definition.string.begin.perl
#      ^^ constant.character.escape.perl
#            ^^^^ constant.character.escape.perl
#                    ^^^^ constant.character.escape.perl
#                        ^ punctuation.definition.string.end.perl
#                         ^ - meta.string - string
  `quoted "interpolated" foo \`bar\` $baz $`
# ^ punctuation.definition.string.begin.perl
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.quoted.backtick.perl - meta.interpolation
#                                    ^^^^ meta.string.perl meta.interpolation.perl - string
#                                        ^^^ meta.string.perl string.quoted.backtick.perl - meta.interpolation
#                            ^^ constant.character.escape.perl
#                                 ^^ constant.character.escape.perl
#                                    ^^^^ variable.other.readwrite.perl
#                                         ^ - variable
#                                          ^ punctuation.definition.string.end.perl
  <=quoted < ${"interpolated" . @foo{bar}}> $baz\> $> >
# ^ punctuation.definition.string.begin.perl
# ^^^^^^^^^^^ meta.string.perl string.quoted.angle.perl - meta.interpolation
#            ^^ meta.string.perl meta.interpolation.perl meta.variable.perl - string
#              ^^^^^^^^^^^^^^ meta.string.perl meta.interpolation.perl meta.variable.perl meta.string.perl
#                            ^^^^^^^^ meta.string.perl meta.interpolation.perl meta.variable.perl - string
#                                   ^^^^^ meta.item-access.perl
#                                    ^^^ meta.string.perl meta.interpolation.perl meta.variable.perl meta.item-access.perl
#                                       ^^ meta.string.perl meta.interpolation.perl meta.variable.perl - string
#                                         ^^ meta.string.perl string.quoted.angle.perl - meta.interpolation
#                                           ^^^^ meta.string.perl meta.interpolation.perl - string
#                                               ^^^^^ meta.string.perl string.quoted.angle.perl - meta.interpolation
#                                                    ^^^ - meta.string - string
# ^^ - keyword.operator
#          ^ - punctuation
#            ^ keyword.operator.dereference.perl
#             ^ punctuation.definition.variable.begin.perl
#               ^^^^^^^^^^^^^ string.quoted.double.perl
#                             ^ keyword.operator.concatenation.perl
#                               ^^^^ variable.other.readwrite.perl
#                                   ^ punctuation.section.item-access.begin.perl
#                                    ^^^ constant.other.key.perl
#                                       ^ punctuation.section.item-access.end.perl
#                                        ^  punctuation.definition.variable.end.perl
#                                         ^ - punctuation
#                                           ^^^^ variable.other.readwrite.perl
#                                               ^^ constant.character.escape.perl
#                                                  ^ - variable
#                                                   ^ punctuation.definition.string.end.perl
#                                                     ^ keyword.operator.comparison.perl
  # Note: The \/ can't be highlighted as escaped due to ST backref limitations.
  q/quoted "interpolated" foo 'bar' \/ $baz/
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl - string
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.unquoted.perl - meta.interpolation
#                                      ^^^^ - variable
#                                          ^ punctuation.section.generic.end.perl - string
  q/foo \/ foo\\\/ bar\\\\/
# ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl - string
#                         ^ punctuation.section.generic.end.perl - meta.string - string
  q\quoted "interpolated" foo 'bar' \\ $baz\
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl - string
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.perl
#                                   ^ punctuation.section.generic.end.perl - string
#                                    ^ keyword.operator.reference.perl
#                                      ^^^^ variable.other.readwrite.perl
#                                          ^ keyword.operator.reference.perl
  q{quoted "interpolated" {foo} 'bar' \} $baz}
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.braces.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.braces.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.unquoted.perl
#                                     ^^ constant.character.escape.perl
#                                        ^^^^ - variable
#                                            ^ punctuation.section.braces.end.perl - string
  q[quoted "interpolated" [foo] 'bar' \] $baz]
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.brackets.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.brackets.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.unquoted.perl
#                                     ^^ constant.character.escape.perl
#                                        ^^^^ - variable
#                                            ^ punctuation.section.brackets.end.perl - string
  q[foo \] foo\\\] bar\\\\]
# ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.brackets.begin.perl - string
#       ^^ constant.character.escape.perl
#             ^^^^ constant.character.escape.perl
#                     ^^^^ constant.character.escape.perl
#                         ^ punctuation.section.brackets.end.perl
#                         ^ - meta.string - string
  q<quoted "interpolated" <foo> 'bar' \> $baz>
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.unquoted.perl
#                                     ^^ constant.character.escape.perl
#                                        ^^^^ - variable
#                                            ^ punctuation.section.generic.end.perl - string
  q<foo \> foo\\\> bar\\\\>
# ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl - string
#       ^^ constant.character.escape.perl
#             ^^^^ constant.character.escape.perl
#                     ^^^^ constant.character.escape.perl
#                         ^ punctuation.section.generic.end.perl
#                         ^ - meta.string - string
  q(quoted "interpolated" [foo] 'bar' \) $baz)
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.parens.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.unquoted.perl
#                                     ^^ constant.character.escape.perl
#                                        ^^^^ - variable
#                                            ^ punctuation.section.parens.end.perl - string
  q(foo \) foo\\\) bar\\\\)
# ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.parens.begin.perl - string
#       ^^ constant.character.escape.perl
#             ^^^^ constant.character.escape.perl
#                     ^^^^ constant.character.escape.perl
#                         ^ punctuation.section.parens.end.perl
#                         ^ - meta.string - string
  q['
# ^ support.function.perl
#  ^ punctuation.section.brackets.begin.perl - string
#   ^^ string
    string $novar
#   ^^^^^^^^^^^^^ string
  ']
# ^ string
#  ^ punctuation.section.brackets.end.perl - string
  q<'
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl - string
#   ^^ string
    string $novar
#   ^^^^^^^^^^^^^ string
  '>
# ^ string
#  ^ punctuation.section.generic.end.perl - string

  qq/foo $bar $/;
# ^^^^^^^^^^^^^^ meta.function-call.perl
# ^^ support.function.perl
#   ^ punctuation.section.generic.begin.perl
#    ^^^^ meta.string.perl string.unquoted.perl - variable
#        ^^^^ meta.string.perl meta.interpolation.perl variable.other.readwrite.perl - string
#            ^^ meta.string.perl string.unquoted.perl - variable
#              ^ punctuation.section.generic.end.perl
#               ^ punctuation.terminator.statement.perl
  qx:foo $bar $:;
# ^^^^^^^^^^^^^^ meta.function-call.perl
# ^^ support.function.perl
#   ^ punctuation.section.generic.begin.perl
#    ^^^^ meta.string.perl string.unquoted.perl - variable
#        ^^^^ meta.string.perl meta.interpolation.perl variable.other.readwrite.perl - string
#            ^^ meta.string.perl string.unquoted.perl - variable
#              ^ punctuation.section.generic.end.perl
#               ^ punctuation.terminator.statement.perl
  qw/foo $bar/;
# ^^^^^^^^^^ meta.function-call.perl
# ^^ support.function.perl
#   ^ punctuation.section.generic.begin.perl
#    ^^^^^^^^ meta.string.perl string.unquoted.perl
#        ^^^^ - variable
#            ^ punctuation.section.generic.end.perl
#             ^ punctuation.terminator.statement.perl

  CORE::q//
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^ support.function.perl
#        ^ punctuation.section.generic.begin.perl
#         ^ punctuation.section.generic.end.perl
  CORE::qq//
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^ support.function.perl
#         ^ punctuation.section.generic.begin.perl
#          ^ punctuation.section.generic.end.perl
  CORE::qx//
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^ support.function.perl
#         ^ punctuation.section.generic.begin.perl
#          ^ punctuation.section.generic.end.perl
  CORE::qw//
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^ support.function.perl
#         ^ punctuation.section.generic.begin.perl
#          ^ punctuation.section.generic.end.perl

###[ REGEX ]##################################################################

  /[a-z]test\d{3}/g;
# ^ punctuation.section.generic.begin.perl - string.regexp - source.regexp
#  ^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#                ^ punctuation.section.generic.end.perl - string.regexp - source.regexp
#                 ^ constant.language.flags.regexp.perl
	/[a-z]test\d{3}/g;
#^ punctuation.section.generic.begin.perl
  ( /[a-z]test\d{3}/g );
#   ^ punctuation.section.generic.begin.perl - string.regexp - source.regexp
#    ^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#                  ^ punctuation.section.generic.end.perl - string.regexp - source.regexp
#                   ^ constant.language.flags.regexp.perl
  $@ = /[a-z]test\d{3}/g;
#      ^ punctuation.section.generic.begin.perl - string.regexp - source.regexp
#       ^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#                     ^ punctuation.section.generic.end.perl - string.regexp - source.regexp
#                      ^ constant.language.flags.regexp.perl
  m{^\s*(?:(-?\s*)(\d+(?:\.\d+){0,3})/(\d+))}; # comment
# ^ support.function.perl - meta.braces
#  ^ punctuation.section.braces.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.braces.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl
#                                           ^ punctuation.section.braces.end.perl - string
#                                            ^ punctuation.terminator.statement.perl
#                                              ^ comment.line.number-sign.perl punctuation.definition.comment.perl
  m(^\s*(?:(-?\s*)(\d+(?:\.\d+){0,3})/(\d+))); # comment
# ^ support.function.perl - meta.parens
#  ^ punctuation.section.parens.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl
#                                           ^ punctuation.section.parens.end.perl - string
#                                            ^ punctuation.terminator.statement.perl
#                                              ^ comment.line.number-sign.perl punctuation.definition.comment.perl
  m[^\s*(?:(-?\s*)(\d+(?:\.\d+){0,3})/(\d+))]; # comment
# ^ support.function.perl - meta.brackets
#  ^ punctuation.section.brackets.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.brackets.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl
#                                           ^ punctuation.section.brackets.end.perl - string
#                                            ^ punctuation.terminator.statement.perl
#                                              ^ comment.line.number-sign.perl punctuation.definition.comment.perl
  m<^\s*(?:(-?\s*)(\d+(?:\.\d+){0,3})/(\d+))>; # comment
# ^ support.function.perl - meta.generic
#  ^ punctuation.section.generic.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl
#                                           ^ punctuation.section.generic.end.perl - string
#                                            ^ punctuation.terminator.statement.perl
#                                              ^ comment.line.number-sign.perl punctuation.definition.comment.perl
  m/^\s*(?:(-?\s*)(\d+(?:\.\d+){0,3})\/(\d+))/g; # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl
#                                            ^ punctuation.section.generic.end.perl
#                                             ^ constant.language.flags.regexp.perl
#                                              ^ punctuation.terminator.statement.perl
#                                                ^ comment.line.number-sign.perl punctuation.definition.comment.perl
  m{{1}\d(?-x) ${VAR} \}\w+}
# ^ meta.function-call.perl - meta.braces
#  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl meta.braces.perl
#                           ^ - meta.function-call - meta.braces
#  ^ punctuation.section.braces.begin.perl
#   ^^^^^^^^^^^ meta.string.perl - meta.interpolation
#              ^^^^^ meta.string.perl meta.interpolation.perl
#                    ^^^^^^ meta.string.perl - meta.interpolation
#   ^^^^^^^^^^^ string.regexp.perl
#   ^^^ invalid.illegal.unexpected-quantifier.regexp
#              ^^^^^^ - string.regexp
#              ^ keyword.operator.dereference.perl
#               ^ punctuation.definition.variable.begin.perl
#                ^^^ string.unquoted.perl
#                   ^ punctuation.definition.variable.end.perl
#                    ^^^^^^ string.regexp.perl
#                     ^^ constant.character.escape.regexp
#                          ^ punctuation.section.braces.end.perl
  m\@pattern\g; # comment
# ^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^ meta.string.perl string.regexp.perl
#           ^ punctuation.section.generic.end.perl
#            ^ constant.language.flags.regexp.perl
#             ^ punctuation.terminator.statement.perl
#               ^ comment.line.number-sign.perl punctuation.definition.comment.perl
  CORE::m
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^ support.function.perl
  CORE::m//g
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^ support.function.perl
#        ^ punctuation.section.generic.begin.perl
#         ^ punctuation.section.generic.end.perl
#          ^ constant.language.flags.regexp.perl
  core::m
# ^^^^ meta.path.perl variable.namespace.perl
#     ^^ meta.path.perl punctuation.accessor.double-colon.perl
#       ^ meta.path.perl variable.function.perl
  m::core
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^ punctuation.section.generic.end.perl
#    ^^^^ constant.language.flags.regexp.perl

  s {
# ^^^^ meta.function-call.perl
#   ^^ meta.braces.perl
# ^ support.function.perl
#   ^ punctuation.section.braces.begin.perl
    bar[a-z]{1,3} \/ .+
# <- meta.function-call.perl meta.braces.perl meta.string.perl string.regexp.perl
  } [repl $var]gx; # comment
# <- meta.function-call.perl meta.braces.perl meta.string.perl string.regexp.perl
#^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ meta.braces.perl punctuation.section.braces.end.perl
#   ^^^^^^^^^^^ meta.brackets.perl
#   ^ punctuation.section.brackets.begin.perl
#    ^^^^^ meta.string.perl string.unquoted.perl
#         ^^^^ meta.interpolation.perl variable.other.readwrite.perl
#             ^ punctuation.section.brackets.end.perl
#              ^^ constant.language.flags.regexp.perl
#                ^ punctuation.terminator.statement.perl
#                  ^^^^^^^^^ comment.line.number-sign.perl
  s {}
  [repl @var]gx; # comment
# <- meta.function-call.perl
#^^^^^^^^^^^^^^ meta.function-call.perl
# ^^^^^^^^^^^ meta.brackets.perl
# ^ punctuation.section.brackets.begin.perl
#  ^^^^^ meta.string.perl string.unquoted.perl
#       ^^^^ meta.interpolation.perl variable.other.readwrite.perl
#           ^ punctuation.section.brackets.end.perl
#            ^^ constant.language.flags.regexp.perl
#              ^ punctuation.terminator.statement.perl
#                ^^^^^^^^^ comment.line.number-sign.perl

  # Even though the replacement looks like a valid script
  # only variables are evaluated at this point.
  s/L<(.*?)>/
# ^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#           ^ punctuation.separator.sequence.perl
     my($text,$page,$sect) = _split_pod_link($1);
     defined $text
      ? $text
      : defined $sect
         ? italic($sect) . ' in ' . italic($page)
         : italic($page)
#^^^^^^^^^^^^^^^^^ meta.string.perl string.unquoted.perl
#                 ^^^^^ meta.string.perl meta.interpolation.perl variable.other.readwrite.perl
#                      ^^ meta.string.perl string.unquoted.perl
   /ges;
#^^^^^^ meta.function-call.perl
#  ^ punctuation.section.generic.end.perl
#   ^^^ constant.language.flags.regexp.perl
#      ^ punctuation.terminator.statement.perl

  s/foo[a-z]{1,3} \/ .+/ bar $1 \/ %/g; # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#                      ^ punctuation.separator.sequence.perl
#                       ^^^^^ meta.string.perl string.unquoted.perl - meta.interpolation - variable
#                            ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match-group.perl - string
#                              ^^^^^ meta.string.perl string.unquoted.perl - meta.interpolation - variable
#                                   ^ punctuation.section.generic.end.perl
#                                    ^ constant.language.flags.regexp.perl
#                                     ^ punctuation.terminator.statement.perl
#                                       ^^^^^^^^^ comment.line.number-sign.perl
#                                       ^ punctuation.definition.comment.perl
  s\foo[a-z]{1,3} / .+\ bar $1 / $\g; # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^^^^^^^ string.regexp.perl source.regexp
#                     ^ punctuation.separator.sequence.perl
#                      ^^^^^ meta.string.perl string.unquoted.perl
#                           ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match-group.perl
#                              ^^^ meta.function-call.perl meta.string.perl string.unquoted.perl
#                                 ^ punctuation.section.generic.end.perl
#                                  ^ constant.language.flags.regexp.perl
#                                   ^ punctuation.terminator.statement.perl
#                                     ^^^^^^^^^ comment.line.number-sign.perl
#                                     ^ punctuation.definition.comment.perl
  s#foo[a-z]{1,3} \# .+# bar $1 \# $#g; # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#                      ^ punctuation.separator.sequence.perl
#                       ^^^^^ meta.string.perl string.unquoted.perl - meta.interpolation - variable
#                            ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match-group.perl - string
#                              ^^^^^ meta.string.perl string.unquoted.perl - meta.interpolation - variable
#                                   ^ punctuation.section.generic.end.perl
#                                    ^ constant.language.flags.regexp.perl
#                                     ^ punctuation.terminator.statement.perl
#                                       ^^^^^^^^^ comment.line.number-sign.perl
#                                       ^ punctuation.definition.comment.perl
  s;foo[a-z]{1,3} \; .+; bar $1 \; %;g; # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#                      ^ punctuation.separator.sequence.perl
#                       ^^^^^ meta.string.perl string.unquoted.perl - meta.interpolation - variable
#                            ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match-group.perl - string
#                              ^^^^^ meta.string.perl string.unquoted.perl - meta.interpolation - variable
#                                   ^ punctuation.section.generic.end.perl
#                                    ^ constant.language.flags.regexp.perl
#                                     ^ punctuation.terminator.statement.perl
#                                       ^^^^^^^^^ comment.line.number-sign.perl
#                                       ^ punctuation.definition.comment.perl
  s!foo[a-z]{1,3} \! .+! bar $1 \! @!g; # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#                      ^ punctuation.separator.sequence.perl
#                       ^^^^^ meta.string.perl string.unquoted.perl - meta.interpolation - variable
#                            ^^ meta.string.perl meta.interpolation.perl variable.language.regexp.match-group.perl - string
#                              ^^^^^ meta.string.perl string.unquoted.perl - meta.interpolation - variable
#                                   ^ punctuation.section.generic.end.perl
#                                    ^ constant.language.flags.regexp.perl
#                                     ^ punctuation.terminator.statement.perl
#                                       ^^^^^^^^^ comment.line.number-sign.perl
#                                       ^ punctuation.definition.comment.perl
  s:\\:/:;
# ^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^ meta.string.perl string.regexp.perl source.regexp constant.character.escape.regexp
#     ^ punctuation.separator.sequence.perl
#      ^ meta.string.perl string.unquoted.perl
#       ^ punctuation.section.generic.end.perl
#        ^ punctuation.terminator.statement.perl
  s:\\\\:/\\\\:;
# ^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^ meta.string.perl string.regexp.perl source.regexp constant.character.escape.regexp
#       ^ punctuation.separator.sequence.perl
#        ^^^^^ meta.string.perl string.unquoted.perl
#             ^ punctuation.section.generic.end.perl
#              ^ punctuation.terminator.statement.perl
  s/^\s+//;
# ^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^ meta.string.perl string.regexp.perl source.regexp
#       ^ punctuation.separator.sequence.perl
#        ^ punctuation.section.generic.end.perl
#         ^ punctuation.terminator.statement.perl
  $opt{s}
#      ^ - support.function.perl
  s///msixpodualngcer;
# ^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^ punctuation.separator.sequence.perl
#    ^ punctuation.section.generic.end.perl
#     ^^^^^^^^^^^^^^^ constant.language.flags.regexp.perl
#                    ^ punctuation.terminator.statement.perl
  s@/\*.*?\*/@@g;
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#            ^ punctuation.separator.sequence.perl - variable
#             ^ punctuation.section.generic.end.perl - variable
#              ^ constant.language.flags.regexp.perl
#               ^ punctuation.terminator.statement.perl
  s@/\*.*?\*/@\@@g;
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#            ^ punctuation.separator.sequence.perl - variable
#             ^^ meta.string.perl string.unquoted.perl constant.character.escape.perl
#               ^ punctuation.section.generic.end.perl - variable
#                ^ constant.language.flags.regexp.perl
#                 ^ punctuation.terminator.statement.perl
  CORE::s
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^ support.function.perl
  CORE::s///g
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^ support.function.perl
#        ^ punctuation.section.generic.begin.perl
#         ^ punctuation.separator.sequence.perl
#          ^ punctuation.section.generic.end.perl
#           ^ constant.language.flags.regexp.perl
  core::s
# ^^^^ meta.path.perl variable.namespace.perl
#     ^^ meta.path.perl punctuation.accessor.double-colon.perl
#       ^ meta.path.perl variable.function.perl
  s::core:s
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^ punctuation.separator.sequence.perl
#    ^^^^ meta.string.perl string.unquoted.perl
#        ^ punctuation.section.generic.end.perl
#         ^ constant.language.flags.regexp.perl

  tr/h-k/foo $bar baz/cdsr;
# ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^^ support.function.perl
#   ^ punctuation.section.generic.begin.perl
#    ^^^ meta.string.perl string.regexp.perl
#       ^ punctuation.separator.sequence.perl
#        ^^^^ meta.string.perl string.unquoted.perl - meta.interpolation
#            ^^^^ meta.string.perl meta.interpolation.perl variable.other.readwrite.perl - string
#                ^^^^ meta.string.perl string.unquoted.perl - meta.interpolation
#                    ^ punctuation.section.generic.end.perl
#                     ^^^^ constant.language.flags.regexp.perl
#                         ^ punctuation.terminator.statement.perl
  CORE::tr
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^ support.function.perl
  CORE::tr///g
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^ support.function.perl
#         ^ punctuation.section.generic.begin.perl
#          ^ punctuation.separator.sequence.perl
#           ^ punctuation.section.generic.end.perl
#            ^ constant.language.flags.regexp.perl
  core::tr
# ^^^^ meta.path.perl variable.namespace.perl
#     ^^ meta.path.perl punctuation.accessor.double-colon.perl
#       ^^ meta.path.perl variable.function.perl
  tr::core:s
# ^^ support.function.perl
#   ^ punctuation.section.generic.begin.perl
#    ^ punctuation.separator.sequence.perl
#     ^^^^ meta.string.perl string.unquoted.perl
#         ^ punctuation.section.generic.end.perl
#          ^ constant.language.flags.regexp.perl

  y/\x68-k/\foo $bar baz/cdsr;
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^ meta.string.perl string.regexp.perl
#         ^ punctuation.separator.sequence.perl
#          ^^^^^ meta.string.perl string.unquoted.perl - meta.interpolation
#               ^^^^ meta.string.perl meta.interpolation.perl variable.other.readwrite.perl - string
#                   ^^^^ meta.string.perl string.unquoted.perl - meta.interpolation
#                       ^ punctuation.section.generic.end.perl
#                        ^^^^ constant.language.flags.regexp.perl
#                            ^ punctuation.terminator.statement.perl
  CORE::y
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^ support.function.perl
  CORE::y///g
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^ support.function.perl
#        ^ punctuation.section.generic.begin.perl
#         ^ punctuation.separator.sequence.perl
#          ^ punctuation.section.generic.end.perl
#           ^ constant.language.flags.regexp.perl
  core::y
# ^^^^ meta.path.perl variable.namespace.perl
#     ^^ meta.path.perl punctuation.accessor.double-colon.perl
#       ^ meta.path.perl variable.function.perl
  y::core:s
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^ punctuation.separator.sequence.perl
#    ^^^^ meta.string.perl string.unquoted.perl
#        ^ punctuation.section.generic.end.perl
#         ^ constant.language.flags.regexp.perl

###[ REGEXP PATTERN ESCAPES ]#################################################

  /c:\\folder/i;
# ^ punctuation.section.generic.begin.perl
#  ^^^^^^^^^^ meta.string.perl string.regexp.perl
#            ^ punctuation.section.generic.end.perl
  /c:\\folder\//i;
# ^ punctuation.section.generic.begin.perl
#  ^^^^^^^^^^^^ meta.string.perl string.regexp.perl
#              ^ punctuation.section.generic.end.perl
  /c:\\folder\\/i;
# ^ punctuation.section.generic.begin.perl
#  ^^^^^^^^^^^^ meta.string.perl string.regexp.perl
#              ^ punctuation.section.generic.end.perl
  /c:\\folder\\\//i;
# ^ punctuation.section.generic.begin.perl
#  ^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl
#                ^ punctuation.section.generic.end.perl
  m/c:\\folder/i;
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^ meta.string.perl string.regexp.perl
#             ^ punctuation.section.generic.end.perl
  m/c:\\folder\//i;
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^ meta.string.perl string.regexp.perl
#               ^ punctuation.section.generic.end.perl
  m/c:\\folder\\/i;
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^ meta.string.perl string.regexp.perl
#               ^ punctuation.section.generic.end.perl
  m/c:\\folder\\\//i;
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl
#                 ^ punctuation.section.generic.end.perl
  s/c:\\folder//i;
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^ meta.string.perl string.regexp.perl
#             ^ punctuation.separator.sequence.perl
#              ^ punctuation.section.generic.end.perl
  s/c:\\folder\///i;
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^ meta.string.perl string.regexp.perl
#               ^ punctuation.separator.sequence.perl
#                ^ punctuation.section.generic.end.perl
  s/c:\\folder\\//i;
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^ meta.string.perl string.regexp.perl
#               ^ punctuation.separator.sequence.perl
#                ^ punctuation.section.generic.end.perl
  s/c:\\folder\\\///i;
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^^^ meta.string.perl string.regexp.perl
#                 ^ punctuation.separator.sequence.perl
#                  ^ punctuation.section.generic.end.perl

###[ REGEXP FLAGS ]###########################################################

  /^<pattern>$/g;
#              ^ constant.language.flags.regexp.perl
  /^<pattern>$/ g;
#               ^ - constant.language.flags.regexp.perl
  m/^<pattern>$/g;
#               ^ constant.language.flags.regexp.perl
  m/^<pattern>$/ g;
#                ^ - constant.language.flags.regexp.perl
  m{^<pattern>$}g;
#               ^ constant.language.flags.regexp.perl
  m{^<pattern>$} g;
#                ^ - constant.language.flags.regexp.perl
  m<^[pattern]$>g;
#               ^ constant.language.flags.regexp.perl
  m<^[pattern]$> g;
#                ^ - constant.language.flags.regexp.perl
  s/<pattern>/<repl>/g;
#                    ^ constant.language.flags.regexp.perl
  s/<pattern>/<repl>/ g;
#                     ^ - constant.language.flags.regexp.perl
  s[<pattern>] [<repl>]g;
#                      ^ constant.language.flags.regexp.perl
  s[<pattern>] [<repl>] g;
#                       ^ - constant.language.flags.regexp.perl

###[ LANGUAGE VARIABLES ]#####################################################

# Special Variables

  $_ $#_ $ARG $_[0] $_{'key'} $#_[0] $#_{'key'}
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^^ punctuation.definition.variable.perl
#    ^^^ variable.language.perl
#        ^ punctuation.definition.variable.perl
#        ^^^^ variable.language.perl
#             ^ punctuation.definition.variable.perl
#             ^^ variable.language.perl
#               ^^^ meta.item-access.perl
#                   ^ punctuation.definition.variable.perl
#                   ^^ variable.language.perl
#                     ^^^^^^^ meta.item-access.perl
#                             ^^ punctuation.definition.variable.perl
#                             ^^^ variable.language.perl
#                                ^^^ meta.item-access.perl
#                                    ^^ punctuation.definition.variable.perl
#                                    ^^^ variable.language.perl
#                                       ^^^^^^^ meta.item-access.perl
  @_ @#_ @ARG @_[0] @_{'key'} @#_[0] @#_{'key'}
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^^ punctuation.definition.variable.perl
#    ^^^ variable.language.perl
#        ^ punctuation.definition.variable.perl
#        ^^^^ variable.language.perl
#             ^ punctuation.definition.variable.perl
#             ^^ variable.language.perl
#               ^^^ meta.item-access.perl
#                   ^ punctuation.definition.variable.perl
#                   ^^ variable.language.perl
#                     ^^^^^^^ meta.item-access.perl
#                             ^^ punctuation.definition.variable.perl
#                             ^^^ variable.language.perl
#                                ^^^ meta.item-access.perl
#                                    ^^ punctuation.definition.variable.perl
#                                    ^^^ variable.language.perl
#                                       ^^^^^^^ meta.item-access.perl
  %_ %#_ %ARG %_[0] %_{'key'} %#_[0] %#_{'key'}
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^^ punctuation.definition.variable.perl
#    ^^^ variable.language.perl
#        ^ punctuation.definition.variable.perl
#        ^^^^ variable.language.perl
#             ^ punctuation.definition.variable.perl
#             ^^ variable.language.perl
#               ^^^ meta.item-access.perl
#                   ^ punctuation.definition.variable.perl
#                   ^^ variable.language.perl
#                     ^^^^^^^ meta.item-access.perl
#                             ^^ punctuation.definition.variable.perl
#                             ^^^ variable.language.perl
#                                ^^^ meta.item-access.perl
#                                    ^^ punctuation.definition.variable.perl
#                                    ^^^ variable.language.perl
#                                       ^^^^^^^ meta.item-access.perl
  *_ *ARG *_[0] *_{'key'}
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^^^ variable.language.perl
#         ^ punctuation.definition.variable.perl
#         ^^ variable.language.perl
#           ^^^ meta.item-access.perl
#               ^ punctuation.definition.variable.perl
#               ^^ variable.language.perl
#                 ^^^^^^^ meta.item-access.perl
  $" $LIST_SEPARATOR
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^^^^^^^^^^^^^^ variable.language.perl
  $$ $PID $PROCESS_ID
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^^^ variable.language.perl
#         ^ punctuation.definition.variable.perl
#         ^^^^^^^^^^^ variable.language.perl
  $0 $PROGRAM_NAME
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
  $( $GID $REAL_GROUP_ID
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
  $) $EGID $EFFECTIVE_GROUP_ID
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
  $< $UID $REAL_USER_ID
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
  $> $EUID $EFFECTIVE_USER_ID
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
  $; $SUBSEP $SUBSCRIPT_SEPARATOR
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
  $@;
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#   ^ punctuation.terminator.statement.perl
  $a
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
  $b
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
  %ENV $ENV{'bar'}
# ^ punctuation.definition.variable.perl
# ^^^^ variable.language.perl
#      ^ punctuation.definition.variable.perl
#      ^^^^ variable.language.perl
  $] $OLD_PERL_VERSION
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
  $^F $SYSTEM_FD_MAX
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
  @F  # array of fields of each line with autosplit mode on
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
  %INC
# ^ punctuation.definition.variable.perl
# ^^^^ variable.language.perl
  $^I $INPLACE_EDIT
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
  @ISA  # list of that class's parent classes
# ^ punctuation.definition.variable.perl
# ^^^^ variable.language.perl
  $^O $OSNAME
# ^ punctuation.definition.variable.perl
# ^^^ variable.language.perl
  %SIG $SIG{"PIPE"} # hash of signal handlers for signals
# ^ punctuation.definition.variable.perl
# ^^^^ variable.language.perl
#      ^ punctuation.definition.variable.perl
#      ^^^^ variable.language.perl
  $^O $OSNAME
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
  $^V $PERL_VERSION
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
  $^X $EXECUTABLE_NAME
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl

# Variables related to regular expressions

  $& $MATCH $&[0]
# ^ punctuation.definition.variable.perl
# ^^ variable.language.regexp.match.perl
#    ^ punctuation.definition.variable.perl
#    ^^^^^^ variable.language.perl
#           ^ punctuation.definition.variable.perl
#           ^^ variable.language.regexp.match.perl
#             ^^^ meta.item-access.perl
  $` $PREMATCH
# ^ punctuation.definition.variable.perl
# ^^ variable.language.regexp.match.perl
  $' $POSTMATCH
# ^ punctuation.definition.variable.perl
# ^^ variable.language.regexp.match.perl
  $+ $LAST_PAREN_MATCH
# ^ punctuation.definition.variable.perl
# ^^ variable.language.regexp.match-group.perl
  @+ @LAST_MATCH_END
# ^ punctuation.definition.variable.perl
# ^^ variable.language.regexp.match-group.perl
  %+ %LAST_PAREN_MATCH
# ^ punctuation.definition.variable.perl
# ^^ variable.language.regexp.match-group.perl
  $- $LAST_MATCH_START
# ^ punctuation.definition.variable.perl
# ^^ variable.language.regexp.match-group.perl
  @- @LAST_MATCH_START
# ^ punctuation.definition.variable.perl
# ^^ variable.language.regexp.match-group.perl
  %- %LAST_MATCH_START
# ^ punctuation.definition.variable.perl
# ^^ variable.language.regexp.match-group.perl
  $1 $#1 $1[0] $#1[0] $1{key}
# ^ punctuation.definition.variable.perl
# ^^ variable.language.regexp.match-group.perl
#    ^^ punctuation.definition.variable.perl
#    ^^^ variable.language.regexp.match-group.perl
#        ^ punctuation.definition.variable.perl
#        ^^ variable.language.regexp.match-group.perl
#          ^^^ meta.item-access.perl
#              ^^ punctuation.definition.variable.perl
#              ^^^ variable.language.regexp.match-group.perl
#                 ^^^ meta.item-access.perl
#                     ^ punctuation.definition.variable.perl
#                     ^^ variable.language.regexp.match-group.perl
#                       ^^^^^ meta.item-access.perl
  1*2*3*4*5*6
# ^^^^^^^^^^^ - variable
  $+[0]-$+[$#-]
# ^ punctuation.definition.variable.perl
# ^^ variable.language.regexp.match-group.perl
#   ^^^ meta.item-access.perl
#      ^ keyword.operator.arithmetic.perl
#       ^ punctuation.definition.variable.perl
#       ^^ variable.language.regexp.match-group.perl
#         ^^^^^ meta.item-access.perl
#          ^^ punctuation.definition.variable.perl
#          ^^^ variable.language.regexp.match-group.perl
  $-[0]*$-[$-[2]]
# ^ punctuation.definition.variable.perl
# ^^ variable.language.regexp.match-group.perl
#   ^^^ meta.item-access.perl
#      ^ keyword.operator.arithmetic.perl
#       ^ punctuation.definition.variable.perl
#       ^^ variable.language.regexp.match-group.perl
#         ^^^ meta.item-access.perl - meta.item-access meta.item-access
#            ^^^ meta.item-access.perl meta.item-access.perl
#               ^ meta.item-access.perl - meta.item-access meta.item-access
#         ^ punctuation.section.item-access.begin.perl
#          ^^ variable.language.regexp.match-group.perl
#            ^ punctuation.section.item-access.begin.perl
#             ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#              ^^ punctuation.section.item-access.end.perl

# Variables related to input/output formating

  $, @, %, *, $OFS $OUTPUT_FIELD_SEPARATOR
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^ variable.language.perl
#       ^ punctuation.definition.variable.perl
#       ^^ variable.language.perl
#          ^ punctuation.definition.variable.perl
#          ^^ variable.language.perl
  $. @. %. *. $NR $INPUT_LINE_NUMBER
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^ variable.language.perl
#       ^ punctuation.definition.variable.perl
#       ^^ variable.language.perl
#          ^ punctuation.definition.variable.perl
#          ^^ variable.language.perl
  $/ @/ %/ */ $RS $INPUT_RECORD_SEPARATOR
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^ variable.language.perl
#       ^ punctuation.definition.variable.perl
#       ^^ variable.language.perl
#          ^ punctuation.definition.variable.perl
#          ^^ variable.language.perl
  $\ @\ %\ *\ $ORS $OUTPUT_RECORD_SEPARATOR
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^ variable.language.perl
#       ^ punctuation.definition.variable.perl
#       ^^ variable.language.perl
#          ^ punctuation.definition.variable.perl
#          ^^ variable.language.perl
  $| @| %| *| $OUTPUT_AUTOFLUSH
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^ variable.language.perl
#       ^ punctuation.definition.variable.perl
#       ^^ variable.language.perl
#          ^ punctuation.definition.variable.perl
#          ^^ variable.language.perl
  $: @: %: *: $FORMAT_LINE_BREAK_CHARACTERS
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#             ^ punctuation.definition.variable.perl
#             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^ variable.language.perl
#       ^ punctuation.definition.variable.perl
#       ^^ variable.language.perl
#          ^ punctuation.definition.variable.perl
#          ^^ variable.language.perl
  $= @=,%=,*= $FORMAT_LINES_PER_PAGE
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^ variable.language.perl
#       ^ punctuation.definition.variable.perl
#       ^^ variable.language.perl
#          ^ punctuation.definition.variable.perl
#          ^^ variable.language.perl
#             ^ punctuation.definition.variable.perl
#             ^^^^^^^^^^^^^^^^^^^^^^ variable.language.perl
  $^ @^ %^ *^ $FORMAT_TOP_NAME
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^ variable.language.perl
#       ^ punctuation.definition.variable.perl
#       ^^ variable.language.perl
#          ^ punctuation.definition.variable.perl
#          ^^ variable.language.perl
#             ^ punctuation.definition.variable.perl
#             ^^^^^^^^^^^^^^^^ variable.language.perl
  $~ @~ %~ *~ $FORMAT_NAME
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^ variable.language.perl
#       ^ punctuation.definition.variable.perl
#       ^^ variable.language.perl
#          ^ punctuation.definition.variable.perl
#          ^^ variable.language.perl
#             ^ punctuation.definition.variable.perl
#             ^^^^^^^^^^^^ variable.language.perl

# Error Variables

  $^E @^E %^E *^E $EXTENDED_OS_ERROR
# ^ punctuation.definition.variable.perl
# ^^^ variable.language.perl
# ^ punctuation.definition.variable.perl
# ^^^ variable.language.perl
#     ^ punctuation.definition.variable.perl
#     ^^^ variable.language.perl
#         ^ punctuation.definition.variable.perl
#         ^^^ variable.language.perl
#             ^ punctuation.definition.variable.perl
#             ^^^ variable.language.perl
#                 ^ punctuation.definition.variable.perl
#                 ^^^^^^^^^^^^^^^^^^ variable.language.perl
  $^S @^S %^S *^S $EXCEPTIONS_BEING_CAUGHT
# ^ punctuation.definition.variable.perl
# ^^^ variable.language.perl
# ^ punctuation.definition.variable.perl
# ^^^ variable.language.perl
#     ^ punctuation.definition.variable.perl
#     ^^^ variable.language.perl
#         ^ punctuation.definition.variable.perl
#         ^^^ variable.language.perl
#             ^ punctuation.definition.variable.perl
#             ^^^ variable.language.perl
#                 ^ punctuation.definition.variable.perl
#                 ^^^^^^^^^^^^^^^^^^^^^^^^ variable.language.perl
  $^W @^W %^W *^W $WARNING
# ^ punctuation.definition.variable.perl
# ^^^ variable.language.perl
# ^ punctuation.definition.variable.perl
# ^^^ variable.language.perl
#     ^ punctuation.definition.variable.perl
#     ^^^ variable.language.perl
#         ^ punctuation.definition.variable.perl
#         ^^^ variable.language.perl
#             ^ punctuation.definition.variable.perl
#             ^^^ variable.language.perl
#                 ^ punctuation.definition.variable.perl
#                 ^^^^^^^^ variable.language.perl
  $! @! %! *! $ERRNO $OS_ERROR
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^ variable.language.perl
#       ^ punctuation.definition.variable.perl
#       ^^ variable.language.perl
#          ^ punctuation.definition.variable.perl
#          ^^ variable.language.perl
#             ^ punctuation.definition.variable.perl
#             ^^^^^^ variable.language.perl
#                    ^ punctuation.definition.variable.perl
#                    ^^^^^^^^^ variable.language.perl
  $@ @@ %@ *@ $EVAL_ERROR
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^ variable.language.perl
#       ^ punctuation.definition.variable.perl
#       ^^ variable.language.perl
#          ^ punctuation.definition.variable.perl
#          ^^ variable.language.perl
#             ^ punctuation.definition.variable.perl
#             ^^^^^^^^^^^ variable.language.perl
  $? @? %? *? $CHILD_ERROR
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ punctuation.definition.variable.perl
#    ^^ variable.language.perl
#       ^ punctuation.definition.variable.perl
#       ^^ variable.language.perl
#          ^ punctuation.definition.variable.perl
#          ^^ variable.language.perl
#             ^ punctuation.definition.variable.perl
#             ^^^^^^^^^^^^ variable.language.perl

# Deprecated and removed variables

  $#  # format printed numbers
# ^^ variable.language.deprecated.perl
# ^ punctuation.definition.variable.perl
  $*  # enable multiline matching
# ^^ variable.language.deprecated.perl
# ^ punctuation.definition.variable.perl
  $[  # index of the first element in an array
# ^^ variable.language.deprecated.perl
# ^ punctuation.definition.variable.perl

# Postfix Dereference Syntax
# https://perldoc.perl.org/perlref#Postfix-Dereference-Syntax

$sref->$*;  # same as  ${ $sref }
#      ^ keyword.operator.dereference.perl
#       ^ variable.language.perl

$aref->@*;  # same as  @{ $aref }
#      ^ keyword.operator.dereference.perl
#       ^ variable.language.perl

$aref->$#*; # same as $#{ $aref }
#      ^^ keyword.operator.dereference.perl
#        ^ variable.language.perl

$href->%*;  # same as  %{ $href }
#      ^ keyword.operator.dereference.perl
#       ^ variable.language.perl

$cref->&*;  # same as  &{ $cref }
#      ^ keyword.operator.dereference.perl
#       ^ variable.language.perl

$gref->**;  # same as  *{ $gref }
#      ^ keyword.operator.dereference.perl
#       ^ variable.language.perl

$gref->*{SCALAR}; # same as *{ $gref }{SCALAR}
#      ^ keyword.operator.dereference.perl
#       ^^^^^^^^ meta.item-access.perl
#       ^ punctuation.section.item-access.begin.perl
#        ^^^^^^ constant.other.key.perl
#              ^ punctuation.section.item-access.end.perl

# Postfix Reference Slicing
# https://perldoc.perl.org/perlref#Postfix-Reference-Slicing

$aref->$[ 0 ];  # same as $$aref[ 0 ]
#      ^ keyword.operator.dereference.perl
#       ^^^^^ meta.item-access.perl
#       ^ punctuation.section.item-access.begin.perl
#         ^ constant.numeric.value.perl
#           ^ punctuation.section.item-access.end.perl

$href->${ key };  # same as $$href{ key }
#      ^ keyword.operator.dereference.perl
#       ^^^^^^^ meta.item-access.perl
#       ^ punctuation.section.item-access.begin.perl
#         ^^^ constant.other.key.perl
#             ^ punctuation.section.item-access.end.perl

$aref->@[ 0 ];  # same as @$aref[ 0 ]
#      ^ keyword.operator.dereference.perl
#       ^^^^^ meta.item-access.perl
#       ^ punctuation.section.item-access.begin.perl
#         ^ constant.numeric.value.perl
#           ^ punctuation.section.item-access.end.perl

$href->@{ key };  # same as @$href{ key }
#      ^ keyword.operator.dereference.perl
#       ^^^^^^^ meta.item-access.perl
#       ^ punctuation.section.item-access.begin.perl
#         ^^^ constant.other.key.perl
#             ^ punctuation.section.item-access.end.perl

$aref->%[ 0 ];  # same as %$aref[ 0 ]
#      ^ keyword.operator.dereference.perl
#       ^^^^^ meta.item-access.perl
#       ^ punctuation.section.item-access.begin.perl
#         ^ constant.numeric.value.perl
#           ^ punctuation.section.item-access.end.perl

$href->%{ key };  # same as %$href{ key }
#      ^ keyword.operator.dereference.perl
#       ^^^^^^^ meta.item-access.perl
#       ^ punctuation.section.item-access.begin.perl
#         ^^^ constant.other.key.perl
#             ^ punctuation.section.item-access.end.perl

$aref->&[ 0 ];  # same as &$aref[ 0 ]
#      ^ keyword.operator.dereference.perl
#       ^^^^^ meta.item-access.perl
#       ^ punctuation.section.item-access.begin.perl
#         ^ constant.numeric.value.perl
#           ^ punctuation.section.item-access.end.perl

$href->&{ key };  # same as &$href{ key }
#      ^ keyword.operator.dereference.perl
#       ^^^^^^^ meta.item-access.perl
#       ^ punctuation.section.item-access.begin.perl
#         ^^^ constant.other.key.perl
#             ^ punctuation.section.item-access.end.perl

###[ UNQUALIFIED VARIABLES ]##################################################

  $_foo = "bar";
# ^ punctuation.definition.variable.perl
# ^^^^^ variable.other.readwrite.perl
#       ^ keyword.operator.assignment.perl
#         ^ punctuation.definition.string.begin.perl
#         ^^^^^ meta.string.perl string.quoted.double.perl
#             ^ punctuation.definition.string.end.perl
#              ^ punctuation.terminator.statement.perl
  $_foo = "bar";
# ^ punctuation.definition.variable.perl
# ^^^^^ variable.other.readwrite.perl
#       ^ keyword.operator.assignment.perl
#         ^ punctuation.definition.string.begin.perl
#         ^^^^^ meta.string.perl string.quoted.double.perl
#             ^ punctuation.definition.string.end.perl
#              ^ punctuation.terminator.statement.perl
  $foo{bar}
# ^^^^ variable.other.readwrite.perl
# ^ punctuation.definition.variable.perl
#     ^ punctuation.section.item-access.begin.perl
#     ^^^^^ meta.item-access.perl
#      ^^^ constant.other.key.perl
#         ^ punctuation.section.item-access.end.perl
  $foo{bar()}
# ^^^^ variable.other.readwrite.perl
# ^ punctuation.definition.variable.perl
#     ^ punctuation.section.item-access.begin.perl
#     ^^^^^ meta.item-access.perl
#      ^^^ variable.function.perl
#           ^ punctuation.section.item-access.end.perl
  $foo{10 + $bar}
# ^^^^ variable.other.readwrite.perl
# ^ punctuation.definition.variable.perl
#     ^ punctuation.section.item-access.begin.perl
#     ^^^^^^^^^^^ meta.item-access.perl
#      ^^ meta.number.integer.decimal.perl constant.numeric.value.perl
#         ^ keyword.operator.arithmetic.perl
#           ^^^^ variable.other.readwrite.perl
#               ^ punctuation.section.item-access.end.perl

###[ QUALIFIED VARIABLES ]####################################################

  $::foo # scalar in the 'main' namespace
# ^^^^^^ meta.path.perl
#       ^ - meta.path
# ^ punctuation.definition.variable.perl
#  ^^ punctuation.accessor.double-colon.perl
#    ^^^ variable.other.readwrite.perl
  $::Foo[$bar] # array in the 'main' namespace
# ^^^^^^ meta.path.perl - meta.item-access
#       ^^^^^^ meta.item-access.perl - meta.path
# ^ punctuation.definition.variable.perl
#  ^^ punctuation.accessor.double-colon.perl
#    ^^^ variable.other.readwrite.perl
#       ^ punctuation.section.item-access.begin.perl
#        ^^^^ variable.other.readwrite.perl
#            ^ punctuation.section.item-access.end.perl
  $::FOO{'bar'} # hash in the 'main' namespace
# ^^^^^^ meta.path.perl - meta.item-access
#       ^^^^^^^ meta.item-access.perl - meta.path
# ^ punctuation.definition.variable.perl
#  ^^ punctuation.accessor.double-colon.perl
#    ^^^ variable.other.readwrite.perl
#       ^ punctuation.section.item-access.begin.perl
#        ^^^^^ meta.string.perl string.quoted.single.perl
#             ^ punctuation.section.item-access.end.perl
  $::foo->[$bar] # reference in the 'main' namespace
# ^^^^^^ meta.path.perl - meta.item-access
#       ^^ - meta.path - meta.item-access
#         ^^^^^^ meta.item-access.perl - meta.path
# ^ punctuation.definition.variable.perl
#  ^^ punctuation.accessor.double-colon.perl
#    ^^^ variable.other.readwrite.perl
#       ^^ punctuation.accessor.arrow.perl
#         ^ punctuation.section.item-access.begin.perl
#          ^^^^ variable.other.readwrite.perl
#              ^ punctuation.section.item-access.end.perl
  $::foo->{'bar'} # reference in the 'main' namespace
# ^^^^^^ meta.path.perl - meta.item-access
#       ^^ - meta.path - meta.item-access
#         ^^^^^^^ meta.item-access.perl - meta.path
# ^ punctuation.definition.variable.perl
#  ^^ punctuation.accessor.double-colon.perl
#    ^^^ variable.other.readwrite.perl
#       ^^ punctuation.accessor.arrow.perl
#         ^ punctuation.section.item-access.begin.perl
#          ^^^^^ meta.string.perl string.quoted.single.perl
#               ^ punctuation.section.item-access.end.perl
  $Foo::bar # 'bar' is a scalar
# ^^^^^^^^^ meta.path.perl
#          ^ - meta.path
# ^ punctuation.definition.variable.perl
#  ^^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ variable.other.readwrite.perl
  $Foo::bar->[0] # 'bar' is a reference of an array
# ^^^^^^^^^ meta.path.perl - meta.item-access
#          ^^ - meta.path - meta.item-access
#            ^^^ meta.item-access.perl - meta.path
# ^ punctuation.definition.variable.perl
#  ^^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ variable.other.readwrite.perl
#          ^^ punctuation.accessor.arrow.perl
#            ^^^ meta.item-access.perl
  $FOO::bar->{key} # 'bar' is a reference of a hash
# ^^^^^^^^^ meta.path.perl - meta.item-access
#          ^^ - meta.path - meta.item-access
#            ^^^^^ meta.item-access.perl - meta.path
# ^ punctuation.definition.variable.perl
#  ^^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ variable.other.readwrite.perl
#          ^^ punctuation.accessor.arrow.perl
#            ^ punctuation.section.item-access.begin.perl
#             ^^^ constant.other.key.perl
#                ^ punctuation.section.item-access.end.perl
  $Foo::bar->baz # 'Bar' is a reference to a class or namespace
# ^^^^^^^^^ meta.path.perl
#          ^ - meta.path
# ^ punctuation.definition.variable.perl
#  ^^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ variable.other.readwrite.perl
#          ^^ punctuation.accessor.arrow.perl
#            ^^^ variable.function.member.perl
  $Foo::bar::baz
# ^^^^^^^^^^^^^^ meta.path.perl
#               ^ - meta.path
# ^ punctuation.definition.variable.perl
#  ^^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ variable.namespace.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^ variable.other.readwrite.perl
  $Foo::$bar::baz # a part of the qualifier is a variable
# ^^^^^^^^^^^^^^^ meta.path.perl
#                ^ - meta.path
# ^ punctuation.definition.variable.perl
#  ^^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^ variable.other.readwrite.perl
#           ^^ punctuation.accessor.double-colon.perl
#             ^^^ variable.other.readwrite.perl
  $Foo::${bar}::baz # a part of the qualifier is a variable
# ^^^^^^^^^^^^^^^^^ meta.path.perl
#                  ^ - meta.path
# ^ punctuation.definition.variable.perl
#  ^^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^^^ meta.variable.perl
#         ^^^ string.unquoted.perl
#             ^^ punctuation.accessor.double-colon.perl
#               ^^^ variable.other.readwrite.perl
  $Foo::Bar::baz() # baz is not a function
# ^^^^^^^^^^^^^^ meta.path.perl
#               ^^ - meta.path
# ^ punctuation.definition.variable.perl
#  ^^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ variable.namespace.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^ variable.other.readwrite.perl
#               ^ punctuation.section.group.begin.perl
#                ^ punctuation.section.group.end.perl
  $foo::Bar::baz[4] # 'baz' is an array
# ^^^^^^^^^^^^^^ meta.path.perl - meta.item-access
#               ^^^ meta.item-access.perl - meta.path
# ^ punctuation.definition.variable.perl
#  ^^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ variable.namespace.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^ variable.other.readwrite.perl
#               ^ punctuation.section.item-access.begin.perl
#                ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                 ^ punctuation.section.item-access.end.perl
  $FOO::BAR::baz{key} # baz is a hash
# ^^^^^^^^^^^^^^ meta.path.perl - meta.item-access
#               ^^^^^ meta.item-access.perl - meta.path
# ^ punctuation.definition.variable.perl
#  ^^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ variable.namespace.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^ variable.other.readwrite.perl
#               ^ punctuation.section.item-access.begin.perl
#                ^^^ constant.other.key.perl
#                   ^ punctuation.section.item-access.end.perl
  $Foo::Bar->$baz->[-1]
# ^^^^^^^^^ meta.path.perl
#          ^ - meta.path
# ^ punctuation.definition.variable.perl
#  ^^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ variable.other.readwrite.perl
#          ^^ punctuation.accessor.arrow.perl - variable
#            ^^^^ variable.other.readwrite.perl
#            ^ punctuation.definition.variable.perl
#             ^^^ variable.other.readwrite.perl
#                ^^ punctuation.accessor.arrow.perl
#                  ^ punctuation.section.item-access.begin.perl
#                  ^^^^ meta.item-access.perl
#                     ^ punctuation.section.item-access.end.perl

  $CORE::foo
# ^^^^^^^^^^ meta.path.perl
# ^ punctuation.definition.variable.perl
#  ^^^^ support.namespace.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^^ variable.other.readwrite.perl

###[ VARIABLE DEREFERENCING ]#################################################

  $$ref  $$$refref $$$$refrefref
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.perl
#  ^^^^ variable.other.readwrite.perl
#        ^^ keyword.operator.dereference.perl
#          ^ punctuation.definition.variable.perl
#           ^^^^^^ variable.other.readwrite.perl
#                  ^^^ keyword.operator.dereference.perl
#                     ^ punctuation.definition.variable.perl
#                     ^^^^^^^^^^ variable.other.readwrite.perl
  $@ref  $$@refref $%$@refrefref
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.perl
#  ^^^^ variable.other.readwrite.perl
#        ^^ keyword.operator.dereference.perl
#          ^ punctuation.definition.variable.perl
#           ^^^^^^ variable.other.readwrite.perl
#                  ^^^ keyword.operator.dereference.perl
#                     ^ punctuation.definition.variable.perl
#                     ^^^^^^^^^^ variable.other.readwrite.perl
  $%ref  $$%refref $@$%refrefref
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.perl
#  ^^^^ variable.other.readwrite.perl
#        ^^ keyword.operator.dereference.perl
#          ^ punctuation.definition.variable.perl
#           ^^^^^^ variable.other.readwrite.perl
#                  ^^^ keyword.operator.dereference.perl
#                     ^ punctuation.definition.variable.perl
#                     ^^^^^^^^^^ variable.other.readwrite.perl
  $#$ref #=> 2 ## Last element index, -1 if empty
# ^^ keyword.operator.dereference.perl
#   ^ punctuation.definition.variable.perl
#   ^^^^ variable.other.readwrite.perl
  $#{$ref} #=> 2 ## Last element index, alternate syntax
# ^^^^^^^^ meta.variable.perl
# ^^ keyword.operator.dereference.perl
#   ^ punctuation.definition.variable.begin.perl
#    ^^^^  variable.other.readwrite.perl
#        ^ punctuation.definition.variable.end.perl
  @{$ref}[2,1,0] #=> (3, 2, 1) # Also: @$aref[2,1,0]
# ^^^^^^^ meta.variable.perl
#        ^^^^^^^ meta.item-access.perl
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.begin.perl
#   ^^^^  variable.other.readwrite.perl
#       ^ punctuation.definition.variable.end.perl
#        ^ punctuation.section.item-access.begin.perl
#         ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#          ^ punctuation.separator.sequence.perl
#              ^ punctuation.section.item-access.end.perl
  ${ &$coderef() };    # Call by function reference
# ^^^^^^^^^^^^^^^^ meta.variable.perl
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.begin.perl
#    ^ keyword.operator.dereference.perl
#     ^ punctuation.definition.variable.perl
#     ^^^^^^^^ variable.other.readwrite.perl
#             ^ punctuation.section.group.begin.perl
#              ^ punctuation.section.group.end.perl
#                ^ punctuation.definition.variable.end.perl
  ${get_var_name()}
# ^^^^^^^^^^^^^^^^^ meta.variable.perl
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.begin.perl
#   ^^^^^^^^^^^^ variable.function.perl
#                 ^ punctuation.definition.variable.end.perl
  ${the_var_name}[0]
# ^^^^^^^^^^^^^^^ meta.variable.perl
#                ^^^ meta.item-access.perl
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.begin.perl
#   ^^^^^^^^^^^^ meta.string.perl string.unquoted.perl
#               ^ punctuation.definition.variable.end.perl
#                ^ punctuation.section.item-access.begin.perl
#                 ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                  ^ punctuation.section.item-access.end.perl
  ${/\w+$/g = $var}
# ^^^^^^^^^^^^^^^^^ meta.variable.perl
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.begin.perl
#   ^ punctuation.section.generic.begin.perl
#    ^^^^ meta.string.perl string.regexp.perl
#        ^ punctuation.section.generic.end.perl
#         ^ constant.language.flags.regexp.perl
#           ^ keyword.operator.assignment.perl
#                 ^ punctuation.definition.variable.end.perl
  %{$foo{bar}{baz}} = 'excl';
# ^^^^^^^^^^^^^^^^^ meta.variable.perl
#       ^^^^^^^^^^ meta.item-access.perl
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.begin.perl
#   ^ punctuation.definition.variable.perl
#   ^^^^ variable.other.readwrite.perl
#       ^ punctuation.section.item-access.begin.perl
#        ^^^ constant.other.key.perl
#           ^ punctuation.section.item-access.end.perl
#             ^^^ constant.other.key.perl
#                ^ punctuation.section.item-access.end.perl
#                 ^ punctuation.definition.variable.end.perl
#                   ^ keyword.operator.assignment.perl
#                     ^^^^^^ meta.string.perl string.quoted.single.perl
#                           ^ punctuation.terminator.statement.perl
  %{$foo{'bar'}{'bar'}} = 'excl';
# ^^^^^^^^^^^^^^^^^^^^^ meta.variable.perl
#       ^^^^^^^^^^^^^^ meta.item-access.perl
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.begin.perl
#   ^ punctuation.definition.variable.perl
#   ^^^^ variable.other.readwrite.perl
#       ^ punctuation.section.item-access.begin.perl
#        ^^^^^ meta.string.perl string.quoted.single.perl
#             ^ punctuation.section.item-access.end.perl
#              ^ punctuation.section.item-access.begin.perl
#               ^^^^^ meta.string.perl string.quoted.single.perl
#                    ^ punctuation.section.item-access.end.perl
#                     ^ punctuation.definition.variable.end.perl
#                       ^ keyword.operator.assignment.perl
#                         ^^^^^^ meta.string.perl string.quoted.single.perl
#                               ^ punctuation.terminator.statement.perl
  ${Foo::Bar::baz}
# ^^^^^^^^^^^^^^^^ meta.variable.perl
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.begin.perl
#   ^^^ variable.namespace.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^^ variable.namespace.perl
#           ^^ punctuation.accessor.double-colon.perl
#             ^^^ variable.function.perl
#                ^ punctuation.definition.variable.end.perl
  ${Foo::Bar::baz}[$var]
# ^^^^^^^^^^^^^^^^ meta.variable.perl
#                 ^^^^^^ meta.item-access.perl
  ${
#^ - variable
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.begin.perl
# ^^^ meta.variable.perl
    Foo::bar->baz()
# <- meta.variable.perl
#^^^^^^^^^^^^^^^^^^^ meta.variable.perl
#   ^^^ variable.namespace.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^^ variable.namespace.perl
#           ^^ punctuation.accessor.arrow.perl
#             ^^^ variable.function.member.perl
  }
# <- meta.variable.perl
#^^ meta.variable.perl
# ^ punctuation.definition.variable.end.perl
#  ^ - variable
  ${ &$coderef() };    # Call by function reference
# ^^^^^^^^^^^^^^^^ meta.variable.perl
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.begin.perl
#    ^ keyword.operator.dereference.perl
#     ^ punctuation.definition.variable.perl
#     ^^^^^^^^ variable.other.readwrite.perl
#             ^ punctuation.section.group.begin.perl
#              ^ punctuation.section.group.end.perl
#                ^ punctuation.definition.variable.end.perl
  &$coderef;
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.perl
#  ^^^^^^^^ variable.other.readwrite.perl
#          ^ punctuation.terminator.statement.perl
  &$coderef();
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.perl
#  ^^^^^^^^ variable.other.readwrite.perl
#          ^ punctuation.section.group.begin.perl
#           ^ punctuation.section.group.end.perl
#            ^ punctuation.terminator.statement.perl
  &$::coderef();
#^^ - meta.path.perl
#  ^^^^^^^^^^ meta.path.perl
#            ^^^ - meta.path.perl
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.perl
#   ^^ punctuation.accessor.double-colon.perl
#     ^^^^^^^ variable.other.readwrite.perl
#            ^ punctuation.section.group.begin.perl
#             ^ punctuation.section.group.end.perl
#              ^ punctuation.terminator.statement.perl
  &$ns::coderef();
#^^ - meta.path.perl
#  ^^^^^^^^^^^^ meta.path.perl
#              ^^^ - meta.path.perl
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.perl
#   ^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^^^^ variable.other.readwrite.perl
#              ^ punctuation.section.group.begin.perl
#               ^ punctuation.section.group.end.perl
  &{$coderef}();
#^ - meta.variable
# ^^^^^^^^^^^ meta.variable.perl
#            ^^^ - meta.variable
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.begin.perl
#   ^ punctuation.definition.variable.perl
#   ^^^^^^^^ variable.other.readwrite.perl
#           ^ punctuation.definition.variable.end.perl
#            ^ punctuation.section.group.begin.perl
#             ^ punctuation.section.group.end.perl
  &{*coderef{NAME}}();
#^ - meta.variable
# ^^^^^^^^^^^^^^^^^ meta.variable.perl
#           ^^^^^^ meta.item-access.perl
#                  ^^^ - meta.variable
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.begin.perl
#   ^ punctuation.definition.variable.perl
#   ^^^^^^^^ variable.other.readwrite.perl
#           ^ punctuation.section.item-access.begin.perl
#            ^^^^ constant.other.key.perl
#                ^ punctuation.section.item-access.end.perl
#                 ^ punctuation.definition.variable.end.perl
#                  ^ punctuation.section.group.begin.perl
#                   ^ punctuation.section.group.end.perl
  &{$Module::coderef}();
# ^^^^^^^^^^^^^^^^^^^ meta.variable.perl
#                    ^^^ - meta.variable
# ^^ - meta.path.perl
#   ^^^^^^^^^^^^^^^^ meta.path.perl
#                   ^^^ - meta.path.perl
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.begin.perl
#   ^ punctuation.definition.variable.perl
#    ^^^^^^ variable.namespace.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^^^^^ variable.other.readwrite.perl
#                   ^ punctuation.definition.variable.end.perl
#                    ^ punctuation.section.group.begin.perl
#                     ^ punctuation.section.group.end.perl
#                      ^ punctuation.terminator.statement.perl
  &{ get_sub_reference() }(); #=> Calls returned subroutine reference
#^ - meta.variable
# ^^^^^^^^^^^^^^^^^^^^^^^^ meta.variable.perl
#                         ^^^ - meta.variable
# ^ keyword.operator.dereference.perl
#  ^ punctuation.definition.variable.begin.perl
#    ^^^^^^^^^^^^^^^^^ variable.function.perl
#                     ^ punctuation.section.group.begin.perl
#                      ^ punctuation.section.group.end.perl
#                        ^ punctuation.definition.variable.end.perl
#                         ^ punctuation.section.group.begin.perl
#                          ^ punctuation.section.group.end.perl
#                           ^ punctuation.terminator.statement.perl
  # addin items to an array
  $AoA[$i] = [ somefunc($i) ];
# ^^^^ variable.other.readwrite.perl - meta.item-access
#     ^^^^ meta.item-access.perl
#     ^ punctuation.section.item-access.begin.perl
#      ^^ variable.other.readwrite.perl
#        ^ punctuation.section.item-access.end.perl
#          ^ keyword.operator.assignment.perl
#            ^ punctuation.section.brackets.begin.perl
#                           ^ punctuation.section.brackets.end.perl
#                            ^ punctuation.terminator.statement.perl
  # add new columns to an existing row
  push @{ $AoA[0] }, "wilma", "betty";   # explicit deref
# ^^^^ support.function.perl
#      ^^^^^^^^^^^^ meta.variable.perl
#         ^^^^ variable.other.readwrite.perl - meta.item-access
#             ^^^ meta.item-access.perl
#      ^ keyword.operator.dereference.perl
#       ^  punctuation.definition.variable.begin.perl
#         ^ punctuation.definition.variable.perl
#             ^ punctuation.section.item-access.begin.perl
#              ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#               ^ punctuation.section.item-access.end.perl
#                 ^ punctuation.definition.variable.end.perl
#                  ^ punctuation.separator.sequence.perl
#                    ^^^^^^^ meta.string.perl string.quoted.double.perl
#                           ^ punctuation.separator.sequence.perl
#                             ^^^^^^^ meta.string.perl string.quoted.double.perl
#                                    ^ punctuation.terminator.statement.perl

###[ REFERENCES DEFINITIONS ]#################################################

  *_ = \my $a;
# ^ punctuation.definition.variable.perl
# ^^ variable.language.perl
#    ^ keyword.operator.assignment.perl
#      ^ keyword.operator.reference.perl
#       ^^ keyword.declaration.variable.perl
#          ^ punctuation.definition.variable.perl
#          ^^ variable.language.perl
#            ^ punctuation.terminator.statement.perl
  $strref = \"foo";
# ^ punctuation.definition.variable.perl
# ^^^^^^^ variable.other.readwrite.perl
#         ^ keyword.operator.assignment.perl
#           ^ keyword.operator.reference.perl
#            ^^^^^ meta.string.perl string.quoted.double.perl
  $refrefref = \\\"foo";
# ^ punctuation.definition.variable.perl
# ^^^^^^^^^^ variable.other.readwrite.perl
#            ^ keyword.operator.assignment.perl
#              ^^^ keyword.operator.reference.perl
#                 ^^^^^ meta.string.perl string.quoted.double.perl
  $globref = \*foo;
#          ^ keyword.operator.assignment.perl
#            ^ keyword.operator.reference.perl
#             ^ punctuation.definition.variable.perl
#             ^^^^ variable.other.readwrite.perl
#                 ^ punctuation.terminator.statement.perl
  $scalarref = \$foo;
#            ^ keyword.operator.assignment.perl
#              ^ keyword.operator.reference.perl
#               ^ punctuation.definition.variable.perl
#               ^^^^ variable.other.readwrite.perl
#                   ^ punctuation.terminator.statement.perl
  $scalarrefref = \\$foo;
#               ^ keyword.operator.assignment.perl
#                 ^^ keyword.operator.reference.perl
#                   ^ punctuation.definition.variable.perl
#                   ^^^^ variable.other.readwrite.perl
#                       ^ punctuation.terminator.statement.perl
  $arrayref = \@ARGV;
#           ^ keyword.operator.assignment.perl
#             ^ keyword.operator.reference.perl
#              ^ punctuation.definition.variable.perl
#              ^^^^^ variable.language.perl
#                   ^ punctuation.terminator.statement.perl
  $arrayrefref = \\@ARGV;
#              ^ keyword.operator.assignment.perl
#                ^^ keyword.operator.reference.perl
#                  ^ punctuation.definition.variable.perl
#                  ^^^^^ variable.language.perl
#                       ^ punctuation.terminator.statement.perl
  $hashref = \%ENV;
#          ^ keyword.operator.assignment.perl
#            ^ keyword.operator.reference.perl
#             ^ punctuation.definition.variable.perl
#             ^^^^ variable.language.perl
#                 ^ punctuation.terminator.statement.perl
  $hashrefref = \\%ENV;
#             ^ keyword.operator.assignment.perl
#               ^^ keyword.operator.reference.perl
#                 ^ punctuation.definition.variable.perl
#                 ^^^^ variable.language.perl
#                     ^ punctuation.terminator.statement.perl
  @list = (\$a, \@b, \%c);
#         ^ punctuation.section.group.begin.perl
#          ^ keyword.operator.reference.perl
#           ^^ variable.language.perl
#             ^ punctuation.separator.sequence.perl
#               ^ keyword.operator.reference.perl
#                ^^ variable.language.perl
#                  ^ punctuation.separator.sequence.perl
#                    ^ keyword.operator.reference.perl
#                     ^^ variable.other.readwrite.perl
#                       ^ punctuation.section.group.end.perl
#                        ^ punctuation.terminator.statement.perl
  @list = \($a, @b, %c);      # same thing!
#         ^ keyword.operator.reference.perl
#          ^ punctuation.section.group.begin.perl
#           ^^ variable.language.perl
#             ^ punctuation.separator.sequence.perl
#               ^^ variable.language.perl
#                 ^ punctuation.separator.sequence.perl
#                   ^^ variable.other.readwrite.perl
#                     ^ punctuation.section.group.end.perl
#                      ^ punctuation.terminator.statement.perl
  @list = \\($a, @b, %c);
#         ^^ keyword.operator.reference.perl
#           ^ punctuation.section.group.begin.perl
#            ^^ variable.language.perl
#              ^ punctuation.separator.sequence.perl
#                ^^ variable.language.perl
#                  ^ punctuation.separator.sequence.perl
#                    ^^ variable.other.readwrite.perl
#                      ^ punctuation.section.group.end.perl
#                       ^ punctuation.terminator.statement.perl
  $coderef = \&func;   # Reference to function
#          ^ keyword.operator.assignment.perl
#            ^ keyword.operator.reference.perl
#             ^ keyword.operator.dereference.perl
#              ^^^^ variable.function.perl
#                  ^ punctuation.terminator.statement.perl
  $coderef = \&if::func;
#          ^^^^ - meta.path
#              ^^^^^^^^ meta.path.perl
#          ^ keyword.operator.assignment.perl
#            ^ keyword.operator.reference.perl
#             ^ keyword.operator.dereference.perl
#              ^^ variable.namespace.perl
#                ^^ punctuation.accessor.double-colon.perl
#                  ^^^^ variable.function.perl
#                      ^ punctuation.terminator.statement.perl
  $coderef = \&{ get_sub_reference() }
#             ^^^^^^^^^^^^^^^^^^^^^^^^ meta.variable.perl
#          ^ keyword.operator.assignment.perl
#            ^ keyword.operator.reference.perl
#             ^ keyword.operator.dereference.perl
#              ^ punctuation.definition.variable.begin.perl
#                ^^^^^^^^^^^^^^^^^ variable.function.perl
#                                 ^ punctuation.section.group.begin.perl
#                                  ^ punctuation.section.group.end.perl
#                                    ^ punctuation.definition.variable.end.perl

###[ PACKAGE DEFINITION ]#####################################################

  package;
# ^^^^^^^ meta.namespace.perl keyword.declaration.namespace.perl
#        ^ punctuation.terminator.statement.perl - meta.namespace
  package; # comment
# ^^^^^^^ meta.namespace.perl keyword.declaration.namespace.perl
#        ^^^^^^^^^^^ - meta.namespace
#        ^ punctuation.terminator.statement.perl
#          ^^^^^^^^^ comment.line.number-sign.perl
  package package;
# ^^^^^^^^^^^^^^^ meta.namespace.perl - meta.path
#                ^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
#         ^^^^^^^ entity.name.namespace.perl
#                ^ punctuation.terminator.statement.perl
  package Package;
# ^^^^^^^^^^^^^^^ meta.namespace.perl - meta.path
#                ^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
#         ^^^^^^^ entity.name.namespace.perl
#                ^ punctuation.terminator.statement.perl
  package PACKAGE;
# ^^^^^^^^^^^^^^^ meta.namespace.perl - meta.path
#                ^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
#         ^^^^^^^ entity.name.namespace.perl
#                ^ punctuation.terminator.statement.perl
  package # comment
# ^^^^^^^ meta.namespace.perl keyword.declaration.namespace.perl
#         ^^^^^^^^^ meta.namespace.perl comment.line.number-sign.perl
  if; # Perl allows namespaces looking like keywords
# ^^ meta.namespace.perl entity.name.namespace.perl
#   ^ punctuation.terminator.statement.perl
  package name 5.023_234;
# ^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.perl - meta.path
#                       ^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
#         ^^^^ entity.name.namespace.perl
#              ^^^^^^^^^ meta.number.version.perl constant.numeric.value.perl
#               ^ punctuation.separator.decimal.perl
#                       ^ punctuation.terminator.statement.perl
  package name 5.023_234 { print "block" };
# ^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.perl - meta.path
#                        ^^^^^^^^^^^^^^^^^^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
#         ^^^^ entity.name.namespace.perl
#              ^^^^^^^^^ meta.number.version.perl constant.numeric.value.perl
#               ^ punctuation.separator.decimal.perl
#                        ^ punctuation.section.block.begin.perl
#                                         ^ punctuation.terminator.statement.perl
  package ::name;
# ^^^^^^^^ meta.namespace.perl - meta.path
#         ^^^^^^ meta.namespace.perl meta.path.perl
#               ^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
#         ^^ punctuation.accessor.double-colon.perl
#           ^^^^ entity.name.namespace.perl
#               ^ punctuation.terminator.statement.perl
  package
# ^^^^^^^^ meta.namespace.perl
# ^^^^^^^ keyword.declaration.namespace.perl
    ::name;
# ^^ meta.namespace.perl - meta.path
#   ^^^^^^ meta.namespace.perl meta.path.perl
#         ^ - meta.namespace
#   ^^ punctuation.accessor.double-colon.perl
#     ^^^^ entity.name.namespace.perl
#         ^ punctuation.terminator.statement.perl
  package ns::name;
# ^^^^^^^^ meta.namespace.perl - meta.path
#         ^^^^^^^^ meta.namespace.perl meta.path.perl
#                 ^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
#         ^^ variable.namespace.perl
#           ^^ punctuation.accessor.double-colon.perl
#             ^^^^ entity.name.namespace.perl
#                 ^ punctuation.terminator.statement.perl
  package Ns::Name;
# ^^^^^^^^ meta.namespace.perl - meta.path
#         ^^^^^^^^ meta.namespace.perl meta.path.perl
#                 ^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
#         ^^ variable.namespace.perl
#           ^^ punctuation.accessor.double-colon.perl
#             ^^^^ entity.name.namespace.perl
#                 ^ punctuation.terminator.statement.perl
  package NS::NAME;
# ^^^^^^^^ meta.namespace.perl - meta.path
#         ^^^^^^^^ meta.namespace.perl meta.path.perl
#                 ^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
#         ^^ variable.namespace.perl
#           ^^ punctuation.accessor.double-colon.perl
#             ^^^^ entity.name.namespace.perl
#                 ^ punctuation.terminator.statement.perl
  package if::else::name;
# ^^^^^^^^ meta.namespace.perl - meta.path
#         ^^^^^^^^^^^^^^ meta.namespace.perl meta.path.perl
#                       ^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
#         ^^ variable.namespace.perl
#           ^^ punctuation.accessor.double-colon.perl
#             ^^^^ variable.namespace.perl
#                 ^^ punctuation.accessor.double-colon.perl
#                   ^^^^ entity.name.namespace.perl
#                       ^ punctuation.terminator.statement.perl
  package
# ^^^^^^^^ meta.namespace.perl - meta.path
# ^^^^^^^ keyword.declaration.namespace.perl
    NS::NAME
# ^^ meta.namespace.perl - meta.path
#   ^^^^^^^^ meta.namespace.perl meta.path.perl
#   ^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^ entity.name.namespace.perl
    v5.24.1;
#^^^^^^^^^^ meta.namespace.perl
#          ^ - meta.namespace
#   ^^^^^^^ meta.number.version.perl constant.numeric.value.perl
#     ^ punctuation.separator.decimal.perl
#        ^ punctuation.separator.decimal.perl
#          ^ punctuation.terminator.statement.perl
  package 5.0;
# ^^^^^^^^^^^ meta.namespace.perl - meta.path
#            ^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
#         ^^^ meta.namespace.perl meta.number.version.perl constant.numeric.value.perl
#          ^ punctuation.separator.decimal.perl
  package "5.0";
# ^^^^^^^^^^^^^ meta.namespace.perl - meta.path
#              ^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
#         ^^^^^ meta.string.perl string.quoted.double.perl
#          ^^^ meta.number.version.perl constant.numeric.value.perl
#           ^ punctuation.separator.decimal.perl
  package $name;
# ^^^^^^^^ meta.namespace.perl - meta.path
#         ^^^^^^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
  package-name;
# ^^^^^^^ meta.namespace.perl - meta.path
#        ^^^^^^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
  package.name;
# ^^^^^^^ meta.namespace.perl - meta.path
#        ^^^^^^ - meta.namespace
# ^^^^^^^ keyword.declaration.namespace.perl
  CORE::package;
#       ^^^^^^^ keyword.declaration.namespace.perl
  core::package;
# ^^^^^^^^^^^^^^ - meta.namespace.perl
#       ^^^^^^^ - storage
  package::name;
# ^^^^^^^^^^^^^^ - meta.namespace.perl
# ^^^^^^^ - storage

###[ PACKAGE IMPORTS ]########################################################

  require
# ^^^^^^^^ meta.preprocessor.require.perl
# ^^^^^^^ keyword.control.import.require.perl
  require;
# ^^^^^^^ meta.preprocessor.require.perl entity.name.namespace.perl
#        ^ punctuation.terminator.statement.perl
  require # comment
# ^^^^^^^^^^^^^^^^^^ meta.preprocessor.require.perl
# ^^^^^^^ keyword.control.import.require.perl
#         ^ comment.line.number-sign.perl
  if ; # Perl allows namespaces looking like keywords
# ^^^ meta.preprocessor.require.perl
# ^^ entity.name.namespace.perl
#    ^ punctuation.terminator.statement.perl
#      ^ comment.line.number-sign.perl
  require 5.024;
# ^^^^^^^^^^^^^ meta.preprocessor.require.perl
#              ^ - meta.preprocessor
# ^^^^^^^ keyword.control.import.require.perl
#         ^^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#          ^ punctuation.separator.decimal.perl
#              ^ punctuation.terminator.statement.perl
  require v5.24.1;    # run time version check
# ^^^^^^^^^^^^^^^ meta.preprocessor.require.perl
#                 ^ - meta.preprocessor
# ^^^^^^^ keyword.control.import.require.perl
#         ^^^^^^^ meta.number.version.perl constant.numeric.value.perl
#           ^ punctuation.separator.decimal.perl
#              ^ punctuation.separator.decimal.perl
#                ^ punctuation.terminator.statement.perl
#                     ^ comment.line.number-sign.perl
  require 5.24.1;     # ditto
# ^^^^^^^^^^^^^^ meta.preprocessor.require.perl
#                ^ - meta.preprocessor
# ^^^^^^^ keyword.control.import.require.perl
#         ^^^^^^ meta.number.version.perl constant.numeric.value.perl
#          ^ punctuation.separator.decimal.perl
#             ^ punctuation.separator.decimal.perl
#               ^ punctuation.terminator.statement.perl
#                     ^ comment.line.number-sign.perl
  require 5.024_001;  # ditto; older syntax compatible
# ^^^^^^^^^^^^^^^^^ meta.preprocessor.require.perl
#                  ^ - meta.preprocessor
# ^^^^^^^ keyword.control.import.require.perl
#         ^^^^^^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#          ^ punctuation.separator.decimal.perl
#                  ^ punctuation.terminator.statement.perl
#                     ^ comment.line.number-sign.perl
  require
# ^^^^^^^^ meta.preprocessor.require.perl
# ^^^^^^^ keyword.control.import.require.perl
    5.024_001;  # ditto; older syntax compatible
# ^^^^^^^^^^^ meta.preprocessor.require.perl
#            ^ - meta.preprocessor
#   ^^^^^^^^^ meta.number.float.decimal.perl constant.numeric.value.perl
#    ^ punctuation.separator.decimal.perl
#            ^ punctuation.terminator.statement.perl
#               ^ comment.line.number-sign.perl
  require English;
# ^^^^^^^^^^^^^^^ meta.preprocessor.require.perl - meta.path
#                ^ - meta.preprocessor
# ^^^^^^^ keyword.control.import.require.perl
#         ^^^^^^^ entity.name.namespace.perl
  require utf8;
# ^^^^^^^^^^^^ meta.preprocessor.require.perl - meta.path
#             ^ - meta.preprocessor
# ^^^^^^^ keyword.control.import.require.perl
#         ^^^^ entity.name.namespace.perl
  require ::utf8;
# ^^^^^^^^ meta.preprocessor.require.perl - meta.path
#         ^^^^^^ meta.preprocessor.require.perl meta.path.perl
#               ^ - meta.preprocessor
# ^^^^^^^ keyword.control.import.require.perl
#         ^^ punctuation.accessor.double-colon.perl
#           ^^^^ entity.name.namespace.perl
  require Foo::bar;
# ^^^^^^^^ meta.preprocessor.require.perl - meta.path
#         ^^^^^^^^ meta.preprocessor.require.perl meta.path.perl
#                 ^ - meta.preprocessor
# ^^^^^^^ keyword.control.import.require.perl
#         ^^^ variable.namespace.perl
#            ^^ punctuation.accessor.double-colon.perl
#              ^^^ entity.name.namespace.perl
#                 ^ punctuation.terminator.statement.perl
  require
# ^^^^^^^^ meta.preprocessor.require.perl - meta.path
# ^^^^^^^ keyword.control.import.require.perl
    Foo::Bar;
# ^^ meta.preprocessor.require.perl - meta.path
#   ^^^^^^^^ meta.preprocessor.require.perl meta.path.perl
#           ^ - meta.preprocessor
#   ^^^ variable.namespace.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^^ entity.name.namespace.perl
#           ^ punctuation.terminator.statement.perl
  require "foo/bar.pm";
# ^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.require.perl - meta.path
# ^^^^^^^ keyword.control.import.require.perl
#         ^^^^^^^^^^^^ meta.string.perl string.quoted.double.perl
#                     ^ punctuation.terminator.statement.perl
  require $name;
# ^^^^^^^^^^^^^ meta.preprocessor.require.perl - meta.path
# ^^^^^^^ keyword.control.import.require.perl
#         ^^^^^ variable.other.readwrite.perl
#              ^ punctuation.terminator.statement.perl
  require foo.$bar.pm;
# ^^^^^^^^^^^^^^^^^^^ meta.preprocessor.require.perl - meta.path
# ^^^^^^^ keyword.control.import.require.perl
#         ^^^ meta.string.perl string.unquoted.perl
#            ^ keyword.operator.concatenation.perl
#             ^^^^ variable.other.readwrite.perl
#                 ^ keyword.operator.concatenation.perl
#                  ^^ variable.function.perl
#                    ^ punctuation.terminator.statement.perl
  require-name;
# ^^^^^^^^^^^^ meta.preprocessor.require.perl - meta.path
#             ^ - meta.preprocessor.require
# ^^^^^^^ keyword.control.import.require.perl
#        ^ keyword.operator.arithmetic.perl
#         ^^^^ variable.function.perl
#             ^ punctuation.terminator.statement.perl
  require.name;
# ^^^^^^^^^^^^ meta.preprocessor.require.perl - meta.path
#             ^ - meta.preprocessor.require
# ^^^^^^^ keyword.control.import.require.perl
#        ^ keyword.operator.concatenation.perl
#         ^^^^ variable.function.perl
#             ^ punctuation.terminator.statement.perl
  CORE::require;
# ^^^^^^ - meta.preprocessor
#       ^^^^^^^ meta.preprocessor.require.perl
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^^^^ keyword.control.import.require.perl
#              ^ punctuation.terminator.statement.perl
  core::require;
# ^^^^^^^^^^ - meta.preprocessor.require.perl
#       ^^^^^^^ - keyword
#              ^ punctuation.terminator.statement.perl
  require::name;
# ^^^^^^^^^^^^^^ - meta.preprocessor.require.perl
# ^^^^^^^ - keyword
#              ^ punctuation.terminator.statement.perl

eval { require Mail::Send };
#      ^^^^^^^^ meta.preprocessor.require.perl - meta.path
#              ^^^^^^^^^^ meta.preprocessor.require.perl meta.path.perl
#                        ^ meta.preprocessor.require.perl - meta.path
#                         ^^ - meta.preprocessor.require.perl
#      ^^^^^^^ keyword.control.import.require.perl
eval { require Mail.'::'.Send };
#      ^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.require.perl
#                             ^^ - meta.preprocessor.require.perl
#      ^^^^^^^ keyword.control.import.require.perl
eval { require B::Flags and $var++ };
#      ^^^^^^^^ meta.preprocessor.require.perl - meta.path
#              ^^^^^^^^ meta.preprocessor.require.perl meta.path.perl
#                      ^ meta.preprocessor.require.perl - meta.path
#                       ^^^^^^^^^^^^^ - meta.preprocessor.require.perl
#      ^^^^^^^ keyword.control.import.require.perl
#              ^ meta.path.perl variable.namespace.perl
#               ^^ meta.path.perl punctuation.accessor.double-colon.perl
#                 ^^^^^ meta.path.perl entity.name.namespace.perl
#                       ^^^ keyword.operator.logical.perl
use strict;
# <- meta.preprocessor.use.perl keyword.control.import.use.perl
#^^^^^^^^^ meta.preprocessor.use.perl
#^^ keyword.control.import.use.perl
#   ^^^^^^ entity.name.namespace.perl
#         ^ punctuation.terminator.statement.perl
use strict "vars";
# <- meta.preprocessor.use.perl keyword.control.import.use.perl
#^^^^^^^^^^^^^^^^ meta.preprocessor.use.perl
#^^ keyword.control.import.use.perl
#   ^^^^^^ entity.name.namespace.perl
#          ^ punctuation.definition.string.begin.perl
#          ^^^^^^ meta.string.perl string.quoted.double.perl
#               ^ punctuation.definition.string.end.perl
#                ^ punctuation.terminator.statement.perl
  use attributes __PACKAGE__, \&foo, 'method';
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.use.perl
# ^^^ keyword.control.import.use.perl
#     ^^^^^^^^^^ entity.name.namespace.perl
#                ^^^^^^^^^^^ constant.language.perl
#                           ^ punctuation.separator.sequence.perl
  use if;
# ^^^^^^ meta.preprocessor.use.perl - meta.path
#       ^ - meta.preprocessor - meta.path
# ^^^ keyword.control.import.use.perl
#     ^^ entity.name.namespace.perl
#       ^ punctuation.terminator.statement.perl
  use if::else;
# ^^^^ meta.preprocessor.use.perl - meta.path
#     ^^^^^^^^ meta.preprocessor.use.perl meta.path.perl
#             ^ - meta.preprocessor - meta.path
# ^^^ keyword.control.import.use.perl
#     ^^ variable.namespace.perl
#       ^^ punctuation.accessor.double-colon.perl
#         ^^^^ entity.name.namespace.perl
#             ^ punctuation.terminator.statement.perl
  use warnings::register Foo::func;
# ^^^^ meta.preprocessor.use.perl - meta.path
#     ^^^^^^^^^^^^^^^^^^ meta.preprocessor.use.perl meta.path.perl
#                       ^ meta.preprocessor.use.perl - meta.path
#                        ^^^^^^^^^ meta.preprocessor.use.perl meta.path.perl
#                                 ^ - meta.preprocessor - meta.path
# ^^^ keyword.control.import.use.perl
#     ^^^^^^^^ variable.namespace.perl
#             ^^ meta.path.perl punctuation.accessor.double-colon.perl
#               ^^^^^^^^ entity.name.namespace.perl
#                        ^^^ variable.namespace.perl
#                           ^^ punctuation.accessor.double-colon.perl
#                             ^^^^ variable.function.perl
#                                 ^ punctuation.terminator.statement.perl
  CORE::use;
# ^^^^^^ - meta.preprocessor
#       ^^^ meta.preprocessor.use.perl
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ keyword.control.import.use.perl
#          ^ punctuation.terminator.statement.perl
  core::use;
# ^^^^^^^^^^ - meta.preprocessor.use.perl
#       ^^^ - keyword
#          ^ punctuation.terminator.statement.perl
  use::name;
# ^^^^^^^^^^ - meta.preprocessor.use.perl
# ^^^ - keyword
#          ^ punctuation.terminator.statement.perl

  no strict;
# ^^^^^^^^^ meta.preprocessor.no.perl
#          ^ - meta.preprocessor - meta.path
# ^^ keyword.control.import.no.perl
#    ^^^^^^ entity.name.namespace.perl
#          ^ punctuation.terminator.statement.perl
  CORE::no;
# ^^^^^^ - meta.preprocessor
#       ^^ meta.preprocessor.no.perl
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^ keyword.control.import.no.perl
#         ^ punctuation.terminator.statement.perl
  core::no;
# ^^^^^^^^^ - meta.preprocessor.no.perl
#       ^^ - keyword
#         ^ punctuation.terminator.statement.perl
  no::name;
# ^^^^^^^^^^ - meta.preprocessor.no.perl
# ^^ - keyword
#         ^ punctuation.terminator.statement.perl

###[ DECLARATIONS ]###########################################################

my
# <- keyword.declaration.variable.perl
#^ keyword.declaration.variable.perl
  my $foo
#^ - storage
# ^^ keyword.declaration.variable.perl
#   ^ - keyword.declaration.variable - variable.other.readwrite
#    ^ punctuation.definition.variable.perl
#    ^^^^ variable.other.readwrite.perl
#        ^ - variable.other.readwrite
my $foo;
# <-  keyword.declaration.variable.perl
#^ keyword.declaration.variable.perl
#  ^ punctuation.definition.variable.perl
#  ^^^^ variable.other.readwrite.perl
#      ^ punctuation.terminator.statement.perl
my $foo = "bar";
# <-  keyword.declaration.variable.perl
#^ keyword.declaration.variable.perl
#  ^ punctuation.definition.variable.perl
#  ^^^^ variable.other.readwrite.perl
#       ^ keyword.operator.assignment.perl
#         ^ punctuation.definition.string.begin.perl
#         ^^^^^ meta.string.perl string.quoted.double.perl
#             ^ punctuation.definition.string.end.perl
#              ^ punctuation.terminator.statement.perl
my (
# <- keyword.declaration.variable.perl
#^ keyword.declaration.variable.perl
  $foo, $bar,
# ^ punctuation.definition.variable.perl
# ^^^^ variable.other.readwrite.perl
#     ^ punctuation.separator.sequence.perl
#       ^ punctuation.definition.variable.perl
#       ^^^^ variable.other.readwrite.perl
  $baz
# ^ punctuation.definition.variable.perl
# ^^^^ variable.other.readwrite.perl
  );
# ^ punctuation.section.group.end.perl
#  ^ punctuation.terminator.statement.perl
  eval { my $foo = /pattern/; }
# ^^^^ support.function.perl
#      ^ punctuation.section.block.begin.perl
#        ^^ keyword.declaration.variable.perl
#           ^^^^ variable.other.readwrite.perl
#                ^ keyword.operator.assignment.perl
#                  ^ punctuation.section.generic.begin.perl
#                   ^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#                          ^ punctuation.section.generic.end.perl
#                           ^ punctuation.terminator.statement.perl
#                             ^ punctuation.section.block.end.perl
  CORE::my
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^ keyword.declaration.variable.perl
  core::my
# ^^^^^^^^ meta.path.perl
# ^^^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^ variable.function.perl
  my::core
# ^^^^^^^^ meta.path.perl
# ^^ variable.namespace.perl
#   ^^ punctuation.accessor.double-colon.perl
#     ^^^^ variable.function.perl

our
# <-  keyword.declaration.variable.perl
#^^ keyword.declaration.variable.perl
  our $foo
# <-
#^ - storage
# ^^^ keyword.declaration.variable.perl
#    ^ - keyword.declaration.variable - variable.other.readwrite
#     ^ punctuation.definition.variable.perl
#     ^^^^ variable.other.readwrite.perl
#         ^ - variable.other.readwrite
our $foo;
# <-  keyword.declaration.variable.perl
#^^ keyword.declaration.variable.perl
#   ^ punctuation.definition.variable.perl
#   ^^^^ variable.other.readwrite.perl
#       ^ punctuation.terminator.statement.perl
our $foo = "bar";
# <-  keyword.declaration.variable.perl
#^^ keyword.declaration.variable.perl
#   ^ punctuation.definition.variable.perl
#   ^^^^ variable.other.readwrite.perl
#        ^ keyword.operator.assignment.perl
#          ^ punctuation.definition.string.begin.perl
#          ^^^^^ meta.string.perl string.quoted.double.perl
#              ^ punctuation.definition.string.end.perl
#               ^ punctuation.terminator.statement.perl
our (
# <- keyword.declaration.variable.perl
#^^ keyword.declaration.variable.perl
  $foo, $bar,
# ^ punctuation.definition.variable.perl
# ^^^^ variable.other.readwrite.perl
#     ^ punctuation.separator.sequence.perl
#       ^ punctuation.definition.variable.perl
#       ^^^^ variable.other.readwrite.perl
  $baz
# ^ punctuation.definition.variable.perl
# ^^^^ variable.other.readwrite.perl
  );
# ^ punctuation.section.group.end.perl
#  ^ punctuation.terminator.statement.perl
our $VERSION = do {
# <- keyword.declaration.variable.perl
#^^ keyword.declaration.variable.perl
#   ^^^^^^^^ variable.other.readwrite.perl
#            ^ keyword.operator.assignment.perl
#              ^^ keyword.control.flow.do.perl
#                 ^ punctuation.section.block.begin.perl
  my @r = (q$Revision: 2.20 $ =~ /\d+/g);
# ^^ keyword.declaration.variable.perl
#    ^^ variable.other.readwrite.perl
#       ^ keyword.operator.assignment.perl
#         ^ punctuation.section.group.begin.perl
#          ^ meta.function-call.perl support.function.perl
#           ^^^^^^^^^^^^^^^^^ meta.function-call.perl meta.generic.perl
#           ^ punctuation.section.generic.begin.perl
#            ^^^^^^^^^^^^^^^ meta.string.perl string.unquoted.perl
#                      ^^^^ - constant.numeric
#                           ^ punctuation.section.generic.end.perl
#                             ^^ keyword.operator.comparison.perl
#                                ^ punctuation.section.generic.begin.perl
#                                 ^^^ meta.string.perl string.regexp.perl source.regexp
#                                    ^ punctuation.section.generic.end.perl
#                                     ^ constant.language.flags.regexp.perl
  sprintf "%d."."%02d" x $#r, @r
# ^^^^^^^ support.function.perl
#         ^^^^^ meta.string.perl string.quoted.double.perl
#          ^^ constant.other.placeholder
#              ^ keyword.operator.concatenation.perl
#               ^^^^^^ meta.string.perl string.quoted.double.perl
#                ^^^^ constant.other.placeholder
#                      ^ keyword.operator.arithmetic.perl
#                        ^^^ variable.other.readwrite.perl
#                           ^ punctuation.separator.sequence.perl
#                             ^^ variable.other.readwrite.perl
};
# <- punctuation.section.block.end.perl
state
# <- keyword.declaration.variable.perl
#^^^^ keyword.declaration.variable.perl
  state $foo
# <-
#^ - storage
# ^^^^^ keyword.declaration.variable.perl
#      ^ - keyword.declaration.variable - variable.other.readwrite
#       ^ punctuation.definition.variable.perl
#       ^^^^ variable.other.readwrite.perl
#           ^ - variable.other.readwrite

###[ PREPROCESSOR ]###########################################################

  BEGIN {
# ^^^^^^ meta.function.perl
# ^^^^^ entity.name.function.preprocessor.perl
#       ^ punctuation.section.block.begin.perl
  }
# ^ punctuation.section.block.end.perl
  ::BEGIN {
# ^^^^^^^^ meta.function.perl
# ^^ invalid.illegal.accessor.perl
#   ^^^^^ entity.name.function.preprocessor.perl
#         ^ punctuation.section.block.begin.perl
  }
# ^ punctuation.section.block.end.perl
  sub BEGIN {
# ^^^^^^^^^^ meta.function.perl
# ^^^ keyword.declaration.function.perl
#     ^^^^^ entity.name.function.preprocessor.perl
#           ^ punctuation.section.block.begin.perl
  }
# ^ punctuation.section.block.end.perl
  sub ::BEGIN {
# ^^^^ meta.function.perl - meta.path.perl - meta.block
#     ^^^^^^^ meta.function.perl meta.path.perl - meta.block
#            ^ meta.function.perl - meta.path.perl - meta.block
# ^^^ keyword.declaration.function.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^^ entity.name.function.preprocessor.perl
#             ^ punctuation.section.block.begin.perl
  }
# ^ punctuation.section.block.end.perl
  CHECK {
# ^^^^^^ meta.function.perl
# ^^^^^ entity.name.function.preprocessor.perl
#       ^ punctuation.section.block.begin.perl
  }
# ^ punctuation.section.block.end.perl
  sub CHECK {
# ^^^^^^^^^^ meta.function.perl
# ^^^ keyword.declaration.function.perl
#     ^^^^^ entity.name.function.preprocessor.perl
#           ^ punctuation.section.block.begin.perl
  }
# ^ punctuation.section.block.end.perl
  END {
# ^^^^ meta.function.perl
# ^^^ entity.name.function.preprocessor.perl
#     ^ punctuation.section.block.begin.perl
  }
# ^ punctuation.section.block.end.perl
  sub END {
# ^^^^^^^^ meta.function.perl
# ^^^ keyword.declaration.function.perl
#     ^^^ entity.name.function.preprocessor.perl
#         ^ punctuation.section.block.begin.perl
  }
# ^ punctuation.section.block.end.perl
  INIT {
# ^^^^^ meta.function.perl
# ^^^^ entity.name.function.preprocessor.perl
#      ^ punctuation.section.block.begin.perl
  }
# ^ punctuation.section.block.end.perl
  sub INIT {
# ^^^^^^^^^ meta.function.perl
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.preprocessor.perl
#          ^ punctuation.section.block.begin.perl
  }
# ^ punctuation.section.block.end.perl
  UNITCHECK {
# ^^^^^^^^^^ meta.function.perl
# ^^^^^^^^^ entity.name.function.preprocessor.perl
#           ^ punctuation.section.block.begin.perl
  }
# ^ punctuation.section.block.end.perl
  sub UNITCHECK {
# ^^^^^^^^^^^^^^ meta.function.perl
# ^^^ keyword.declaration.function.perl
#     ^^^^^^^^^ entity.name.function.preprocessor.perl
#               ^ punctuation.section.block.begin.perl
  }
# ^ punctuation.section.block.end.perl
  sub AUTOLOAD () {}
# ^^^^^^^^^^^^^ meta.function.perl
#              ^^ meta.function.parameters.perl
#                ^ meta.function.perl
# ^^^ keyword.declaration.function.perl
#     ^^^^^^^^ entity.name.function.callback.perl
  sub ::AUTOLOAD () {}
# ^^^^ meta.function.perl - meta.path
#     ^^^^^^^^^^ meta.function.perl meta.path.perl - meta.function.parameters.perl
#               ^ meta.function.perl - meta.function.parameters.perl - meta.path
#                ^^ meta.function.parameters.perl - meta.function.perl - meta.path
#                  ^ meta.function.perl - meta.function.parameters.perl - meta.path
# ^^^ keyword.declaration.function.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^^^^^ entity.name.function.callback.perl

###[ UNQUALIFIED SUBROUTINE DEFINITIONS ]######################################

  sub
# ^^^ meta.function.perl keyword.declaration.function.perl
#    ^ - invalid
  sub # comment
# ^^^^^^^^^^^^^^ meta.function.perl
# ^^^ keyword.declaration.function.perl
#    ^ - comment - entity - keyword - invalid
#     ^^^^^^^^^ comment.line.number-sign.perl
  sub func
# ^^^^^^^^^ meta.function.perl
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#         ^ - entity - invalid
  sub func # comment
# ^^^^^^^^^^^^^^^^^^^ meta.function.perl
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#         ^ - comment - entity - invalid
#          ^^^^^^^^^ comment.line.number-sign.perl
  sub func invalid
# ^^^^^^^^^^^^^^^^ meta.function.perl
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#         ^ - entity - invalid
#          ^^^^^^^ invalid.illegal.identifier.perl
  sub func invalid # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.perl
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#         ^ - entity - invalid
#          ^^^^^^^ invalid.illegal.identifier.perl
#                 ^ - comment - entity - invalid
#                  ^^^^^^^^^ comment.line.number-sign.perl
  sub func;
# ^^^^^^^^ meta.function.perl
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#         ^ punctuation.terminator.statement.perl
  sub func invalid;
# ^^^^^^^^^^^^^^^^ meta.function.perl
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#          ^^^^^^^ invalid.illegal.identifier.perl
#                 ^ punctuation.terminator.statement.perl
  sub :attr ;
# ^^^^ meta.function.perl - meta.annotation
#     ^^^^^^ meta.function.perl meta.annotation.perl
#           ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^ punctuation.definition.annotation.perl
#      ^^^^ variable.annotation.attribute.perl
#           ^ punctuation.terminator.statement.perl
  sub func : Attr ;
# ^^^^^^^^^ meta.function.perl - meta.annotation
#          ^^^^^^^ meta.function.perl meta.annotation.perl
#                 ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#          ^ punctuation.definition.annotation.perl
#            ^^^^ variable.annotation.attribute.perl
#                 ^ punctuation.terminator.statement.perl
  sub func : Attr :attr2 ;
# ^^^^^^^^^ meta.function.perl - meta.annotation
#          ^^^^^^^^^^^^^^ meta.function.perl meta.annotation.perl
#                        ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#          ^ punctuation.definition.annotation.perl
#            ^^^^ variable.annotation.attribute.perl
#                 ^ punctuation.definition.annotation.perl
#                  ^^^^^ variable.annotation.attribute.perl
#                        ^ punctuation.terminator.statement.perl
  sub func : attr invalid;
# ^^^^^^^^^ meta.function.perl - meta.annotation
#          ^^^^^^^^^^^^^^ meta.function.perl meta.annotation.perl
#                        ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#          ^ punctuation.definition.annotation.perl
#            ^^^^ variable.annotation.attribute.perl
#                 ^^^^^^^ invalid.illegal.identifier.perl
#                        ^ punctuation.terminator.statement.perl
  sub func invalid :attr;
# ^^^^^^^^^^^^^^^^^ meta.function.perl - meta.annotation
#                  ^^^^^ meta.function.perl meta.annotation.perl
#                       ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#          ^^^^^^^ invalid.illegal.identifier.perl
#                  ^ punctuation.definition.annotation.perl
#                   ^^^^ variable.annotation.attribute.perl
#                       ^ punctuation.terminator.statement.perl

  sub # comment
# ^^^^^^^^^^^^^^ meta.function.perl - meta.annotation
# ^^^ keyword.declaration.function.perl
#    ^ - comment - entity - keyword - invalid
#     ^^^^^^^^^ comment.line.number-sign.perl
  func
# ^^^^ meta.function.perl entity.name.function.perl - meta.annotation
  :
#^ meta.function.perl - meta.annotation
# ^^ meta.function.perl meta.annotation.perl
# ^ punctuation.definition.annotation.perl
  attr
#^^^^^^ meta.function.perl meta.annotation.perl
# ^^^^ variable.annotation.attribute.perl
  :
#^^^ meta.function.perl meta.annotation.perl
# ^ punctuation.definition.annotation.perl
  attr
#^^^^^^ meta.function.perl meta.annotation.perl
# ^^^^ variable.annotation.attribute.perl
  ;
#^ meta.function.perl meta.annotation.perl
# ^ punctuation.terminator.statement.perl - meta.function

## subroutine with code block

  sub { say "Hello"; }
# ^^^^ meta.function.perl - meta.annotation
#     ^^^^^^^^^^^^^^^^ - meta.function - meta.annotation
# ^^^ keyword.declaration.function.perl
#     ^ punctuation.section.block.begin.perl
#       ^^^ support.function.perl
#                    ^ punctuation.section.block.end.perl
  sub func { say "Hello"; }
# ^^^^^^^^^ meta.function.perl - meta.annotation
#          ^^^^^^^^^^^^^^^^ - meta.function - meta.annotation
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#          ^ punctuation.section.block.begin.perl
#            ^^^ support.function.perl
#                         ^ punctuation.section.block.end.perl
  sub func invalid { say "Hello"; }
# ^^^^^^^^^^^^^^^^^ meta.function.perl - meta.annotation
#                  ^^^^^^^^^^^^^^^^ - meta.function - meta.annotation
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#          ^^^^^^^ invalid.illegal.identifier.perl
#                  ^ punctuation.section.block.begin.perl
#                    ^^^ support.function.perl
#                                 ^ punctuation.section.block.end.perl
  sub :attr { say "Hello"; }
# ^^^^ meta.function.perl - meta.annotation
#     ^^^^^^ meta.function.perl meta.annotation.perl
#           ^^^^^^^^^^^^^^^^ - meta.function - meta.annotation
# ^^^ keyword.declaration.function.perl
#     ^ punctuation.definition.annotation.perl
#      ^^^^ variable.annotation.attribute.perl
#           ^ punctuation.section.block.begin.perl
#             ^^^ support.function.perl
#                          ^ punctuation.section.block.end.perl
  sub :attr invalid { say "Hello"; }
# ^^^^ meta.function.perl - meta.annotation
#     ^^^^^^^^^^^^^^ meta.function.perl meta.annotation.perl
#                   ^^^^^^^^^^^^^^^^ - meta.function - meta.annotation
# ^^^ keyword.declaration.function.perl
#     ^ punctuation.definition.annotation.perl
#      ^^^^ variable.annotation.attribute.perl
#           ^^^^^^^ invalid.illegal.identifier.perl
#                   ^ punctuation.section.block.begin.perl
#                     ^^^ support.function.perl
#                                  ^ punctuation.section.block.end.perl
  sub func:attr { say "Hello"; }
# ^^^^^^^^ meta.function.perl - meta.annotation
#         ^^^^^^ meta.function.perl meta.annotation.perl
#               ^^^^^^^^^^^^^^^^ - meta.function - meta.annotation
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#         ^ punctuation.definition.annotation.perl
#          ^^^^ variable.annotation.attribute.perl
#               ^ punctuation.section.block.begin.perl
#                 ^^^ support.function.perl
#                              ^ punctuation.section.block.end.perl
  sub func:attr invalid { say "Hello"; }
# ^^^^^^^^ meta.function.perl - meta.annotation
#         ^^^^^^^^^^^^^^ meta.function.perl meta.annotation.perl
#                       ^^^^^^^^^^^^^^^^ - meta.function - meta.annotation
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#         ^ punctuation.definition.annotation.perl
#          ^^^^ variable.annotation.attribute.perl
#               ^^^^^^^ invalid.illegal.identifier.perl
#                       ^ punctuation.section.block.begin.perl
#                         ^^^ support.function.perl
#                                      ^ punctuation.section.block.end.perl

  sub
# ^^^ meta.function.perl keyword.declaration.function.perl
  { }
# ^ punctuation.section.block.begin.perl
#   ^ punctuation.section.block.end.perl

  sub
# ^^^ meta.function.perl keyword.declaration.function.perl
  func
# ^^^^ meta.function.perl entity.name.function.perl
  { }
# ^ punctuation.section.block.begin.perl
#   ^ punctuation.section.block.end.perl

  sub
# ^^^ meta.function.perl keyword.declaration.function.perl
  func
# ^^^^ meta.function.perl entity.name.function.perl
  invalid
# ^^^^^^^ meta.function.perl invalid.illegal.identifier.perl
  { }
# ^ punctuation.section.block.begin.perl
#   ^ punctuation.section.block.end.perl

  sub
# ^^^ meta.function.perl keyword.declaration.function.perl
  :
# ^ meta.function.perl meta.annotation.perl punctuation.definition.annotation.perl
  attr
# ^^^^ meta.function.perl meta.annotation.perl variable.annotation.attribute.perl
  { }
# ^ punctuation.section.block.begin.perl
#   ^ punctuation.section.block.end.perl

  sub
# ^^^ meta.function.perl keyword.declaration.function.perl
  :
# ^ meta.function.perl meta.annotation.perl punctuation.definition.annotation.perl
  attr
# ^^^^ meta.function.perl meta.annotation.perl variable.annotation.attribute.perl
  invalid
# ^^^^^^^ meta.function.perl meta.annotation.perl invalid.illegal.identifier.perl
  { }
# ^ punctuation.section.block.begin.perl
#   ^ punctuation.section.block.end.perl

  sub
# ^^^ meta.function.perl keyword.declaration.function.perl
  func
# ^^^^ meta.function.perl entity.name.function.perl
  invalid
# ^^^^^^^ meta.function.perl invalid.illegal.identifier.perl
  :
# ^ meta.function.perl meta.annotation.perl punctuation.definition.annotation.perl
  attr
# ^^^^ meta.function.perl meta.annotation.perl variable.annotation.attribute.perl
  { }
# ^ punctuation.section.block.begin.perl
#   ^ punctuation.section.block.end.perl

  sub
# ^^^ meta.function.perl keyword.declaration.function.perl
  func
# ^^^^ meta.function.perl entity.name.function.perl
  invalid
# ^^^^^^^ meta.function.perl invalid.illegal.identifier.perl
  :
# ^ meta.function.perl meta.annotation.perl punctuation.definition.annotation.perl
  attr
# ^^^^ meta.function.perl meta.annotation.perl variable.annotation.attribute.perl
  :
# ^ meta.function.perl meta.annotation.perl punctuation.definition.annotation.perl
  attr
# ^^^^ meta.function.perl meta.annotation.perl variable.annotation.attribute.perl
  invalid
# ^^^^^^^ meta.function.perl meta.annotation.perl invalid.illegal.identifier.perl
  { }
# ^ punctuation.section.block.begin.perl
#   ^ punctuation.section.block.end.perl

  ## prototypes

  sub ($) ;
# ^^^^ meta.function.perl - meta.function.parameters - meta.annotation
#     ^^^ meta.function.parameters.perl - meta.function.perl - meta.annotation
#        ^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#         ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^ punctuation.section.parameters.begin.perl
#      ^ variable.parameter.perl
#       ^ punctuation.section.parameters.end.perl
#         ^ punctuation.terminator.statement.perl
  sub ($) {}
# ^^^^ meta.function.perl - meta.function.parameters - meta.annotation
#     ^^^ meta.function.parameters.perl - meta.function.perl - meta.annotation
#        ^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#         ^^ - meta.annotation
#           ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^ punctuation.section.parameters.begin.perl
#      ^ variable.parameter.perl
#       ^ punctuation.section.parameters.end.perl
#         ^ punctuation.section.block.begin.perl
#          ^ punctuation.section.block.end.perl
  sub ($;$) {}
# ^^^^ meta.function.perl - meta.function.parameters - meta.annotation
#     ^^^^^ meta.function.parameters.perl - meta.function.perl - meta.annotation
#          ^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#           ^^ - meta.annotation
#             ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^ punctuation.section.parameters.begin.perl
#      ^ variable.parameter.perl
#       ^ punctuation.separator.sequence.perl
#        ^ variable.parameter.perl
#         ^ punctuation.section.parameters.end.perl
#           ^ punctuation.section.block.begin.perl
#            ^ punctuation.section.block.end.perl
  sub func($;$;$) {}
# ^^^^^^^^ meta.function.perl - meta.function.parameters - meta.annotation
#         ^^^^^^^ meta.function.parameters.perl - meta.function.perl - meta.annotation
#                ^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#                 ^^ - meta.annotation
#                   ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#         ^ punctuation.section.parameters.begin.perl
#          ^ variable.parameter.perl
#           ^ punctuation.separator.sequence.perl
#            ^ variable.parameter.perl
#             ^ punctuation.separator.sequence.perl
#              ^ variable.parameter.perl
#               ^ punctuation.section.parameters.end.perl
#                 ^ punctuation.section.block.begin.perl
#                  ^ punctuation.section.block.end.perl
  sub func:attr($) {}
# ^^^^^^^^ meta.function.perl - meta.function.parameters - meta.annotation
#         ^^^^^ meta.function.perl meta.annotation.perl - meta.function.parameters
#              ^^^ meta.function.parameters.perl - meta.function.perl - meta.annotation
#                 ^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#                  ^^ - meta.annotation
#                    ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#         ^ punctuation.definition.annotation.perl
#          ^^^^ variable.annotation.attribute.perl
#              ^ punctuation.section.parameters.begin.perl
#               ^ variable.parameter.perl
#                ^ punctuation.section.parameters.end.perl
#                  ^ punctuation.section.block.begin.perl
#                   ^ punctuation.section.block.end.perl
  sub func : attr ( $ ) { }
# ^^^^^^^^^ meta.function.perl - meta.function.parameters - meta.annotation
#           ^^^^^^ meta.function.perl meta.annotation.perl - meta.function.parameters
#                 ^^^^^ meta.function.parameters.perl - meta.function.perl - meta.annotation
#                      ^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#                       ^^^ - meta.annotation
#                          ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#          ^ punctuation.definition.annotation.perl
#            ^^^^ variable.annotation.attribute.perl
#                 ^ punctuation.section.parameters.begin.perl
#                   ^ variable.parameter.perl
#                     ^ punctuation.section.parameters.end.perl
#                       ^ punctuation.section.block.begin.perl
#                         ^ punctuation.section.block.end.perl
  sub func($) :attr {}
# ^^^^^^^^ meta.function.perl - meta.function.parameters- meta.annotation
#         ^^^ meta.function.parameters.perl - meta.function.perl- meta.annotation
#            ^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#             ^^^^^^ meta.function.perl meta.annotation.perl - meta.block
#                   ^^
#                     ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#         ^ punctuation.section.parameters.begin.perl
#          ^ variable.parameter.perl
#           ^ punctuation.section.parameters.end.perl
#             ^ punctuation.definition.annotation.perl
#              ^^^^ variable.annotation.attribute.perl
#                   ^ punctuation.section.block.begin.perl
#                    ^ punctuation.section.block.end.perl
  sub func :attr($) :attr {}
# ^^^^^^^^^ meta.function.perl - meta.function.parameters - meta.annotation
#          ^^^^^ meta.function.perl meta.annotation.perl - meta.function.parameters
#               ^^^ meta.function.parameters.perl - meta.function.perl - meta.annotation
#                  ^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#                   ^^^^^^ meta.function.perl meta.annotation.perl - meta.function.parameters
#                         ^^
#                           ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#          ^ punctuation.definition.annotation.perl
#           ^^^^ variable.annotation.attribute.perl
#               ^ punctuation.section.parameters.begin.perl
#                ^ variable.parameter.perl
#                 ^ punctuation.section.parameters.end.perl
#                   ^ punctuation.definition.annotation.perl
#                    ^^^^ variable.annotation.attribute.perl
#                         ^ punctuation.section.block.begin.perl
#                          ^ punctuation.section.block.end.perl
  sub func : ($var, 5) ($) : ([0, 10]) {}
# ^^^^^^^^^ meta.function.perl - meta.function.parameters - meta.annotation
#          ^^ meta.function.perl meta.annotation.perl - meta.function.parameters - meta.annotation.parameters
#            ^^^^^^^^^ meta.function.perl meta.annotation.parameters.perl - meta.function.parameters
#                     ^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#                      ^^^ meta.function.parameters.perl - meta.function.perl - meta.annotation
#                         ^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#                          ^^ meta.function.perl meta.annotation.perl - meta.function.parameters - meta.annotation.parameters
#                            ^^^^^^^^^ meta.function.perl meta.annotation.parameters.perl - meta.function.parameters
#                                     ^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#                                      ^^
#                                        ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#          ^ punctuation.definition.annotation.perl
#            ^ punctuation.section.parameters.begin.perl
#             ^^^^ variable.other.readwrite.perl
#                 ^ punctuation.separator.sequence.perl
#                   ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                    ^ punctuation.section.parameters.end.perl
#                      ^ punctuation.section.parameters.begin.perl
#                       ^ variable.parameter.perl
#                        ^ punctuation.section.parameters.end.perl
#                          ^ punctuation.definition.annotation.perl
#                            ^ punctuation.section.parameters.begin.perl
#                             ^ punctuation.section.brackets.begin.perl
#                              ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                               ^ punctuation.separator.sequence.perl
#                                 ^^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                                   ^ punctuation.section.brackets.end.perl
#                                    ^ punctuation.section.parameters.end.perl
#                                      ^ punctuation.section.block.begin.perl
#                                       ^ punctuation.section.block.end.perl
  sub func : attr ($var, 5) ($) : attr ([0, 10]) {}
# ^^^^^^^^^ meta.function.perl - meta.function.parameters - meta.annotation
#          ^^^^^^^ meta.function.perl meta.annotation.perl - meta.function.parameters - meta.annotation.parameters
#                 ^^^^^^^^^ meta.function.perl meta.annotation.parameters.perl - meta.function.parameters
#                          ^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#                           ^^^ meta.function.parameters.perl - meta.function.perl - meta.annotation
#                              ^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#                               ^^^^^^^ meta.function.perl meta.annotation.perl - meta.function.parameters - meta.annotation.parameters
#                                      ^^^^^^^^^ meta.function.perl meta.annotation.parameters.perl - meta.function.parameters
#                                               ^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#                                                ^^
#                                                  ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#          ^ punctuation.definition.annotation.perl
#            ^^^^ variable.annotation.attribute.perl
#                 ^ punctuation.section.parameters.begin.perl
#                  ^^^^ variable.other.readwrite.perl
#                      ^ punctuation.separator.sequence.perl
#                        ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                         ^ punctuation.section.parameters.end.perl
#                           ^ punctuation.section.parameters.begin.perl
#                            ^ variable.parameter.perl
#                             ^ punctuation.section.parameters.end.perl
#                               ^ punctuation.definition.annotation.perl
#                                 ^^^^ variable.annotation.attribute.perl
#                                      ^ punctuation.section.parameters.begin.perl
#                                       ^ punctuation.section.brackets.begin.perl
#                                        ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                                         ^ punctuation.separator.sequence.perl
#                                           ^^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                                             ^ punctuation.section.brackets.end.perl
#                                              ^ punctuation.section.parameters.end.perl
#                                                ^ punctuation.section.block.begin.perl
#                                                 ^ punctuation.section.block.end.perl

  sub func inv : attr inv ($var, 5) inv ($inv;%@$) inv : attr inv ([0, 10]) inv {}
# ^^^^^^^^^^^^^ meta.function.perl - meta.function.parameters - meta.annotation
#              ^^^^^^^^^^^ meta.function.perl meta.annotation.perl - meta.function.parameters - meta.annotation.parameters
#                         ^^^^^^^^^ meta.function.perl meta.annotation.parameters.perl - meta.function.parameters
#                                  ^^^^^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#                                       ^^^^^^^^^^ meta.function.parameters.perl - meta.function.perl - meta.annotation
#                                                 ^^^^^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#                                                      ^^^^^^^^^^^ meta.function.perl meta.annotation.perl - meta.function.parameters - meta.annotation.parameters
#                                                                 ^^^^^^^^^ meta.function.perl meta.annotation.parameters.perl - meta.function.parameters
#                                                                          ^^^^^ meta.function.perl - meta.function.parameters - meta.annotation - meta.block
#                                                                               ^^
#                                                                                 ^ - meta.function
# ^^^ keyword.declaration.function.perl
#     ^^^^ entity.name.function.perl
#          ^^^ invalid.illegal.identifier.perl
#              ^ punctuation.definition.annotation.perl
#                ^^^^ variable.annotation.attribute.perl
#                     ^^^ invalid.illegal.identifier.perl
#                         ^ punctuation.section.parameters.begin.perl
#                          ^^^^ variable.other.readwrite.perl
#                              ^ punctuation.separator.sequence.perl
#                                ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                                 ^ punctuation.section.parameters.end.perl
#                                   ^^^ invalid.illegal.identifier.perl
#                                       ^ punctuation.section.parameters.begin.perl
#                                        ^ variable.parameter.perl
#                                         ^^^ invalid.illegal.parameter.perl
#                                            ^ punctuation.separator.sequence.perl
#                                             ^^^ variable.parameter.perl
#                                                ^ punctuation.section.parameters.end.perl
#                                                  ^^^ invalid.illegal.identifier.perl
#                                                      ^ punctuation.definition.annotation.perl
#                                                        ^^^^ variable.annotation.attribute.perl
#                                                             ^^^ invalid.illegal.identifier.perl
#                                                                 ^ punctuation.section.parameters.begin.perl
#                                                                  ^ punctuation.section.brackets.begin.perl
#                                                                   ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                                                                    ^ punctuation.separator.sequence.perl
#                                                                      ^^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                                                                        ^ punctuation.section.brackets.end.perl
#                                                                         ^ punctuation.section.parameters.end.perl
#                                                                           ^^^ invalid.illegal.identifier.perl
#                                                                               ^ punctuation.section.block.begin.perl
#                                                                                ^ punctuation.section.block.end.perl

###[ QUALIFIED SUBROUTINE DEFINITIONS ]########################################

  sub ::func
# ^^^^ meta.function.perl - meta.path - meta.annotation
#     ^^^^^^ meta.function.perl meta.path.perl - meta.annotation
#           ^ meta.function.perl - meta.path - meta.annotation
# ^^^ keyword.declaration.function.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^ entity.name.function.perl
#           ^ - entity - invalid
  sub ::func # comment
# ^^^^ meta.function.perl - meta.path - meta.annotation
#     ^^^^^^ meta.function.perl meta.path.perl - meta.annotation
#           ^^^^^^^^^^ meta.function.perl - meta.path - meta.annotation
# ^^^ keyword.declaration.function.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^ entity.name.function.perl
#           ^ - comment - entity - invalid
#            ^^^^^^^^^ comment.line.number-sign.perl
  sub ::func invalid
# ^^^^ meta.function.perl - meta.path - meta.annotation
#     ^^^^^^ meta.function.perl meta.path.perl - meta.annotation
#           ^^^^^^^^^^ meta.function.perl - meta.path - meta.annotation
# ^^^ keyword.declaration.function.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^ entity.name.function.perl
#           ^ - entity - invalid
#            ^^^^^^^ invalid.illegal.identifier.perl
  sub ::func invalid # comment
# ^^^^ meta.function.perl - meta.path - meta.annotation
#     ^^^^^^ meta.function.perl meta.path.perl - meta.annotation
#           ^^^^^^^^^^^^^^^^^^ meta.function.perl - meta.path - meta.annotation
# ^^^ keyword.declaration.function.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^ entity.name.function.perl
#           ^ - entity - invalid
#            ^^^^^^^ invalid.illegal.identifier.perl
#                   ^ - comment - entity - invalid
#                    ^^^^^^^^^ comment.line.number-sign.perl
  sub ::func;
# ^^^^ meta.function.perl - meta.path - meta.annotation
#     ^^^^^^ meta.function.perl meta.path.perl - meta.annotation
#           ^ - meta.function.perl - meta.path - meta.annotation
# ^^^ keyword.declaration.function.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^ entity.name.function.perl
#           ^ punctuation.terminator.statement.perl
  sub ::func invalid;
# ^^^^ meta.function.perl - meta.path - meta.annotation
#     ^^^^^^ meta.function.perl meta.path.perl - meta.annotation
#           ^^^^^^^^ meta.function.perl - meta.path - meta.annotation
# ^^^ keyword.declaration.function.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^ entity.name.function.perl
#            ^^^^^^^ invalid.illegal.identifier.perl
#                   ^ punctuation.terminator.statement.perl
  sub ::func:attr:attr2 invalid;
# ^^^^ meta.function.perl - meta.path - meta.annotation
#     ^^^^^^ meta.function.perl meta.path.perl - meta.annotation
#           ^^^^^^^^^^^^^^^^^^^ meta.function.perl meta.annotation.perl - meta.path
# ^^^ keyword.declaration.function.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^ entity.name.function.perl
#           ^ punctuation.definition.annotation.perl
#            ^^^^ variable.annotation.attribute.perl
#                ^ punctuation.definition.annotation.perl
#                 ^^^^^ variable.annotation.attribute.perl
#                       ^^^^^^^ invalid.illegal.identifier.perl
#                              ^ punctuation.terminator.statement.perl
  sub ::func:attr:attr2 invalid :attr3;
# ^^^^ meta.function.perl - meta.path - meta.annotation
#     ^^^^^^ meta.function.perl meta.path.perl - meta.annotation
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.perl meta.annotation.perl - meta.path
# ^^^ keyword.declaration.function.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^ entity.name.function.perl
#           ^ punctuation.definition.annotation.perl
#            ^^^^ variable.annotation.attribute.perl
#                ^ punctuation.definition.annotation.perl
#                 ^^^^^ variable.annotation.attribute.perl
#                       ^^^^^^^ invalid.illegal.identifier.perl
#                               ^ punctuation.definition.annotation.perl
#                                ^^^^^ variable.annotation.attribute.perl
#                                     ^ punctuation.terminator.statement.perl
  sub
# ^^^^ meta.function.perl - meta.path
  if::func
# ^^^^^^^^ meta.function.perl meta.path.perl
# ^^ variable.namespace.perl
#   ^^ punctuation.accessor.double-colon.perl
#     ^^^^ entity.name.function.perl
  sub NS::func
# ^^^^ meta.function.perl - meta.path
#     ^^^^^^^^ meta.function.perl meta.path.perl
#     ^^ variable.namespace.perl
#       ^^ punctuation.accessor.double-colon.perl
#         ^^^^ entity.name.function.perl
  sub ::NS::func
# ^^^^ meta.function.perl - meta.path
#     ^^^^^^^^^^ meta.function.perl meta.path.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^ variable.namespace.perl
#         ^^ punctuation.accessor.double-colon.perl
#           ^^^^ entity.name.function.perl
  sub B::NS::func
# ^^^^ meta.function.perl - meta.path
#     ^^^^^^^^^^^ meta.function.perl meta.path.perl
#     ^ variable.namespace.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^ variable.namespace.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^^ entity.name.function.perl
  sub B::NS::func invalid
# ^^^^ meta.function.perl - meta.path
#     ^^^^^^^^^^^ meta.function.perl meta.path.perl
#                ^^^^^^^^ meta.function.perl - meta.path
#     ^ variable.namespace.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^ variable.namespace.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^^ entity.name.function.perl
#                 ^^^^^^^ invalid.illegal.identifier.perl
  sub B::NS ::invalid;
# ^^^^ meta.function.perl - meta.path
#     ^^^^^ meta.function.perl meta.path.perl
#          ^^^^^^^^^^ meta.function.perl - meta.path
#     ^ variable.namespace.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^ entity.name.function.perl
#           ^^^^^^^^^ invalid.illegal.identifier.perl
#                    ^ punctuation.terminator.statement.perl
  sub B::NS:: invalid {};
# ^^^^ meta.function.perl - meta.path
#     ^^^^^^^ meta.function.perl meta.path.perl
#            ^^^^^^^^^ meta.function.perl - meta.path
#     ^ variable.namespace.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^ variable.namespace.perl
#          ^^ punctuation.accessor.double-colon.perl
#             ^^^^^^^ invalid.illegal.identifier.perl
#                     ^ punctuation.section.block.begin.perl
#                      ^ punctuation.section.block.end.perl
#                       ^ punctuation.terminator.statement.perl
  sub B::NS::func # comment
# ^^^^ meta.function.perl - meta.path
#     ^^^^^^^^^^^ meta.function.perl meta.path.perl
#     ^ variable.namespace.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^ variable.namespace.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^^ entity.name.function.perl
#                 ^^^^^^^^^ comment.line.number-sign.perl
  sub B::NS::func() # comment
# ^^^^ meta.function.perl - meta.path
#     ^^^^^^^^^^^ meta.function.perl meta.path.perl
#                ^^ meta.function.parameters.perl
#     ^ variable.namespace.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^ variable.namespace.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^^ entity.name.function.perl
#                ^ punctuation.section.parameters.begin.perl
#                 ^ punctuation.section.parameters.end.perl
#                   ^^^^^^^^^ comment.line.number-sign.perl
  sub B::NS::func {
# ^^^^ meta.function.perl - meta.path
#     ^^^^^^^^^^^ meta.function.perl meta.path.perl
#                ^ meta.function.perl - meta.path - meta.block
#                 ^
#     ^ variable.namespace.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^ variable.namespace.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^^ entity.name.function.perl
#                 ^ punctuation.section.block.begin.perl
}
# <- punctuation.section.block.end.perl
  sub
# ^^^^ meta.function.perl - meta.path
  B::NS::func
#^ meta.function.perl - meta.path
# ^^^^^^^^^^^ meta.function.perl meta.path.perl
#            ^^ meta.function.perl - meta.path
# ^ variable.namespace.perl
#  ^^ punctuation.accessor.double-colon.perl
#    ^^ variable.namespace.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^^^ entity.name.function.perl
  (
# ^ meta.function.parameters.perl punctuation.section.parameters.begin.perl
    $arg,;
#   ^ meta.function.parameters.perl variable.parameter.perl
#    ^^^^ meta.function.parameters.perl invalid.illegal.parameter.perl
#        ^ meta.function.parameters.perl punctuation.separator.sequence.perl
  )
# ^ meta.function.parameters.perl punctuation.section.parameters.end.perl
  {
# ^ punctuation.section.block.begin.perl
  }
# ^ punctuation.section.block.end.perl
  CORE::sub ;
# ^^^^^^ - meta.function.perl
#       ^^^^ meta.function.perl
# ^^^^ support.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ keyword.declaration.function.perl
#           ^ punctuation.terminator.statement.perl
  core::sub;
# ^^^^^^^^^ - meta.function.perl
#       ^^^ - keyword
#          ^ punctuation.terminator.statement.perl
  sub::name;
# ^^^^^^^^^ - meta.function.perl
# ^^^ - keyword
#          ^ punctuation.terminator.statement.perl

###[ CONTROL KEYWORDS ]#######################################################

  # conditional

  default -> word
# ^^^^^^^ keyword.control.conditional.default.perl
  default->word
# ^^^^^^^ keyword.control.conditional.default.perl
  default - word
# ^^^^^^^ keyword.control.conditional.default.perl
  default-word
# ^^^^^^^ keyword.control.conditional.default.perl
  default_word
# ^^^^^^^ - keyword.control
  default:word
# ^^^^^^^ - keyword.control
  default :: word
# ^^^^^^^ keyword.control.conditional.default.perl
  CORE::default
#       ^^^^^^^ keyword.control.conditional.default.perl
  core::default
#       ^^^^^^^ - keyword.control
  default::word
# ^^^^^^^ - keyword.control
  else -> word
# ^^^^ keyword.control.conditional.else.perl
  else->word
# ^^^^ keyword.control.conditional.else.perl
  else - word
# ^^^^ keyword.control.conditional.else.perl
  else-word
# ^^^^ keyword.control.conditional.else.perl
  else_word
# ^^^^ - keyword.control
  else:word
# ^^^^ - keyword.control
  else :: word
# ^^^^ keyword.control.conditional.else.perl
  CORE::else
#       ^^^^ keyword.control.conditional.else.perl
  core::else
#       ^^^^ - keyword.control
  else::word
# ^^^^ - keyword.control
  elsif
# ^^^^^ keyword.control.conditional.elseif.perl
  elif
# ^^^^ - keyword.control
  elseif
# ^^^^^^ - keyword.control
  given
# ^^^^^ keyword.control.conditional.given.perl
  if
# ^^ keyword.control.conditional.if.perl
  unless
# ^^^^^^ keyword.control.conditional.unless.perl
  when
# ^^^^ keyword.control.conditional.when.perl

  # flow

  break
# ^^^^^ keyword.control.flow.break.perl
  caller
# ^^^^^^ keyword.control.flow.caller.perl
  continue
# ^^^^^^^^ keyword.control.flow.continue.perl
  die
# ^^^ keyword.control.flow.die.perl
  do
# ^^ keyword.control.flow.do.perl
  dump
# ^^^^ keyword.control.flow.dump.perl
  exit
# ^^^^ keyword.control.flow.exit.perl
  goto
# ^^^^ keyword.control.flow.goto.perl
  last
# ^^^^ keyword.control.flow.last.perl
  next retry
# ^^^^ keyword.control.flow.next.perl
#      ^^^^^ variable.label.perl
  next eval {if $retry}
# ^^^^ keyword.control.flow.next.perl
#      ^^^^ support.function.perl
  next retry if $retry
# ^^^^ keyword.control.flow.next.perl
#      ^^^^^ variable.label.perl
#            ^^ keyword.control.conditional.if.perl
#               ^^^^^^ variable.other.readwrite.perl
  next if $retry
# ^^^^ keyword.control.flow.next.perl
#      ^^ keyword.control.conditional.if.perl
#         ^^^^^^ variable.other.readwrite.perl
  redo LINE
# ^^^^ keyword.control.flow.redo.perl
#      ^^^^ variable.label.perl
  redo LINE if $retry
# ^^^^ keyword.control.flow.redo.perl
#      ^^^^ variable.label.perl
#           ^^ keyword.control.conditional.if.perl
#              ^^^^^^ variable.other.readwrite.perl
  redo unless $retry
# ^^^^ keyword.control.flow.redo.perl
#      ^^^^^^ keyword.control.conditional.unless.perl
#             ^^^^^^ variable.other.readwrite.perl
  return
# ^^^^^^ keyword.control.flow.return.perl
  wait
# ^^^^ keyword.control.flow.wait.perl

###[ LABELS ]#################################################################

  retry:
# ^^^^^ entity.name.label.perl
#      ^ punctuation.separator.perl
  retry:die "bye!";
# ^^^^^ entity.name.label.perl
#      ^ punctuation.separator.perl
#       ^^^ keyword.control.flow.die.perl
#           ^^^^^^ meta.string.perl string.quoted.double.perl
#                 ^ punctuation.terminator.statement.perl
  retry::
# ^^^^^^^ - entity.name.label.perl

  LINE:
# ^^^^ entity.name.label.perl
#     ^ punctuation.separator.perl

  LINE:exit -1
# ^^^^ entity.name.label.perl
#     ^ punctuation.separator.perl
#      ^^^^ keyword.control.flow.exit.perl
#           ^ keyword.operator.arithmetic.perl
#            ^ meta.number.integer.decimal.perl constant.numeric.value.perl

###[ UNQUALIFIED FUNCTION CALLS ]#############################################

  ## Encapsulating arguments into parentheses is optional,
  ## if the expression is clearly identified as function-call.

  print
# ^^^^^ support.function.perl
  print # comment
# ^^^^^ support.function.perl
#      ^ - comment - support
#       ^ comment.line.number-sign.perl
  print;
# ^^^^^ support.function.perl
#      ^ punctuation.terminator.statement.perl
  &print
# ^ keyword.operator.dereference.perl
#  ^^^^^ support.function.perl
  print /pattern/g;
# ^^^^^ support.function.perl
#       ^ punctuation.section.generic.begin.perl
#        ^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#               ^ punctuation.section.generic.end.perl
#                ^ constant.language.flags.regexp.perl
  print(grep /^Client-/, $res->header_field_names)
# ^^^^^ support.function.perl
#      ^ punctuation.section.group.begin.perl
#       ^^^^ support.function.perl
#            ^ punctuation.section.generic.begin.perl
#             ^^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#                     ^ punctuation.section.generic.end.perl
#                      ^ punctuation.separator.sequence.perl
#                        ^^^^ variable.other.readwrite.perl
#                            ^^ punctuation.accessor.arrow.perl
#                              ^^^^^^^^^^^^^^^^^^ variable.function.member.perl
#                                                ^ punctuation.section.group.end.perl
  print "string";
# ^^^^^ support.function.perl
#       ^^^^^^^^ meta.string.perl string.quoted.double.perl
#               ^ punctuation.terminator.statement.perl
  print STDOUT;
# ^^^^^ support.function.perl
#       ^^^^^^ constant.language.filehandle.perl
#             ^ punctuation.terminator.statement.perl
  print func;
# ^^^^^ support.function.perl
#       ^^^^ variable.function.perl
#           ^ punctuation.terminator.statement.perl
  print x::func;
# ^^^^^ support.function.perl
#       ^^^^^^^ meta.path.perl
#       ^ variable.namespace.perl
#        ^^ punctuation.accessor.double-colon.perl
#          ^^^^ variable.function.perl
  print $$$$refrefref;
# ^^^^^ support.function.perl
#       ^^^ keyword.operator.dereference.perl
#          ^ punctuation.definition.variable.perl
#          ^^^^^^^^^^ variable.other.readwrite.perl
  print + 1
# ^^^^^ support.function.perl
#       ^ keyword.operator.arithmetic.perl
  print x 1
# ^^^^^ support.function.perl
#       ^ keyword.operator.arithmetic.perl
  print and 1
# ^^^^^ support.function.perl
#       ^^^ keyword.operator.logical.perl
  func
# ^^^^ variable.function.perl
#     ^ - variable
  func;
# ^^^^ variable.function.perl
#     ^ punctuation.terminator.statement.perl
  func  # comment
# ^^^^ variable.function.perl
#     ^^ - comment - variable
#         ^ comment.line.number-sign.perl
  func "string";
# ^^^^ variable.function.perl
#      ^^^^^^^^ meta.string.perl string.quoted.double.perl

  # Patterns an ambiguous argument and need parentheses
  func /pattern/g;
# ^^^^ variable.function.perl
#      ^ - punctuation.section.generic.begin
#       ^^^^^^^ - string.regexp
#              ^ - punctuation.section.generic.end
#               ^ - constant.language.flags.regexp
#                ^ punctuation.terminator.statement.perl
  func / 10
# ^^^^ variable.function.perl
#      ^ keyword.operator.arithmetic.perl
#        ^^ meta.number.integer.decimal.perl constant.numeric.value.perl

  func / 10; $a = 10/2
# ^^^^ variable.function.perl
#      ^ keyword.operator.arithmetic.perl
#        ^^ meta.number.integer.decimal.perl constant.numeric.value.perl
#          ^ punctuation.terminator.statement.perl
#            ^^ variable.language.perl
#               ^ keyword.operator.assignment.perl
#                 ^^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                   ^ keyword.operator.arithmetic.perl
#                    ^ meta.number.integer.decimal.perl constant.numeric.value.perl
  Func x::path
# ^^^^ variable.function.perl
#      ^^^^^^^ meta.path.perl
#      ^ variable.namespace.perl
#       ^^ punctuation.accessor.double-colon.perl
#         ^^^^ variable.function.perl
  _func $var;
# ^^^^^ variable.function.perl
#       ^^^^ variable.other.readwrite.perl
#           ^ punctuation.terminator.statement.perl
  _Func STDOUT, $var;
# ^^^^^ variable.function.perl
#       ^^^^^^ constant.language.filehandle.perl
#             ^ punctuation.separator.sequence.perl
#               ^^^^ variable.other.readwrite.perl
#                   ^ punctuation.terminator.statement.perl
  func join('foo', $bar), $baz;
# ^^^^ variable.function.perl
#      ^^^^ support.function.perl
#          ^ punctuation.section.group.begin.perl
#           ^^^^^ meta.string.perl string.quoted.single.perl
#                ^ punctuation.separator.sequence.perl
#                  ^^^^ variable.other.readwrite.perl
#                      ^ punctuation.section.group.end.perl
#                       ^ punctuation.separator.sequence.perl
#                         ^^^^ variable.other.readwrite.perl
#                             ^ punctuation.terminator.statement.perl
  func <<_EOD_, $var;
# ^^^^ variable.function.perl
#      ^^^^^^^^^^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^^ entity.name.tag.heredoc.plain.perl
#             ^ punctuation.separator.sequence.perl
#               ^^^^ variable.other.readwrite.perl
#                   ^ punctuation.terminator.statement.perl
  foo bar baz
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl
#^^^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
_EOD_
#<- meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl
#^^^^ meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl
  &func + 1
# ^ keyword.operator.dereference.perl
#  ^^^^ variable.function.perl
#       ^ keyword.operator.arithmetic.perl
  &func x 1
# ^ keyword.operator.dereference.perl
#  ^^^^ variable.function.perl
#       ^ keyword.operator.arithmetic.perl
  &func and 1
# ^ keyword.operator.dereference.perl
#  ^^^^ variable.function.perl
#       ^^^ keyword.operator.logical.perl
  no_func + 1
# ^^^^^^^ - variable.function
#         ^ keyword.operator.arithmetic.perl
  no_func x 1
# ^^^^^^^ - variable.function
#         ^ keyword.operator.arithmetic.perl
  no_func and 1
# ^^^^^^^ - variable.function
#         ^^^ keyword.operator.logical.perl

  ## Some functions are known to not be followed by patterns.
  ## Thus multiple slashes in the line don't denote /<pattern>/

  time / 86400 << 16 / 50
# ^^^^ meta.function-call.perl support.function.perl
#      ^ keyword.operator.arithmetic.perl
#        ^^^^^ meta.number.integer.decimal.perl constant.numeric.value.perl
#              ^^ keyword.operator.bitwise.perl
#                 ^^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                    ^ keyword.operator.arithmetic.perl
#                      ^^ meta.number.integer.decimal.perl constant.numeric.value.perl

  ## To ensure the interpreter identifies a function correctly,
  ## the arguments need to be encapsulated in parentheses.

  print(/pattern/g);
# ^^^^^ support.function.perl
#       ^ punctuation.section.generic.begin.perl
#        ^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#               ^ punctuation.section.generic.end.perl
#                ^ constant.language.flags.regexp.perl
#                  ^ punctuation.terminator.statement.perl
  func(/pattern/g);
# ^^^^ variable.function.perl
#     ^ punctuation.section.group.begin.perl
#      ^ punctuation.section.generic.begin.perl
#       ^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#              ^ punctuation.section.generic.end.perl
#               ^ constant.language.flags.regexp.perl
#                ^ punctuation.section.group.end.perl
#                 ^ punctuation.terminator.statement.perl
  _func($var);
# ^^^^^ variable.function.perl
#      ^ punctuation.section.group.begin.perl
#       ^^^^ variable.other.readwrite.perl
#           ^ punctuation.section.group.end.perl
#            ^ punctuation.terminator.statement.perl

  ## The function call argument list can contain arbitrary arguments
  ## after the content of the `_EOD_` HEREDOC.

  Func(<<_EOD_;
# ^^^^ variable.function.perl
#     ^ punctuation.section.group.begin.perl
#      ^^^^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^^ entity.name.tag.heredoc.plain.perl
#             ^ punctuation.terminator.statement.perl
  foo bar baz
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl
#^^^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
_EOD_
#<- meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl
#^^^^ meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl
#    ^ - meta.string.heredoc
  , $var
# ^ punctuation.separator.sequence.perl
#   ^^^^ variable.other.readwrite.perl
)
# <- punctuation.section.group.end.perl

  ## The function call argument list can end at the same line
  ## while the content of the `_EOD_` HEREDOC starts at the next one.

  func(<<_EOD_, $var);
# ^^^^ variable.function.perl
#     ^ punctuation.section.group.begin.perl
#      ^^^^^^^^^ meta.string.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^^ entity.name.tag.heredoc.plain.perl
#             ^ punctuation.separator.sequence.perl
#               ^^^^ variable.other.readwrite.perl
#                   ^ punctuation.section.group.end.perl
#                    ^ punctuation.terminator.statement.perl
  foo bar baz
# <- meta.string.heredoc.perl string.unquoted.heredoc.perl
#^^^^^^^^^^^^^ meta.string.heredoc.perl string.unquoted.heredoc.perl
_EOD_
#<- meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl
#^^^^ meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl

  func() + 1
# ^^^^ variable.function.perl
#     ^ punctuation.section.group.begin.perl
#      ^ punctuation.section.group.end.perl
#        ^ keyword.operator.arithmetic.perl
  &func() + 1
# ^ keyword.operator.dereference.perl
#  ^^^^ variable.function.perl
#      ^ punctuation.section.group.begin.perl
#       ^ punctuation.section.group.end.perl
#         ^ keyword.operator.arithmetic.perl

###[ QUALIFIED FUNCTION CALL ]################################################

  ::print
# ^^^^^^^ meta.path.perl
# ^^ punctuation.accessor.double-colon.perl
#   ^^^^^ support.function.perl
  &::print
# ^ - meta.path
#  ^^^^^^^ meta.path.perl
# ^ keyword.operator.dereference.perl
#  ^^ punctuation.accessor.double-colon.perl
#    ^^^^^ support.function.perl
  ::print(/pattern/g);
# ^^^^^^^ meta.path.perl
#        ^ - meta.path
# ^^ punctuation.accessor.double-colon.perl
#   ^^^^^ support.function.perl
#         ^ punctuation.section.generic.begin.perl
#          ^^^^^^^ meta.string.perl string.regexp.perl source.regexp
#                 ^ punctuation.section.generic.end.perl
#                  ^ constant.language.flags.regexp.perl
#                    ^ punctuation.terminator.statement.perl
  ::func
# ^^^^^^ meta.path.perl
# ^^ punctuation.accessor.double-colon.perl
#   ^^^^ variable.function.perl
  &::func
#  ^^^^^^ meta.path.perl
# ^ keyword.operator.dereference.perl
#  ^^ punctuation.accessor.double-colon.perl
#    ^^^^ variable.function.perl
  ::func "string";
# ^^^^^^ meta.path.perl
# ^^ punctuation.accessor.double-colon.perl
#   ^^^^ variable.function.perl
#        ^^^^^^^^ meta.string.perl string.quoted.double.perl
  ::func /pattern/g;
# ^^^^^^ meta.path.perl
# ^^ punctuation.accessor.double-colon.perl
#   ^^^^ variable.function.perl
#        ^ - punctuation.section.generic.begin
#         ^^^^^^^ - string.regexp
#                ^ - punctuation.section.generic.end
#                 ^ - constant.language.flags.regexp
#                  ^ punctuation.terminator.statement.perl
  ::Func x::path
# ^^^^^^ meta.path.perl
# ^^ punctuation.accessor.double-colon.perl
#   ^^^^ variable.function.perl
#        ^^^^^^^ meta.path.perl
#        ^ variable.namespace.perl
#         ^^ punctuation.accessor.double-colon.perl
#           ^^^^ variable.function.perl
  ::_func $var;
# ^^^^^^^ meta.path.perl
# ^^ punctuation.accessor.double-colon.perl
#   ^^^^^ variable.function.perl
#         ^^^^ variable.other.readwrite.perl
#             ^ punctuation.terminator.statement.perl
  ::_Func STDOUT, $var;
# ^^^^^^^ meta.path.perl
# ^^ punctuation.accessor.double-colon.perl
#   ^^^^^ variable.function.perl
#         ^^^^^^ constant.language.filehandle.perl
#               ^ punctuation.separator.sequence.perl
#                 ^^^^ variable.other.readwrite.perl
#                     ^ punctuation.terminator.statement.perl
  ::func + 1
# ^^^^^^ meta.path.perl
# ^^ punctuation.accessor.double-colon.perl
#   ^^^^ variable.function.perl
#        ^ keyword.operator.arithmetic.perl
  ::func x 1
# ^^^^^^ meta.path.perl
# ^^ punctuation.accessor.double-colon.perl
#   ^^^^ variable.function.perl
#        ^ keyword.operator.arithmetic.perl
  ::func and 1
# ^^^^^^ meta.path.perl
# ^^ punctuation.accessor.double-colon.perl
#   ^^^^ variable.function.perl
#        ^^^ keyword.operator.logical.perl
  main::print
# ^^^^^^^^^^^ meta.path.perl
# ^^^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^^ support.function.perl
  &main::print
#  ^^^^^^^^^^^ meta.path.perl
# ^ keyword.operator.dereference.perl
#  ^^^^ variable.namespace.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^^^^ support.function.perl
  If::func
# ^^^^^^^^ meta.path.perl
# ^^ variable.namespace.perl
#   ^^ punctuation.accessor.double-colon.perl
#     ^^^^ variable.function.perl
  If::_Func
# ^^^^^^^^^ meta.path.perl
# ^^ variable.namespace.perl
#   ^^ punctuation.accessor.double-colon.perl
#     ^^^^ variable.function.perl
  If::Func
# ^^^^^^^^ meta.path.perl
# ^^ variable.namespace.perl
#   ^^ punctuation.accessor.double-colon.perl
#     ^^^^ variable.function.perl
  IF::func
# ^^^^^^^^ meta.path.perl
# ^^ variable.namespace.perl
#   ^^ punctuation.accessor.double-colon.perl
#     ^^^^ variable.function.perl
  IF::_Func
# ^^^^^^^^^ meta.path.perl
# ^^ variable.namespace.perl
#   ^^ punctuation.accessor.double-colon.perl
#     ^^^^ variable.function.perl
  IF::Func
# ^^^^^^^^ meta.path.perl
# ^^ variable.namespace.perl
#   ^^ punctuation.accessor.double-colon.perl
#     ^^^^ variable.function.perl
  if::func
# ^^^^^^^^ meta.path.perl
# ^^ variable.namespace.perl
#   ^^ punctuation.accessor.double-colon.perl
#     ^^^^ variable.function.perl
  if::_Func
# ^^^^^^^^^ meta.path.perl
# ^^ variable.namespace.perl
#   ^^ punctuation.accessor.double-colon.perl
#     ^^^^ variable.function.perl
  if::Func
# ^^^^^^^^ meta.path.perl
# ^^ variable.namespace.perl
#   ^^ punctuation.accessor.double-colon.perl
#     ^^^^ variable.function.perl
  ::if::func
# ^^^^^^^^^^ meta.path.perl
# ^^ punctuation.accessor.double-colon.perl
#   ^^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^ variable.function.perl
  i::f::func
# ^^^^^^^^^^ meta.path.perl
# ^ variable.namespace.perl
#  ^^ punctuation.accessor.double-colon.perl
#    ^ variable.namespace.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^^ variable.function.perl
  &i::f::func
#  ^^^^^^^^^^ meta.path.perl
# ^ keyword.operator.dereference.perl
#  ^ variable.namespace.perl
#   ^^ punctuation.accessor.double-colon.perl
#     ^ variable.namespace.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^^^ variable.function.perl

###[ METHOD CALLS ]###########################################################

  $obj = URI->new
# ^^^^ variable.other.readwrite.perl
#      ^ keyword.operator.assignment.perl
#        ^^^ variable.namespace.perl - constant - meta.path
#           ^^ punctuation.accessor.arrow.perl
#             ^^^ variable.function.member.perl
  $obj = Class->new
# ^^^^ variable.other.readwrite.perl
#      ^ keyword.operator.assignment.perl
#        ^^^^^ variable.namespace.perl - meta.path
#             ^^ punctuation.accessor.arrow.perl
#               ^^^ variable.function.member.perl
  $obj = Class::Scan->new
#       ^ - meta.path
#        ^^^^^^^^^^^ meta.path.perl
#                   ^ - meta.path
# ^^^^ variable.other.readwrite.perl
#      ^ keyword.operator.assignment.perl
#        ^^^^^ variable.namespace.perl
#             ^^ punctuation.accessor.double-colon.perl
#               ^^^^ variable.namespace.perl
#                   ^^ punctuation.accessor.arrow.perl
#                     ^^^ variable.function.member.perl
  $obj = Class::Scan->new # comment
#       ^ - meta.path
#        ^^^^^^^^^^^ meta.path.perl
#                   ^ - meta.path
# ^^^^ variable.other.readwrite.perl
#      ^ keyword.operator.assignment.perl
#        ^^^^^ variable.namespace.perl
#             ^^ punctuation.accessor.double-colon.perl
#               ^^^^ variable.namespace.perl
#                   ^^ punctuation.accessor.arrow.perl
#                     ^^^ variable.function.member.perl
#                         ^^^^^^^^^ comment.line.number-sign.perl
  $obj = Class::Scan->new(KEY => 'value')
#       ^ - meta.path
#        ^^^^^^^^^^^ meta.path.perl
#                   ^ - meta.path
# ^^^^ variable.other.readwrite.perl
#      ^ keyword.operator.assignment.perl
#        ^^^^^ variable.namespace.perl
#             ^^ punctuation.accessor.double-colon.perl
#               ^^^^ variable.namespace.perl
#                   ^^ punctuation.accessor.arrow.perl
#                     ^^^ variable.function.member.perl
#                        ^ punctuation.section.group.begin.perl
#                         ^^^ constant.other.key.perl
#                            ^ - constant
#                             ^^ punctuation.separator.key-value.perl
#                                ^^^^^^^ meta.string.perl string.quoted.single.perl
#                                       ^ punctuation.section.group.end.perl
  $obj->method
# ^^^^ variable.other.readwrite.perl
#     ^^ punctuation.accessor.arrow.perl
#       ^^^^^^ variable.function.member.perl
  $obj->method # comment
# ^^^^ variable.other.readwrite.perl
#     ^^ punctuation.accessor.arrow.perl
#       ^^^^^^ variable.function.member.perl
#              ^^^^^^^^^ comment.line.number-sign.perl
  $obj->method() # comment
# ^^^^ variable.other.readwrite.perl
#     ^^ punctuation.accessor.arrow.perl
#       ^^^^^^ variable.function.member.perl
#             ^ punctuation.section.group.begin.perl
#              ^ punctuation.section.group.end.perl
#                ^^^^^^^^^ comment.line.number-sign.perl
  $obj
# ^^^^ variable.other.readwrite.perl
  ->
# ^^ punctuation.accessor.arrow.perl
  method() # comment
# ^^^^^^ variable.function.member.perl
#       ^ punctuation.section.group.begin.perl
#        ^ punctuation.section.group.end.perl
#          ^^^^^^^^^ comment.line.number-sign.perl
  $obj->method(1, "str", $var)
# ^^^^ variable.other.readwrite.perl
#     ^^ punctuation.accessor.arrow.perl
#       ^^^^^^ variable.function.member.perl
#             ^ punctuation.section.group.begin.perl
#              ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#               ^ punctuation.separator.sequence.perl
#                 ^^^^^ meta.string.perl string.quoted.double.perl
#                      ^ punctuation.separator.sequence.perl
#                        ^^^^ variable.other.readwrite.perl
#                            ^ punctuation.section.group.end.perl
  # call method and access first item of the returned array reference
  $obj->method->[0]
# ^^^^ variable.other.readwrite.perl
#     ^^ punctuation.accessor.arrow.perl
#       ^^^^^^ variable.function.member.perl
#             ^^ punctuation.accessor.arrow.perl
#               ^^^ meta.item-access.perl
  # call method and access item 'key' of the returned hash reference
  $obj->method->{key}
# ^^^^ variable.other.readwrite.perl
#     ^^ punctuation.accessor.arrow.perl
#       ^^^^^^ variable.function.member.perl
#             ^^ punctuation.accessor.arrow.perl
#               ^^^^^ meta.item-access.perl
  # call method and execute the returned function
  $obj->method->($arg1, "val")
# ^^^^ variable.other.readwrite.perl
#     ^^ punctuation.accessor.arrow.perl
#       ^^^^^^ variable.function.member.perl
#             ^^ punctuation.accessor.arrow.perl
#               ^ punctuation.section.group.begin.perl
#                ^^^^^ variable.other.readwrite.perl
#                     ^ punctuation.separator.sequence.perl
#                       ^^^^^ meta.string.perl string.quoted.double.perl
#                            ^ punctuation.section.group.end.perl
  # call method and add 1 to the returned number
  $obj->method + 1
# ^^^^ variable.other.readwrite.perl
#     ^^ punctuation.accessor.arrow.perl
#       ^^^^^^ variable.function.member.perl
#              ^ keyword.operator.arithmetic.perl
#                ^ meta.number.integer.decimal.perl constant.numeric.value.perl
  # call method and multiply 1 to the returned matrice
  $obj->method x 1
# ^^^^ variable.other.readwrite.perl
#     ^^ punctuation.accessor.arrow.perl
#       ^^^^^^ variable.function.member.perl
#              ^ keyword.operator.arithmetic.perl
#                ^ meta.number.integer.decimal.perl constant.numeric.value.perl
  # call method and associate returned bool with TRUE
  $obj->method and 1
# ^^^^ variable.other.readwrite.perl
#     ^^ punctuation.accessor.arrow.perl
#       ^^^^^^ variable.function.member.perl
#              ^^^ keyword.operator.logical.perl
#                  ^ meta.number.integer.decimal.perl constant.numeric.value.perl
  # call method of an nested object
  $obj->{bar}->method
# ^^^^ variable.other.readwrite.perl
#     ^^ punctuation.accessor.arrow.perl
#       ^^^^^ meta.item-access.perl
#            ^^ punctuation.accessor.arrow.perl
#              ^^^^^^ variable.function.member.perl
  $obj->if::func
# ^^^^^^ - meta.path
#       ^^^^^^^^ meta.path.perl
#               ^ - meta.path
# ^^^^ variable.other.readwrite.perl
#     ^^ punctuation.accessor.arrow.perl
#       ^^ variable.namespace.perl
#         ^^ punctuation.accessor.double-colon.perl
#           ^^^^ variable.function.perl

###[ CONDITIONAL EXPRESSIONS ]################################################

  if ($flags & (SVf_POK|SVf_IOkK))
# ^^ keyword.control.conditional.if.perl
#    ^ punctuation.section.group.begin.perl
#     ^^^^^^ variable.other.readwrite.perl
#            ^ keyword.operator.bitwise.perl
#              ^ punctuation.section.group.begin.perl
#               ^^^^^^^ constant.other.perl
#                      ^ keyword.operator.bitwise.perl
#                       ^^^^^^^^ constant.other.perl
#                               ^^ punctuation.section.group.end.perl
  if(exists($curargs{$index}))
# ^^ keyword.control.conditional.if.perl
#   ^ punctuation.section.group.begin.perl
#    ^^^^^^ support.function.perl
#          ^ punctuation.section.group.begin.perl
#           ^^^^^^^^ variable.other.readwrite.perl
#                            ^ punctuation.section.group.end.perl
  if(exists $curargs{$index})
# ^^ keyword.control.conditional.if.perl
#   ^ punctuation.section.group.begin.perl
#    ^^^^^^ support.function.perl
#           ^^^^^^^^ variable.other.readwrite.perl
#                           ^ punctuation.section.group.end.perl
  if(func $curargs{$index})
# ^^ keyword.control.conditional.if.perl
#   ^ punctuation.section.group.begin.perl
#    ^^^^ variable.function.perl
#         ^^^^^^^^ variable.other.readwrite.perl
#                         ^ punctuation.section.group.end.perl
  if (&$coderef()) {&$coderef()}
#     ^ keyword.operator.dereference.perl
#      ^ punctuation.definition.variable.perl
#      ^^^^^^^^ variable.other.readwrite.perl
#              ^ punctuation.section.group.begin.perl
#               ^ punctuation.section.group.end.perl
#                   ^ keyword.operator.dereference.perl
#                    ^ punctuation.definition.variable.perl
#                    ^^^^^^^^ variable.other.readwrite.perl
#                            ^ punctuation.section.group.begin.perl
#                             ^ punctuation.section.group.end.perl
  if ($self->value <= $self->other);
#            ^^^^^ variable.function.member.perl
#                  ^^ keyword.operator.comparison.perl
#                  ^^^^^^^^^^ - string
#                          ^^ punctuation.accessor.arrow.perl
  if ($value <= $self->other);
#            ^^ keyword.operator.comparison.perl
#            ^^^^^^^^^^ - string
#                    ^^ punctuation.accessor.arrow.perl
#                      ^^^^^ variable.function.member.perl

  # HEREDOC can start within a normal code block
  if ($var) { $text = <<_EOT_; } else { $text = "foo"}
# ^^^^^^^^^^^^^^^^^^^^ - meta.string.heredoc.perl
#                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.perl
#                     ^^ keyword.operator.heredoc.perl
#                       ^^^^^ entity.name.tag.heredoc.plain.perl
#                            ^ punctuation.terminator.statement.perl
#                              ^ punctuation.section.block.end.perl
#                                ^^^^ keyword.control.conditional.else.perl
#                                     ^ punctuation.section.block.begin.perl
#                                       ^^^^^ variable.other.readwrite.perl
#                                             ^ keyword.operator.assignment.perl
#                                               ^^^^^ meta.string.perl string.quoted.double.perl
#                                                    ^ punctuation.section.block.end.perl
_EOT_
# <- meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl
#^^^^ meta.string.heredoc.perl entity.name.tag.heredoc.plain.perl

# <- - meta.string.heredoc.perl

###[ LOOP EXPRESSIONS ]#######################################################

  for ($i = 1; $i < 10; $i++) {
# ^^^ keyword.control.loop.for.perl
#     ^ punctuation.section.group.begin.perl
#                           ^ punctuation.section.group.end.perl
#                             ^ punctuation.section.block.begin.perl
    break;
#   ^^^^^ keyword.control.flow.break.perl
  }
# ^ punctuation.section.block.end.perl

  for my $i (0..9) {
# ^^^ keyword.control.loop.for.perl
#     ^^ keyword.declaration.variable.perl
#        ^^ variable.other.readwrite.perl
#           ^ punctuation.section.group.begin.perl
#            ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#             ^^ keyword.operator.range.perl
#               ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                ^ punctuation.section.group.end.perl
#                  ^ punctuation.section.block.begin.perl
    CORE::break;
#   ^^^^ support.namespace.perl
#       ^^ punctuation.accessor.double-colon.perl
#         ^^^^^ keyword.control.flow.break.perl
  }
# ^ punctuation.section.block.end.perl

  foreach my $vsn_mk (<lib/*/vsn.mk>, <erts/vsn.mk>) {
# ^^^^^^^ keyword.control.loop.foreach.perl
#         ^^ keyword.declaration.variable.perl
#            ^ punctuation.definition.variable.perl
#            ^^^^^^^ variable.other.readwrite.perl
#                    ^ punctuation.section.group.begin.perl
#                     ^ punctuation.definition.string.begin.perl
#                     ^^^^^^^^^^^^^^ meta.string.perl string.quoted.angle.perl
#                                  ^ punctuation.definition.string.end.perl
#                                   ^ punctuation.separator.sequence.perl
#                                     ^ punctuation.definition.string.begin.perl
#                                     ^^^^^^^^^^^^^ meta.string.perl string.quoted.angle.perl
#                                                 ^ punctuation.definition.string.end.perl
#                                                  ^ punctuation.section.group.end.perl
#                                                    ^ punctuation.section.block.begin.perl
  }
# ^ punctuation.section.block.end.perl

  LINE: until (STDIN) { next LINE if /^#/; } continue { while ($foo) { redo LINE if /@#/; } }
# ^^^^ entity.name.label.perl
#       ^^^^^ keyword.control.loop.until.perl
#              ^^^^^ constant.language.filehandle.perl
#                       ^^^^ keyword.control.flow.next.perl
#                            ^^^^ variable.label.perl
#                                 ^^ keyword.control.conditional.if.perl
#                                            ^^^^^^^^ keyword.control.flow.continue.perl
#                                                       ^^^^^ keyword.control.loop.while.perl
#                                                                      ^^^^ keyword.control.flow.redo.perl
#                                                                           ^^^^ variable.label.perl
#                                                                                ^^ keyword.control.conditional.if.perl

  LINE: while ($foo++ < 10 && $bar > 5) { next LINE if /^#/; redo LINE if $bar }
# ^^^^ entity.name.label.perl
#       ^^^^^ keyword.control.loop.while.perl
#             ^ punctuation.section.group.begin.perl
#              ^^^^ variable.other.readwrite.perl
#                  ^^ keyword.operator.arithmetic.perl
#                     ^ keyword.operator.comparison.perl
#                     ^^^^^^^^^^^^^^ - string
#                       ^^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                          ^^ keyword.operator.logical.perl
#                             ^^^^ variable.other.readwrite.perl
#                                  ^ keyword.operator.comparison.perl
#                                    ^ meta.number.integer.decimal.perl constant.numeric.value.perl
#                                     ^ punctuation.section.group.end.perl
#                                         ^^^^ keyword.control.flow.next.perl
#                                              ^^^^ variable.label.perl
#                                                   ^^ keyword.control.conditional.if.perl
#                                                            ^^^^ keyword.control.flow.redo.perl
#                                                                 ^^^^ variable.label.perl
#                                                                      ^^ keyword.control.conditional.if.perl
