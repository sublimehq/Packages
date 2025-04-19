% SYNTAX TEST "Packages/Matlab/Matlab.sublime-syntax"

%---------------------------------------------
% Merge Conflict Markers

<<<<<<< HEAD
%  <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
% ^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
%      ^ meta.block.conflict.begin.diff - entity - punctuation
%       ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
%           ^ meta.block.conflict.begin.diff - entity - punctuation

=======
%  <- meta.block.conflict.separator.diff punctuation.section.block.diff
% ^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
%      ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
%  <- meta.block.conflict.end.diff punctuation.section.block.end.diff
% ^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
%      ^ meta.block.conflict.end.diff - entity - punctuation
%       ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
%             ^ meta.block.conflict.end.diff - entity - punctuation

%---------------------------------------------
% Matlab OOP

classdef ClassName  % comment
%^^^^^^^^^^^^^^^^^ meta.class.matlab
%^^^^^^^ keyword.declaration.class.matlab
%        ^^^^^^^^^ entity.name.class.matlab
%                   ^^^^^^^^^^ comment.line.percentage.matlab
end
%^^ meta.class.matlab keyword.declaration.class.end.matlab
%  ^ - meta.class

classdef (Sealed = verLessThan('matlab', '8.4'), ~Hidden) ClassName < SuperClass1 & SuperClass2  % comment
%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.matlab - meta.class meta.class
%^^^^^^^ keyword.declaration.class.matlab
%        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attributes.matlab
%        ^ punctuation.section.parens.begin.matlab
%         ^^^^^^ variable.parameter.attribute.matlab
%                ^ keyword.operator.assignment.matlab
%                  ^^^^^^^^^^^ support.function.builtin.matlab
%                             ^^^^^^^^^^^^^^^^^ meta.parens.matlab
%                             ^ punctuation.section.parens.begin.matlab
%                              ^^^^^^^^ string.quoted.single.matlab
%                                      ^ punctuation.separator.sequence.matlab
%                                        ^^^^^ string.quoted.single.matlab
%                                             ^ punctuation.section.parens.end.matlab
%                                              ^ punctuation.separator.sequence.matlab
%                                                ^ keyword.operator.logical.matlab
%                                                 ^^^^^^ variable.parameter.attribute.matlab
%                                                       ^ punctuation.section.parens.end.matlab
%                                                         ^^^^^^^^^ entity.name.class.matlab
%                                                                   ^ punctuation.separator.inheritance.matlab
%                                                                     ^^^^^^^^^^^ entity.other.inherited-class.matlab
%                                                                                 ^ punctuation.separator.sequence.matlab
%                                                                                   ^^^^^^^^^^^ entity.other.inherited-class.matlab
%                                                                                                ^^^^^^^^^^ comment.line.percentage.matlab

   properties (SetAccess = private, GetAccess = true)  % comment
%  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.matlab meta.properties.matlab
%  ^^^^^^^^^^ keyword.declaration.properties.matlab
%             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attributes.matlab
%             ^ punctuation.section.parens.begin.matlab
%              ^^^^^^^^^ variable.parameter.attribute.matlab
%                        ^ keyword.operator.assignment.matlab
%                          ^^^^^^^ storage.modifier.matlab
%                                 ^ punctuation.separator.sequence.matlab
%                                   ^^^^^^^^^ variable.parameter.attribute.matlab
%                                             ^ keyword.operator.assignment.matlab
%                                               ^^^^ constant.language.boolean.true.matlab
%                                                   ^ punctuation.section.parens.end.matlab
%                                                      ^^^^^^^^^^ comment.line.percentage.matlab
      PropName
   end
%  ^^^ meta.class.matlab meta.properties.matlab keyword.declaration.properties.end.matlab
%     ^ meta.class.matlab - meta.properties

   methods (Static)  % comment
%  ^^^^^^^^^^^^^^^^ meta.class.matlab meta.methods.matlab
%  ^^^^^^^ keyword.context.methods.matlab
%          ^^^^^^^^ meta.attributes.matlab
%          ^ punctuation.section.parens.begin.matlab
%           ^^^^^^ variable.parameter.attribute.matlab
%                 ^ punctuation.section.parens.end.matlab
%                    ^^^^^^^^^^ comment.line.percentage.matlab
      function functionName(obj)
         functionName@SuperClass1(obj)
%                    ^ punctuation.accessor.at.matlab - keyword.operator
      end

      function set.something(obj, value)
%              ^^^^^^^^^^^^^ meta.function.matlab entity.name.function.matlab
%                 ^ punctuation.accessor.dot.matlab
      end

      function get.something(obj)
%              ^^^^^^^^^^^^^ meta.function.matlab entity.name.function.matlab
%                 ^ punctuation.accessor.dot.matlab
      end
   end
%  ^^^ meta.class.matlab meta.methods.matlab keyword.context.methods.end.matlab
%     ^ meta.class.matlab - meta.methods

   events (ListenAccess = protected)  % comment
%  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.matlab meta.events.matlab
%  ^^^^^^ keyword.declaration.events.matlab
%         ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attributes.matlab
%         ^ punctuation.section.parens.begin.matlab
%          ^^^^^^^^^^^^ variable.parameter.attribute.matlab
%                       ^ keyword.operator.assignment.matlab
%                         ^^^^^^^^^ storage.modifier.matlab
%                                  ^ punctuation.section.parens.end.matlab
%                                     ^^^^^^^^^^ comment.line.percentage.matlab
      EventName
   end
