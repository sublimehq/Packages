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
# ^^ keyword.operator.arrow.perl
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
  $Foo::Bar::baz
# ^^^^^^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ support.class.perl
#          ^^ punctuation.accessor.double-colon.perl
#            ^^^ variable.other.member.perl
  $Foo :: Bar :: baz
# ^^^^^^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#      ^^ punctuation.accessor.double-colon.perl
#         ^^^ support.class.perl
#             ^^ punctuation.accessor.double-colon.perl
#                ^^^ variable.other.member.perl
  $Foo::Bar->$baz
# ^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#     ^^ punctuation.accessor.double-colon.perl
#       ^^^ support.class.perl
#          ^^ keyword.operator.arrow.perl - variable
#            ^^^^ variable.other.readwrite.global.perl
#            ^ punctuation.definition.variable.perl
  $Foo :: Bar -> $baz
# ^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^^ support.class.perl
#      ^^ punctuation.accessor.double-colon.perl
#         ^^^ support.class.perl
#             ^^ keyword.operator.arrow.perl - variable
#                ^^^^ variable.other.readwrite.global.perl
#                ^ punctuation.definition.variable.perl
  $c = C::Scan->new(KEY => 'value')
# ^^ variable.other.readwrite.global.perl
#    ^ keyword.operator.assignment.perl
#      ^ support.class.perl
#       ^^ punctuation.accessor.double-colon.perl
#         ^^^^ support.class.perl
#             ^^ keyword.operator.arrow.perl
#               ^^^ variable.function.perl
#                  ^ punctuation.section.group.begin.perl
#                   ^^^ constant.other.perl
#                       ^^ keyword.operator.assignment.perl
#                          ^^^^^^^ string.quoted.single.perl
#                                 ^ punctuation.section.group.end.perl
  ${Foo::Bar::baz}
# ^^^^^^^^^^^^^^^^ variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.begin.perl
#   ^^^ support.class.perl
#      ^^ punctuation.accessor.double-colon.perl
#        ^^^ support.class.perl
#           ^^ punctuation.accessor.double-colon.perl
#             ^^^ variable.other.member.perl
#                ^ punctuation.definition.variable.end.perl
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
#           ^^ keyword.operator.arrow.perl
#             ^^^ variable.function.perl
  }
# <- variable.other.readwrite.global.perl
#^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.end.perl
#  ^ - variable
  $::Config{'cf_email'}
# ^^^^^^^^^ variable.other.readwrite.global.perl
# ^ punctuation.definition.variable.perl
#  ^^ punctuation.accessor.double-colon.perl
#    ^^^^^^ support.class.perl
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
  %{$foo{'bar'}{'bar'}} = 'excl';
# ^^^^^^^^^^^^^^^^^^^^^ meta.braces.perl variable.other.readwrite.global.perl
# ^^ punctuation.definition.variable.begin.perl
#   ^ punctuation.definition.variable.perl
#   ^^^^ variable.other.readwrite.global.perl variable.other.readwrite.global.perl
#                     ^ punctuation.definition.variable.end.perl
#                       ^ keyword.operator.assignment.perl
#                         ^^^^^^ string.quoted.single.perl
#                               ^ punctuation.terminator.statement.perl
###[ CONSTANTS ] #############################################################

  1234             # decimal integer
# ^^^^ constant.numeric.integer.perl
  -1234            # decimal integer
# ^^^^^ constant.numeric.integer.perl
  - 1234           # decimal integer
# ^ keyword.operator.arithmetic.perl
#   ^^^^ constant.numeric.integer.perl
  0b0              # binary integer
# ^^^ constant.numeric.binary.perl
  0b1110011        # binary integer
# ^^^^^^^^^ constant.numeric.binary.perl
  01234            # octal integer
# ^^^^^ constant.numeric.integer.perl
  0x1234           # hexadecimal integer
# ^^^^^^ constant.numeric.hex.perl
  0x9              # hexadecimal integer
# ^^^ constant.numeric.hex.perl
  12.34e56         # exponential notation
# ^^^^^^^^ constant.numeric.float.perl
  -12.34e-56       # exponential notation
# ^^^^^^^^^^ constant.numeric.float.perl
  - 12.34e-56      # exponential notation
# ^ keyword.operator.arithmetic.perl
#   ^^^^^^^^^ constant.numeric.float.perl
  12.34e+56        # exponential notation
# ^^^^^^^^^ constant.numeric.float.perl
  "-12.34e56"      # number specified as a string
# ^^^^^^^^^^^ string.quoted.double.perl
#  ^^^^^^^^^ constant.numeric.float.perl
  "1234"           # number specified as a string
# ^^^^^^ string.quoted.double.perl
#  ^^^^ constant.numeric.integer.perl
  '0.00_01'
#  ^^^^^^^ - constant.numeric
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
#                                              ^ comment.line.number-sign.perl punctuation.definition.comment.begin.perl
  m(^\s*(?:(-?\s*)(\d+(?:\.\d+){0,3})/(\d+))); # comment
