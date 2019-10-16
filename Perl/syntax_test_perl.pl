# SYNTAX TEST "Perl.sublime-syntax"

# comment ; still in here
# ^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.perl
#         ^ - punctuation

###[ POD TESTS ] #############################################################

=pod
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^ comment.block.documentation.perl entity.name.tag.pod.perl
=encoding utf8
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^^^^^^^^^^^ comment.block.documentation.perl
#^^^^^^^^ entity.name.tag.pod.perl
#         ^^^^ markup.heading.perl
=head1 B<--param>
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^^^^^^^^^^^^^^ comment.block.documentation.perl
#^^^^^ entity.name.tag.pod.perl
#      ^^^^^^^^^^ markup.heading.perl
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
#    ^^^^^^^^ string.unquoted.perl
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
# ^ entity.name.tag.none-braeking.perl
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
# <- entity.name.tag.pod.perl
#^^^^^^ entity.name.tag.pod.perl
#      ^^^ string.unquoted.perl
  a {  };
# ^^^^^^^ comment.block.documentation.perl source.css.embedded.perl source.css
=end
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^ comment.block.documentation.perl entity.name.tag.pod.perl

=begin html
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^^^^^^^^ comment.block.documentation.perl
#      ^^^^ string.unquoted.perl
    <html>
# <- comment.block.documentation.perl text.html.embedded.perl
#^^^^^^^^^ comment.block.documentation.perl text.html.embedded.perl
    </html>
# <- comment.block.documentation.perl text.html.embedded.perl
#^^^^^^^^^ comment.block.documentation.perl text.html.embedded.perl
=end
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^ comment.block.documentation.perl entity.name.tag.pod.perl

=begin json
# <- entity.name.tag.pod.perl
#^^^^^^ entity.name.tag.pod.perl
#      ^^^ string.unquoted.perl
  {
# ^ comment.block.documentation.perl source.json.embedded.perl source.json
    "key": "value",
#   ^^^^^^^^^^^^^^^ comment.block.documentation.perl source.json.embedded.perl source.json
  }
# ^ comment.block.documentation.perl source.json.embedded.perl source.json
=end
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^ comment.block.documentation.perl entity.name.tag.pod.perl

=begin sql
# <- entity.name.tag.pod.perl
#^^^^^^ entity.name.tag.pod.perl
#      ^^^ string.unquoted.perl
  SELECT * FROM `table`
# ^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.perl source.sql.embedded.perl source.sql
=end
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^ comment.block.documentation.perl entity.name.tag.pod.perl

=cut
# <- comment.block.documentation.perl entity.name.tag.pod.perl
#^^^ comment.block.documentation.perl entity.name.tag.pod.perl

###[ FORMAT ]#################################################################

format name =
# <- meta.block.format.perl storage.type.format.perl
#^^^^^^^^^^^^^ meta.block.format.perl
#^^^^^ storage.type.format.perl
#      ^^^^ variable.other.perl
#           ^ keyword.operator.assignment.perl
  ^#.###
# ^ punctuation.definition.placeholder.begin.perl
# ^^^^^^ variable.parameter.special-field.perl
  @#.###
# ^ punctuation.definition.placeholder.begin.perl
# ^^^^^^ variable.parameter.regular-field.perl
  ^*
# ^^ variable.parameter.multiline-width.perl
  @*
# ^^ variable.parameter.multiline-width.perl
  @variable
# ^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
  ...
# ^^^ constant.character.escape.perl
  ~
# ^ constant.character.escape.perl
  ~~
# ^^ constant.character.escape.perl
.
# <- punctuation.terminator.format.perl

###[ HEREDOC ]################################################################

$var = << CSS;
#      ^^^^^^^ meta.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#         ^^^ string.other.heredoc.perl constant.language.heredoc.css.perl
#            ^ punctuation.terminator.statement.perl
  a {  };
# ^^^^^^^ meta.heredoc.perl source.css.embedded.perl source.css
CSS
# <- meta.heredoc.perl constant.language.heredoc.css.perl
#^^ meta.heredoc.perl constant.language.heredoc.css.perl

$var = <<HTML;
# <- variable.other.readwrite.global.perl
#^^^ variable.other.readwrite.global.perl
#    ^ keyword.operator.assignment.perl
#      ^^^^^^^^ meta.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^ string.other.heredoc.perl constant.language.heredoc.html.perl
#            ^ punctuation.terminator.statement.perl
  <div />
# <- meta.heredoc.perl text.html.embedded.perl
#^^^^^^^^^ meta.heredoc.perl text.html.embedded.perl
HTML
# <- meta.heredoc.perl constant.language.heredoc.html.perl
#^^^ meta.heredoc.perl constant.language.heredoc.html.perl

$var = <<'HTML';
# <- variable.other.readwrite.global.perl
#^^^ variable.other.readwrite.global.perl
#    ^ keyword.operator.assignment.perl
#      ^^^^^^^^^^ meta.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^^^ string.other.heredoc.perl
#        ^ punctuation.definition.string.begin.perl
#         ^^^^ constant.language.heredoc.html.perl
#             ^ punctuation.definition.string.end.perl
#              ^ punctuation.terminator.statement.perl
  <div />
# <- meta.heredoc.perl text.html.embedded.perl
#^^^^^^^^^ meta.heredoc.perl text.html.embedded.perl
HTML
# <- meta.heredoc.perl constant.language.heredoc.html.perl
#^^^ meta.heredoc.perl constant.language.heredoc.html.perl

$var = <<"HTML";
# <- variable.other.readwrite.global.perl
#^^^ variable.other.readwrite.global.perl
#    ^ keyword.operator.assignment.perl
#      ^^^^^^^^^^ meta.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^^^ string.other.heredoc.perl
#        ^ punctuation.definition.string.begin.perl
#         ^^^^ constant.language.heredoc.html.perl
#             ^ punctuation.definition.string.end.perl
#              ^ punctuation.terminator.statement.perl
  <div />
# <- meta.heredoc.perl text.html.embedded.perl
#^^^^^^^^^ meta.heredoc.perl text.html.embedded.perl
HTML
# <- meta.heredoc.perl constant.language.heredoc.html.perl
#^^^ meta.heredoc.perl constant.language.heredoc.html.perl

$var ? <<HTML : <<HTML;
# <- variable.other.readwrite.global.perl
#^^^ variable.other.readwrite.global.perl
#    ^ keyword.operator.logical.perl
#      ^^^^^^^^^^^^^^^^ meta.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^ string.other.heredoc.perl constant.language.heredoc.html.perl
#             ^ keyword.operator.logical.perl
#               ^^ keyword.operator.heredoc.perl
#                 ^^^^ string.other.heredoc.perl constant.language.heredoc.html.perl
#                     ^ punctuation.terminator.statement.perl
  <div />
# <- meta.heredoc.perl text.html.embedded.perl
#^^^^^^^^^ meta.heredoc.perl text.html.embedded.perl
HTML
# <- meta.heredoc.perl constant.language.heredoc.html.perl
#^^^ meta.heredoc.perl constant.language.heredoc.html.perl
  <div />
# <- meta.heredoc.perl text.html.embedded.perl
#^^^^^^^^^ meta.heredoc.perl text.html.embedded.perl
   HTML
#  ^^^^ meta.heredoc.perl text.html.embedded.perl - constant.language.heredoc.html.perl
HTML
# <- meta.heredoc.perl constant.language.heredoc.html.perl
#^^^ meta.heredoc.perl constant.language.heredoc.html.perl
HTML
# <- constant.other.perl
#^^^ constant.other.perl

$var = <<JAVASCRIPT;
# <- variable.other.readwrite.global.perl punctuation.definition.variable.perl
#^^^ variable.other.readwrite.global.perl
#    ^ keyword.operator.assignment.perl
#      ^^^^^^^^^^^^^^ meta.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^^^^^^^ string.other.heredoc.perl constant.language.heredoc.js.perl
  var basic;
# <- meta.heredoc.perl source.js.embedded.perl source.js
# ^^^ meta.heredoc.perl source.js.embedded.perl source.js storage.type.js
JAVASCRIPT
# <- meta.heredoc.perl constant.language.heredoc.js.perl
#^^^^^^^^^ meta.heredoc.perl constant.language.heredoc.js.perl

$var = <<JSON;
#      ^^^^^^^ meta.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^ string.other.heredoc.perl constant.language.heredoc.json.perl
#            ^ punctuation.terminator.statement.perl
JSON
# <- meta.heredoc.perl constant.language.heredoc.json.perl
#^^^ meta.heredoc.perl constant.language.heredoc.json.perl

$var = <<SQL;
#      ^^^^^^ meta.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^ string.other.heredoc.perl constant.language.heredoc.sql.perl
#           ^ punctuation.terminator.statement.perl
  SELECT * FROM `table`
# ^^^^^^^^^^^^^^^^^^^^^ meta.heredoc.perl source.sql.embedded.perl
SQL
# <- meta.heredoc.perl constant.language.heredoc.sql.perl
#^^ meta.heredoc.perl constant.language.heredoc.sql.perl

$var = <<XML;
#      ^^^^^^ meta.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^ string.other.heredoc.perl constant.language.heredoc.xml.perl
#           ^ punctuation.terminator.statement.perl
  <t:tag></t:tag>
# ^^^^^^^^^^^^^^^ meta.heredoc.perl text.xml.embedded.perl
XML
# <- meta.heredoc.perl constant.language.heredoc.xml.perl
#^^ meta.heredoc.perl constant.language.heredoc.xml.perl