%  ^^^ meta.class.matlab meta.events.matlab keyword.declaration.events.end.matlab
%     ^ meta.class.matlab - meta.events

   enumeration  % comment
%  ^^^^^^^^^^^ meta.class.matlab meta.enumeration.matlab keyword.declaration.enumeration.matlab
%               ^^^^^^^^^^ comment.line.percentage.matlab
      EnumName
   end
%  ^^^ meta.class.matlab meta.enumeration.matlab keyword.declaration.enumeration.end.matlab
%     ^ meta.class.matlab - meta.enumeration
end
%^^ meta.class.matlab keyword.declaration.class.end.matlab
%  ^ - meta.class

classdef ClassName ... comment
   < SuperClass
%  ^ meta.class.matlab punctuation.separator.inheritance.matlab
%    ^^^^^^^^^^ meta.class.matlab entity.other.inherited-class.matlab
end

classdef MyClass < matlab.mixin.Copyable
%                  ^^^^^^^^^^^^^^^^^^^^^ meta.path.matlab - meta.path meta.path
%                  ^^^^^^ variable.namespace.matlab
%                        ^ punctuation.accessor.dot.matlab
%                         ^^^^^ variable.namespace.matlab
%                              ^ punctuation.accessor.dot.matlab
%                               ^^^^^^^^ entity.other.inherited-class.matlab
end


%---------------------------------------------
% Parens, brackets, braces, punctuation

x = [ 1.76 ]
% <- source.matlab variable.other.matlab
% ^ source.matlab keyword.operator.assignment.matlab
%   ^ source.matlab punctuation.section.brackets.begin.matlab
%     ^^^^ source.matlab meta.brackets.matlab meta.number.float.decimal.matlab constant.numeric.value.matlab
%          ^ source.matlab punctuation.section.brackets.end.matlab

C = {1, 2; 'text', {11; 22; 33}};  % 2x2 cell array
%   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.braces.matlab
%   ^ punctuation.section.braces.begin.matlab
%     ^ punctuation.separator.sequence.matlab
%        ^ punctuation.separator.sequence.matlab
%                ^ punctuation.separator.sequence.matlab
%                  ^^^^^^^^^^^^ meta.braces.matlab meta.braces.matlab
%                  ^ punctuation.section.braces.begin.matlab
%                     ^ punctuation.separator.sequence.matlab
%                         ^ punctuation.separator.sequence.matlab
%                             ^^ punctuation.section.braces.end.matlab
%                               ^ punctuation.terminator.matlab

   1,2,3
%   ^ punctuation.separator.sequence.matlab
%     ^ punctuation.separator.sequence.matlab

xAprox = fMetodoDeNewton( xi )
%  <- source.matlab variable.other.matlab
%      ^ source.matlab keyword.operator.assignment.matlab
%        ^ source.matlab variable.other.matlab
%                       ^ source.matlab punctuation.section.parens.begin.matlab
%                         ^ source.matlab meta.parens.matlab variable.other.matlab
%                            ^ source.matlab punctuation.section.parens.end.matlab


%---------------------------------------------
% Line comment test

%
%<- comment.line.percentage.matlab punctuation.definition.comment.matlab
%^ comment.line.percentage.matlab - punctuation

% comment % comment
%<- comment.line.percentage.matlab punctuation.definition.comment.matlab
%^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab - punctuation

%%
%<- comment.line.double-percentage.matlab punctuation.definition.comment.matlab
%^ comment.line.double-percentage.matlab punctuation.definition.comment.matlab
% ^ comment.line.double-percentage.matlab - punctuation

%% comment % comment
%<- comment.line.double-percentage.matlab punctuation.definition.comment.matlab
%^ comment.line.double-percentage.matlab punctuation.definition.comment.matlab
% ^ comment.line.double-percentage.matlab - punctuation - entity
%  ^^^^^^^^^^^^^^^^^ comment.line.double-percentage.matlab entity.name.section.matlab
%                   ^ comment.line.double-percentage.matlab - entity

%%%
%<- comment.line.percentage.matlab punctuation.definition.comment.matlab
%^^ comment.line.percentage.matlab punctuation.definition.comment.matlab
%  ^ comment.line.percentage.matlab - punctuation

%%%%% comment % comment %%%%
%<- comment.line.percentage.matlab punctuation.definition.comment.matlab
%^^^^ comment.line.percentage.matlab punctuation.definition.comment.matlab
%    ^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab - punctuation

a = b % doc
%     ^ comment.line.percentage.matlab punctuation.definition.comment.matlab
%      ^^^^^ comment.line.percentage.matlab - punctuation

a = b %% doc
%     ^^ comment.line.percentage.matlab punctuation.definition.comment.matlab
%       ^^^^^ comment.line.percentage.matlab - punctuation - entity


%---------------------------------------------
% Block comment test

% Success case
%{
x = 5
% ^ source.matlab comment.block.percentage.matlab
%}

% Invalid block
%{           Not start of block comment
%            ^ comment.line.percentage.matlab
x = 5
% ^ keyword.operator.assignment.matlab
%}

  %{
%}           Not end of block
%            ^ comment.block.percentage.matlab
x = 5
% ^ comment.block.percentage.matlab
  %}