# ^ support.function.perl - meta.parens
#  ^ punctuation.section.parens.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.parens.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp.perl
#                                           ^ punctuation.section.parens.end.perl - string
#                                            ^ punctuation.terminator.statement.perl
#                                              ^ comment.line.number-sign.perl punctuation.definition.comment.begin.perl
  m[^\s*(?:(-?\s*)(\d+(?:\.\d+){0,3})/(\d+))]; # comment
# ^ support.function.perl - meta.brackets
#  ^ punctuation.section.brackets.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.brackets.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp.perl
#                                           ^ punctuation.section.brackets.end.perl - string
#                                            ^ punctuation.terminator.statement.perl
#                                              ^ comment.line.number-sign.perl punctuation.definition.comment.begin.perl
  m<^\s*(?:(-?\s*)(\d+(?:\.\d+){0,3})/(\d+))>; # comment
# ^ support.function.perl - meta.generic
#  ^ punctuation.section.generic.begin.perl - string
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.generic.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp.perl
#                                           ^ punctuation.section.generic.end.perl - string
#                                            ^ punctuation.terminator.statement.perl
#                                              ^ comment.line.number-sign.perl punctuation.definition.comment.begin.perl
  m/^\s*(?:(-?\s*)(\d+(?:\.\d+){0,3})\/(\d+))/g; # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.perl
# ^ support.function.perl
#  ^ punctuation.section.generic.begin.perl
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.regexp.perl
#                                            ^ punctuation.section.generic.end.perl
#                                             ^ constant.language.flags.regexp.perl
#                                              ^ punctuation.terminator.statement.perl
#                                                ^ comment.line.number-sign.perl punctuation.definition.comment.begin.perl
  s {
# ^^^^ meta.function-call.perl
#   ^^ meta.braces.perl
# ^ support.function.perl
#   ^ punctuation.section.braces.begin.perl
    bar[a-z]{1,3} \/ .+
# <- meta.function-call.perl meta.braces.perl string.regexp.perl
  } [repl] gx; # comment
# <- meta.function-call.perl meta.braces.perl string.regexp.perl
#^^^^^^^^ meta.function-call.perl
# ^ meta.braces.perl punctuation.section.braces.end.perl
#   ^^^^^^ meta.brackets.perl
#   ^ punctuation.section.brackets.begin.perl
#    ^^^^ string.unquoted.perl
#        ^ punctuation.section.brackets.end.perl
#          ^^ constant.language.flags.regexp.perl
#            ^ punctuation.terminator.statement.perl
#              ^^^^^^^^^ comment.line.number-sign.perl
#              ^ punctuation.definition.comment.begin.perl
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
#                                      ^ punctuation.definition.comment.begin.perl
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
#                                      ^ punctuation.definition.comment.begin.perl
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
#                                      ^ punctuation.definition.comment.begin.perl
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
#                                      ^ punctuation.definition.comment.begin.perl
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
#              ^^ keyword.control.flow.perl
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

###[ SUB ]####################################################################

sub
# <- meta.function.perl storage.type.function.perl
#^^ meta.function.perl storage.type.function.perl
#  ^ - invalid
sub name
# <- meta.function.perl storage.type.function.perl
#^^^^^^^ meta.function.perl
#^^ storage.type.function.perl
#   ^^^^ entity.name.function.perl
#       ^ - invalid
sub name invalid
# <- meta.function.perl storage.type.function.perl
#^^^^^^^^^^^^^^^ meta.function.perl
#^^ storage.type.function.perl
#   ^^^^ entity.name.function.perl
#        ^^^^^^^ invalid.illegal.function-name.perl
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

###[ EXPRESSIONS ]############################################################

  retry:
# ^^^^^ entity.name.label.perl
#      ^ punctuation.separator.perl
  retry:die "bye!";
# ^^^^^ entity.name.label.perl
#      ^ punctuation.separator.perl
#       ^^^ keyword.other.flow.perl
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
#      ^^^^ keyword.other.flow.perl
#           ^^ constant.numeric.integer.perl

  if(exists($curargs{$index}))
# ^^ keyword.control.conditional.perl
#   ^ punctuation.section.group.begin.perl
#          ^ punctuation.section.group.begin.perl
#                            ^ punctuation.section.group.end.perl
  function_call /pattern/g;
# ^^^^^^^^^^^^^ variable.function.perl
#               ^ punctuation.section.generic.begin.perl
#                ^^^^^^^ string.regexp.perl source.regexp
#                       ^ punctuation.section.generic.end.perl
#                        ^ constant.language.flags.regexp.perl
#                         ^ punctuation.terminator.statement.perl
  _function_call $var;
# ^^^^^^^^^^^^^^ variable.function.perl
#                ^^^^ variable.other.readwrite.global.perl
#                    ^ punctuation.terminator.statement.perl

  foreach my $vsn_mk (<lib/*/vsn.mk>, <erts/vsn.mk>) {
# ^^^^^^^ keyword.control.flow.perl
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