$var = <<_EOD_;
#      ^^^^^^^^^ meta.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#        ^^^^^ constant.language.heredoc.plain.perl
#             ^ punctuation.terminator.statement.perl
  foo bar baz
# <- meta.heredoc.perl string.quoted.other.perl
#^^^^^^^^^^^^^ meta.heredoc.perl string.quoted.other.perl
_EOD_
# <- meta.heredoc.perl constant.language.heredoc.plain.perl
#^^^^ meta.heredoc.perl constant.language.heredoc.plain.perl

$var = << "    _EOD_";
#      ^^^^^^^^^^^^^^^ meta.heredoc.perl
#      ^^ keyword.operator.heredoc.perl
#         ^ punctuation.definition.string.begin.perl
#         ^^^^^^^^^^^ string.other.heredoc.perl
#          ^^^^^^^^^ constant.language.heredoc.plain.perl
#                   ^ punctuation.definition.string.end.perl
#                    ^ punctuation.terminator.statement.perl
  foo bar baz
# <- meta.heredoc.perl string.quoted.other.perl
#^^^^^^^^^^^^^ meta.heredoc.perl string.quoted.other.perl
  _EOD_
# ^^^^^^ meta.heredoc.perl string.quoted.other.perl
    _EOD_
# <- meta.heredoc.perl constant.language.heredoc.plain.perl
#^^^^^^^^ meta.heredoc.perl constant.language.heredoc.plain.perl

chomp (my $common_end = <<"EOF") =~ s/(.*)/$1/g if $opt_o;
# <- support.function.perl
#^^^^ support.function.perl
#                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.heredoc.perl
#                       ^^ keyword.operator.heredoc.perl
#                                ^^ keyword.operator.binary.perl
  foo bar baz
# <- meta.heredoc.perl string.quoted.other.perl
# ^^^^^^^^^^^^ meta.heredoc.perl string.quoted.other.perl
EOF
# <- meta.heredoc.perl constant.language.heredoc.plain.perl
#^^ meta.heredoc.perl constant.language.heredoc.plain.perl

$var ? <<'EOT' : <<'EOT';
  foo bar baz
# <- meta.heredoc.perl string.quoted.other.perl
# ^^^^^^^^^^^^ meta.heredoc.perl string.quoted.other.perl
EOT
# <- meta.heredoc.perl constant.language.heredoc.plain.perl
#^^ meta.heredoc.perl constant.language.heredoc.plain.perl
  foo bar baz
# <- meta.heredoc.perl string.quoted.other.perl
# ^^^^^^^^^^^^ meta.heredoc.perl string.quoted.other.perl
EOT
# <- meta.heredoc.perl constant.language.heredoc.plain.perl
#^^ meta.heredoc.perl constant.language.heredoc.plain.perl

# MUST NOT BE HEREDOC
  (1 << 0) ;
#    ^^^^^^^ - meta.heredoc.perl
#    ^^ - keyword.operator.heredoc.perl
  (1 << $var) ;
#    ^^^^^^^^^^ - meta.heredoc.perl
#    ^^ - keyword.operator.heredoc.perl

###[ OPERATORS ]##############################################################
  ,
# ^ punctuation.separator.sequence.perl
  ;
# ^ punctuation.terminator.statement.perl
  ::
# ^^ - punctuation.accessor.double-colon.perl
  ->
# ^^ keyword.accessor.arrow.perl
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
  !~
# ^^ keyword.operator.binary.perl
  =~
# ^^ keyword.operator.binary.perl
  ~~
# ^^ keyword.operator.binary.perl
  <=>
# ^^^ keyword.operator.logical.perl
  //
# ^^ keyword.operator.logical.perl
  &&
# ^^ keyword.operator.logical.perl
  ||
# ^^ keyword.operator.logical.perl
  ==
# ^^ keyword.operator.logical.perl
  !=
# ^^ keyword.operator.logical.perl
  >=
# ^^ keyword.operator.logical.perl
  <=
# ^^ keyword.operator.logical.perl
  >
# ^ keyword.operator.logical.perl
  <
# ^ keyword.operator.logical.perl
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
# ^ keyword.operator.concat.perl
  .=
# ^^ keyword.operator.concat.perl
  ..
# ^^ keyword.operator.range.perl

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

###[ VARIABLES ]##############################################################

  $&
# ^^ variable.other.regexp.match.perl
# ^ punctuation.definition.variable.perl
  $`
# ^^ variable.other.regexp.pre-match.perl
# ^ punctuation.definition.variable.perl
  $'
# ^^ variable.other.regexp.post-match.perl
# ^ punctuation.definition.variable.perl
  $+
# ^^ variable.other.regexp.last-paren-match.perl
# ^ punctuation.definition.variable.perl
  $"
# ^^ variable.other.readwrite.list-separator.perl
# ^ punctuation.definition.variable.perl
  $0
# ^^ variable.other.predefined.program-name.perl
# ^ punctuation.definition.variable.perl
  @0
# ^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
  %0
# ^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
  $1
# ^^ variable.other.subpattern.perl
# ^ punctuation.definition.variable.perl
  @1
# ^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
  %1
# ^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
  $_
# ^^ variable.other.predefined.perl
# ^ punctuation.definition.variable.perl
  @_
# ^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
  %_
# ^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
  $#0
# ^^^ variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.perl
  @#0
# ^^^ variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.perl
  %#0
# ^^^ variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.perl
  $#_
# ^^^ variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.perl
  @#_
# ^^^ variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.perl
  %#_
# ^^^ variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.perl
  $&[0]
# ^^ variable.other.regexp.match.perl
# ^ punctuation.definition.variable.perl
#   ^^^ meta.item-access.perl
  $`[0]
# ^^ variable.other.regexp.pre-match.perl
# ^ punctuation.definition.variable.perl
#   ^^^ meta.item-access.perl
  $'[0]
# ^^ variable.other.regexp.post-match.perl
# ^ punctuation.definition.variable.perl
#   ^^^ meta.item-access.perl
  $+[0]
# ^^ variable.other.regexp.last-paren-match.perl
# ^ punctuation.definition.variable.perl
#   ^^^ meta.item-access.perl
  $"[0]
# ^^ variable.other.readwrite.list-separator.perl
# ^ punctuation.definition.variable.perl
#   ^^^ meta.item-access.perl
  $0[0]
# ^^ variable.other.predefined.program-name.perl
# ^ punctuation.definition.variable.perl
#   ^^^ meta.item-access.perl
  @0[0]
# ^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#   ^^^ meta.item-access.perl
  %0[0]
# ^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#   ^^^ meta.item-access.perl
  $1[0]
# ^^ variable.other.subpattern.perl
# ^ punctuation.definition.variable.perl
#   ^^^ meta.item-access.perl
  @1[0]
# ^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#   ^^^ meta.item-access.perl
  %1[0]
# ^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#   ^^^ meta.item-access.perl
  $_[0]
# ^^ variable.other.predefined.perl
# ^ punctuation.definition.variable.perl
#   ^^^ meta.item-access.perl
  @_[0]
# ^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#   ^^^ meta.item-access.perl
  %_[0]
# ^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#   ^^^ meta.item-access.perl
  $#0[0]
# ^^^ variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.perl
#    ^^^ meta.item-access.perl
  @#0[0]
# ^^^ variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.perl
#    ^^^ meta.item-access.perl
  %#0[0]
# ^^^ variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.perl
#    ^^^ meta.item-access.perl
  $#_[0]
# ^^^ variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.perl
#    ^^^ meta.item-access.perl
  @#_[0]
# ^^^ variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.perl
#    ^^^ meta.item-access.perl
  %#_[0]
# ^^^ variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.perl
#    ^^^ meta.item-access.perl
  $Foo::Bar::baz
# ^^^^^^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ support.class.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^ variable.other.member.perl
  $Foo :: Bar :: baz
# ^^^^^^^^^^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#      ^^ punctuation.accessor.double-colon.perl
#         ^^^ support.class.perl
#             ^^ punctuation.accessor.double-colon.perl
#                ^^^ variable.other.member.perl
  $Foo::Bar::baz[4]
# ^^^^^^^^^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ support.class.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^ variable.other.member.perl - meta.item-access.perl
#               ^ meta.item-access.perl punctuation.section.item-access.begin.perl
#                ^ meta.item-access.perl constant.numeric.integer
#                 ^ meta.item-access.perl punctuation.section.item-access.end.perl
  $Foo::Bar->baz
# ^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ support.class.perl
#          ^^ keyword.accessor.arrow.perl
#            ^^^ variable.other.member.perl
  $Foo::Bar->[0]
# ^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ support.class.perl
#          ^^ keyword.accessor.arrow.perl
#            ^^^ meta.item-access.perl
  $Foo::Bar->baz[0]
# ^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ support.class.perl
#          ^^ keyword.accessor.arrow.perl
#            ^^^ variable.other.member.perl
#               ^^^ meta.item-access.perl
  $Foo::Bar->baz{'key'}
# ^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ support.class.perl
#          ^^ keyword.accessor.arrow.perl
#            ^^^ variable.other.member.perl
#               ^^^^^^^ meta.item-access.perl
  $Foo::Bar->$baz->[-1]
