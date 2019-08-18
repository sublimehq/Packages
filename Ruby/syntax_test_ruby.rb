# SYNTAX TEST "Packages/Ruby/Ruby.sublime-syntax"

##################
# Strings and heredocs
##################

puts 'test'

puts <<~EOF
#^^^^ - meta.string - string.unquoted
#    ^^^^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby punctuation.definition.string.begin.ruby
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
# ^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby punctuation.definition.string.end.ruby
#    ^ - meta.string - string.unquoted

puts <<-HTML
#^^^^ - meta.string - string.unquoted
#    ^^^^^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby punctuation.definition.string.begin.ruby
  <body>
# ^^^^^^ meta.string.heredoc.ruby text.html.embedded.ruby meta.tag.structure
    #{ sym } #@var
#  ^ meta.string.heredoc.ruby text.html.embedded.ruby - meta.interpolation
#   ^^^^^^^^ meta.string.heredoc.ruby meta.interpolation.ruby
#           ^ meta.string.heredoc.ruby text.html.embedded.ruby - meta.interpolation
#            ^^^^^ meta.string.heredoc.ruby meta.interpolation.ruby variable.other.readwrite.instance.ruby
#                 ^ meta.string.heredoc.ruby text.html.embedded.ruby - meta.interpolation
#   ^^ punctuation.section.interpolation.begin.ruby
#     ^^^^^ source.ruby.embedded.ruby
#          ^ punctuation.section.interpolation.end.ruby
#            ^^ punctuation.definition.variable.ruby
#            ^^^^^ variable.other.readwrite.instance.ruby
  </body>
# ^^^^^^^ meta.string.heredoc.ruby text.html.embedded.ruby meta.tag.structure.any.html
  HTML
# ^^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby punctuation.definition.string.end.ruby
#     ^ - meta.string - string.unquoted

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
#^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby punctuation.definition.string.end.ruby
#   ^ - meta.string - string.unquoted

DB.fetch(<<-SQL, conn).name
#^^^^^^^^^^^^^^^^^^^^^^^^^^ source.ruby
#        ^^^^^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby
#              ^^^^^^^^^^^^ - meta.string - string
#              ^ punctuation.separator
#                    ^ punctuation.definition.group.end
SELECT * FROM #$users;
#^^^^^^^^^^^^^ meta.string.heredoc.ruby source.sql.embedded.ruby - meta.interpolation
#             ^^^^^^^ meta.string.heredoc.ruby source.sql.embedded.ruby meta.interpolation.ruby variable.other.readwrite.global
#                    ^ meta.string.heredoc.ruby source.sql.embedded.ruby - meta.interpolation
SQL
#^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby punctuation.definition.string.end.ruby
#  ^ - meta.string - string.unquoted

foo, bar = <<BAR, 2
#^^^^^^^^^^^^^^^^^^ source.ruby
#          ^^^^^ string.unquoted
#               ^^^ - string
#               ^ punctuation.separator
#                 ^ constant.numeric
BAR
#^^ meta.string.heredoc.ruby string.unquoted.heredoc.ruby punctuation.definition.string.end.ruby
#  ^ - meta.string - string.unquoted

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
#                      ^^^^^^^ meta.string.ruby - meta.interpolation
#                             ^^^^^^^^^^^^^^^^ meta.string.ruby meta.interpolation.ruby - string
#                                             ^^^^^^^ meta.string.ruby - meta.interpolation
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
A, B, C = 0
# <- entity.name.constant
#  ^ entity.name.constant
#     ^ entity.name.constant

Symbol === :foo
# ^^^^ variable.other.constant.ruby -meta.constant.ruby
#          ^^^^

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
# <- keyword.control
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
# <- keyword.control.module
#      ^^^^^^^^ entity.name.module
end

module MyModule::OtherModule
# <- keyword.control.module
#      ^^^^^^^^^^^^^^^^^^^^^ entity.name.module
#      ^^^^^^^^ support.other.namespace
#              ^^ punctuation.accessor
end

