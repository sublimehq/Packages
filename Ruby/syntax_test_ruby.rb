# SYNTAX TEST "Packages/Ruby/Ruby.sublime-syntax"

##################
# block comments
##################

=begin
#<- comment.block.documentation.ruby punctuation.definition.comment.begin.ruby
#^^^^^ comment.block.documentation.ruby punctuation.definition.comment.begin.ruby
  =end
# ^^^^^ comment.block.documentation.ruby - punctuation
=end
#<- comment.block.documentation.ruby punctuation.definition.comment.end.ruby
#^^^ comment.block.documentation.ruby punctuation.definition.comment.end.ruby

##################
# line comments
##################

## comment
#<- comment.line.number-sign.ruby punctuation.definition.comment.ruby
#^ comment.line.number-sign.ruby punctuation.definition.comment.ruby
# ^^^^^^^^ comment.line.number-sign.ruby - punctuation

  ## comment
#^ - comment - punctuation
# ^^ comment.line.number-sign.ruby punctuation.definition.comment.ruby
#   ^^^^^^^^^ comment.line.number-sign.ruby - punctuation

##################
# Merge Conflicts
##################

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

puts <<~EOF; # comment
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
EOF

##################
# Heredocs
##################

# HEREDOC with indented end tag containing an interpolated string
puts <<~EOF; # comment
#^^^^ - meta.string - string.unquoted
#    ^^^ meta.string.heredoc.ruby - meta.tag
#       ^^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby
#    ^^^ punctuation.definition.heredoc.ruby
#       ^^^ entity.name.tag.ruby
#          ^ punctuation.terminator.statement.ruby - meta.string - string
#            ^ comment.line.number-sign.ruby punctuation.definition.comment.ruby - meta.string - string
  Indented string!
# ^^^^^^^^^^^^^^^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby
    #{ sym } #@var
#  ^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby - meta.interpolation
#   ^^^^^^^^ meta.string.heredoc.ruby meta.interpolation.ruby
#           ^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby - meta.interpolation
#            ^^^^^ meta.string.heredoc.ruby meta.interpolation.ruby variable.other.readwrite.instance.ruby
#                 ^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby - meta.interpolation
#   ^^ punctuation.section.interpolation.begin.ruby
#     ^^^^^ source.ruby.embedded.ruby
#          ^ punctuation.section.interpolation.end.ruby
#            ^^ punctuation.definition.variable.ruby
#            ^^^^^ variable.other.readwrite.instance.ruby
  EOF
# ^^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby
#    ^ - meta.string - string.unquoted

# HEREDOC with indented end tag containing a plain string
puts <<~'EOF'; # comment
#^^^^ - meta.string - string.unquoted
#    ^^^ meta.string.heredoc.ruby - meta.tag
#       ^^^^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby
#    ^^^ punctuation.definition.heredoc.ruby
#       ^ punctuation.definition.tag.begin.ruby
#        ^^^ entity.name.tag.ruby
#           ^ punctuation.definition.tag.end.ruby
#            ^ punctuation.terminator.statement.ruby - meta.string - string
#              ^ comment.line.number-sign.ruby punctuation.definition.comment.ruby - meta.string - string
  Indented string!
# ^^^^^^^^^^^^^^^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby
    #{ sym } #@var
# ^^^^^^^^^^^^^^^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby - meta.interpolation
  EOF
# ^^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby
#    ^ - meta.string - string.unquoted

# HEREDOC with unindented end tag containing an interpolated string
puts <<EOF; # comment
#^^^^ - meta.string - string.unquoted
#    ^^ meta.string.heredoc.ruby - meta.tag
#      ^^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby
#    ^^ punctuation.definition.heredoc.ruby
#      ^^^ entity.name.tag.ruby
#         ^ punctuation.terminator.statement.ruby - meta.string - string
#           ^ comment.line.number-sign.ruby punctuation.definition.comment.ruby - meta.string - string
  Indented string!
# ^^^^^^^^^^^^^^^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby
    #{ sym } #@var
#  ^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby - meta.interpolation
#   ^^^^^^^^ meta.string.heredoc.ruby meta.interpolation.ruby
#           ^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby - meta.interpolation
#            ^^^^^ meta.string.heredoc.ruby meta.interpolation.ruby variable.other.readwrite.instance.ruby
#                 ^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby - meta.interpolation
#   ^^ punctuation.section.interpolation.begin.ruby
#     ^^^^^ source.ruby.embedded.ruby
#          ^ punctuation.section.interpolation.end.ruby
#            ^^ punctuation.definition.variable.ruby
#            ^^^^^ variable.other.readwrite.instance.ruby
  EOF
#^^^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby
EOF
#^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby
#  ^ - meta.string - string.unquoted

# HEREDOC with unindented end tag containing a plain string
puts <<'EOF'; # comment
#^^^^ - meta.string - string.unquoted
#    ^^ meta.string.heredoc.ruby - meta.tag
#      ^^^^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby
#    ^^ punctuation.definition.heredoc.ruby
#      ^ punctuation.definition.tag.begin.ruby
#       ^^^ entity.name.tag.ruby
#          ^ punctuation.definition.tag.end.ruby
#           ^ punctuation.terminator.statement.ruby - meta.string - string
#             ^ comment.line.number-sign.ruby punctuation.definition.comment.ruby - meta.string - string
  Indented string!
# ^^^^^^^^^^^^^^^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby
    #{ sym } #@var
# ^^^^^^^^^^^^^^^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby - meta.interpolation
  EOF
#^^^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby
EOF
#^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby
#  ^ - meta.string - string.unquoted

puts <<-HTML; # comment
#^^^^ - meta.string - string.unquoted
#    ^^^ meta.string.heredoc.ruby - meta.tag
#       ^^^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby
#    ^^^ punctuation.definition.heredoc.ruby
#       ^^^^ entity.name.tag.ruby
#           ^ punctuation.terminator.statement.ruby - meta.string
#             ^ comment.line.number-sign.ruby punctuation.definition.comment.ruby - meta.string - string
  <script>
    let me = #{@ruby_null};
#  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.ruby text.html.embedded.ruby source.js.embedded.html
#            ^^^^^^^^^^^^^ meta.interpolation.ruby
  </script>
  <style>
  .class[att=#{@ruby_sel}] {
# ^^^^^^^^^^^ meta.selector.css - meta.interpolation
#            ^^^^^^^^^^^^ meta.selector.css meta.interpolation.ruby
#                        ^^ meta.selector.css

;   font-family: "#{@ruby_font}";
#                ^^^^^^^^^^^^^^^ meta.property-value.css meta.string.css
#                ^ string.quoted.double.css punctuation.definition.string.begin.css
#                 ^^^^^^^^^^^^^ meta.interpolation.ruby
#                              ^ string.quoted.double.css punctuation.definition.string.end.css

;   #{@prop_name}: #{@prop_value};
#   ^^^^^^^^^^^^^ meta.property-name.css support.type.property-name.css meta.interpolation.ruby
#                ^ punctuation.separator.key-value.css
#                  ^^^^^^^^^^^^^^ meta.property-value.css meta.interpolation.ruby
  }
  </style>
  <body class="#@var" style="color: #@color" onclick="run(#@what)">
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.ruby text.html.embedded meta.tag.structure
#              ^^^^^ meta.string.html meta.interpolation.ruby variable.other.readwrite.instance.ruby - string
#                                   ^^^^^^^ meta.string.html meta.interpolation.ruby variable.other.readwrite.instance.ruby - string
#                                                         ^^^^^^ meta.string.html meta.interpolation.ruby variable.other.readwrite.instance.ruby - string
    #{ sym } #@var
#  ^ meta.string.heredoc.ruby text.html.embedded - meta.interpolation
#   ^^^^^^^^ meta.string.heredoc.ruby meta.interpolation.ruby
#           ^ meta.string.heredoc.ruby text.html.embedded - meta.interpolation
#            ^^^^^ meta.string.heredoc.ruby meta.interpolation.ruby variable.other.readwrite.instance.ruby
#                 ^ meta.string.heredoc.ruby text.html.embedded - meta.interpolation
#   ^^ punctuation.section.interpolation.begin.ruby
#     ^^^^^ source.ruby.embedded.ruby
#          ^ punctuation.section.interpolation.end.ruby
#            ^^ punctuation.definition.variable.ruby
#            ^^^^^ variable.other.readwrite.instance.ruby
  </body>
# ^^^^^^^ meta.string.heredoc.ruby text.html.embedded meta.tag.structure.any.html
  HTML
# ^^^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby
#     ^ - meta.string - string.unquoted

def CssHeredoc()
  css = <<-CSS