# ^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ support.class.perl
#          ^^ keyword.accessor.arrow.perl - variable
#            ^^^^ variable.other.readwrite.global.perl
#            ^ punctuation.definition.variable.perl
#                  ^ punctuation.section.item-access.begin.perl
#                  ^^^^ meta.item-access.perl
#                     ^ punctuation.section.item-access.end.perl
  $Foo :: Bar -> $baz
# ^^^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#      ^^ punctuation.accessor.double-colon.perl
#         ^^^ support.class.perl
#             ^^ keyword.accessor.arrow.perl - variable
#                ^^^^ variable.other.readwrite.global.perl
#                ^ punctuation.definition.variable.perl
  $Foo::Bar::baz()
# ^^^^^^^^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ support.class.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^ meta.function-call.name.perl variable.function.member.perl
#               ^ meta.function-call.arguments.perl punctuation.section.arguments.begin.perl
#                ^ meta.function-call.arguments.perl punctuation.section.arguments.end.perl
  $Foo :: Bar :: baz ()
# ^^^^^^^^^^^^^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#      ^^ punctuation.accessor.double-colon.perl
#         ^^^ support.class.perl
#             ^^ punctuation.accessor.double-colon.perl
#                ^^^^ meta.function-call.name.perl
#                ^^^ variable.function.member.perl
#                    ^ meta.function-call.arguments.perl punctuation.section.arguments.begin.perl
#                     ^ meta.function-call.arguments.perl punctuation.section.arguments.end.perl
  $c = C::Scan->new(KEY => 'value')
#               ^^^ meta.function-call.name.perl
#                  ^^^^^^^^^^^^^^^^ meta.function-call.arguments.perl
# ^^ variable.other.readwrite.global.perl
#    ^ keyword.operator.assignment.perl
#      ^ support.class.perl
#       ^^ punctuation.accessor.double-colon.perl
#         ^^^^ support.class.perl
#             ^^ keyword.accessor.arrow.perl
#               ^^^ variable.function.member.perl
#                  ^ punctuation.section.arguments.begin.perl
#                   ^^^ constant.other.key.perl
#                      ^ - constant
#                       ^^ keyword.operator.assignment.perl
#                          ^^^^^^^ string.quoted.single.perl
#                                 ^ punctuation.section.arguments.end.perl
  ${Foo::Bar::baz}
# ^^^^^^^^^^^^^^^^ variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.begin.perl
#   ^^^ support.class.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^^ support.class.perl
#           ^^ punctuation.accessor.double-colon.perl
#             ^^^ variable.other.member.perl
#                ^ punctuation.definition.variable.end.perl
  ${Foo::Bar::baz}[$var]
# ^^^^^^^^^^^^^^^^^^^^^^ variable.other.readwrite.global.perl
#                 ^^^^^^ meta.item-access.perl
  ${
#^ - variable
# ^^ punctuation.definition.variable.begin.perl
# ^^^ variable.other.readwrite.global.perl
    Foo::bar->baz()
# <- variable.other.readwrite.global.perl
#^^^^^^^^^^^^^^^^^^^ meta.braces.perl variable.other.readwrite.global.perl
#   ^^^ support.class.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^^ variable.other.member.perl
#           ^^ keyword.accessor.arrow.perl
#             ^^^ variable.function.member.perl
  }
# <- variable.other.readwrite.global.perl
#^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.end.perl
#  ^ - variable
  $::Config{'cf_email'}
# ^^^^^^^^^^^^^^^^^^^^^ variable.other.readwrite.global.perl
#          ^^^^^^^^^^^^ meta.item-access.perl
# ^ punctuation.definition.variable.perl
#  ^^ punctuation.accessor.double-colon.perl
#    ^^^^^^ support.class.perl
#          ^ punctuation.section.item-access.begin.perl
#           ^^^^^^^^^^ string.quoted.single.perl
#                     ^ punctuation.section.item-access.end.perl
  -f
# ^^ keyword.operator.filetest.perl
  -foo
# ^^ - keyword.operator.filetest.perl
  $_foo = "bar";
# ^ punctuation.definition.variable.perl
# ^^^^^ variable.other.readwrite.global.perl
#       ^ keyword.operator.assignment.perl
#         ^ punctuation.definition.string.begin.perl
#         ^^^^^ string.quoted.double.perl
#             ^ punctuation.definition.string.end.perl
#              ^ punctuation.terminator.statement.perl
  %_foo = "bar";
# ^ punctuation.definition.variable.perl
# ^^^^^ variable.other.readwrite.global.perl
#       ^ keyword.operator.assignment.perl
#         ^ punctuation.definition.string.begin.perl
#         ^^^^^ string.quoted.double.perl
#             ^ punctuation.definition.string.end.perl
#              ^ punctuation.terminator.statement.perl
  $foo{bar}
# ^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#     ^ punctuation.section.item-access.begin.perl
#     ^^^^^ meta.item-access.perl
#      ^^^ string.unquoted.perl
#         ^ punctuation.section.item-access.end.perl
  $foo{bar()}
# ^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#     ^ punctuation.section.item-access.begin.perl
#     ^^^^^ meta.item-access.perl
#      ^^^ variable.function.perl
#           ^ punctuation.section.item-access.end.perl
  $foo{10 + $bar}
# ^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#     ^ punctuation.section.item-access.begin.perl
#     ^^^^^^^^^^^ meta.item-access.perl
#      ^^ constant.numeric.integer.decimal.perl
#         ^ keyword.operator.arithmetic.perl
#           ^^^^ variable.other.readwrite.global.perl
#               ^ punctuation.section.item-access.end.perl
  %{$foo{bar}{baz}} = 'excl';
# ^^^^^^^^^^^^^^^^^ meta.braces.perl variable.other.readwrite.global.perl
#       ^^^^^^^^^^ meta.item-access.perl
# ^^ punctuation.definition.variable.begin.perl
#   ^ punctuation.definition.variable.perl
#   ^^^^ variable.other.readwrite.global.perl variable.other.readwrite.global.perl
#       ^ punctuation.section.item-access.begin.perl
#        ^^^ string.unquoted.perl
#           ^ punctuation.section.item-access.end.perl
#             ^^^ string.unquoted.perl
#                ^ punctuation.section.item-access.end.perl
#                 ^ punctuation.definition.variable.end.perl
#                   ^ keyword.operator.assignment.perl
#                     ^^^^^^ string.quoted.single.perl
#                           ^ punctuation.terminator.statement.perl
  %{$foo{'bar'}{'bar'}} = 'excl';
# ^^^^^^^^^^^^^^^^^^^^^ meta.braces.perl variable.other.readwrite.global.perl
#       ^^^^^^^^^^^^^^ meta.item-access.perl
# ^^ punctuation.definition.variable.begin.perl
#   ^ punctuation.definition.variable.perl
#   ^^^^ variable.other.readwrite.global.perl variable.other.readwrite.global.perl
#       ^ punctuation.section.item-access.begin.perl
#        ^^^^^ string.quoted.single.perl
#             ^ punctuation.section.item-access.end.perl
#              ^ punctuation.section.item-access.begin.perl
#               ^^^^^ string.quoted.single.perl
#                    ^ punctuation.section.item-access.end.perl
#                     ^ punctuation.definition.variable.end.perl
#                       ^ keyword.operator.assignment.perl
#                         ^^^^^^ string.quoted.single.perl
#                               ^ punctuation.terminator.statement.perl

  # addin items to an array
  $AoA[$i] = [ somefunc($i) ];
# ^^^^ variable.other.readwrite.global.perl - meta.item-access
#     ^^^^ meta.item-access.perl
#     ^ punctuation.section.item-access.begin.perl
#      ^^ variable.other.readwrite.global.perl
#        ^ punctuation.section.item-access.end.perl
#          ^ keyword.operator.assignment.perl
#            ^ punctuation.section.brackets.begin.perl
#                           ^ punctuation.section.brackets.end.perl
#                            ^ punctuation.terminator.statement.perl
  # add new columns to an existing row
  push @{ $AoA[0] }, "wilma", "betty";   # explicit deref
# ^^^^ support.function.perl
#      ^^^^^^^^^^^^ meta.braces.perl variable.other.readwrite.global.perl
#         ^^^^ variable.other.readwrite.global.perl - meta.item-access
#             ^^^ meta.item-access.perl
#      ^^  punctuation.definition.variable.begin.perl
#         ^ punctuation.definition.variable.perl
#             ^ punctuation.section.item-access.begin.perl
#              ^ constant.numeric.integer
#               ^ punctuation.section.item-access.end.perl
#                 ^ punctuation.definition.variable.end.perl
#                  ^ punctuation.separator.sequence.perl
#                    ^^^^^^^ string.quoted.double.perl
#                           ^ punctuation.separator.sequence.perl
#                             ^^^^^^^ string.quoted.double.perl
#                                    ^ punctuation.terminator.statement.perl

###[ CONSTANTS ] #############################################################

  1234             # decimal integer
# ^^^^ constant.numeric.integer.decimal.perl
  12_4             # decimal integer
# ^^^^ constant.numeric.integer.decimal.perl
  +1234            # decimal integer
# ^ keyword.operator.arithmetic.perl
#  ^^^^ constant.numeric.integer.decimal.perl
  + 1234           # decimal integer
# ^ keyword.operator.arithmetic.perl
#   ^^^^ constant.numeric.integer.decimal.perl
  1234+            # decimal integer
# ^^^^ constant.numeric.integer.decimal.perl
#     ^ keyword.operator.arithmetic.perl
  -1234            # decimal integer
# ^ keyword.operator.arithmetic.perl
#  ^^^^ constant.numeric.integer.decimal.perl
  - 1234           # decimal integer