class ::MyModule::MyClass < MyModule::InheritedClass
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
#     ^^ punctuation.accessor
#               ^^ punctuation.accessor
#                         ^ punctuation.separator.inheritance
#                           ^^^^^^^^^^^^^^^^^^^^^^^^ entity.other.inherited-class
#                                   ^^ punctuation.accessor

  def my_method(param1, param2)
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#     ^^^^^^^^^ entity.name.function
#              ^^^^^^^^^^^^^^^^ meta.function.parameters
#              ^ punctuation.definition.group.begin
#                     ^ punctuation.separator - variable.parameter
#                             ^ punctuation.definition.group.end
  end

  def self.my_second_method *arg_without_parens # comment
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#     ^^^^ variable.language
#         ^ punctuation.accessor
#          ^^^^^^^^^^^^^^^^ entity.name.function
#                           ^^^^^^^^^^^^^^^^^^^ meta.function.parameters
#                           ^ keyword.operator.splat
#                            ^^^^^^^^^^^^^^^^^^ variable.parameter
#                                               ^^^^^^^^^ comment.line.number-sign
  end

  def self.my_third_method(a, b="foo", c=[], d=foo(), *args)
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#     ^^^^ variable.language
#         ^ punctuation.accessor
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
#                ^^^^^^^^ meta.function.parameters
#                 ^ keyword.operator
#                  ^^^^^ variable.parameter
  end

  def keyword_args a: nil, b: true
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#                  ^^^^^^^^^^^^^^^ meta.function.parameters
#                   ^^^^^ meta.function.parameters.default-value
#                   ^ punctuation.separator
#                     ^^^ constant.language
#                        ^ punctuation.separator
#                           ^ punctuation.separator
#                             ^^^^ constant.language
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
#           ^^ punctuation.accessor

end

def my_function
#^^^^^^^^^^^^^^ meta.function
#   ^^^^^^^^^^^ entity.name.function
end

f = MyModule::MyClass.new
#           ^^ punctuation.accessor

def f.my_instance_method
#^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#   ^^^^^^^^^^^^^^^^^^^^ entity.name.function
#    ^ punctuation.accessor
end

class MyClass
# ^ meta.class.ruby keyword.control.class.ruby
#     ^ meta.class.ruby entity.name.class.ruby

  prepend Module.new
# ^ keyword.other.special-method.ruby
#         ^ support.class.ruby
#                 ^ keyword.other.special-method.ruby

  FIELDS = %i[a b c]
# ^ meta.constant.ruby entity.name.constant.ruby
#        ^ keyword.operator.assignment.ruby
#          ^^^ punctuation.definition.string.begin.ruby
#             ^^^^^ string.quoted.other.literal.lower.ruby

  A, B, C = :a, :b, :c
# ^ meta.constant.ruby entity.name.constant.ruby
#  ^ punctuation.separator.ruby
#    ^ meta.constant.ruby entity.name.constant.ruby
#     ^ punctuation.separator.ruby
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



##################
# Tokens with Multiple Meanings
##################

method? 1
#     ^ - keyword.operator

(methodname)?foobar : baz
#           ^ keyword.operator.conditional
#                   ^ keyword.operator.conditional

methodname ?foo : baz
#          ^ keyword.operator.conditional
#               ^ keyword.operator.conditional

puts 1 ?1 : 2
#      ^ keyword.operator.conditional
#       ^ constant.numeric
#         ^ keyword.operator.conditional

puts 1 ?12 : 2
#      ^ keyword.operator.conditional
#       ^^ constant.numeric
#          ^ keyword.operator.conditional

puts ?1
#    ^^ constant.numeric

puts 1 ? foo:bar
#      ^ keyword.operator.conditional
#           ^ keyword.operator.conditional
#        ^^^ - constant.other.symbol

puts 1 ? foo::baz:bar
#      ^ keyword.operator.conditional
#           ^^ punctuation.accessor
#             ^^^ - constant.other.symbol
#                ^ keyword.operator.conditional

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
"foo".gsub /t{1,}/i
#          ^^^^^^^^ string.regexp
#                 ^ keyword.other
"foo".gsub! /t{1,}/i
#           ^^^^^^^^ string.regexp
#                  ^ keyword.other

a = /(foo)*baz/m
#   ^^^^^^^^^^^^ string.regexp

begin
end while /foo/ =~ bar
#         ^^^^^ string.regexp

if /foo/i =~ baz
#  ^^^^^^ string.regexp
#         ^^ keyword.operator
end

if baz =~ /foo/i
#      ^^ keyword.operator
#         ^^^^^^ string.regexp
end

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
end

##################
# Crazy Stuff Found Online™
##################

(
def huh?(a, b=def huh?(a); "h?"; end)
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters
#             ^^^^^^^^^^^ meta.function meta.function
#                     ^^^ meta.function.parameters meta.function.parameters
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
# <- source.ruby
# <- support.function.builtin.ruby
#               ^ punctuation.definition.string.ruby
#                    ^ string.quoted.double.ruby