#       ^^^ meta.string.heredoc.ruby punctuation.definition.heredoc.ruby
#          ^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby

  .class[att=#{@ruby_sel}] {
# ^^^^^^^^^^^ meta.selector.css - meta.interpolation
#            ^^^^^^^^^^^^ meta.selector.css meta.interpolation.ruby
#                        ^^ meta.selector.css

;   font-family: "#{@ruby_font}";
#                ^^^^^^^^^^^^^^^ meta.property-value.css meta.string.css
#                ^ string.quoted.double.css punctuation.definition.string.begin.css
#                 ^^^^^^^^^^^^^ meta.interpolation.ruby
#                              ^ string.quoted.double.css punctuation.definition.string.end.css

;   #{@prop_name}: #{@prop_value};
#   ^^^^^^^^^^^^^ meta.property-name.css support.type.property-name.css meta.interpolation.ruby
#                ^ punctuation.separator.key-value.css
#                  ^^^^^^^^^^^^^^ meta.property-value.css meta.interpolation.ruby
  }
  CSS
# ^^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby
end

def InterpolatedJavaScriptHeredoc()
  js = <<-JS
#      ^^^ meta.string.heredoc.ruby punctuation.definition.heredoc.ruby
#         ^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby

    let me = #{@ruby_null};
# ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.ruby source.js.embedded
#            ^^^^^^^^^^^^^ meta.interpolation.ruby
    function test() { var local = #{@ruby_init}; }
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.ruby source.js.embedded
#                                 ^^^^^^^^^^^^^ meta.interpolation.ruby
  JS
# ^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby
end

def LiteralJavaScriptHeredoc()
  js = <<-'JS'
#      ^^^ meta.string.heredoc.ruby punctuation.definition.heredoc.ruby
#          ^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby

    let me = #{@ruby_null};
# ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.ruby source.js
#            ^^^^^^^^^^^^^ - meta.interpolation
    function test() { var local = #{@ruby_init}; }
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.heredoc.ruby source.js
#                                 ^^^^^^^^^^^^^ - meta.interpolation
  JS
# ^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby
end

class_eval <<-RUBY, __FILE__, __LINE__ + 1
  def #{sym}(*args, &block)
# ^^^^ meta.string.heredoc.ruby - meta.interpolation
#     ^^^^^^ meta.string.heredoc.ruby source.ruby.embedded.ruby meta.interpolation.ruby
#           ^^^^^^^^^^^^^^^ meta.string.heredoc.ruby source.ruby.embedded.ruby - meta.interpolation
#     ^^ punctuation.section.interpolation.begin.ruby
#          ^ punctuation.section.interpolation.end.ruby
    custom(Mime[:#{sym}], *args, &block)
  end
RUBY
#^^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby
#   ^ - meta.string - string.unquoted

puts <<-SH; # comment
#    ^^^^^ meta.string.heredoc.ruby
#    ^^^ punctuation.definition.heredoc.ruby
#       ^^ entity.name.tag.ruby
#         ^ punctuation.terminator.statement.ruby - meta.string - string
#           ^ comment.line.number-sign.ruby punctuation.definition.comment.ruby - meta.string - string
  $( git log #@var )
# ^^^^^^^^^^^^^^^^^^ meta.string.heredoc.ruby source.shell.embedded meta.function-call meta.interpolation.command.shell
#            ^^^^^ meta.interpolation.ruby variable.other.readwrite.instance.ruby
  SH
# ^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby
#   ^ - meta.string - string.unquoted

puts <<-SHELL; # comment
#    ^^^ meta.string.heredoc.ruby punctuation.definition.heredoc.ruby
#       ^^^^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby
#            ^ punctuation.terminator.statement.ruby - meta.string - string
#              ^ comment.line.number-sign.ruby punctuation.definition.comment.ruby - meta.string - string
  git log
# ^^^^^^^ meta.string.heredoc.ruby source.shell.embedded.ruby
  SHELL
# ^^^^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby
#      ^ - meta.string - string.unquoted

DB.fetch(<<-SQL, conn).name
#^^^^^^^^^^^^^^^^^^^^^^^^^^ source.ruby
#        ^^^^^^ meta.string.heredoc.ruby
#        ^^^ punctuation.definition.heredoc.ruby
#           ^^^ entity.name.tag.ruby
#              ^^^^^^^^^^^^ - meta.string - string
#              ^ punctuation.separator
#                    ^ punctuation.definition.group.end
SELECT * FROM #$users WHERE name = 'Mr. #$family';
#^^^^^^^^^^^^^ meta.string.heredoc.ruby source.sql.embedded.ruby - meta.interpolation
#             ^^^^^^^ meta.string.heredoc.ruby source.sql.embedded.ruby meta.interpolation.ruby variable.other.readwrite.global
#                    ^^^^^^^^^^^^^^ meta.string.heredoc.ruby source.sql.embedded.ruby - meta.string.sql - meta.interpolation
#                                  ^^^^^ meta.string.heredoc.ruby source.sql.embedded.ruby meta.string.sql string.quoted.single.sql - meta.interpolation
#                                       ^^^^^^^^ meta.string.heredoc.ruby source.sql.embedded.ruby meta.string.sql meta.interpolation.ruby variable.other.readwrite.global.ruby
#                                               ^ meta.string.heredoc.ruby source.sql.embedded.ruby meta.string.sql string.quoted.single.sql - meta.interpolation
-- id: #{id}
#^^^^^^^^^^^ meta.string.heredoc.ruby source.sql.embedded.ruby comment.line.double-dash.sql
#^ punctuation.definition.comment.sql
#      ^^^^^ meta.interpolation.ruby
#      ^^ punctuation.section.interpolation.begin.ruby
#        ^^ source.ruby.embedded.ruby
#          ^ punctuation.section.interpolation.end.ruby
#{no_comment}
# <- meta.string.heredoc.ruby source.sql.embedded.ruby meta.interpolation.ruby punctuation.section.interpolation.begin.ruby
#^^^^^^^^^^^^ meta.string.heredoc.ruby source.sql.embedded.ruby meta.interpolation.ruby
#^ punctuation.section.interpolation.begin.ruby
# ^^^^^^^^^^ source.ruby.embedded.ruby
#           ^ punctuation.section.interpolation.end.ruby
SQL
#^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby
#  ^ - meta.string - string.unquoted

foo <<-BAR
#   ^^^^^^ meta.string.heredoc.ruby
#   ^^^ punctuation.definition.heredoc.ruby
#      ^^^ entity.name.tag.ruby
  ba'z
#^^^^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby
BAR
# <- meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby

foo <<~BAR
#   ^^^^^^ meta.string.heredoc.ruby
#   ^^^ punctuation.definition.heredoc.ruby
#      ^^^ entity.name.tag.ruby
  ba'z
#^^^^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby
BAR
# <- meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby

foo, bar = <<BAR, 2
#^^^^^^^^^^^^^^^^^^ source.ruby
#          ^^ meta.string.heredoc.ruby - meta.tag
#            ^^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby
#               ^^^ - meta.string.heredoc
#          ^^ punctuation.definition.heredoc.ruby
#            ^^^ entity.name.tag.ruby
#               ^ punctuation.separator
#                 ^ constant.numeric
BAR
#^^ meta.string.heredoc.ruby meta.tag.heredoc.ruby entity.name.tag.ruby
#  ^ - meta.string - string.unquoted

bar<<string
#  ^^ keyword.operator.assignment.augmented.ruby
#    ^^^^^^^ - meta.tag - entity.name
bar <<string
#   ^^ keyword.operator.assignment.augmented.ruby
#     ^^^^^^^ - meta.tag - entity.name
bar << string
#   ^^ keyword.operator.assignment.augmented.ruby
#      ^^^^^^^ - meta.tag - entity.name
bar <<'string'
#   ^^ keyword.operator.assignment.augmented.ruby
#     ^^^^^^^^ - meta.tag - entity.name
bar << 'string'
#   ^^ keyword.operator.assignment.augmented.ruby
#      ^^^^^^^^ - meta.tag - entity.name
bar <<"string"
#   ^^ keyword.operator.assignment.augmented.ruby
#     ^^^^^^^^ - meta.tag - entity.name
bar << "string"
#   ^^ keyword.operator.assignment.augmented.ruby
#      ^^^^^^^^ - meta.tag - entity.name
foo.bar <<"string"
#       ^^ keyword.operator.assignment.augmented.ruby
#         ^^^^^^^^ - meta.tag - entity.name
Foo.bar <<"string"
#       ^^ keyword.operator.assignment.augmented.ruby
#         ^^^^^^^^ - meta.tag - entity.name
foo::bar <<"string"
#        ^^ keyword.operator.assignment.augmented.ruby
#          ^^^^^^^^ - meta.tag - entity.name
foo? <<"string"
#    ^^ keyword.operator.assignment.augmented.ruby
#      ^^^^^^^^ - meta.tag - entity.name
foo! <<"string"
#    ^^ keyword.operator.assignment.augmented.ruby
#      ^^^^^^^^ - meta.tag - entity.name
1<<bit
# <- meta.number.integer.decimal.ruby constant.numeric.value.ruby
#^^ keyword.operator.assignment.augmented.ruby
1 << bit
# <- meta.number.integer.decimal.ruby constant.numeric.value.ruby
# ^^ keyword.operator.assignment.augmented.ruby
@war<<bit
#   ^^ keyword.operator.assignment.augmented.ruby
CONST << 10
#^^^^ variable.other.constant.ruby
#     ^^ keyword.operator.assignment.augmented.ruby
#        ^^ meta.number.integer.decimal.ruby constant.numeric.value.ruby


##################
# Numbers
##################

 1234
#^^^^ meta.number.integer.decimal.ruby constant.numeric.value.ruby
 1_234
#^^^^^ meta.number.integer.decimal.ruby constant.numeric.value.ruby
 0d170
#^^ meta.number.integer.decimal.ruby constant.numeric.base.ruby
#  ^^^ meta.number.integer.decimal.ruby constant.numeric.value.ruby
 0D170
#^^ meta.number.integer.decimal.ruby constant.numeric.base.ruby
#  ^^^ meta.number.integer.decimal.ruby constant.numeric.value.ruby
 0xAa
#^^ meta.number.integer.hexadecimal.ruby constant.numeric.base.ruby
#  ^^ meta.number.integer.hexadecimal.ruby constant.numeric.value.ruby
 0XAa
#^^ meta.number.integer.hexadecimal.ruby constant.numeric.base.ruby
#  ^^ meta.number.integer.hexadecimal.ruby constant.numeric.value.ruby
 0252
#^ meta.number.integer.octal.ruby constant.numeric.base.ruby
# ^^^ meta.number.integer.octal.ruby constant.numeric.value.ruby
 0o252
#^^ meta.number.integer.octal.ruby constant.numeric.base.ruby
#  ^^^ meta.number.integer.octal.ruby constant.numeric.value.ruby
 0O252
#^^ meta.number.integer.octal.ruby constant.numeric.base.ruby
#  ^^^ meta.number.integer.octal.ruby constant.numeric.value.ruby
 0b10101010
#^^ meta.number.integer.binary.ruby constant.numeric.base.ruby
#  ^^^^^^^^ meta.number.integer.binary.ruby constant.numeric.value.ruby
 0B10101010
#^^ meta.number.integer.binary.ruby constant.numeric.base.ruby
#  ^^^^^^^^ meta.number.integer.binary.ruby constant.numeric.value.ruby
 12.
#^^ meta.number.integer.decimal.ruby constant.numeric.value.ruby
#  ^ punctuation.accessor - constant.numeric - invalid.illegal
 12.ir
#^^ meta.number.integer.decimal.ruby constant.numeric.value.ruby
#  ^ punctuation.accessor - constant.numeric - invalid.illegal
#   ^^ - constant.numeric - invalid.illegal - storage.type.numeric
 12&.ir
#^^ meta.number.integer.decimal.ruby constant.numeric.value.ruby
#  ^^ punctuation.accessor - constant.numeric - invalid.illegal - keyword.operator
#    ^^ - constant.numeric - invalid.illegal - storage.type.numeric

 12.34
#^^^^^ meta.number.float.decimal.ruby constant.numeric.value.ruby
#  ^ punctuation.separator.decimal
 1234e-2
#^^^^^^^ meta.number.float.decimal.ruby constant.numeric.value.ruby
 1.234E1
#^^^^^^^ meta.number.float.decimal.ruby constant.numeric.value.ruby
# ^ punctuation.separator.decimal
 12e3r
#^^^^ meta.number.float.decimal.ruby constant.numeric.value.ruby
#    ^ meta.number.float.decimal.ruby constant.numeric.suffix.ruby invalid.illegal.numeric.rational.ruby
 1.2e3r
#^^^^^ meta.number.float.decimal.ruby constant.numeric.value.ruby
# ^ punctuation.separator.decimal
#     ^ meta.number.float.decimal.ruby constant.numeric.suffix.ruby invalid.illegal.numeric.rational.ruby

 12r
#^^ meta.number.rational.decimal.ruby constant.numeric.value.ruby
#  ^ meta.number.rational.decimal.ruby constant.numeric.suffix.ruby
 12.3r
#^^^^ meta.number.rational.decimal.ruby constant.numeric.value.ruby
#  ^ punctuation.separator.decimal
#    ^ meta.number.rational.decimal.ruby constant.numeric.suffix.ruby
 0d170r
#^^ meta.number.rational.decimal.ruby constant.numeric.base.ruby
#  ^^^ meta.number.rational.decimal.ruby constant.numeric.value.ruby
#     ^ meta.number.rational.decimal.ruby constant.numeric.suffix.ruby
 0xAar
#^^ meta.number.rational.hexadecimal.ruby constant.numeric.base.ruby
#  ^^ meta.number.rational.hexadecimal.ruby constant.numeric.value.ruby
#    ^ meta.number.rational.hexadecimal.ruby constant.numeric.suffix.ruby
 0o252r
#^^ meta.number.rational.octal.ruby constant.numeric.base.ruby
#  ^^^ meta.number.rational.octal.ruby constant.numeric.value.ruby
#     ^ meta.number.rational.octal.ruby constant.numeric.suffix.ruby
 0b10101010r
#^^ meta.number.rational.binary.ruby constant.numeric.base.ruby
#  ^^^^^^^^ meta.number.rational.binary.ruby constant.numeric.value.ruby
#          ^ meta.number.rational.binary.ruby constant.numeric.suffix.ruby

 12i
#^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#  ^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
 12.3i
#^^^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#  ^ punctuation.separator.decimal
#    ^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
 12e3i
#^^^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#    ^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
 12e-3i
#^^^^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#     ^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
 1.2e3i
#^^^^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
# ^ punctuation.separator.decimal
#     ^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
 1.2e-3i
#^^^^^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
# ^ punctuation.separator.decimal
#      ^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
 12ri
#^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#  ^^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
 12.3ri
#^^^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#  ^ punctuation.separator.decimal
#    ^^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
 0d170i
#^^ meta.number.imaginary.decimal.ruby constant.numeric.base.ruby
#  ^^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#     ^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
 0d170ri
#^^ meta.number.imaginary.decimal.ruby constant.numeric.base.ruby
#  ^^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#     ^^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
 0xAai
#^^ meta.number.imaginary.hexadecimal.ruby constant.numeric.base.ruby
#  ^^ meta.number.imaginary.hexadecimal.ruby constant.numeric.value.ruby
#    ^ meta.number.imaginary.hexadecimal.ruby constant.numeric.suffix.ruby
 0xAari
#^^ meta.number.imaginary.hexadecimal.ruby constant.numeric.base.ruby
#  ^^ meta.number.imaginary.hexadecimal.ruby constant.numeric.value.ruby
#    ^^ meta.number.imaginary.hexadecimal.ruby constant.numeric.suffix.ruby
 0o252i
#^^ meta.number.imaginary.octal.ruby constant.numeric.base.ruby
#  ^^^ meta.number.imaginary.octal.ruby constant.numeric.value.ruby
#     ^ meta.number.imaginary.octal.ruby constant.numeric.suffix.ruby
 0o252ri
#^^ meta.number.imaginary.octal.ruby constant.numeric.base.ruby
#  ^^^ meta.number.imaginary.octal.ruby constant.numeric.value.ruby
#     ^^ meta.number.imaginary.octal.ruby constant.numeric.suffix.ruby
 0b10101010i
#^^ meta.number.imaginary.binary.ruby constant.numeric.base.ruby
#  ^^^^^^^^ meta.number.imaginary.binary.ruby constant.numeric.value.ruby
#          ^ meta.number.imaginary.binary.ruby constant.numeric.suffix.ruby
 0b10101010ri
#^^ meta.number.imaginary.binary.ruby constant.numeric.base.ruby
#  ^^^^^^^^ meta.number.imaginary.binary.ruby constant.numeric.value.ruby
#          ^^ meta.number.imaginary.binary.ruby constant.numeric.suffix.ruby
 12e3ri
#^^^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#    ^^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
#    ^ invalid.illegal.numeric
 1.2e3ri
#^^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#   ^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#     ^ invalid.illegal.numeric.ruby
#     ^^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
 12ir
#^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#  ^^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
#   ^ invalid.illegal.numeric
 12.3ir
#^^^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#  ^ punctuation.separator.decimal
#    ^^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
#     ^ invalid.illegal.numeric
 12e3ir
#^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#  ^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#    ^^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
#     ^ invalid.illegal.numeric
 1.2e3ir
#^^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
# ^ punctuation.separator.decimal
#   ^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#     ^^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
#      ^ invalid.illegal.numeric
 0d170ir
#^^ meta.number.imaginary.decimal.ruby constant.numeric.base.ruby
#  ^^^ meta.number.imaginary.decimal.ruby constant.numeric.value.ruby
#     ^^ meta.number.imaginary.decimal.ruby constant.numeric.suffix.ruby
#      ^ invalid.illegal.numeric
 0xAair
#^^ meta.number.imaginary.hexadecimal.ruby constant.numeric.base.ruby
#  ^^ meta.number.imaginary.hexadecimal.ruby constant.numeric.value.ruby
#    ^^ meta.number.imaginary.hexadecimal.ruby constant.numeric.suffix.ruby
#     ^ invalid.illegal.numeric
 0o252ir
#^^ meta.number.imaginary.octal.ruby constant.numeric.base.ruby
#  ^^^ meta.number.imaginary.octal.ruby constant.numeric.value.ruby
#     ^^ meta.number.imaginary.octal.ruby constant.numeric.suffix.ruby
#      ^ invalid.illegal.numeric
 0b10101010ir
#^^ meta.number.imaginary.binary.ruby constant.numeric.base.ruby
#  ^^^^^^^^ meta.number.imaginary.binary.ruby constant.numeric.value.ruby
#          ^^ meta.number.imaginary.binary.ruby constant.numeric.suffix.ruby
#           ^ invalid.illegal.numeric

##################
# Strings
##################

puts 'test'

str = "number %d" %  11
            # ^^ string.quoted.double.ruby constant.other.placeholder.ruby
str = 'number %d' % 11
            # ^^ string.quoted.single.ruby constant.other.placeholder.ruby
str = 'number %08d' % 11
            # ^^^^ string.quoted.single.ruby constant.other.placeholder.ruby
str = 'number %.2f' % 11
            # ^^^^ string.quoted.single.ruby constant.other.placeholder.ruby
str = 'number %-8.2d' % 11
            # ^^^^^^ string.quoted.single.ruby constant.other.placeholder.ruby
str = '%2$02d' % [212.00, 3]
     # ^^^^^^ string.quoted.single.ruby constant.other.placeholder.ruby
str = sprintf("%1$*2$s %2$d", "hello", -8)
#              ^^^^^^^ string.quoted.double.ruby constant.other.placeholder.ruby
#                      ^^^^ string.quoted.double.ruby constant.other.placeholder.ruby

##################
# Escape sequences
##################

  "This string has a quote: \".  As you can see, it is escaped"
#                           ^^ constant.character.escape.ruby
  "\a             bell, ASCII 07h (BEL)"
#  ^^ constant.character.escape.ruby
  "\b             backspace, ASCII 08h (BS)"
#  ^^ constant.character.escape.ruby
  "\t             horizontal tab, ASCII 09h (TAB)"
#  ^^ constant.character.escape.ruby
  "\n             newline (line feed), ASCII 0Ah (LF)"
#  ^^ constant.character.escape.ruby
  "\v             vertical tab, ASCII 0Bh (VT)"
#  ^^ constant.character.escape.ruby
  "\f             form feed, ASCII 0Ch (FF)"
#  ^^ constant.character.escape.ruby
  "\r             carriage return, ASCII 0Dh (CR)"
#  ^^ constant.character.escape.ruby
  "\e             escape, ASCII 1Bh (ESC)"
#  ^^ constant.character.escape.ruby
  "\s             space, ASCII 20h (SPC)"
#  ^^ constant.character.escape.ruby
  "\\             backslash"
#  ^^ constant.character.escape.ruby
  "\0 \7 \07 \007 \0170 octal bit pattern, where nnn is 1-3 octal digits ([0-7])"
#  ^^ constant.character.escape.ruby
#    ^ - constant
#     ^^ constant.character.escape.ruby
#       ^ - constant
#        ^^^ constant.character.escape.ruby
#           ^ - constant
#            ^^^^ constant.character.escape.ruby
#                ^ - constant
#                 ^^^^ constant.character.escape.ruby
#                     ^ - constant
  "\x0 \xF \x0F \x0FF  hexadecimal bit pattern, where nn is 1-2 hexadecimal digits ([0-9a-fA-F])"
#  ^^^ constant.character.escape.ruby
#     ^ - constant
#      ^^^ constant.character.escape.ruby
#         ^ - constant
#          ^^^^ constant.character.escape.ruby
#              ^ - constant
#               ^^^^ constant.character.escape.ruby
#                   ^ - constant
  "\u0B \u0AF4              Unicode character, where nnnn is exactly 4 hexadecimal digits ([0-9a-fA-F])"
#  ^^ constant.character.escape.ruby
#    ^^ - constant
#       ^^^^^^ constant.character.escape.ruby
  "\u{nnnn Ab0 09AFaf ...}  Unicode character(s), where each nnnn is 1-6 hexadecimal digits ([0-9a-fA-F])"
#  ^^^^^^^^^^^^^^^^^^^^^^^ constant.character.escape.ruby
#     ^^^^ invalid.illegal.escape.ruby
#                     ^^^ invalid.illegal.escape.ruby
#                         ^ - constant
  "\cx or \C-x    control character, where x is an ASCII printable character"
#  ^^^ constant.character.escape.ruby
#     ^^^^ - constant
#         ^^^^ constant.character.escape.ruby
#             ^ - constant
  "\M-x           meta character, where x is an ASCII printable character"
#  ^^^^ constant.character.escape.ruby
#      ^ - constant
  "\M-\C-x        meta control character, where x is an ASCII printable character"
#  ^^^^^^^ constant.character.escape.ruby
#         ^ - constant
  "\M-\cx         same as above"
#  ^^^^^^ constant.character.escape.ruby
#        ^ - constant
  "\c\M-x         same as above"
#  ^^^^^^ constant.character.escape.ruby
#        ^ - constant
  "\c? or \C-?    delete, ASCII 7Fh (DEL)"
#  ^^^ constant.character.escape.ruby
#     ^^^^ - constant
#         ^^^^ constant.character.escape.ruby
#             ^ - constant

##################
# Interpolation
##################

  "#{MyParams.new.require(:filename)}"
# ^ meta.string.ruby string.quoted.double.ruby  - meta.interpolation
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.ruby meta.interpolation.ruby - string
#                                    ^ meta.string.ruby string.quoted.double.ruby  - meta.interpolation
# ^ punctuation.definition.string.begin.ruby
#  ^^ punctuation.section.interpolation.begin.ruby
#                                   ^ punctuation.section.interpolation.end.ruby
#                                    ^ punctuation.definition.string.end.ruby
  %I[#{ENV['APP_NAME']} apple #@orange#@@juice banana]
# ^^^ meta.string.ruby - meta.interpolation
#    ^^^^^^ meta.string.ruby meta.interpolation.ruby - string
#      ^^^^^^^^^^^^^^^ meta.environment-variable.ruby
#          ^^^^^^^^^^ meta.string.ruby meta.interpolation.ruby meta.string.ruby
#                    ^^ meta.string.ruby meta.interpolation.ruby - string
#                       ^^^^^ constant.other.symbol.ruby
#                             ^^^^^^^^^^^^^^^^ meta.string.ruby meta.interpolation.ruby - string
#                                              ^^^^^^ constant.other.symbol.ruby
# ^^^ punctuation.definition.string.begin.ruby
# ^^^ string.quoted.other.literal.upper.ruby
#    ^^ punctuation.section.interpolation.begin.ruby
#      ^^^ variable.other.constant.ruby
#          ^^^^^^^^^^ string.quoted.single.ruby
#                      ^^^^^^^ string.quoted.other.literal.upper.ruby
#                             ^^ punctuation.definition.variable.ruby
#                             ^^^^^^^^ variable.other.readwrite.instance.ruby
#                                     ^^^ punctuation.definition.variable.ruby
#                                     ^^^^^^^^ variable.other.readwrite.class.ruby
#                                                    ^ punctuation.definition.string.end.ruby
#                                                    ^ string.quoted.other.literal.upper.ruby
  %x[ foo #@bar [ foo #@bar [ foo #@bar ] baz ] baz ]
# ^^^^^^^^ meta.string.ruby string.interpolated.ruby - meta.interpolation
#         ^^^^^ meta.string.ruby meta.interpolation.ruby - string
#              ^^^^^^^ meta.string.ruby string.interpolated.ruby - meta.interpolation
#                     ^^^^^ meta.string.ruby meta.interpolation.ruby - string
#                          ^^^^^^^ meta.string.ruby string.interpolated.ruby - meta.interpolation
#                                 ^^^^^ meta.string.ruby meta.interpolation.ruby - string
#                                      ^^^^^^^^^^^^^^ meta.string.ruby string.interpolated.ruby - meta.interpolation
# ^^^ punctuation.definition.string.begin.ruby
#         ^^^^^ variable.other.readwrite.instance.ruby
#               ^ punctuation.section.scope.ruby
#                     ^^^^^ variable.other.readwrite.instance.ruby
#                           ^ punctuation.section.scope.ruby
#                                 ^^^^^ variable.other.readwrite.instance.ruby
#                                       ^ punctuation.section.scope.ruby
#                                             ^ punctuation.section.scope.ruby
#                                                   ^ punctuation.definition.string.end.ruby

##################
# Constants
##################

lower_snake_case = 1
# ^^^^^^^^^^^^^^ -meta.constant.ruby -entity.name.constant.ruby
lowerCamelCase = 2
# ^^^^^^^^^^^^ -meta.constant.ruby -entity.name.constant.ruby
UpperCamelCase = 3
# ^^^^^^^^^^^^ meta.constant.ruby entity.name.constant.ruby
UPPER_SNAKE_CASE = 4
# ^^^^^^^^^^^^^^ meta.constant.ruby entity.name.constant.ruby
UPPER_SNAKE_CASE ||= 5
# ^^^^^^^^^^^^^^ meta.constant.ruby entity.name.constant.ruby
A, B, C = 0
# <- entity.name.constant
#  ^ entity.name.constant
#     ^ entity.name.constant

Symbol === :foo
# <- support.class.ruby
#^^^^^ support.class.ruby
#      ^^^ keyword.operator.comparison.ruby
#          ^^^^ constant.other.symbol.ruby
#          ^ punctuation.definition.constant.ruby

  :'foo #{ } #@bar baz'
# ^^^^^^^^^^^^^^^^^^^^^ meta.constant.ruby - meta.interpolation
# ^^ punctuation.definition.constant.ruby
# ^^^^^^^^^^^^^^^^^^^^^ constant.other.symbol.single-quoted.ruby
#                     ^ punctuation.definition.constant.ruby
  :"foo #{ } #@bar baz"
# ^^^^^^ meta.constant.ruby - meta.interpolation
#       ^^^^ meta.constant.ruby meta.interpolation.ruby - constant
#           ^ meta.constant.ruby - meta.interpolation
#            ^^^^^ meta.constant.ruby meta.interpolation.ruby - constant
#                 ^^^^^ meta.constant.ruby - meta.interpolation
# ^^ punctuation.definition.constant.ruby
# ^^^^^^ constant.other.symbol.double-quoted.ruby
#       ^^ punctuation.section.interpolation.begin.ruby
#          ^ punctuation.section.interpolation.end.ruby
#            ^^ punctuation.definition.variable.ruby
#            ^^^^^ variable.other.readwrite.instance.ruby
#                  ^^^^ constant.other.symbol.double-quoted.ruby
#                     ^ punctuation.definition.constant.ruby

##################
# Character literals
##################

  ## meta control sequences

  ?\C-a ?\ca ?\c-a  #=> "\x01"
#^ - constant
# ^ punctuation.definition.constant.ruby
# ^^^^^ constant.character.ruby
#      ^ - constant
#       ^ punctuation.definition.constant.ruby
#       ^^^^ constant.character.ruby
#           ^ - constant
#            ^ punctuation.definition.constant.ruby
#             ^^^ constant.character.ruby
#                ^ - constant
  ?\M-a ?\m-a ?\ma #=> "\xE1"
#^ - constant
# ^ punctuation.definition.constant.ruby
# ^^^^^ constant.character.ruby
#      ^ - constant
#       ^ punctuation.definition.constant.ruby
#        ^^ constant.character.ruby
#          ^^^ - constant
#             ^ punctuation.definition.constant.ruby
#             ^^^^ constant.character.ruby
#              ^^^ invalid.illegal.character.ruby
#                 ^ - constant
  ?\M-\C-a ?\M-\ca #=> "\x81"
#^ - constant
# ^ punctuation.definition.constant.ruby
# ^^^^^^^^ constant.character.ruby
#         ^ - constant
#          ^ punctuation.definition.constant.ruby
#          ^^^^^^^ constant.character.ruby
#                 ^ - constant
  ?\C-\M-a ?\c\M-a #=> "\x81", same as above
#^ - constant
# ^ punctuation.definition.constant.ruby
# ^^^^^^^^ constant.character.ruby
#         ^ - constant
#          ^ punctuation.definition.constant.ruby
#          ^^^^^^^ constant.character.ruby
#                 ^ - constant

  ## hexadecimal

  ?\x10 ?\xAF ?\xAG ?\x0AF
#^ - constant
# ^ punctuation.definition.constant.ruby
# ^^^^^ constant.character.ruby
#      ^ - constant
#       ^ punctuation.definition.constant.ruby
#       ^^^^^ constant.character.ruby
#            ^ - constant
#             ^ punctuation.definition.constant.ruby
#             ^^^^^ constant.character.ruby
#              ^^^^ invalid.illegal.character.ruby
#                  ^ - constant
#                   ^ punctuation.definition.constant.ruby
#                   ^^^^^^ constant.character.ruby
#                    ^^^^^ invalid.illegal.character.ruby
#                         ^ - constant

  ## octal

  ?\00 ?\07 ?\000 ?\077 ?\080 ?\0777
#^ - constant
# ^ punctuation.definition.constant.ruby
# ^^^^ constant.character.ruby
#     ^ - constant
#      ^ punctuation.definition.constant.ruby
#      ^^^^ constant.character.ruby
#          ^ - constant
#           ^ punctuation.definition.constant.ruby
#           ^^^^^ constant.character.ruby
#                ^ - constant
#                 ^ punctuation.definition.constant.ruby
#                 ^^^^^ constant.character.ruby
#                      ^ - constant
#                       ^ punctuation.definition.constant.ruby
#                       ^^^^^ constant.character.ruby
#                        ^^^^ invalid.illegal.character.ruby
#                            ^ - constant
#                             ^ punctuation.definition.constant.ruby
#                             ^^^^^^ constant.character.ruby
#                              ^^^^^ invalid.illegal.character.ruby
#                                   ^ - constant

  ## escape sequences

  ?\b ?\n ?\s ?\\ ?\\n ?\bn
#^ - constant
# ^ punctuation.definition.constant.ruby
# ^^^ constant.character.ruby
#    ^ - constant
#     ^ punctuation.definition.constant.ruby
#     ^^^ constant.character.ruby
#        ^ - constant
#         ^ punctuation.definition.constant.ruby
#         ^^^ constant.character.ruby
#            ^ - constant
#             ^ punctuation.definition.constant.ruby
#             ^^^ constant.character.ruby
#                ^ - constant
#                 ^ constant.character.ruby punctuation.definition.constant.ruby
#                  ^^^ constant.character.ruby invalid.illegal.character.ruby
#                     ^ - constant
#                      ^ constant.character.ruby punctuation.definition.constant.ruby
#                       ^^^ constant.character.ruby invalid.illegal.character.ruby
#                          ^ - constant

  ## unicode

  ?\u{41}  #=> "A"
# ^^^ meta.constant.ruby - meta.braces.ruby constant.character.ruby
#    ^^^^ meta.constant.ruby meta.braces.ruby - constant.character.ruby
# ^ punctuation.definition.constant.ruby
#    ^ punctuation.section.braces.begin.ruby
#     ^^ meta.number.integer.hexadecimal.ruby constant.numeric.value.ruby
#       ^ punctuation.section.braces.end.ruby
  ?\u{012ACF 0gxs}
# ^^^ meta.constant.ruby - meta.braces.ruby constant.character.ruby
#    ^^^^^^^^^^^^^ meta.constant.ruby meta.braces.ruby - constant.character.ruby
# ^ punctuation.definition.constant.ruby
#    ^ punctuation.section.braces.begin.ruby
#     ^^^^^^ meta.number.integer.hexadecimal.ruby constant.numeric.value.ruby
#            ^ meta.number.integer.hexadecimal.ruby constant.numeric.value.ruby
#             ^^^ invalid.illegal.escape.ruby
#                ^ punctuation.section.braces.end.ruby

  ## normal character literals

  ?0 ?1 ?9 ?20
#^ - constant
# ^ punctuation.definition.constant.ruby
# ^^ constant.character.ruby
#   ^ - constant
#    ^ punctuation.definition.constant.ruby
#    ^^ constant.character.ruby
#      ^ - constant
#       ^ punctuation.definition.constant.ruby
#       ^^ constant.character.ruby
#         ^ - constant
#          ^ keyword.operator.ternary.ruby
#           ^^ meta.number.integer.decimal.ruby constant.numeric.value.ruby
  ?a ?A ?あ ?abc ?a0
#^ - constant
# ^ punctuation.definition.constant.ruby
# ^^ constant.character.ruby
#   ^ - constant
#    ^ punctuation.definition.constant.ruby
#    ^^ constant.character.ruby
#      ^ - constant
#       ^ punctuation.definition.constant.ruby
#       ^^ constant.character.ruby
#         ^ - constant
#          ^ punctuation.definition.constant.ruby
#          ^^^^ constant.character.ruby
#           ^^^ invalid.illegal.character.ruby
#              ^ - constant
#               ^ punctuation.definition.constant.ruby
#               ^^^ constant.character.ruby
#                ^^ invalid.illegal.character.ruby
#                  ^ - constant
  ?* ?" ?( ?[ ?{ ?. ?# ?_ ?\
#^ - constant
# ^ punctuation.definition.constant.ruby
# ^^ constant.character.ruby
#   ^ - constant
#    ^ punctuation.definition.constant.ruby
#    ^^ constant.character.ruby
#      ^ - constant
#       ^ punctuation.definition.constant.ruby
#       ^^ constant.character.ruby
#         ^ - constant
#          ^ punctuation.definition.constant.ruby
#          ^^ constant.character.ruby
#            ^ - constant
#             ^ punctuation.definition.constant.ruby
#             ^^ constant.character.ruby
#               ^ - constant
#                ^ punctuation.definition.constant.ruby
#                ^^ constant.character.ruby
#                  ^ - constant
#                   ^ punctuation.definition.constant.ruby
#                   ^^ constant.character.ruby
#                     ^ - constant
#                      ^ punctuation.definition.constant.ruby
#                      ^^ constant.character.ruby
#                        ^ - constant
#                         ^ punctuation.definition.constant.ruby
#                         ^^ constant.character.ruby
#                           ^ - constant

##################
# Constant reserved keyword symbols
##################

begin: 'begin'
# ^^^^ constant.other.symbol
end: 'end'
# ^^ constant.other.symbol
require: 'require'
# ^^^^^^ constant.other.symbol
class: 'class'
# ^^^^ constant.other.symbol
module: 'module'
# ^^^^^ constant.other.symbol

##################
# Operators
##################

  ,
# ^ punctuation.separator.sequence.ruby
  ;
# ^ punctuation.terminator.statement.ruby
  .
# ^ punctuation.accessor.dot.ruby
  &.
# ^^ punctuation.accessor.dot.ruby
  ::
# ^^ punctuation.accessor.double-colon.ruby
  <<=
# ^^^ keyword.operator.assignment.augmented.ruby
  &&=
# ^^^ keyword.operator.assignment.augmented.ruby - punctuation
  ||=
# ^^^ keyword.operator.assignment.augmented.ruby
  **=
# ^^^ keyword.operator.assignment.augmented.ruby
  +=
# ^^ keyword.operator.assignment.augmented.ruby
  -=
# ^^ keyword.operator.assignment.augmented.ruby
  *=
# ^^ keyword.operator.assignment.augmented.ruby
  /=
# ^^ keyword.operator.assignment.augmented.ruby
  &=
# ^^ keyword.operator.assignment.augmented.ruby
  |=
# ^^ keyword.operator.assignment.augmented.ruby
  ^=
# ^^ keyword.operator.assignment.augmented.ruby
  <<
# ^^ keyword.operator.assignment.augmented.ruby
  >>
# ^^ keyword.operator.other.ruby
  +
# ^ keyword.operator.arithmetic.ruby
  -
# ^ keyword.operator.arithmetic.ruby
  *
# ^ keyword.operator.arithmetic.ruby
  **
# ^^ keyword.operator.arithmetic.ruby
  /
# ^ keyword.operator.arithmetic.ruby
  %
# ^ keyword.operator.arithmetic.ruby
  !~
# ^^ keyword.operator.comparison.ruby
  =~
# ^^ keyword.operator.comparison.ruby
  <=>
# ^^^ keyword.operator.comparison.ruby
  ==
# ^^ keyword.operator.comparison.ruby
  !=
# ^^ keyword.operator.comparison.ruby
  >=
# ^^ keyword.operator.comparison.ruby
  <=
# ^^ keyword.operator.comparison.ruby
  >
# ^ keyword.operator.comparison.ruby
  <
# ^ keyword.operator.comparison.ruby
  &&
# ^^ keyword.operator.logical.ruby - punctuation
  ||
# ^^ keyword.operator.logical.ruby
  !
# ^ keyword.operator.logical.ruby
  ?
# ^ keyword.operator.ternary.ruby
  :
# ^ keyword.operator.ternary.ruby
  ~
# ^ keyword.operator.bitwise.ruby
  &
# ^ keyword.operator.bitwise.ruby - punctuation
  |
# ^ keyword.operator.bitwise.ruby
  ^
# ^ keyword.operator.bitwise.ruby
  ..
# ^^ keyword.operator.range.ruby
  ...
# ^^^ keyword.operator.range.ruby

##################
# Blocks
##################

[self.class.name, @name].map do |*args|
# ^ variable.language.ruby
#                 ^ variable.other.readwrite.instance.ruby punctuation.definition.variable.ruby
#                  ^^^^ variable.other.readwrite.instance.ruby
#                                ^ keyword.operator.splat.ruby
#                                  ^ variable.parameter.ruby
end

{ |a, b=2, *c| a + b}
# <- punctuation.section.scope
# ^^^^^^^^^^^^ meta.block.parameters
# ^ punctuation.definition.parameters.begin
#  ^ variable.parameter
#   ^ punctuation.separator
#     ^ variable.parameter
#      ^^ meta.block.parameters.default-value
#      ^ keyword.operator.assignment
#       ^ constant.numeric
#        ^ punctuation.separator
#          ^ keyword.operator.splat
#           ^ variable.parameter
#            ^ punctuation.definition.parameters.end
#                   ^ punctuation.section.scope

do |&bl| end
# <- keyword.control.block.do.ruby
#  ^^^^^ meta.block.parameters
#  ^ punctuation.definition.parameters
#   ^ keyword.operator
#    ^^ variable.parameter
#      ^ punctuation.definition.parameters

{ |a={|b={a: 1, b: 2}|}| a * 2 }
# ^^^^^^^^^^^^^^^^^^^^^^ meta.block.parameters
# ^ punctuation.definition.parameters.begin
#  ^ variable.parameter
#   ^^^^^^^^^^^^^^^^^^^ meta.block.parameters.default-value
#     ^^^^^^^^^^^^^^^^ meta.block.parameters meta.block.parameters
#      ^ variable.parameter
#       ^^^^^^^^^^^^^ meta.block.parameters.default-value meta.block.parameters.default-value
#       ^ keyword.operator.assignment
#         ^^ constant.other.symbol
#            ^ constant.numeric
#             ^ punctuation.separator
#               ^^ constant.other.symbol
#                  ^ constant.numeric
#                    ^ punctuation.definition.parameters.end
#                      ^ punctuation.definition.parameters.end
#                          ^ keyword.operator.arithmetic


##################
# Modules, classes and methods
##################

module MyModule
#^^^^^^^^^^^^^^ meta.namespace
# <- meta.namespace keyword.declaration.namespace
#^^^^^ keyword.declaration.namespace
#     ^ - entity - keyword - storage
#      ^^^^^^^^ entity.name.namespace
end

module MyModule::OtherModule
#^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace
# <- meta.namespace keyword.declaration.namespace
#      ^^^^^^^^^^^^^^^^^^^^^ entity.name.namespace
#^^^^^ keyword.declaration.namespace
#     ^ - entity - keyword - storage
#      ^^^^^^^^ support.other.namespace
#              ^^ punctuation.accessor.double-colon
#                ^^^^^^^^^^^ entity.name.namespace
end

class ::MyModule::MyClass < MyModule::InheritedClass
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
# <- meta.class keyword.declaration.class
#^^^^ keyword.declaration.class
#    ^ - entity - keyword - storage - punctuation
#     ^^ punctuation.accessor.double-colon
#       ^^^^^^^^ support.other.namespace
#               ^^ punctuation.accessor.double-colon
#                 ^^^^^^^ entity.name.class
#                         ^ punctuation.separator.inheritance
#                           ^^^^^^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class
#                                   ^^ punctuation.accessor.double-colon
  class <<obj
# ^^^^^ keyword.declaration.class.ruby
#       ^^ keyword.operator.assignment.augmented.ruby
#         ^^^ - string
  end
# ^^^ keyword.control.block.end.ruby

  class <<self
# ^^^^^ keyword.declaration.class.ruby
#       ^^ keyword.operator.assignment.augmented.ruby
#         ^^^^ variable.language.ruby
  end
# ^^^ keyword.control.block.end.ruby

  class << self
# ^^^^^ keyword.declaration.class.ruby
#       ^^ keyword.operator.assignment.augmented.ruby
#          ^^^^ variable.language.ruby
  end
# ^^^ keyword.control.block.end.ruby

  def my_method(param1, param2)
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
# ^^^ keyword.declaration.function
#     ^^^^^^^^^ entity.name.function
#              ^^^^^^^^^^^^^^^^ meta.function.parameters
#              ^ punctuation.definition.group.begin
#                     ^ punctuation.separator - variable.parameter
#                             ^ punctuation.definition.group.end
  end

  def self.my_second_method *arg_without_parens # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
# ^^^ keyword.declaration.function
#     ^^^^ variable.language
#         ^ punctuation.accessor.dot
#          ^^^^^^^^^^^^^^^^ entity.name.function
#                           ^^^^^^^^^^^^^^^^^^^ meta.function.parameters
#                           ^ keyword.operator.splat
#                            ^^^^^^^^^^^^^^^^^^ variable.parameter
#                                               ^^^^^^^^^ comment.line.number-sign
  end

  def self.my_third_method(a, b="foo", c=[], d=foo(), *args)
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
# ^^^ keyword.declaration.function
#     ^^^^ variable.language
#         ^ punctuation.accessor.dot
#          ^^^^^^^^^^^^^^^ entity.name.function
#                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters
#                         ^ punctuation.definition.group.begin
#                          ^ variable.parameter
#                           ^ punctuation.separator - variable.parameter
#                             ^ variable.parameter
#                              ^^^^^^ meta.function.parameters.default-value
#                              ^ keyword.operator - variable.parameter
#                               ^^^^^ string.quoted - variable.parameter
#                                    ^ punctuation.separator
#                                      ^ variable.parameter
#                                       ^ keyword.operator.assignment
#                                        ^^ punctuation.section.array
#                                          ^ punctuation.separator
#                                            ^ variable.parameter
#                                             ^ keyword.operator.assignment
#                                                 ^^ punctuation.definition.group
#                                                   ^ punctuation.separator
#                                                     ^ keyword.operator
#                                                      ^^^^ variable.parameter
#                                                          ^ punctuation.definition.group.end
  end

  def nested((a, b), c, (d, *e))
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
# ^^^ keyword.declaration.function
#     ^^^^^^ entity.name.function
#           ^^^^^^^^^^^^^^^^^^^^ meta.function.parameters
#           ^ punctuation.definition.group.begin
#            ^ punctuation.definition.group.begin
#             ^ variable.parameter
#              ^ punctuation.separator
#                ^ variable.parameter
#                 ^ punctuation.definition.group.end
#                  ^ punctuation.separator
#                    ^ variable.parameter
#                     ^ punctuation.separator
#                       ^ punctuation.definition.group.begin
#                        ^ variable.parameter
#                         ^ punctuation.separator
#                           ^ keyword.operator.splat
#                            ^ variable.parameter
#                             ^^ punctuation.definition.group.end
  end

  def block_param(&block)
# ^^^ keyword.declaration.function
#                ^^^^^^^^ meta.function.parameters
#                 ^ keyword.operator
#                  ^^^^^ variable.parameter
  end

  def keyword_args a: nil, b: true, c: false
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters
#                   ^^^^^ meta.function.parameters.default-value
#                   ^ punctuation.separator
#                     ^^^ constant.language.null
#                        ^ punctuation.separator
#                           ^ punctuation.separator
#                             ^^^^ constant.language.boolean.true
#                                 ^ punctuation.separator.ruby
#                                      ^^^^^ constant.language.boolean.false.ruby
  end

  def multiline_args(a, # a comment
# ^^^^^^^^^^^^^^^^^^^^^ meta.function
#                    ^^ meta.function.parameters
#                     ^ punctuation.separator
#                       ^^^^^^^^^^^ comment.line.number-sign
                     b)
# ^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters
#                     ^ punctuation.definition.group.end
  end
end

def MyModule::module_method
#^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#   ^^^^^^^^^^^^^^^^^^^^^^^ entity.name.function
#   ^^^^^^^^ support.other.namespace
#           ^^ punctuation.accessor.double-colon
  super /pattern/
# ^^^^^ support.function.builtin.ruby
#       ^^^^^^^^^ meta.string.regexp.ruby
end

def my_function
#^^^^^^^^^^^^^^ meta.function
#   ^^^^^^^^^^^ entity.name.function
end


f = MyConstant
#   ^^^^^^^^^^ support.class.ruby

f = MYCONSTANT
#   ^^^^^^^^^^ variable.other.constant.ruby

f = MyModule::
#   ^^^^^^^^ support.class.ruby
#           ^^ punctuation.accessor.double-colon

f = MyModule::MyClass
#   ^^^^^^^^ support.class.ruby
#           ^^ punctuation.accessor.double-colon
#             ^^^^^^^ support.class.ruby

f = MyModule::CONSTANT
#   ^^^^^^^^ support.class.ruby
#           ^^ punctuation.accessor.double-colon
#             ^^^^^^^^ variable.other.constant.ruby

f = MyModule::MyClass.new
#   ^^^^^^^^ support.class.ruby
#           ^^ punctuation.accessor.double-colon
#             ^^^^^^^ support.class.ruby
#                    ^ punctuation.accessor.dot.ruby
#                     ^^^ keyword.other.special-method.ruby

f = MyModule::MYCLASS.new
#   ^^^^^^^^ support.class.ruby
#           ^^ punctuation.accessor.double-colon
#             ^^^^^^^ variable.other.constant.ruby
#                    ^ punctuation.accessor.dot.ruby
#                     ^^^ keyword.other.special-method.ruby

def f.my_instance_method
#^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#   ^^^^^^^^^^^^^^^^^^^^ entity.name.function
#    ^ punctuation.accessor.dot
end

class MyClass
# ^ meta.class.ruby keyword.declaration.class.ruby
#     ^ meta.class.ruby entity.name.class.ruby

  prepend Module.new
# ^ keyword.other.special-method.ruby
#         ^ support.class.ruby
#                 ^ keyword.other.special-method.ruby

  A, B, C = :a, :b, :c
# ^ meta.constant.ruby entity.name.constant.ruby
#  ^ punctuation.separator.sequence.ruby
#    ^ meta.constant.ruby entity.name.constant.ruby
#     ^ punctuation.separator.sequence.ruby
#       ^ meta.constant.ruby entity.name.constant.ruby
end


##################
# Well-known methods
##################

puts "Output"
# <- support.function.builtin

abort "Ending"
# <- support.function.builtin

exit! 2
#^^^^ support.function.builtin

get :name, -> { "John" }
#          ^^ meta.function.ruby keyword.declaration.function.anonymous.ruby

##################
# Symbol literals
##################

  FIELDS = %i[a b c]
# ^^^^^^ meta.constant.ruby entity.name.constant.ruby
#        ^ keyword.operator.assignment.ruby
#          ^^^ punctuation.definition.string.begin.ruby
#             ^      constant.other.symbol.ruby
#               ^    constant.other.symbol.ruby
#                 ^  constant.other.symbol.ruby
#                  ^  punctuation.definition.string.end.ruby

  %i(a b c)
# ^^^ punctuation.definition.string.begin.ruby
#    ^      constant.other.symbol.ruby
#      ^    constant.other.symbol.ruby
#        ^  constant.other.symbol.ruby
#         ^  punctuation.definition.string.end.ruby

  %I[#{'a'} b #@c#@@d e]
# ^^^ meta.string.ruby - meta.interpolation
#    ^^ source.ruby meta.string.ruby meta.interpolation.ruby punctuation.section.interpolation.begin.ruby
#      ^^^ meta.string.ruby meta.interpolation.ruby meta.string.ruby
#         ^ source.ruby meta.string.ruby meta.interpolation.ruby punctuation.section.interpolation.end.ruby
#           ^ constant.other.symbol.ruby
#             ^^^^^^^ meta.string.ruby meta.interpolation.ruby - string
#                     ^ constant.other.symbol.ruby
#                      ^  punctuation.definition.string.end.ruby

##################
# String literals
##################

  %w[a b c]
# ^^^ punctuation.definition.string.begin.ruby
#    ^^^^^ string.quoted.other.literal.lower.ruby
#         ^  punctuation.definition.string.end.ruby

  %w(a b c)
# ^^^ punctuation.definition.string.begin.ruby
#    ^^^^^ string.quoted.other.literal.lower.ruby
#         ^  punctuation.definition.string.end.ruby

##################
# Tokens with Multiple Meanings
##################

method? 1
#     ^ - keyword.operator

(methodname)?foobar : baz
#           ^ keyword.operator.ternary
#                   ^ keyword.operator.ternary

methodname ?foo : baz
#          ^ keyword.operator.ternary
#               ^ keyword.operator.ternary

puts 1 ?1 : 2
#      ^ keyword.operator.ternary
#       ^ constant.numeric
#         ^ keyword.operator.ternary

puts 1 ?12 : 2
#      ^ keyword.operator.ternary
#       ^^ constant.numeric
#          ^ keyword.operator.ternary

puts ?1
#    ^^ constant.character.ruby

puts 1 ? foo:bar
#      ^ keyword.operator.ternary
#           ^ keyword.operator.ternary
#        ^^^ - constant.other.symbol

puts 1 ? foo::baz:bar
#      ^ keyword.operator.ternary
#           ^^ punctuation.accessor.double-colon
#             ^^^ - constant.other.symbol
#                ^ keyword.operator.ternary

puts foo: bar
#    ^^^^ constant.other.symbol


##################
# Regular expressions vs division operator
##################

"foo".sub /t{1,}/i
#         ^^^^^^^^ string.regexp
#                ^ keyword.other
"foo".sub! /t{1,}/i
#          ^^^^^^^^ string.regexp
#                 ^ keyword.other
"foo".sub!(/t{1,}/i)
#          ^^^^^^^^ string.regexp
#                 ^ keyword.other
"foo".gsub /t{1,}/i
#          ^^^^^^^^ string.regexp
#                 ^ keyword.other
"foo".gsub! /t{1,}/i
#           ^^^^^^^^ string.regexp
#                  ^ keyword.other
"foo".gsub!(/t{1,}/i)
#           ^^^^^^^^ string.regexp
#                  ^ keyword.other
"foo".eql? /t{1,}/i
#          ^^^^^^^^ string.regexp
#                 ^ keyword.other
"foo".eql?(/t{1,}/i)
#          ^^^^^^^^ string.regexp
#                 ^ keyword.other
'foo'.match? /t{1,}/i
#            ^^^^^^^^ string.regexp
#                   ^ keyword.other
'foo'.match?(/t{1,}/i)
#            ^^^^^^^^ string.regexp
#                   ^ keyword.other
'foo'.matches?(/t{1,}/i)
#              ^^^^^^^^ string.regexp
#                     ^ keyword.other

a = /(foo)*baz/m
#   ^^^^^^^^^^^^ string.regexp

a = /{foo}*baz/m
#   ^^^^^^^^^^^^ string.regexp

a = /?foo*baz/m
#   ^^^^^^^^^^^ string.regexp

a = /=foo/m
#   ^^^^^^^ string.regexp

# issue #2703
a = /(bot\ is\ not\ a\ member\ of\ the\ (super)?group\ chat)|
     (bot\ can't\ send\ messages\ to\ bots)/x
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.ruby string.regexp.classic.ruby

a = (File.size().to_f / 1024).ceil.to_s.reverse.scan(/\d/)
#                     ^ keyword.operator.arithmetic.ruby
#                                                    ^^^^ meta.string.regexp.ruby string.regexp.classic.ruby
#                                                    ^ punctuation.definition.string.begin.ruby
#                                                       ^ punctuation.definition.string.end.ruby

begin
# <- keyword.control.block.begin
end while /foo/ =~ bar
#         ^^^^^ string.regexp

if /foo/i =~ baz
# <- keyword.control.conditional.if
#  ^^^^^^ string.regexp
#         ^^ keyword.operator
end
# <- keyword.control.block.end.ruby

if baz =~ /foo/i
#      ^^ keyword.operator
#         ^^^^^^ string.regexp
end
# <- keyword.control.block.end.ruby

['a()', 'b()'].select { |var| /^a\(/ =~ var }
#                             ^^^^^^ string.regexp

{foo: /bar/}
#     ^^^^^ string.regexp

str = "#{('A'.ord + index / (26*26) - 1).chr}"
#                         ^ keyword.operator
#                            ^^ constant.numeric
#                              ^ keyword.operator

if 1 / 2 == 3
#    ^ keyword.operator
#        ^^ keyword.operator
end

a = 1 / 2
#     ^ keyword.operator.arithmetic

b = testing! / foo
#            ^ keyword.operator.arithmetic

rule /`/ do
#    ^^^ string.regexp
#    ^ - string.regexp string.regexp
#        ^^ keyword.control.block.do
end

case 1
#^^^ keyword.control.conditional.case.ruby
#    ^ meta.number.integer.decimal.ruby constant.numeric.value.ruby
  in 0..10
# ^^ keyword.operator.logical.ruby
#    ^ meta.number.integer.decimal.ruby constant.numeric.value.ruby
#     ^^ keyword.operator.range.ruby
#       ^^ meta.number.integer.decimal.ruby constant.numeric.value.ruby
    true
  else
# ^^^^ keyword.control.conditional.if.ruby
    false
end
#^^ keyword.control.block.end.ruby

for do
#^^ keyword.control.loop.for.ruby
#   ^^ keyword.control.block.do.ruby
end
#^^ keyword.control.block.end.ruby

for item in items do
#^^ keyword.control.loop.for.ruby
#        ^^ keyword.operator.iteration.in.ruby
#                 ^^ keyword.control.block.do.ruby
end
#^^ keyword.control.block.end.ruby

unless item in items do
#^^^^^ keyword.control.conditional.unless.ruby
#           ^^ keyword.operator.logical.ruby
#                    ^^ keyword.control.block.do.ruby
end
#^^ keyword.control.block.end.ruby

until item in items do
#^^^^ keyword.control.loop.until.ruby
#          ^^ keyword.operator.logical.ruby
#                   ^^ keyword.control.block.do.ruby
end
#^^ keyword.control.block.end.ruby

while item in items do
#^^^^ keyword.control.loop.while.ruby
#          ^^ keyword.operator.logical.ruby
#                   ^^ keyword.control.block.do.ruby
end
#^^ keyword.control.block.end.ruby

##################
# Crazy Stuff Found Online™
##################

(
def huh?(a, b=def huh?(a); "h?"; end)
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters
#             ^^^^^^^^^^^ meta.function meta.function
#                     ^^^ meta.function.parameters meta.function.parameters
#^^ keyword.declaration.function
#                      ^ variable.parameter
  a
end

p huh?("H", 1) + huh?("u") + huh?("gs")
)


# issue #923
foo = 2 / @d
#         ^^ - string.regexp.classic
#         ^ variable.other.readwrite.instance punctuation.definition.variable
#       ^ keyword.operator.arithmetic.ruby

# issue #933
a = b / "c"
#       ^^^ string.quoted.double.ruby - string.regexp.classic.ruby
#     ^ keyword.operator.arithmetic.ruby

foo / "bar/bla"
#   ^ keyword.operator.arithmetic.ruby
#     ^^^^^^^^^ string.quoted.double.ruby

{
  /foo/ => :foo
# ^^^^^ string.regexp.classic.ruby
}

  assert_no_match /1/, "2"
# ^^^^^^^^^^^^^^^ support.function.builtin.ruby
#                 ^ punctuation.definition.string.begin.ruby
#                 ^^^ meta.string.regexp.ruby string.regexp.classic.ruby
#                   ^ punctuation.definition.string.end.ruby
#                    ^ punctuation.separator.sequence.ruby
#                      ^^^ string.quoted.double.ruby

# issue #2181
foo << bar if baz.include?(x)
#          ^^ keyword.control.conditional.if.ruby
foo << bar.baz if baz.include?(x)
#              ^^ keyword.control.conditional.if.ruby
foo << bar.assert_match if baz.include?(x)
#                       ^^ keyword.control.conditional.if.ruby
foo << bar.to_s if baz.include?(x)
#               ^^ keyword.control.conditional.if.ruby

_query = <<-SQL
  INSERT INTO table
#^^^^^^^^^^^^^^^^^^ meta.string.heredoc.ruby source.sql.embedded.ruby
# ^^^^^^^^^^^ keyword.other.dml.sql
#             ^^^^^ meta.table-name.sql
  VALUES (1, 2, 3)
SQL