# ^ keyword.operator.arithmetic.perl
#   ^^^^ constant.numeric.integer.decimal.perl
  1234-            # decimal integer
# ^^^^ constant.numeric.integer.decimal.perl
#     ^ keyword.operator.arithmetic.perl
  0B0              # binary integer
# ^^ constant.numeric.integer.binary.perl punctuation.definition.numeric.binary.perl
#   ^  constant.numeric.integer.binary.perl - punctuation
  0b0              # binary integer
# ^^ constant.numeric.integer.binary.perl punctuation.definition.numeric.binary.perl
#   ^  constant.numeric.integer.binary.perl - punctuation
  -0b0             # binary integer
# ^ keyword.operator.arithmetic.perl
#  ^^ constant.numeric.integer.binary.perl punctuation.definition.numeric.binary.perl
#    ^  constant.numeric.integer.binary.perl - punctuation
  0b0-             # binary integer
# ^^ constant.numeric.integer.binary.perl punctuation.definition.numeric.binary.perl
#   ^  constant.numeric.integer.binary.perl - punctuation
#    ^ keyword.operator.arithmetic.perl
  0b1.0b1
# ^^ constant.numeric.integer.binary.perl punctuation.definition.numeric.binary.perl
#   ^  constant.numeric.integer.binary.perl - punctuation
#    ^ keyword.operator.concat.perl
#     ^^ constant.numeric.integer.binary.perl punctuation.definition.numeric.binary.perl
#       ^  constant.numeric.integer.binary.perl - punctuation
  0b11__011        # binary integer
# ^^ constant.numeric.integer.binary.perl punctuation.definition.numeric.binary.perl
#   ^^^^^^^  constant.numeric.integer.binary.perl - punctuation
  01_34            # octal integer
# ^ constant.numeric.integer.octal.perl punctuation.definition.numeric.octal.perl
#  ^^^^ constant.numeric.integer.octal.perl - punctuation
  -01234            # octal integer
# ^ keyword.operator.arithmetic.perl
#  ^ constant.numeric.integer.octal.perl punctuation.definition.numeric.octal.perl
#   ^^^^ constant.numeric.integer.octal.perl - punctuation
  012_4-           # octal integer
# ^ constant.numeric.integer.octal.perl punctuation.definition.numeric.octal.perl
#  ^^^^ constant.numeric.integer.octal.perl - punctuation
#      ^ keyword.operator.arithmetic.perl
  0x_234           # hexadecimal integer
# ^^ constant.numeric.integer.hexadecimal.perl punctuation.definition.numeric.hexadecimal.perl
#   ^^^^ constant.numeric.integer.hexadecimal.perl - punctuation
  0X123_           # hexadecimal integer
# ^^ constant.numeric.integer.hexadecimal.perl punctuation.definition.numeric.hexadecimal.perl
#   ^^^^ constant.numeric.integer.hexadecimal.perl - punctuation
  0x9              # hexadecimal integer
# ^^ constant.numeric.integer.hexadecimal.perl punctuation.definition.numeric.hexadecimal.perl
#   ^ constant.numeric.integer.hexadecimal.perl - punctuation
  +0x9             # hexadecimal integer
# ^ keyword.operator.arithmetic.perl
#  ^^ constant.numeric.integer.hexadecimal.perl punctuation.definition.numeric.hexadecimal.perl
#    ^ constant.numeric.integer.hexadecimal.perl - punctuation
  0x9-             # hexadecimal integer
# ^^ constant.numeric.integer.hexadecimal.perl punctuation.definition.numeric.hexadecimal.perl
#   ^ constant.numeric.integer.hexadecimal.perl - punctuation
#    ^ keyword.operator.arithmetic.perl
  0x9.0x10         # hexadecimal integer
# ^^ constant.numeric.integer.hexadecimal.perl punctuation.definition.numeric.hexadecimal.perl
#   ^ constant.numeric.integer.hexadecimal.perl - punctuation
#    ^ keyword.operator.concat.perl
#     ^^ constant.numeric.integer.hexadecimal.perl punctuation.definition.numeric.hexadecimal.perl
#       ^ constant.numeric.integer.hexadecimal.perl - punctuation
  01.1             # normal float
# ^^^^ constant.numeric.float.decimal.perl
#   ^ punctuation.separator.decimal.perl
  1.1              # normal float
# ^^^ constant.numeric.float.decimal.perl
#  ^ punctuation.separator.decimal.perl
  -1.1             # normal float
# ^ keyword.operator.arithmetic.perl
#  ^^^ constant.numeric.float.decimal.perl
#   ^ punctuation.separator.decimal.perl
  1.1-             # normal float
# ^^^ constant.numeric.float.decimal.perl
#  ^ punctuation.separator.decimal.perl
#    ^ keyword.operator.arithmetic.perl
  .1               # normal float
# ^ punctuation.separator.decimal.perl
# ^^ constant.numeric.float.decimal.perl
  -.1              # normal float
# ^ keyword.operator.arithmetic.perl
#  ^ punctuation.separator.decimal.perl
#  ^^ constant.numeric.float.decimal.perl
  .1-              # normal float
# ^ punctuation.separator.decimal.perl
# ^^ constant.numeric.float.decimal.perl
#   ^ keyword.operator.arithmetic.perl
  1.               # normal float
# ^^ constant.numeric.float.decimal.perl
#  ^ punctuation.separator.decimal.perl
  -1.              # normal float
# ^ keyword.operator.arithmetic.perl
#  ^^ constant.numeric.float.decimal.perl
#   ^ punctuation.separator.decimal.perl
  1.-              # normal float
# ^^ constant.numeric.float.decimal.perl
#  ^ punctuation.separator.decimal.perl
#   ^ keyword.operator.arithmetic.perl
  1e5 1E5          # exponential notation
# ^^^ constant.numeric.float.decimal.perl
#     ^^^ constant.numeric.float.decimal.perl
#     ^^^ constant.numeric.float.decimal.perl
  -1e5             # exponential notation
# ^ keyword.operator.arithmetic.perl
#  ^^^ constant.numeric.float.decimal.perl
  1e5-             # exponential notation
# ^^^ constant.numeric.float.decimal.perl
#    ^ keyword.operator.arithmetic.perl
  1.e5             # exponential notation
# ^^^^ constant.numeric.float.decimal.perl
#  ^ punctuation.separator.decimal.perl
  12.34e56         # exponential notation
# ^^^^^^^^ constant.numeric.float.decimal.perl
#   ^ punctuation.separator.decimal.perl
  _2._4E_6         # exponential notation
# ^^^^^^^^ constant.numeric.float.decimal.perl
#   ^ punctuation.separator.decimal.perl
  -12.34e-56       # exponential notation
# ^ keyword.operator.arithmetic.perl
#  ^^^^^^^^^ constant.numeric.float.decimal.perl
#    ^ punctuation.separator.decimal.perl
  - 12.34e-56      # exponential notation
# ^ keyword.operator.arithmetic.perl
#   ^^^^^^^^^ constant.numeric.float.decimal.perl
#     ^ punctuation.separator.decimal.perl
  12.34e+56        # exponential notation
# ^^^^^^^^^ constant.numeric.float.decimal.perl
#   ^ punctuation.separator.decimal.perl
  12.34e+56-       # exponential notation
# ^^^^^^^^^ constant.numeric.float.decimal.perl
#   ^ punctuation.separator.decimal.perl
#          ^ keyword.operator.arithmetic.perl
  "12_4"           # number specified as a string
# ^^^^^^ string.quoted.double.perl
#  ^^^^ constant.numeric.integer.decimal.perl
  "-1234"           # number specified as a string
# ^^^^^^^ string.quoted.double.perl
#  ^^^^^ constant.numeric.integer.decimal.perl
  "01234"          # number specified as a string
# ^^^^^^^ string.quoted.double.perl
#  ^^^^^ constant.numeric.integer.decimal.perl - punctuation
  "-01234"          # number specified as a string
# ^^^^^^^^ string.quoted.double.perl
#  ^^^^^^ constant.numeric.integer.decimal.perl - punctuation
  "1.1"            # normal float
# ^^^^^ string.quoted.double.perl
#  ^^^ constant.numeric.float.decimal.perl
#   ^ punctuation.separator.decimal.perl
  "-1.1"           # normal float
# ^^^^^^ string.quoted.double.perl
#  ^^^^ constant.numeric.float.decimal.perl
#    ^ punctuation.separator.decimal.perl
  ".1"             # normal float
# ^^^^ string.quoted.double.perl
#  ^ punctuation.separator.decimal.perl
#  ^^ constant.numeric.float.decimal.perl
  "-.1"            # normal float
# ^^^^^ string.quoted.double.perl
#  ^^^ constant.numeric.float.decimal.perl
#   ^ punctuation.separator.decimal.perl
  "1."             # normal float
# ^^^^ string.quoted.double.perl
#  ^^ constant.numeric.float.decimal.perl
#   ^ punctuation.separator.decimal.perl
  "-1."            # normal float
# ^^^^^ string.quoted.double.perl
#  ^^^ constant.numeric.float.decimal.perl
#    ^ punctuation.separator.decimal.perl
  "1e5"            # exponential notation
# ^^^^^ string.quoted.double.perl
#  ^^^ constant.numeric.float.decimal.perl
  "-1e5"           # exponential notation
# ^^^^^^ string.quoted.double.perl
#  ^^^^ constant.numeric.float.decimal.perl
  "1.e5"           # exponential notation