x = 5 %{ not block comment
% ^ keyword.operator.assignment.matlab
x = 5
%   ^ meta.number.float.decimal.matlab constant.numeric.value.matlab

%{
   %{
      nested block comment
   %}
   this is still a comment
%  ^^^^^^^^^^^^^^^^^^^^^^^ comment.block.percentage.matlab
%}

header = ['Last Name, ',      ... comment
%        ^^^^^^^^^^^^^^^^^^^^^ meta.brackets.matlab - comment
%                             ^^^ meta.brackets.matlab punctuation.separator.continuation.line.matlab
%                                ^ meta.brackets.matlab - punctuation - comment
%                                 ^^^^^^^^ meta.brackets.matlab comment.line.matlab - punctuation
          'First Name, ',     ... comment
%        ^^^^^^^^^^^^^^^^^^^^^ meta.brackets.matlab - comment
%                             ^^^ punctuation.separator.continuation.line.matlab
%                                ^ meta.brackets.matlab - punctuation - comment
%                                 ^^^^^^^^ meta.brackets.matlab comment.line.matlab - punctuation
          'Alias Name, ',     ...
%        ^^^^^^^^^^^^^^^^^^^^^ meta.brackets.matlab - comment
%                             ^^^ punctuation.separator.continuation.line.matlab
%                                ^ meta.brackets.matlab - punctuation - comment
      ... 'Middle Initial, ', ...
%^^^^^ meta.brackets.matlab - comment
%     ^^^ meta.brackets.matlab punctuation.separator.continuation.line.matlab
%        ^ meta.brackets.matlab - punctuation - comment
%         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.brackets.matlab comment.line.matlab - punctuation
          'Title']
%^^^^^^^^^^^^^^^^^ meta.brackets.matlab - comment


%---------------------------------------------
% Function declaration

function myOutput = myFunction(x)  % function with one output
%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.matlab
%                             ^^^ meta.function.parameters.matlab - meta.function meta.function
%^^^^^^^ keyword.declaration.function.matlab
%        ^^^^^^^^ variable.parameter.output.matlab
%                 ^ keyword.operator.assignment.matlab
%                   ^^^^^^^^^^ entity.name.function.matlab
%                             ^ punctuation.section.parens.begin.matlab
%                              ^ variable.parameter.input.matlab
%                               ^ punctuation.section.parens.end.matlab
%                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function

function [one, two, three] = myFunction(x)  % function with more than one output
%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.matlab
%                                      ^^^ meta.function.parameters.matlab - meta.function meta.function
%^^^^^^^ keyword.declaration.function.matlab
%        ^ punctuation.section.brackets.begin.matlab
%         ^^^ variable.parameter.output.matlab
%            ^ punctuation.separator.sequence.matlab
%              ^^^ variable.parameter.output.matlab
%                 ^ punctuation.separator.sequence.matlab
%                   ^^^^^ variable.parameter.output.matlab
%                        ^ punctuation.section.brackets.end.matlab
%                          ^ keyword.operator.assignment.matlab
%                            ^^^^^^^^^^ entity.name.function.matlab
%                                      ^ punctuation.section.parens.begin.matlab
%                                       ^ variable.parameter.input.matlab
%                                        ^ punctuation.section.parens.end.matlab
%                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function

function myOutput = myFunction(x, y, z)  % function with one output and more than one input
%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.matlab
%                             ^^^^^^^^^ meta.function.parameters.matlab - meta.function meta.function
%^^^^^^^ keyword.declaration.function.matlab
%        ^^^^^^^^ variable.parameter.output.matlab
%                 ^ keyword.operator.assignment.matlab
%                   ^^^^^^^^^^ entity.name.function.matlab
%                             ^ punctuation.section.parens.begin.matlab
%                              ^ variable.parameter.input.matlab
%                               ^ punctuation.separator.sequence.matlab
%                                 ^ variable.parameter.input.matlab
%                                  ^ punctuation.separator.sequence.matlab
%                                    ^ variable.parameter.input.matlab
%                                     ^ punctuation.section.parens.end.matlab
%                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function

function myOutput = myFunction(x, ... function with line continuation in input arguments
   y, ... comment
   z  ... comment
)
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function

function [one, ... function with line continuation in output arguments
   two,        ... comment
   three] = myFunction(x)
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function

function myOutput = myFunction  % function without input
%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.matlab
%^^^^^^^ keyword.declaration.function.matlab
%        ^^^^^^^^ variable.parameter.output.matlab
%                 ^ keyword.operator.assignment.matlab
%                   ^^^^^^^^^^ entity.name.function.matlab
%                               ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function

function myOutput=myFunction  % function without input
%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.matlab
%^^^^^^^ keyword.declaration.function.matlab
%        ^^^^^^^^ variable.parameter.output.matlab
%                ^ keyword.operator.assignment.matlab
%                 ^^^^^^^^^^ entity.name.function.matlab
%                             ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function

function myFunction(x)  % function without output
%^^^^^^^^^^^^^^^^^^ meta.function.matlab
%                  ^^^ meta.function.parameters.matlab - meta.function meta.function
%^^^^^^^ keyword.declaration.function.matlab
%        ^^^^^^^^^^ entity.name.function.matlab
%                  ^ punctuation.section.parens.begin.matlab
%                   ^ variable.parameter.input.matlab
%                    ^ punctuation.section.parens.end.matlab
%                       ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function

function myFunction(myInput,~,~)
%                  ^^^^^^^^^^^^^ meta.function.parameters.matlab - meta.function meta.function
%                   ^^^^^^^ variable.parameter.input.matlab
%                          ^ punctuation.separator.sequence.matlab
%                           ^ variable.language.anonymous.matlab - keyword.operator
%                            ^ punctuation.separator.sequence.matlab
%                             ^ variable.language.anonymous.matlab - keyword.operator
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function

function [] = myFunction(x)  % function without output
%^^^^^^^^^^^^^^^^^^^^^^^ meta.function.matlab
%                       ^^^ meta.function.parameters.matlab - meta.function meta.function
%^^^^^^^ keyword.declaration.function.matlab
%        ^ punctuation.section.brackets.begin.matlab
%         ^ punctuation.section.brackets.end.matlab
%           ^ keyword.operator.assignment.matlab
%             ^^^^^^^^^^ entity.name.function.matlab
%                       ^ punctuation.section.parens.begin.matlab
%                        ^ variable.parameter.input.matlab
%                         ^ punctuation.section.parens.end.matlab
%                            ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function

function myFunction  % function without output and without input
%^^^^^^^^^^^^^^^^^^ meta.function.matlab
%^^^^^^^ keyword.declaration.function.matlab
%        ^^^^^^^^^^ entity.name.function.matlab
%                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function

function parentfun
   function y = nestedfun  % nested function
%  ^^^^^^^^^^^^^^^^^^^^^^ meta.function.matlab meta.function.matlab
%  ^^^^^^^^ keyword.declaration.function.matlab
%           ^ variable.parameter.output.matlab
%             ^ keyword.operator.assignment.matlab
%               ^^^^^^^^^ entity.name.function.matlab
   end
   %^^ meta.function.matlab meta.function.matlab keyword.declaration.function.end.matlab
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function

function myFunction(x)
   arguments  % function argument validation block
%  ^^^^^^^^^ meta.function.matlab meta.arguments.matlab keyword.context.arguments.matlab
      x (1,1) double {mustBePositive} = 1.0
%             ^^^^^^ storage.type.matlab - support.function
      propArgs.?matlab.graphics.chart.primitive.Bar
%     ^^^^^^^^ variable.other.matlab
%             ^^ keyword.operator.properties.matlab - variable.other.matlab - punctuation
%               ^^^^^^ variable.other.matlab
%                     ^ punctuation.accessor.dot.matlab
%                      ^^^^^^^^ variable.other.member.matlab
%                              ^ punctuation.accessor.dot.matlab
%                               ^^^^^ variable.other.member.matlab
%                                    ^ punctuation.accessor.dot.matlab
%                                     ^^^^^^^^^ variable.other.member.matlab
%                                              ^ punctuation.accessor.dot.matlab
%                                               ^^^ variable.other.member.matlab
   end
%  ^^^ meta.function.matlab meta.arguments.matlab keyword.context.arguments.end.matlab
%     ^ meta.function.matlab - meta.arguments
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function

function myFunction(x,y)
   arguments (Repeating)  % function argument validation block
%  ^^^^^^^^^ meta.function.matlab meta.arguments.matlab keyword.context.arguments.matlab
%            ^^^^^^^^^^^ meta.function.matlab meta.arguments.matlab meta.attributes.matlab
%             ^^^^^^^^^ variable.parameter.attribute.matlab
      x (1,:) double
   end
%  ^^^ meta.function.matlab meta.arguments.matlab keyword.context.arguments.end.matlab
%     ^ meta.function.matlab - meta.arguments

   arguments
%  ^^^^^^^^^ meta.function.matlab meta.arguments.matlab keyword.context.arguments.matlab
      y (1,:) double
   end
%  ^^^ meta.function.matlab meta.arguments.matlab keyword.context.arguments.end.matlab
%     ^ meta.function.matlab - meta.arguments

   z = 1
   arguments  % argument validation blocks must appear before the first executable line of the function
%  ^^^^^^^^^ - keyword.context.arguments
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function

function myOutput = ... comment
   myFunction(x)
%  ^^^^^^^^^^ meta.function.matlab entity.name.function.matlab
%            ^^^ meta.function.parameters.matlab - meta.function meta.function
%            ^ punctuation.section.parens.begin.matlab
%             ^ variable.parameter.input.matlab
%              ^ punctuation.section.parens.end.matlab
end
%^^ meta.function.matlab keyword.declaration.function.end.matlab
%  ^ - meta.function


%---------------------------------------------
% Built-in constants

  true; false
% ^^^^ constant.language.boolean.true.matlab
%       ^^^^^ constant.language.boolean.false.matlab
  Inf; NaN
% ^^^ constant.language.matlab
%      ^^^ constant.language.matlab

  eps; pi
% ^^^ constant.language.matlab
%      ^^ constant.language.matlab

  intmax; intmin; realmax; realmin; namelengthmax; flintmax
% ^^^^^^ constant.language.matlab
%         ^^^^^^ constant.language.matlab
%                 ^^^^^^^ constant.language.matlab
%                          ^^^^^^^ constant.language.matlab
%                                   ^^^^^^^^^^^^^ constant.language.matlab
%                                                  ^^^^^^^^ constant.language.matlab

% A single i or j should not be highlighted as built-in constant, because they
% usually refer to index or loop variables. For the imaginary unit use 1i instead.
  i; j
% ^ - constant.language
%    ^ - constant.language


%---------------------------------------------
% Built-in variables

  ans
% ^^^ variable.language.matlab

X(1:2:end)
%     ^^^ variable.language.matlab

C{end}
% ^^^ variable.language.matlab

[~,~,iB] = union(A,B)
%^ variable.language.anonymous.matlab - keyword.operator
% ^ punctuation.separator.sequence.matlab
%  ^ variable.language.anonymous.matlab - keyword.operator
%   ^ punctuation.separator.sequence.matlab
%    ^^ variable.other.matlab

x = [A, ~B]
%       ^ keyword.operator.logical.matlab - variable.language

%---------------------------------------------
% Numbers

 1
%^ meta.number.float.decimal.matlab constant.numeric.value.matlab
 .1
%^^ meta.number.float.decimal.matlab constant.numeric.value.matlab
%^ punctuation.separator.decimal.matlab
 1.
%^^ meta.number.float.decimal.matlab constant.numeric.value.matlab
% ^ punctuation.separator.decimal.matlab
 1.1
%^^^ meta.number.float.decimal.matlab constant.numeric.value.matlab
% ^ punctuation.separator.decimal.matlab
 .1e1
%^^^^ meta.number.float.decimal.matlab constant.numeric.value.matlab
%^ punctuation.separator.decimal.matlab
 1.e1
%^^^^ meta.number.float.decimal.matlab constant.numeric.value.matlab
% ^ punctuation.separator.decimal.matlab
 1.1e1
%^^^^^ meta.number.float.decimal.matlab constant.numeric.value.matlab
% ^ punctuation.separator.decimal.matlab
 1e1
%^^^ meta.number.float.decimal.matlab constant.numeric.value.matlab
 1i - (4i)
%^^ meta.number.imaginary.decimal.matlab constant.numeric
%^ constant.numeric.value.matlab
% ^ constant.numeric.suffix.matlab
%      ^^ meta.number.imaginary.decimal.matlab constant.numeric
%      ^ constant.numeric.value.matlab
%       ^ constant.numeric.suffix.matlab
 1.i
%^^^ meta.number.imaginary.decimal.matlab constant.numeric
%^^ constant.numeric.value.matlab
% ^ punctuation.separator.decimal.matlab
%  ^ constant.numeric.suffix.matlab
 1j
%^^ meta.number.imaginary.decimal.matlab constant.numeric
%^ constant.numeric.value.matlab
% ^ constant.numeric.suffix.matlab
 1e2j
%^^^^ meta.number.imaginary.decimal.matlab constant.numeric
%^^^ constant.numeric.value.matlab
%   ^ constant.numeric.suffix.matlab
 0x2A
%^^^^ meta.number.integer.hexadecimal.matlab constant.numeric
%^^ constant.numeric.base.matlab
%  ^^ constant.numeric.value.matlab
 0X2A
%^^^^ meta.number.integer.hexadecimal.matlab constant.numeric
%^^ constant.numeric.base.matlab
%  ^^ constant.numeric.value.matlab
 0b101010
%^^^^^^^^ meta.number.integer.binary.matlab constant.numeric
%^^ constant.numeric.base.matlab
%  ^^^^^^ constant.numeric.value.matlab
 0B101010
%^^^^^^^^ meta.number.integer.binary.matlab constant.numeric
%^^ constant.numeric.base.matlab
%  ^^^^^^ constant.numeric.value.matlab
 0x2Au8
%^^^^^^ meta.number.integer.hexadecimal.matlab constant.numeric
%^^ constant.numeric.base.matlab
%  ^^ constant.numeric.value.matlab
%    ^^ constant.numeric.suffix.matlab
 0x2As32
%^^^^^^^ meta.number.integer.hexadecimal.matlab constant.numeric
%^^ constant.numeric.base.matlab
%  ^^ constant.numeric.value.matlab
%    ^^^ constant.numeric.suffix.matlab

%---------------------------------------------
% Operators
% https://www.mathworks.com/help/matlab/matlab_prog/matlab-operators-and-special-characters.html

C = A + B       % Addition
%     ^ keyword.operator.arithmetic.matlab
C = +A          % Unary plus
%   ^ keyword.operator.arithmetic.matlab
C = A - B       % Subtraction
%     ^ keyword.operator.arithmetic.matlab
C = -A          % Unary minus
%   ^ keyword.operator.arithmetic.matlab
C = A.*B        % Element-wise multiplication
%    ^^ keyword.operator.arithmetic.matlab
C = A*B         % Matrix multiplication
%    ^ keyword.operator.arithmetic.matlab
x = A./B        % Element-wise right division
%    ^^ keyword.operator.arithmetic.matlab
x = B/A         % Matrix right division
%    ^ keyword.operator.arithmetic.matlab
x = B.\A        % Element-wise left division
%    ^^ keyword.operator.arithmetic.matlab
x = A\B         % Matrix left division
%    ^ keyword.operator.arithmetic.matlab
C = A.^B        % Element-wise power
%    ^^ keyword.operator.arithmetic.matlab
C = A^B         % Matrix power
%    ^ keyword.operator.arithmetic.matlab
B = A.'         % Transpose
%    ^^ keyword.operator.transpose.matlab
B = A'          % Complex conjugate transpose
%    ^ keyword.operator.transpose.matlab
A == B          % Equal to
% ^^ keyword.operator.comparison.matlab
A ~= B          % Not equal to
% ^^ keyword.operator.comparison.matlab
A > B           % Greater than
% ^ keyword.operator.comparison.matlab
A >= B          % Greater than or equal to
% ^^ keyword.operator.comparison.matlab
A < B           % Less than
% ^ keyword.operator.comparison.matlab
A <= B          % Less than or equal to
% ^^ keyword.operator.comparison.matlab
A & B           % Logical AND
% ^ keyword.operator.logical.matlab
A | B           % Logical OR
% ^ keyword.operator.logical.matlab
expr1 && expr2  % Logical AND with short-circuiting
%     ^^ keyword.operator.logical.matlab
expr1 || expr2  % Logical OR with short-circuiting
%     ^^ keyword.operator.logical.matlab
B = ~A          % Logical NOT
%   ^ keyword.operator.logical.matlab
x = j:k         % Vector creation
%    ^ keyword.operator.colon.matlab
A(:,n)          % Array subscripting
% ^ keyword.operator.colon.matlab
mc = ?ClassName % Obtain meta.class object
%    ^ keyword.operator.metaclass.matlab
f = @sin;
%   ^ keyword.operator.at.matlab
f = @(x,y) (x.^2 - y.^2);
%   ^ keyword.operator.at.matlab
%    ^^^^^ meta.function.parameters.matlab
%    ^ punctuation.section.parens.begin.matlab
%     ^ variable.parameter.input.matlab
%      ^ punctuation.separator.sequence.matlab
%       ^ variable.parameter.input.matlab
%        ^ punctuation.section.parens.end.matlab

   !echo abc % this isn't a comment - it's passed to system command
%  ^ keyword.operator.shell-escape.matlab - meta.string
%   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.matlab string.unquoted.matlab - comment


%---------------------------------------------
% Variables, structure arrays and transpose operator

x = a
%   ^ variable.other.matlab
x = _a
%   ^^ invalid.illegal.invalid-variable-name.matlab
x = 6x
%   ^^ invalid.illegal.invalid-variable-name.matlab
x = a.b.c
%   ^ variable.other.matlab
%    ^ punctuation.accessor.dot.matlab
%     ^ variable.other.member.matlab
%      ^ punctuation.accessor.dot.matlab
%       ^ variable.other.member.matlab
X = zeros.*eye
%   ^^^^^ support.function.builtin.matlab
%        ^^ keyword.operator.arithmetic.matlab
%          ^^^ support.function.builtin.matlab
X = data.zeros.*eye
%   ^^^^ variable.other.matlab - support.function
%       ^ punctuation.accessor.dot.matlab
%        ^^^^^ variable.other.member.matlab - support.function
%             ^^ keyword.operator.arithmetic.matlab - punctuation.accessor
x = zeros.eye
%   ^^^^^ variable.other.matlab - support.function
%        ^ punctuation.accessor.dot.matlab
%         ^^^ variable.other.member.matlab - support.function
x = A(n)
%     ^ variable.other.matlab
x = A(a.b.c)
%     ^ variable.other.matlab
%      ^ punctuation.accessor.dot.matlab
%       ^ variable.other.member.matlab
%        ^ punctuation.accessor.dot.matlab
%         ^ variable.other.member.matlab
h(1).LineStyle = '--'
%   ^ punctuation.accessor.dot.matlab
%    ^^^^^^^^^ variable.other.member.matlab
x = [1, 2, n]
%          ^ variable.other.matlab
x = [1, 2, a.b]
%          ^ variable.other.matlab
%           ^ punctuation.accessor.dot.matlab
%            ^ variable.other.member.matlab
x = a.b'
%   ^ variable.other.matlab
%    ^ punctuation.accessor.dot.matlab
%     ^ variable.other.member.matlab
%      ^ keyword.operator.transpose.matlab
x = a.b.'
%   ^ variable.other.matlab
%    ^ punctuation.accessor.dot.matlab
%     ^ variable.other.member.matlab
%      ^^ keyword.operator.transpose.matlab
x = a.b.c'
%   ^ variable.other.matlab
%    ^ punctuation.accessor.dot.matlab
%     ^ variable.other.member.matlab
%      ^ punctuation.accessor.dot.matlab
%       ^ variable.other.member.matlab
%        ^ keyword.operator.transpose.matlab
x = a.b.c.'
%   ^ variable.other.matlab
%    ^ punctuation.accessor.dot.matlab
%     ^ variable.other.member.matlab
%      ^ punctuation.accessor.dot.matlab
%       ^ variable.other.member.matlab
%        ^^ keyword.operator.transpose.matlab
x = a[3]' + b(4)'
%   ^ variable.other.matlab
%       ^ keyword.operator.transpose.matlab
%           ^ variable.other.matlab
%               ^ keyword.operator.transpose.matlab
l = {l.n}';
%    ^ variable.other.matlab
%     ^ punctuation.accessor.dot.matlab
%      ^ variable.other.member.matlab
%        ^ keyword.operator.transpose.matlab
   x .'
%    ^^ keyword.operator.transpose.matlab
   42'
%  ^^ meta.number.float.decimal.matlab constant.numeric.value.matlab
%    ^ keyword.operator.transpose.matlab
   42.'
%  ^^^ meta.number.float.decimal.matlab constant.numeric.value.matlab
%     ^ keyword.operator.transpose.matlab
% Note: The notation used above is ambiguous whether it means the transpose of `42` or the complex
% conjugate transpose of `42.`. But since both numbers and operators would be exactly the same in
% all cases, we can't decide how Matlab interprets it and are free to choose whether the dot is part
% of the number or the operator. So in this case, we match the number greedily.
   42..'
%  ^^^ meta.number.float.decimal.matlab constant.numeric.value.matlab
%    ^ punctuation.separator.decimal.matlab
%     ^^ keyword.operator.transpose - punctuation
   42. .'
%  ^^^ meta.number.float.decimal.matlab constant.numeric.value.matlab
%    ^ punctuation.separator.decimal.matlab
%      ^^ keyword.operator.transpose - punctuation
   'character array'.'
%  ^^^^^^^^^^^^^^^^^ meta.string.matlab string.quoted.single.matlab
%                   ^^ keyword.operator.transpose.matlab
   'character array' .'
%  ^^^^^^^^^^^^^^^^^ meta.string.matlab string.quoted.single.matlab
%                    ^^ keyword.operator.transpose.matlab
   "string"'
%  ^^^^^^^^ meta.string.matlab string.quoted.double.matlab
%          ^ keyword.operator.transpose.matlab
   "string".'
%  ^^^^^^^^ meta.string.matlab string.quoted.double.matlab
%          ^^ keyword.operator.transpose.matlab
   'character array with missing closing quote mark
%                                                  ^ invalid.illegal.unclosed-string.matlab
   "string with missing closing quote mark
%                                         ^ invalid.illegal.unclosed-string.matlab
   true'
%  ^^^^ constant.language.boolean.true.matlab
%      ^ keyword.operator.transpose.matlab
   true.'
%  ^^^^ constant.language.boolean.true.matlab
%      ^^ keyword.operator.transpose.matlab

% If a built-in function is followed by a transpose operator, we assume that the
% identifier was redefined beforehand for usage as a variable. This heuristic
% results in wrong highlighting for the very few cases when it may actually be
% intended to transpose a built-in function result, but it leads to better
% highlighting in general due to the large number of built-in functions.
   start'
%  ^^^^^ variable.other.matlab - support.function
%       ^ keyword.operator.transpose.matlab - string
   start.'
%  ^^^^^ variable.other.matlab - support.function
%       ^^ keyword.operator.transpose.matlab - string
   start = "built-in function name as variable identifier"
%  ^^^^^ variable.other.matlab - support.function
   zeros == ones
%  ^^^^^ support.function.builtin.matlab - variable.other
   eps = 1e-6
%  ^^^ constant.language.matlab - variable.other


%---------------------------------------------
% Incomplete expressions

x = a.
%    ^ punctuation.accessor.dot.matlab
x = a.b.
%      ^ punctuation.accessor.dot.matlab
x = a(1).
%       ^ punctuation.accessor.dot.matlab
x = a{1}.
%       ^ punctuation.accessor.dot.matlab
x = a{1}.*B
%       ^^ - punctuation.accessor
x = zeros.
%   ^^^^^ support.function.builtin.matlab - variable.other
%        ^ punctuation.accessor.dot.matlab
x = a .
%     ^ - punctuation.accessor
.
% <- - punctuation.accessor


%---------------------------------------------
% String
a = '%'
a = '.'% .'
%      ^^^^ comment.line.percentage.matlab - string

regexprep(outloc,'.+\\','')
%                ^ punctuation.definition.string.begin.matlab
%                 ^^ meta.parens.matlab string.quoted.single.matlab
%                   ^^ constant.character.escape.matlab
%                     ^ punctuation.definition.string.end.matlab

s1="00:06:57";
%  ^ punctuation.definition.string.begin.matlab
%   ^^^^^^^^ string.quoted.double.matlab
%           ^ punctuation.definition.string.end.matlab

fprintf(fileID,'%6.2f %12.8f\r\n',A);
%                     ^^^^^^ constant.other.placeholder.matlab
%                           ^^^^ constant.character.escape.matlab


%---------------------------------------------
% Loops and conditional statements

   if (x >= minVal) && (x <= maxVal)
%  ^^ meta.block.if.matlab keyword.control.conditional.if.matlab
      disp('Value within specified range.')
   elseif (x > maxVal)
%  ^^^^^^ meta.block.if.matlab keyword.control.conditional.elseif.matlab
      disp('Value exceeds maximum value.')
   else
%  ^^^^ meta.block.if.matlab keyword.control.conditional.else.matlab
      disp('Value is below minimum value.')
   end
%  ^^^ meta.block.if.matlab keyword.control.conditional.end.matlab
%     ^ - meta.block.if

   switch plottype
%  ^^^^^^ meta.block.switch.matlab keyword.control.conditional.switch.matlab
      case 'bar'
%^^^^^^^^^^^^^^^ meta.disable-dedentation.matlab
%     ^^^^ meta.block.switch.matlab keyword.control.conditional.case.matlab
         bar(x)
         title('Bar Graph')
      case {'pie', 'pie3'}
%^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.disable-dedentation.matlab
%     ^^^^ meta.block.switch.matlab keyword.control.conditional.case.matlab
         pie3(x)
         title('Pie Chart')
      otherwise
%     ^^^^^^^^^ meta.block.switch.matlab keyword.control.conditional.otherwise.matlab
         warning('Unexpected plot type. No plot created.')
   end
%  ^^^ meta.block.switch.matlab keyword.control.conditional.end.matlab
%     ^ - meta.block.switch

   for v = 1.0:-0.2:0.0
%  ^^^ meta.block.for.matlab keyword.control.loop.for.matlab
      disp(v)
   end
%  ^^^ meta.block.for.matlab keyword.control.loop.end.matlab
%     ^ - meta.block.for

   parfor i = 1:10
%  ^^^^^^ meta.block.parfor.matlab keyword.control.loop.parfor.matlab
      a(i,:) = real(fft(r(i)));
   end
%  ^^^ meta.block.parfor.matlab keyword.control.loop.end.matlab
%     ^ - meta.block.parfor

   while 1
%  ^^^^^ meta.block.while.matlab keyword.control.loop.while.matlab
      tmp = rand;
      if tmp > limit
%     ^^ meta.block.while.matlab meta.block.if.matlab keyword.control.conditional.if.matlab
         break
%        ^^^^^ meta.block.while.matlab meta.block.if.matlab keyword.control.flow.break.matlab
      end
%     ^^^ meta.block.while.matlab meta.block.if.matlab keyword.control.conditional.end.matlab
%        ^ meta.block.while.matlab - meta.block.if
      s = s + tmp;
   end
%  ^^^ meta.block.while.matlab keyword.control.loop.end.matlab
%     ^ - meta.block.while

   for n = 1:50
%  ^^^ meta.block.for.matlab keyword.control.loop.for.matlab
      if mod(n,7)
%     ^^ meta.block.for.matlab meta.block.if.matlab keyword.control.conditional.if.matlab
         continue
%        ^^^^^^^^ meta.block.for.matlab meta.block.if.matlab keyword.control.flow.continue.matlab
      end
%     ^^^ meta.block.for.matlab meta.block.if.matlab keyword.control.conditional.end.matlab
%        ^ meta.block.for.matlab - meta.block.if
      disp(['Divisible by 7: ' num2str(n)])
   end
%  ^^^ meta.block.for.matlab keyword.control.loop.end.matlab

   try
%  ^^^ meta.block.try.matlab keyword.control.exception.try.matlab
      a = notaFunction(5,6);
   catch ME
%  ^^^^^ meta.block.try.matlab keyword.control.exception.catch.matlab
      switch ME.identifier
%     ^^^^^^ meta.block.try.matlab meta.block.switch.matlab keyword.control.conditional.switch.matlab
         case 'MATLAB:UndefinedFunction'
%        ^^^^ meta.block.try.matlab meta.block.switch.matlab keyword.control.conditional.case.matlab
            warning('Function is undefined. Assigning a value of NaN.');
            a = NaN;
         case 'MATLAB:scriptNotAFunction'
%        ^^^^ meta.block.try.matlab meta.block.switch.matlab keyword.control.conditional.case.matlab
            warning(['Attempting to execute script as function.'...
               'Running script and assigning output a value of 0.']);
            notaFunction;
            a = 0;
         otherwise
%        ^^^^^^^^^ meta.block.try.matlab meta.block.switch.matlab keyword.control.conditional.otherwise.matlab
            rethrow(ME)
      end
%     ^^^ meta.block.try.matlab meta.block.switch.matlab keyword.control.conditional.end.matlab
%        ^ meta.block.try.matlab - meta.block.switch
   end
%  ^^^ meta.block.try.matlab keyword.control.exception.end.matlab
%     ^ - meta.block.try


%---------------------------------------------
% Built-in commands and functions

   import matlab.io.hdf4.*
%  ^^^^^^ support.function.builtin.matlab
%         ^^^^^^^^^^^^^^^^ meta.string.matlab string.unquoted.matlab
%                        ^ - keyword.operator

   clear
%  ^^^^^ support.function.builtin.matlab
   clear all
%  ^^^^^ support.function.builtin.matlab
%        ^^^ meta.string.matlab support.constant.matlab
   clear on
%  ^^^^^ support.function.builtin.matlab
%        ^^ - support
   clear name1 name2 name3
%  ^^^^^ support.function.builtin.matlab
   clear -regexp ^Mon ^Tue ^Wed
%  ^^^^^ support.function.builtin.matlab
%        ^^^^^^^ meta.string.matlab support.constant.matlab
%                ^^^^ meta.string.matlab string.regexp.matlab
%                     ^^^^ meta.string.matlab string.regexp.matlab
%                          ^^^^ meta.string.matlab string.regexp.matlab
   clear('name1')
%  ^^^^^ support.function.builtin.matlab
%       ^^^^^^^^^ meta.parens.matlab
%        ^^^^^^^ meta.string.matlab string.quoted.single.matlab
   exist ('file.m')
%        ^ - string.unquoted

   clc
%  ^^^ support.function.builtin.matlab

   figure
%  ^^^^^^ support.function.builtin.matlab
   grid on
%  ^^^^ support.function.builtin.matlab
%       ^^ meta.string.matlab support.constant.matlab
   axis equal
%  ^^^^ support.function.builtin.matlab
%       ^^^^^ meta.string.matlab support.constant.matlab

   tic
%  ^^^ support.function.builtin.matlab
   pause(1)
%  ^^^^^ support.function.builtin.matlab
   toc
%  ^^^ support.function.builtin.matlab

tEnd = cputime - tStart
%      ^^^^^^^ support.function.builtin.matlab

X = rand
%   ^^^^ support.function.builtin.matlab
X = rand(2)
%   ^^^^ support.function.builtin.matlab

   not(and(A, B))
%  ^^^ support.function.builtin.matlab - keyword.operator
%      ^^^ support.function.builtin.matlab - keyword.operator

y = int32(10)
%   ^^^^^ support.function.builtin.matlab - storage.type

y = double('a')
%   ^^^^^^ support.function.builtin.matlab - storage.type

X = inf(n)
%   ^^^ support.function.builtin.matlab

X = nan(n)
%   ^^^ support.function.builtin.matlab


%---------------------------------------------
% Pop function context if another function appears at the start of a line

function myFunction(x)

function notNestedFunction(x)
%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function - meta.function meta.function
