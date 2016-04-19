# SYNTAX TEST "Packages/Ruby/Ruby.sublime-syntax"
puts 'test'

puts <<~EOF
  Indented string!
EOF
# ^ string.unquoted.heredoc

lower_snake_case = 1
# ^^^^^^^^^^^^^^ -meta.constant.ruby -entity.name.type.constant.ruby
lowerCamelCase = 2
# ^^^^^^^^^^^^ -meta.constant.ruby -entity.name.type.constant.ruby
UpperCamelCase = 3
# ^^^^^^^^^^^^ meta.constant.ruby entity.name.type.constant.ruby
UPPER_SNAKE_CASE = 4
# ^^^^^^^^^^^^^^ meta.constant.ruby entity.name.type.constant.ruby

Symbol === :foo
# ^^^^ variable.other.constant.ruby -meta.constant.ruby

class MyClass
# ^ meta.class.ruby keyword.control.class.ruby
#     ^ meta.class.ruby entity.name.type.class.ruby

  prepend Module.new
# ^ keyword.other.special-method.ruby
#         ^ support.class.ruby
#                 ^ keyword.other.special-method.ruby

  FIELDS = %i[a b c]
# ^ meta.constant.ruby entity.name.type.constant.ruby
#        ^ keyword.operator.assignment.ruby
#          ^^^ punctuation.definition.string.begin.ruby
#             ^^^^^ string.quoted.other.literal.lower.ruby

  A, B, C = :a, :b, :c
# ^ meta.constant.ruby entity.name.type.constant.ruby
#  ^ punctuation.separator.object.ruby
#    ^ meta.constant.ruby entity.name.type.constant.ruby
#     ^ punctuation.separator.object.ruby
#       ^ meta.constant.ruby entity.name.type.constant.ruby

  %I[#{ENV['APP_NAME']} apple orange]
# ^^^ punctuation.definition.string.begin.ruby
#      ^ meta.environment-variable.ruby variable.other.constant.ruby
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.other.literal.upper.ruby

  def name
# ^ keyword.control.def.ruby
#     ^^^^ meta.function.method.without-arguments.ruby entity.name.function.ruby
    [self.class.name, @name].map do |*args|
    # ^ variable.language.ruby
    #                 ^ variable.other.readwrite.instance.ruby punctuation.definition.variable.ruby
    #                  ^^^^ variable.other.readwrite.instance.ruby
    #                                ^ keyword.operator.arithmetic.ruby
    #                                  ^ meta.variable.block.ruby
    end
  end

  def my_method
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
  end

end

# <- source.ruby