# ^^^^^^ string.quoted.double.perl
#  ^^^^ constant.numeric.float.decimal.perl
#   ^ punctuation.separator.decimal.perl
  "12.34e56"       # exponential notation
# ^^^^^^^^^^ string.quoted.double.perl
#  ^^^^^^^^ constant.numeric.float.decimal.perl
#    ^ punctuation.separator.decimal.perl
  "-12.34e-56"     # exponential notation
# ^^^^^^^^^^^^ string.quoted.double.perl
#  ^^^^^^^^^^ constant.numeric.float.decimal.perl
#     ^ punctuation.separator.decimal.perl
  '0.00_01'
#  ^^^^^^^ constant.numeric.float.decimal.perl
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
  ARGV
# ^^^^ constant.language.filehandle.perl

###[ STRINGS ]################################################################

  "quoted \"interpolated\" foo 'bar' baz"
# ^ punctuation.definition.string.begin.perl
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.perl
#         ^^ constant.character.escape.perl
#                       ^^ constant.character.escape.perl
#                                       ^ punctuation.definition.string.end.perl
  'quoted "interpolated" foo \'bar\' baz'
# ^ punctuation.definition.string.begin.perl
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.perl
#                            ^^ constant.character.escape.perl
#                                 ^^ constant.character.escape.perl
#                                       ^ punctuation.definition.string.end.perl
  `quoted "interpolated" foo \`bar\` baz`
