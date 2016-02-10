# SYNTAX TEST "Packages/Python/Python.sublime-syntax"

def my_func(param1, # Multi-line function definition
#                   ^ comment.line.number-sign
    # This is defaulted
#   ^ comment.line.number-sign
    param2='#1'):
#              ^ punctuation.definition.parameters.end
    print('Hi!')


class MyClass():

    def my_func(self, param1, # Multi-line function definition
#                             ^ comment.line.number-sign
        # This is defaulted
#       ^ comment.line.number-sign
        param2='#1'):
#                  ^ punctuation.definition.parameters.end
        print('Hi!')