# ^ punctuation.definition.string.begin.perl
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.backtick.perl
#                            ^^ constant.character.escape.perl
#                                 ^^ constant.character.escape.perl
#                                       ^ punctuation.definition.string.end.perl
  q/quoted "interpolated" foo 'bar' \/ baz/
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl - string
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.perl
#                                   ^^ constant.character.escape.perl
#                                         ^ punctuation.section.generic.end.perl - string
  q{quoted "interpolated" {foo} 'bar' \/ baz}
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.braces.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.braces.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.perl
#                                     ^^ constant.character.escape.perl
#                                           ^ punctuation.section.braces.end.perl - string
  q[quoted "interpolated" [foo] 'bar' \] baz]
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.brackets.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.brackets.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.perl
#                                     ^^ constant.character.escape.perl
#                                           ^ punctuation.section.brackets.end.perl - string
  q<quoted "interpolated" <foo> 'bar' \> baz>
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.perl
#                                     ^^ constant.character.escape.perl
#                                           ^ punctuation.section.generic.end.perl - string
  q(quoted "interpolated" [foo] 'bar' \] baz)
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.parens.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.perl
#                                     ^^ constant.character.escape.perl
#                                           ^ punctuation.section.parens.end.perl - string
  q['
# ^ support.function.perl
#  ^ punctuation.section.brackets.begin.perl - string
#   ^^ string
    string
#   ^^^^^^^ string
  ']
# ^ string
#  ^ punctuation.section.brackets.end.perl - string
  q<'
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl - string
#   ^^ string
    string
#   ^^^^^^^ string
  '>
# ^ string
#  ^ punctuation.section.generic.end.perl - string

###[ REGEX ]##################################################################

  /[a-z]test\d{3}/g;
# ^ punctuation.section.generic.begin.perl - string.regexp - source.regexp
#  ^^^^^^^^^^^^^^ string.regexp.perl source.regexp
#                ^ punctuation.section.generic.end.perl - string.regexp - source.regexp
#                 ^ constant.language.flags.regexp.perl
	/[a-z]test\d{3}/g;
#^ punctuation.section.generic.begin.perl
  ( /[a-z]test\d{3}/g );
#   ^ punctuation.section.generic.begin.perl - string.regexp - source.regexp
#    ^^^^^^^^^^^^^^ string.regexp.perl source.regexp
#                  ^ punctuation.section.generic.end.perl - string.regexp - source.regexp
#                   ^ constant.language.flags.regexp.perl
  $@ = /[a-z]test\d{3}/g;
#      ^ punctuation.section.generic.begin.perl - string.regexp - source.regexp
#       ^^^^^^^^^^^^^^ string.regexp.perl source.regexp
#                     ^ punctuation.section.generic.end.perl - string.regexp - source.regexp
#                      ^ constant.language.flags.regexp.perl
  m{^\s*(?:(-?\s*)(\d+(?:\.\d+){0,3})/(\d+))}; # comment
# ^ support.function.perl - meta.braces
#  ^ punctuation.section.braces.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.braces.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp.perl
#                                           ^ punctuation.section.braces.end.perl - string
#                                            ^ punctuation.terminator.statement.perl
#                                              ^ comment.line.number-sign.perl punctuation.definition.comment.perl
  m(^\s*(?:(-?\s*)(\d+(?:\.\d+){0,3})/(\d+))); # comment
# ^ support.function.perl - meta.parens
#  ^ punctuation.section.parens.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp.perl
#                                           ^ punctuation.section.parens.end.perl - string
#                                            ^ punctuation.terminator.statement.perl
#                                              ^ comment.line.number-sign.perl punctuation.definition.comment.perl
  m[^\s*(?:(-?\s*)(\d+(?:\.\d+){0,3})/(\d+))]; # comment
# ^ support.function.perl - meta.brackets
#  ^ punctuation.section.brackets.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.brackets.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp.perl
#                                           ^ punctuation.section.brackets.end.perl - string
#                                            ^ punctuation.terminator.statement.perl
#                                              ^ comment.line.number-sign.perl punctuation.definition.comment.perl
  m<^\s*(?:(-?\s*)(\d+(?:\.\d+){0,3})/(\d+))>; # comment
# ^ support.function.perl - meta.generic
#  ^ punctuation.section.generic.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp.perl
#                                           ^ punctuation.section.generic.end.perl - string
#                                            ^ punctuation.terminator.statement.perl
#                                              ^ comment.line.number-sign.perl punctuation.definition.comment.perl
  m/^\s*(?:(-?\s*)(\d+(?:\.\d+){0,3})\/(\d+))/g; # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp.perl
#                                            ^ punctuation.section.generic.end.perl
#                                             ^ constant.language.flags.regexp.perl
#                                              ^ punctuation.terminator.statement.perl
#                                                ^ comment.line.number-sign.perl punctuation.definition.comment.perl
  s {
# ^^^^ meta.function-call.perl
#   ^^ meta.braces.perl
# ^ support.function.perl
#   ^ punctuation.section.braces.begin.perl
    bar[a-z]{1,3} \/ .+
# <- meta.function-call.perl meta.braces.perl string.regexp.perl
  } [repl]gx; # comment
# <- meta.function-call.perl meta.braces.perl string.regexp.perl
#^^^^^^^^ meta.function-call.perl
# ^ meta.braces.perl punctuation.section.braces.end.perl
#   ^^^^^^ meta.brackets.perl
#   ^ punctuation.section.brackets.begin.perl
#    ^^^^ string.unquoted.perl
#        ^ punctuation.section.brackets.end.perl
#         ^^ constant.language.flags.regexp.perl
#           ^ punctuation.terminator.statement.perl
#             ^^^^^^^^^ comment.line.number-sign.perl
#             ^ punctuation.definition.comment.perl
  s/foo[a-z]{1,3} \/ .+/ bar $1 \/ /g; # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^^^^^^^^ string.regexp.perl source.regexp
#                      ^ punctuation.separator.sequence.perl
#                       ^^^^^^^^^^^ string.unquoted.perl
#                                  ^ punctuation.section.generic.end.perl
#                                   ^ constant.language.flags.regexp.perl
#                                    ^ punctuation.terminator.statement.perl
#                                      ^^^^^^^^^ comment.line.number-sign.perl
#                                      ^ punctuation.definition.comment.perl
  s#foo[a-z]{1,3} \# .+# bar $1 \# #g; # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^^^^^^^^ string.regexp.perl source.regexp
#                      ^ punctuation.separator.sequence.perl
#                       ^^^^^^^^^^^ string.unquoted.perl
#                                  ^ punctuation.section.generic.end.perl
#                                   ^ constant.language.flags.regexp.perl
#                                    ^ punctuation.terminator.statement.perl
#                                      ^^^^^^^^^ comment.line.number-sign.perl
#                                      ^ punctuation.definition.comment.perl
  s;foo[a-z]{1,3} \; .+; bar $1 \; ;g; # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^^^^^^^^ string.regexp.perl source.regexp
#                      ^ punctuation.separator.sequence.perl
#                       ^^^^^^^^^^^ string.unquoted.perl
#                                  ^ punctuation.section.generic.end.perl
#                                   ^ constant.language.flags.regexp.perl
#                                    ^ punctuation.terminator.statement.perl
#                                      ^^^^^^^^^ comment.line.number-sign.perl
#                                      ^ punctuation.definition.comment.perl
  s!foo[a-z]{1,3} \! .+! bar $1 \! !g; # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^^^^^^^^ string.regexp.perl source.regexp
#                      ^ punctuation.separator.sequence.perl
#                       ^^^^^^^^^^^ string.unquoted.perl
#                                  ^ punctuation.section.generic.end.perl
#                                   ^ constant.language.flags.regexp.perl
#                                    ^ punctuation.terminator.statement.perl
#                                      ^^^^^^^^^ comment.line.number-sign.perl
#                                      ^ punctuation.definition.comment.perl
  s:\\:/:;
# ^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^ string.regexp.perl source.regexp constant.character.escape.regexp
#     ^ punctuation.separator.sequence.perl
#      ^ string.unquoted.perl
#       ^ punctuation.section.generic.end.perl
#        ^ punctuation.terminator.statement.perl
  s:\\\\:/\\\\:;
# ^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^ string.regexp.perl source.regexp constant.character.escape.regexp
#       ^ punctuation.separator.sequence.perl
#        ^^^^^ string.unquoted.perl
#             ^ punctuation.section.generic.end.perl
#              ^ punctuation.terminator.statement.perl
  s/^\s+//;
# ^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^ string.regexp.perl source.regexp
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
  qr:\\:;
# ^^^^^^ meta.function-call.perl
# ^^ support.function.perl
#   ^ punctuation.section.generic.begin.perl
#    ^^ string.regexp.perl source.regexp constant.character.escape.regexp
#      ^ punctuation.section.generic.end.perl
#       ^ punctuation.terminator.statement.perl
  qr:\\\\:/;
# ^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#   ^ punctuation.section.generic.begin.perl
#    ^^^^ string.regexp.perl source.regexp constant.character.escape.regexp
#        ^ punctuation.section.generic.end.perl
#         ^ keyword.operator.arithmetic.perl
#          ^ punctuation.terminator.statement.perl
  qr/^\s+/;
# ^^^^^^^^ meta.function-call.perl
# ^^ support.function.perl
#   ^ punctuation.section.generic.begin.perl
#    ^^^^ string.regexp.perl source.regexp
#        ^ punctuation.section.generic.end.perl
#         ^ punctuation.terminator.statement.perl

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

###[ DECLARATIONS ]###########################################################

my
# <- keyword.declaration.variable
#^ keyword.declaration.variable
  my $foo
#^ - storage
# ^^ keyword.declaration.variable
#   ^ - keyword.declaration.variable - variable.other.readwrite
#    ^ punctuation.definition.variable.perl
#    ^^^^ variable.other.readwrite
#        ^ - variable.other.readwrite
my $foo;
# <-  keyword.declaration.variable.perl
#^ keyword.declaration.variable.perl
#  ^ punctuation.definition.variable.perl
#  ^^^^ variable.other.readwrite.global.perl
#      ^ punctuation.terminator.statement.perl
my $foo = "bar";
# <-  keyword.declaration.variable.perl
#^ keyword.declaration.variable.perl
#  ^ punctuation.definition.variable.perl
#  ^^^^ variable.other.readwrite.global.perl
#       ^ keyword.operator.assignment.perl
#         ^ punctuation.definition.string.begin.perl
#         ^^^^^ string.quoted.double.perl
#             ^ punctuation.definition.string.end.perl
#              ^ punctuation.terminator.statement.perl
my (
# <- keyword.declaration.variable.perl
#^ keyword.declaration.variable.perl
  $foo, $bar,
# ^ punctuation.definition.variable.perl
# ^^^^ variable.other.readwrite.global.perl
#     ^ punctuation.separator.sequence.perl
#       ^ punctuation.definition.variable.perl
#       ^^^^ variable.other.readwrite.global.perl
  $baz
# ^ punctuation.definition.variable.perl
# ^^^^ variable.other.readwrite.global.perl
  );
# ^ punctuation.section.group.end.perl
#  ^ punctuation.terminator.statement.perl
  eval { my $foo = /pattern/; }
# ^^^^ support.function.perl
#      ^ punctuation.section.block.begin.perl
#        ^^ keyword.declaration.variable.perl
#           ^^^^ variable.other.readwrite.global.perl
#                ^ keyword.operator.assignment.perl
#                  ^ punctuation.section.generic.begin.perl
#                   ^^^^^^^ string.regexp.perl source.regexp meta.literal.regexp
#                          ^ punctuation.section.generic.end.perl
#                           ^ punctuation.terminator.statement.perl
#                             ^ punctuation.section.block.end.perl
  my::foo::bar
# ^^ - keyword.declaration.variable.perl
our
# <-  keyword.declaration.variable
#^^ keyword.declaration.variable
  our $foo
# <-
#^ - storage
# ^^^ keyword.declaration.variable
#    ^ - keyword.declaration.variable - variable.other.readwrite
#     ^ punctuation.definition.variable.perl
#     ^^^^ variable.other.readwrite
#         ^ - variable.other.readwrite
our $foo;
# <-  keyword.declaration.variable.perl
#^^ keyword.declaration.variable.perl
#   ^ punctuation.definition.variable.perl
#   ^^^^ variable.other.readwrite.global.perl
#       ^ punctuation.terminator.statement.perl
our $foo = "bar";
# <-  keyword.declaration.variable.perl
#^^ keyword.declaration.variable.perl
#   ^ punctuation.definition.variable.perl
#   ^^^^ variable.other.readwrite.global.perl
#        ^ keyword.operator.assignment.perl
#          ^ punctuation.definition.string.begin.perl
#          ^^^^^ string.quoted.double.perl
#              ^ punctuation.definition.string.end.perl
#               ^ punctuation.terminator.statement.perl
our (
# <- keyword.declaration.variable.perl
#^^ keyword.declaration.variable.perl
  $foo, $bar,
# ^ punctuation.definition.variable.perl
# ^^^^ variable.other.readwrite.global.perl
#     ^ punctuation.separator.sequence.perl
#       ^ punctuation.definition.variable.perl
#       ^^^^ variable.other.readwrite.global.perl
  $baz
# ^ punctuation.definition.variable.perl
# ^^^^ variable.other.readwrite.global.perl
  );
# ^ punctuation.section.group.end.perl
#  ^ punctuation.terminator.statement.perl
our $VERSION = do {
# <- keyword.declaration.variable.perl
#^^ keyword.declaration.variable.perl
#   ^^^^^^^^ variable.other.readwrite.global.perl
#            ^ keyword.operator.assignment.perl
#              ^^ keyword.control.flow.do.perl
#                 ^ punctuation.section.block.begin.perl
  my @r = (q$Revision: 2.20 $ =~ /\d+/g);
# ^^ keyword.declaration.variable.perl
#    ^^ variable.other.readwrite.global.perl
#       ^ keyword.operator.assignment.perl
#         ^ punctuation.section.group.begin.perl
#          ^ meta.function-call.perl support.function.perl
#           ^^^^^^^^^^^^^^^^^ meta.function-call.perl meta.generic.perl
#           ^ punctuation.section.generic.begin.perl
#            ^^^^^^^^^^^^^^^ string.unquoted.perl
#                      ^^^^ - constant.numeric
#                           ^ punctuation.section.generic.end.perl
#                             ^^ keyword.operator.binary.perl
#                                ^ punctuation.section.generic.begin.perl
#                                 ^^^ string.regexp.perl source.regexp
#                                    ^ punctuation.section.generic.end.perl
#                                     ^ constant.language.flags.regexp.perl
  sprintf "%d."."%02d" x $#r, @r
# ^^^^^^^ support.function.perl
};
# <- punctuation.section.block.end.perl
state
# <- keyword.declaration.variable
#^^^^ keyword.declaration.variable
  state $foo
# <-
#^ - storage
# ^^^^^ keyword.declaration.variable
#      ^ - keyword.declaration.variable - variable.other.readwrite
#       ^ punctuation.definition.variable.perl
#       ^^^^ variable.other.readwrite
#           ^ - variable.other.readwrite
require
# <- meta.import.require.perl keyword.control.import.require.perl
#^^^^^^ meta.import.require.perl keyword.control.import.require.perl
require "v5.1.0";
# <- meta.import.require.perl keyword.control.import.require.perl
#^^^^^^^^^^^^^^^ meta.import.require.perl
#^^^^^^ keyword.control.import.require.perl
#       ^^^^^^^^ string.quoted.double.perl - constant.numeric
#               ^ punctuation.terminator.statement.perl
eval { require Mail::Send; };
#<- support.function.perl
#^^^ support.function.perl
#    ^ punctuation.section.block.begin.perl
#      ^^^^^^^^^^^^^^^^^^ meta.import.require.perl
#                        ^^^^ - meta.import.require.perl
#      ^^^^^^^ keyword.control.import.require.perl
eval { require Mail :: Send; };
#<- support.function.perl
#^^^ support.function.perl
#    ^ punctuation.section.block.begin.perl
#      ^^^^^^^^^^^^^^^^^^^^ meta.import.require.perl
#              ^^^^ support.class.perl
#                  ^^^^ - support.class
#                   ^^ punctuation.accessor.double-colon.perl
#                      ^^^^ support.class.perl
#                          ^^^^ - meta.import.require.perl
#      ^^^^^^^ keyword.control.import.require.perl
use strict;
# <- meta.use.perl keyword.control.import.use.perl
#^^^^^^^^^ meta.use.perl
#^^ keyword.control.import.use.perl
#   ^^^^^^ storage.modifier.perl
#         ^ punctuation.terminator.statement.perl
use strict "vars";
# <- meta.use.perl keyword.control.import.use.perl
#^^^^^^^^^^^^^^^^ meta.use.perl
#^^ keyword.control.import.use.perl
#   ^^^^^^ storage.modifier.perl
#          ^ punctuation.definition.string.begin.perl
#          ^^^^^^ string.quoted.double.perl
#               ^ punctuation.definition.string.end.perl
#                ^ punctuation.terminator.statement.perl
  use attributes __PACKAGE__, \&foo, 'method';
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use.perl
# ^^^ keyword.control.import.use.perl
#     ^^^^^^^^^^ storage.modifier.perl
#                ^^^^^^^^^^^ constant.language.perl
#                           ^ punctuation.separator.sequence.perl
use File;
# <- meta.use.perl keyword.control.import.use.perl
#^^^^^^^ meta.use.perl
#^^ keyword.control.import.use.perl
#   ^^^^ support.class.perl
#       ^ punctuation.terminator.statement.perl
use File::data;
# <- meta.use.perl keyword.control.import.use.perl
#^^^^^^^^^^^^^ meta.use.perl
#^^ keyword.control.import.use.perl
#   ^^^^ support.class.perl
#       ^^ punctuation.accessor.double-colon.perl
#         ^^^^ variable.other.member.perl
#             ^ punctuation.terminator.statement.perl
use warnings :: register File :: data;
# <- meta.use.perl keyword.control.import.use.perl
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.use.perl
#^^ keyword.control.import.use.perl
#   ^^^^^^^^^^^^^^^^^^^^ storage.modifier.perl
#                        ^^^^ support.class.perl
#                             ^^ punctuation.accessor.double-colon.perl
#                                ^^^^ variable.other.member.perl
#                                    ^ punctuation.terminator.statement.perl
no strict;
# <- meta.no.perl keyword.declaration.no.perl
#^^^^^^^^ meta.no.perl
#^ keyword.declaration.no.perl
#  ^^^^^^ storage.modifier.perl
#        ^ punctuation.terminator.statement.perl

###[ PREPROCESSOR ]###########################################################

  BEGIN {
# ^^^^^^ meta.function.perl - meta.block
# ^^^^^ entity.name.function.prepocessor.perl
#       ^ meta.function.perl meta.block.perl punctuation.section.block.begin.perl
  }
# ^ meta.function.perl meta.block.perl punctuation.section.block.end.perl
  sub BEGIN {
# ^^^^^^^^^^ meta.function.perl - meta.block
# ^^^ storage.type.function.perl
#     ^^^^^ entity.name.function.prepocessor.perl
#           ^ meta.function.perl meta.block.perl punctuation.section.block.begin.perl
  }
# ^ meta.function.perl meta.block.perl punctuation.section.block.end.perl
  CHECK {
# ^^^^^^ meta.function.perl - meta.block
# ^^^^^ entity.name.function.prepocessor.perl
#       ^ meta.function.perl meta.block.perl punctuation.section.block.begin.perl
  }
# ^ meta.function.perl meta.block.perl punctuation.section.block.end.perl
  sub CHECK {
# ^^^^^^^^^^ meta.function.perl - meta.block
# ^^^ storage.type.function.perl
#     ^^^^^ entity.name.function.prepocessor.perl
#           ^ meta.function.perl meta.block.perl punctuation.section.block.begin.perl
  }
# ^ meta.function.perl meta.block.perl punctuation.section.block.end.perl
  END {
# ^^^^ meta.function.perl - meta.block
# ^^^ entity.name.function.prepocessor.perl
#     ^ meta.function.perl meta.block.perl punctuation.section.block.begin.perl
  }
# ^ meta.function.perl meta.block.perl punctuation.section.block.end.perl
  sub END {
# ^^^^^^^^ meta.function.perl - meta.block
# ^^^ storage.type.function.perl
#     ^^^ entity.name.function.prepocessor.perl
#         ^ meta.function.perl meta.block.perl punctuation.section.block.begin.perl
  }
# ^ meta.function.perl meta.block.perl punctuation.section.block.end.perl
  INIT {
# ^^^^^ meta.function.perl - meta.block
# ^^^^ entity.name.function.prepocessor.perl
#      ^ meta.function.perl meta.block.perl punctuation.section.block.begin.perl
  }
# ^ meta.function.perl meta.block.perl punctuation.section.block.end.perl
  sub INIT {
# ^^^^^^^^^ meta.function.perl - meta.block
# ^^^ storage.type.function.perl
#     ^^^^ entity.name.function.prepocessor.perl
#          ^ meta.function.perl meta.block.perl punctuation.section.block.begin.perl
  }
# ^ meta.function.perl meta.block.perl punctuation.section.block.end.perl
  UNITCHECK {
# ^^^^^^^^^^ meta.function.perl - meta.block
# ^^^^^^^^^ entity.name.function.prepocessor.perl
#           ^ meta.function.perl meta.block.perl punctuation.section.block.begin.perl
  }
# ^ meta.function.perl meta.block.perl punctuation.section.block.end.perl
  sub UNITCHECK {
# ^^^^^^^^^^^^^^ meta.function.perl - meta.block
# ^^^ storage.type.function.perl
#     ^^^^^^^^^ entity.name.function.prepocessor.perl
#               ^ meta.function.perl meta.block.perl punctuation.section.block.begin.perl
  }
# ^ meta.function.perl meta.block.perl punctuation.section.block.end.perl

###[ SUB ]####################################################################

sub
# <- meta.function.perl storage.type.function.perl
#^^ meta.function.perl storage.type.function.perl
#  ^ - invalid
sub # comment
# <- meta.function.perl storage.type.function.perl
#^^ meta.function.perl storage.type.function.perl
#  ^^^^^^^^^^ meta.function.perl
#  ^ - comment - entity - keyword - invalid
#   ^^^^^^^^^ comment.line.number-sign.perl
sub name
# <- meta.function.perl storage.type.function.perl
#^^^^^^^ meta.function.perl
#^^ storage.type.function.perl
#   ^^^^ entity.name.function.perl
#       ^ - entity - invalid
sub name # comment
# <- meta.function.perl storage.type.function.perl
#^^^^^^^^^^^^^^^^^ meta.function.perl
#^^ storage.type.function.perl
#   ^^^^ entity.name.function.perl
#       ^ - comment - entity - invalid
#        ^^^^^^^^^ comment.line.number-sign.perl
sub name invalid
# <- meta.function.perl storage.type.function.perl
#^^^^^^^^^^^^^^^ meta.function.perl
#^^ storage.type.function.perl
#   ^^^^ entity.name.function.perl
#       ^ - entity - invalid
#        ^^^^^^^ invalid.illegal.function-name.perl
sub name invalid # comment
# <- meta.function.perl storage.type.function.perl
#^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.perl
#^^ storage.type.function.perl
#   ^^^^ entity.name.function.perl
#       ^ - entity - invalid
#        ^^^^^^^ invalid.illegal.function-name.perl
#               ^ - comment - entity - invalid
#                ^^^^^^^^^ comment.line.number-sign.perl
sub name;
# <- meta.function.perl storage.type.function.perl
#^^^^^^^ meta.function.perl
#^^ storage.type.function.perl
#   ^^^^ entity.name.function.perl
#       ^ punctuation.terminator.statement.perl
sub name invalid;
# <- meta.function.perl storage.type.function.perl
#^^^^^^^^^^^^^^^ meta.function.perl
#^^ storage.type.function.perl
#   ^^^^ entity.name.function.perl
#        ^^^^^^^ invalid.illegal.function-name.perl
#               ^ punctuation.terminator.statement.perl
sub {
# <- meta.function.perl storage.type.function.perl
#^^^^^^^^^^ meta.function.perl
#^^ storage.type.function.perl
#   ^ punctuation.section.block.begin.perl
  say "Hello";
# <- meta.function.perl
#^^^^^^^^^^^^^^ meta.function.perl
# ^^^ support.function.perl
}
# <- meta.function.perl punctuation.section.block.end.perl
sub
{
# <- meta.function.perl punctuation.section.block.begin.perl
}
# <- meta.function.perl punctuation.section.block.end.perl
sub name {
# <- meta.function.perl storage.type.function.perl
#^^^^^^^^^^ meta.function.perl
#^^ storage.type.function.perl
#   ^^^^ entity.name.function.perl
#        ^ punctuation.section.block.begin.perl
  say "Hello";
# <- meta.function.perl
#^^^^^^^^^^^^^^ meta.function.perl
# ^^^ support.function.perl
}
# <- meta.function.perl punctuation.section.block.end.perl
sub name
{
# <- meta.function.perl punctuation.section.block.begin.perl
}
# <- meta.function.perl punctuation.section.block.end.perl
sub name # comment
{
# <- meta.function.perl punctuation.section.block.begin.perl
}
# <- meta.function.perl punctuation.section.block.end.perl
sub name # comment
#        ^^^^^^^^^ comment.line.number-sign.perl
{
# <- meta.function.perl punctuation.section.block.begin.perl
}
# <- meta.function.perl punctuation.section.block.end.perl
sub name invalid {
# <- meta.function.perl storage.type.function.perl
#^^^^^^^^^^^^^^^^^ meta.function.perl
#^^ storage.type.function.perl
#   ^^^^ entity.name.function.perl
#        ^^^^^^^ invalid.illegal.function-name.perl
#                ^ punctuation.section.block.begin.perl
}
# <- meta.function.perl punctuation.section.block.end.perl
sub name invalid
{
# <- meta.function.perl punctuation.section.block.begin.perl
}
# <- meta.function.perl punctuation.section.block.end.perl
sub name ($arg, $arg) {
# <- meta.function.perl storage.type.function.perl
#^^^^^^^^ meta.function.perl - meta.function.parameters.perl
#        ^^^^^^^^^^^^ meta.function.parameters.perl - meta.function.perl
#                    ^^ meta.function.perl - meta.function.parameters.perl
#^^ storage.type.function.perl
#   ^^^^ entity.name.function.perl
#        ^ punctuation.section.group.begin.perl
#         ^^^^ variable.parameter.perl
#             ^ punctuation.separator.sequence.perl
#               ^^^^ variable.parameter.perl
#                   ^ punctuation.section.group.end.perl
#                     ^ punctuation.section.block.begin.perl
}
# <- meta.function.perl punctuation.section.block.end.perl
sub name ($arg, $arg)
{
# <- meta.function.perl punctuation.section.block.begin.perl
}
# <- meta.function.perl punctuation.section.block.end.perl
sub name ($arg, $arg) # comment
#                     ^^^^^^^^^ comment.line.number-sign.perl
{
# <- meta.function.perl punctuation.section.block.begin.perl
}
# <- meta.function.perl punctuation.section.block.end.perl

sub name invalid ($arg, $arg) {
# <- meta.function.perl storage.type.function.perl
#^^^^^^^^^^^^^^^^ meta.function.perl - meta.function.parameters.perl
#                ^^^^^^^^^^^^ meta.function.parameters.perl - meta.function.perl
#                            ^^ meta.function.perl - meta.function.parameters.perl
#^^ storage.type.function.perl
#   ^^^^ entity.name.function.perl
#        ^^^^^^^ invalid.illegal.function-name.perl
#                ^ punctuation.section.group.begin.perl
#                 ^^^^ variable.parameter.perl
#                     ^ punctuation.separator.sequence.perl
#                       ^^^^ variable.parameter.perl
#                           ^ punctuation.section.group.end.perl
#                             ^ punctuation.section.block.begin.perl
}
# <- meta.function.perl punctuation.section.block.end.perl
sub name invalid ($arg, $arg)
{
# <- meta.function.perl punctuation.section.block.begin.perl
}
# <- meta.function.perl punctuation.section.block.end.perl
$var = sub {
# <- variable.other.readwrite.global.perl punctuation.definition.variable.perl
#^^^ variable.other.readwrite.global.perl
#    ^ keyword.operator.assignment.perl
#      ^^^^^^^ meta.function.perl
#      ^^^ storage.type.function.perl
  say "hello";
# <- meta.function.perl
# ^^^ meta.function.perl support.function.perl
}
# <- meta.function.perl punctuation.section.block.end.perl
sub name ($) {}
#        ^ punctuation.section.group.begin.perl - variable.parameter.perl
#        ^^^ meta.function.parameters.perl
#         ^ variable.parameter.perl
#          ^ punctuation.section.group.end.perl - variable.parameter.perl

sub AUTOLOAD () {}
#^^^^^^^^^^^^ meta.function.perl
#            ^^ meta.function.parameters.perl
#              ^^^ meta.function.perl
#   ^^^^^^^^ entity.name.function.callback.perl

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
# ^^^^^^^ - keyword.control
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
# ^^^^ - keyword.control
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
#               ^^^^^^ variable.other.readwrite.global.perl
  next if $retry
# ^^^^ keyword.control.flow.next.perl
#      ^^ keyword.control.conditional.if.perl
#         ^^^^^^ variable.other.readwrite.global.perl
  redo LINE
# ^^^^ keyword.control.flow.redo.perl
#      ^^^^ variable.label.perl
  redo LINE if $retry
# ^^^^ keyword.control.flow.redo.perl
#      ^^^^ variable.label.perl
#           ^^ keyword.control.conditional.if.perl
#              ^^^^^^ variable.other.readwrite.global.perl
  redo unless $retry
# ^^^^ keyword.control.flow.redo.perl
#      ^^^^^^ keyword.control.conditional.unless.perl
#             ^^^^^^ variable.other.readwrite.global.perl
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
#           ^^^^^^ string.quoted.double.perl
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
#            ^ constant.numeric.integer.decimal.perl

###[ FUNCTION CALLS ]#########################################################

  if(exists($curargs{$index}))
# ^^ keyword.control.conditional.if.perl
#   ^ punctuation.section.group.begin.perl
#    ^^^^^^ support.function.perl
#          ^ punctuation.section.group.begin.perl
#           ^^^^^^^^ variable.other.readwrite.global.perl
#                            ^ punctuation.section.group.end.perl
  if(exists $curargs{$index})
# ^^ keyword.control.conditional.if.perl
#   ^ punctuation.section.group.begin.perl
#    ^^^^^^ support.function.perl
#           ^^^^^^^^ variable.other.readwrite.global.perl
#                           ^ punctuation.section.group.end.perl
  print /pattern/g;
# ^^^^^ support.function.perl
#       ^ punctuation.section.generic.begin.perl
#        ^^^^^^^ string.regexp.perl source.regexp
#               ^ punctuation.section.generic.end.perl
#                ^ constant.language.flags.regexp.perl
#                 ^ punctuation.terminator.statement.perl
  print(/pattern/g);
# ^^^^^ support.function.perl
#       ^ punctuation.section.generic.begin.perl
#        ^^^^^^^ string.regexp.perl source.regexp
#               ^ punctuation.section.generic.end.perl
#                ^ constant.language.flags.regexp.perl
#                  ^ punctuation.terminator.statement.perl
  function_call(/pattern/g);
# ^^^^^^^^^^^^^ meta.function-call.name.perl - meta.function-call.arguments.perl
#              ^^^^^^^^^^^^ meta.function-call.arguments.perl - meta.function-call.name.perl
# ^^^^^^^^^^^^^ variable.function.perl
#              ^ punctuation.section.arguments.begin.perl
#               ^ punctuation.section.generic.begin.perl
#                ^^^^^^^ string.regexp.perl source.regexp
#                       ^ punctuation.section.generic.end.perl
#                        ^ constant.language.flags.regexp.perl
#                         ^ punctuation.section.arguments.end.perl
#                          ^ punctuation.terminator.statement.perl
  _function_call($var);
# ^^^^^^^^^^^^^^ meta.function-call.name.perl - meta.function-call.arguments.perl
#               ^^^^^^ meta.function-call.arguments.perl - meta.function-call.name.perl
# ^^^^^^^^^^^^^^ variable.function.perl
#               ^ punctuation.section.arguments.begin.perl
#                ^^^^ variable.other.readwrite.global.perl
#                    ^ punctuation.section.arguments.end.perl
#                     ^ punctuation.terminator.statement.perl
  no_function_call $var;
# ^^^^^^^^^^^^^^^^ - variable.function.perl

  function_call(<<_EOD_;
# ^^^^^^^^^^^^^ meta.function-call.name.perl - meta.function-call.arguments.perl
#              ^^^^^^^^^^ meta.function-call.arguments.perl - meta.function-call.name.perl
# ^^^^^^^^^^^^^ variable.function.perl
#              ^ punctuation.section.arguments.begin.perl
#               ^^^^^^^^^ meta.heredoc.perl
#               ^^ keyword.operator.heredoc.perl
#                 ^^^^^ constant.language.heredoc.plain.perl
#                      ^ punctuation.terminator.statement.perl
  foo bar baz
# <- meta.function-call.arguments.perl meta.heredoc.perl string.quoted.other.perl
#^^^^^^^^^^^^^ meta.function-call.arguments.perl meta.heredoc.perl string.quoted.other.perl
_EOD_
)
# <- meta.function-call.arguments.perl punctuation.section.arguments.end.perl - meta.function-call.name.perl

###[ CONDITIONAL EXPRESSIONS ]################################################

  if ($self->value <= $self->other);
#            ^^^^^ variable.other.member.perl
#                  ^^ keyword.operator.logical.perl
#                  ^^^^^^^^^^ - string
#                          ^^ keyword.accessor.arrow.perl
  if ($value <= $self->other);
#            ^^ keyword.operator.logical.perl
#            ^^^^^^^^^^ - string
#                    ^^ keyword.accessor.arrow.perl
#                      ^^^^^ variable.other.member.perl

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
#        ^^ variable.other.readwrite.global.perl
#           ^ punctuation.section.group.begin.perl
#            ^ constant.numeric.integer.decimal.perl
#             ^^ keyword.operator.range.perl
#               ^ constant.numeric.integer.decimal.perl
#                ^ punctuation.section.group.end.perl
#                  ^ punctuation.section.block.begin.perl
    break;
#   ^^^^^ keyword.control.flow.break.perl
  }
# ^ punctuation.section.block.end.perl

  foreach my $vsn_mk (<lib/*/vsn.mk>, <erts/vsn.mk>) {
# ^^^^^^^ keyword.control.loop.foreach.perl
#         ^^ keyword.declaration.variable.perl
#            ^ punctuation.definition.variable.perl
#            ^^^^^^^ variable.other.readwrite.global.perl
#                    ^ punctuation.section.group.begin.perl
#                     ^ punctuation.definition.string.begin.perl
#                     ^^^^^^^^^^^^^^ string.quoted.angle.perl
#                                  ^ punctuation.definition.string.end.perl
#                                   ^ punctuation.separator.sequence.perl
#                                     ^ punctuation.definition.string.begin.perl
#                                     ^^^^^^^^^^^^^ string.quoted.angle.perl
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

  LINE: while ($foo) { next LINE if /^#/; redo LINE if $bar }
# ^^^^ entity.name.label.perl
#       ^^^^^ keyword.control.loop.while.perl
#                      ^^^^ keyword.control.flow.next.perl
#                           ^^^^ variable.label.perl
#                                ^^ keyword.control.conditional.if.perl
#                                         ^^^^ keyword.control.flow.redo.perl
#                                              ^^^^ variable.label.perl
#                                                   ^^ keyword.control.conditional.if.perl
