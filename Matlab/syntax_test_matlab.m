% SYNTAX TEST "Packages/Matlab/Matlab.sublime-syntax"


%---------------------------------------------
% Matlab OOP

classdef ClassName  % comment
%^^^^^^^^^^^^^^^^^ meta.class.matlab
%^^^^^^^ keyword.declaration.class.matlab
%        ^^^^^^^^^ entity.name.class.matlab
%                   ^^^^^^^^^^ comment.line.percentage.matlab
end
%^^ meta.class.matlab keyword.control.end.class.matlab
%  ^ - meta.class

classdef (Sealed = false, ~Hidden) ClassName < SuperClass1 & SuperClass2  % comment
%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.matlab
%^^^^^^^ keyword.declaration.class.matlab
%        ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attributes.matlab
%        ^ punctuation.section.parens.begin.matlab
%         ^^^^^^ variable.parameter.attribute.matlab
%                ^ keyword.operator.assignment.matlab
%                  ^^^^^ constant.language.matlab
%                       ^ punctuation.separator.sequence.matlab
%                         ^ keyword.operator.logical.matlab
%                          ^^^^^^ variable.parameter.attribute.matlab
%                                ^ punctuation.section.parens.end.matlab
%                                  ^^^^^^^^^ entity.name.class.matlab
%                                            ^ punctuation.separator.inheritance.matlab
%                                              ^^^^^^^^^^^ entity.other.inherited-class.matlab
%                                                          ^ punctuation.separator.sequence.matlab
%                                                            ^^^^^^^^^^^ entity.other.inherited-class.matlab
%                                                                         ^^^^^^^^^^ comment.line.percentage.matlab

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
%                                               ^^^^ constant.language.matlab
%                                                   ^ punctuation.section.parens.end.matlab
%                                                      ^^^^^^^^^^ comment.line.percentage.matlab
      PropName
   end
%  ^^^ meta.class.matlab meta.properties.matlab keyword.control.end.properties.matlab
%     ^ meta.class.matlab - meta.properties

   methods (Static)  % comment
%  ^^^^^^^^^^^^^^^^ meta.class.matlab meta.methods.matlab
%  ^^^^^^^ keyword.declaration.methods.matlab
%          ^^^^^^^^ meta.attributes.matlab
%          ^ punctuation.section.parens.begin.matlab
%           ^^^^^^ variable.parameter.attribute.matlab
%                 ^ punctuation.section.parens.end.matlab
%                    ^^^^^^^^^^ comment.line.percentage.matlab
      methodName
   end
%  ^^^ meta.class.matlab meta.methods.matlab keyword.control.end.methods.matlab
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
%  ^^^ meta.class.matlab meta.events.matlab keyword.control.end.events.matlab
%     ^ meta.class.matlab - meta.events

   enumeration  % comment
%  ^^^^^^^^^^^ meta.class.matlab meta.enumeration.matlab keyword.declaration.enumeration.matlab
%               ^^^^^^^^^^ comment.line.percentage.matlab
      EnumName
   end
%  ^^^ meta.class.matlab meta.enumeration.matlab keyword.control.end.enumeration.matlab
%     ^ meta.class.matlab - meta.enumeration
end
%^^ meta.class.matlab keyword.control.end.class.matlab
%  ^ - meta.class


%---------------------------------------------
% Parens, brackets, braces, punctuation

x = [ 1.76 ]
% <- source.matlab meta.variable.other.valid.matlab
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
%  <- source.matlab meta.variable.other.valid.matlab
%      ^ source.matlab keyword.operator.assignment.matlab
%        ^ source.matlab meta.variable.other.valid.matlab
%                       ^ source.matlab punctuation.section.parens.begin.matlab
%                         ^ source.matlab meta.parens.matlab meta.variable.other.valid.matlab
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
% ^^^^^^^^^^^^^^^^^^^ comment.line.double-percentage.matlab - punctuation

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
%     ^^ comment.line.double-percentage.matlab punctuation.definition.comment.matlab
%       ^^^^^ comment.line.double-percentage.matlab - punctuation


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
%^^ meta.function.matlab keyword.control.end.function.matlab
%  ^ - meta.function

function [one, two, three] = myFunction(x)  % funtion with more than one output
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
%^^ meta.function.matlab keyword.control.end.function.matlab
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
%^^ meta.function.matlab keyword.control.end.function.matlab
%  ^ - meta.function

function myOutput = myFunction(x, ... function with line continuation in input arguments
   y, ... comment
   z  ... comment
)
end
%^^ meta.function.matlab keyword.control.end.function.matlab
%  ^ - meta.function

function myOutput = myFunction  % function without input
%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.matlab
%^^^^^^^ keyword.declaration.function.matlab
%        ^^^^^^^^ variable.parameter.output.matlab
%                 ^ keyword.operator.assignment.matlab
%                   ^^^^^^^^^^ entity.name.function.matlab
%                               ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
end
%^^ meta.function.matlab keyword.control.end.function.matlab
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
%^^ meta.function.matlab keyword.control.end.function.matlab
%  ^ - meta.function

function myFunction(myInput,~,~)
%                  ^^^^^^^^^^^^^ meta.function.parameters.matlab - meta.function meta.function
%                   ^^^^^^^ variable.parameter.input.matlab
%                          ^ punctuation.separator.sequence.matlab
%                           ^ variable.language.blank.matlab - keyword.operator
%                            ^ punctuation.separator.sequence.matlab
%                             ^ variable.language.blank.matlab - keyword.operator
end
%^^ meta.function.matlab keyword.control.end.function.matlab
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
%^^ meta.function.matlab keyword.control.end.function.matlab
%  ^ - meta.function

function myFunction  % function without output and without input
%^^^^^^^^^^^^^^^^^^ meta.function.matlab
%^^^^^^^ keyword.declaration.function.matlab
%        ^^^^^^^^^^ entity.name.function.matlab
%                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
end
%^^ meta.function.matlab keyword.control.end.function.matlab
%  ^ - meta.function

function parentfun
   function y = nestedfun  % nested function
%  ^^^^^^^^^^^^^^^^^^^^^^ meta.function.matlab meta.function.matlab
%  ^^^^^^^^ keyword.declaration.function.matlab
%           ^ variable.parameter.output.matlab
%             ^ keyword.operator.assignment.matlab
%               ^^^^^^^^^ entity.name.function.matlab
   end
   %^^ meta.function.matlab meta.function.matlab keyword.control.end.function.matlab
end
%^^ meta.function.matlab keyword.control.end.function.matlab
%  ^ - meta.function

function myFunction(x)
   arguments  % function argument validation block
%  ^^^^^^^^^ meta.function.matlab meta.arguments.matlab keyword.context.arguments.matlab
      x (1,1) double {mustBePositive} = 1.0
      propArgs.?matlab.graphics.chart.primitive.Bar
%     ^^^^^^^^ meta.variable.other.valid.matlab
%             ^^ keyword.operator.properties.matlab - meta.variable.other.valid.matlab - punctuation
%               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.variable.other.valid.matlab
%                     ^ punctuation.accessor.dot.matlab
%                              ^ punctuation.accessor.dot.matlab
%                                    ^ punctuation.accessor.dot.matlab
%                                              ^ punctuation.accessor.dot.matlab
   end
%  ^^^ meta.function.matlab meta.arguments.matlab keyword.control.end.arguments.matlab
%     ^ meta.function.matlab - meta.arguments
end
%^^ meta.function.matlab keyword.control.end.function.matlab
%  ^ - meta.function

function myFunction(x,y)
   arguments (Repeating)  % function argument validation block
%  ^^^^^^^^^ meta.function.matlab meta.arguments.matlab keyword.context.arguments.matlab
%            ^^^^^^^^^^^ meta.function.matlab meta.arguments.matlab meta.attributes.matlab
%             ^^^^^^^^^ variable.parameter.attribute.matlab
      x (1,:) double
      y (1,:) double
   end
%  ^^^ meta.function.matlab meta.arguments.matlab keyword.control.end.arguments.matlab
%     ^ meta.function.matlab - meta.arguments
end
%^^ meta.function.matlab keyword.control.end.function.matlab
%  ^ - meta.function

%---------------------------------------------
% Built-in constants

  true; false
% ^^^^ constant.language.matlab
%       ^^^^^ constant.language.matlab
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
%^ variable.language.blank.matlab - keyword.operator
% ^ punctuation.separator.sequence.matlab
%  ^ variable.language.blank.matlab - keyword.operator
%   ^ punctuation.separator.sequence.matlab
%    ^^ meta.variable.other.valid.matlab


%---------------------------------------------
% Numbers

 1
%^ meta.number.float.decimal.matlab constant.numeric.value.matlab
 .1
%^^ meta.number.float.decimal.matlab constant.numeric.value.matlab
%^ punctuation.separator.decimal.matlab
 1.1
%^^^ meta.number.float.decimal.matlab constant.numeric.value.matlab
% ^ punctuation.separator.decimal.matlab
 .1e1
%^^^^ meta.number.float.decimal.matlab constant.numeric.value.matlab
%^ punctuation.separator.decimal.matlab
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


%---------------------------------------------
% Variables, structure arrays and transpose operator

x = a
%   ^ meta.variable.other.valid.matlab
x = _a
%   ^^ invalid.illegal.invalid-variable-name.matlab
x = 6x
%   ^^ invalid.illegal.invalid-variable-name.matlab
x = a.b.c
%   ^^^^^ meta.variable.other.valid.matlab
%    ^ punctuation.accessor.dot.matlab
%      ^ punctuation.accessor.dot.matlab
X = zeros.*eye
%   ^^^^^ support.function.builtin.matlab
%        ^^ keyword.operator.arithmetic.matlab
%          ^^^ support.function.builtin.matlab
X = data.zeros.*eye
%   ^^^^^^^^^^ meta.variable.other.valid.matlab - support.function
%       ^ punctuation.accessor.dot.matlab
%             ^^ keyword.operator.arithmetic.matlab - punctuation.accessor
x = zeros.eye
%   ^^^^^^^^^ meta.variable.other.valid.matlab - support.function
%        ^ punctuation.accessor.dot.matlab
x = A(n)
%     ^ meta.variable.other.valid.matlab
x = A(a.b.c)
%     ^^^^^ meta.variable.other.valid.matlab
%      ^ punctuation.accessor.dot.matlab
%        ^ punctuation.accessor.dot.matlab
x = [1, 2, n]
%          ^ meta.variable.other.valid.matlab
x = [1, 2, a.b]
%          ^^^ meta.variable.other.valid.matlab
%           ^ punctuation.accessor.dot.matlab
x = a.b'
%   ^^^ meta.variable.other.valid.matlab
%    ^ punctuation.accessor.dot.matlab
%      ^ keyword.operator.transpose.matlab
x = a.b.'
%   ^^^ meta.variable.other.valid.matlab
%    ^ punctuation.accessor.dot.matlab
%      ^^ keyword.operator.transpose.matlab
x = a.b.c'
%   ^^^^^ meta.variable.other.valid.matlab
%    ^ punctuation.accessor.dot.matlab
%      ^ punctuation.accessor.dot.matlab
%        ^ keyword.operator.transpose.matlab
x = a.b.c.'
%   ^^^^^ meta.variable.other.valid.matlab
%    ^ punctuation.accessor.dot.matlab
%      ^ punctuation.accessor.dot.matlab
%        ^^ keyword.operator.transpose.matlab
x = a[3]' + b(4)'
%   ^ meta.variable.other.valid.matlab
%       ^ keyword.operator.transpose.matlab
%           ^ meta.variable.other.valid.matlab
%               ^ keyword.operator.transpose.matlab
l = {l.n}';
%    ^^^ meta.variable.other.valid.matlab
%     ^ punctuation.accessor.dot.matlab
%        ^ keyword.operator.transpose.matlab

%---------------------------------------------
% String
a = '%'
a = '.' % .'
%         ^^^ comment.line.percentage.matlab

 'a'a'
%  ^ string.quoted.single.matlab invalid.illegal.unescaped-quote.matlab
%^ string.quoted.single.matlab punctuation.definition.string.begin.matlab
% ^ string.quoted.single.matlab
%    ^ string.quoted.single.matlab punctuation.definition.string.end.matlab

regexprep(outloc,'.+\\','')
%                ^ punctuation.definition.string.begin.matlab
%                 ^^ meta.parens.matlab string.quoted.single.matlab
%                   ^^ constant.character.escape.matlab
%                     ^ punctuation.definition.string.end.matlab

s1="00:06:57";
%  ^ punctuation.definition.string.begin.matlab
%   ^^^^^^^^ string.quoted.double.matlab
%           ^ punctuation.definition.string.end.matlab


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
%  ^^^ meta.block.if.matlab keyword.control.end.if.matlab
%     ^ - meta.block.if

   switch plottype
%  ^^^^^^ meta.block.switch.matlab keyword.control.conditional.switch.matlab
      case 'bar'
%     ^^^^ meta.block.switch.matlab keyword.control.conditional.case.matlab
         bar(x)
         title('Bar Graph')
      case {'pie', 'pie3'}
%     ^^^^ meta.block.switch.matlab keyword.control.conditional.case.matlab
         pie3(x)
         title('Pie Chart')
      otherwise
%     ^^^^^^^^^ meta.block.switch.matlab keyword.control.conditional.otherwise.matlab
         warning('Unexpected plot type. No plot created.')
   end
%  ^^^ meta.block.switch.matlab keyword.control.end.switch.matlab
%     ^ - meta.block.switch

   for v = 1.0:-0.2:0.0
%  ^^^ meta.block.for.matlab keyword.control.loop.for.matlab
      disp(v)
   end
%  ^^^ meta.block.for.matlab keyword.control.end.for.matlab
%     ^ - meta.block.for

   parfor i = 1:10
%  ^^^^^^ meta.block.parfor.matlab keyword.control.loop.parfor.matlab
      a(i,:) = real(fft(r(i)));
   end
%  ^^^ meta.block.parfor.matlab keyword.control.end.parfor.matlab
%     ^ - meta.block.parfor

   while 1
%  ^^^^^ meta.block.while.matlab keyword.control.loop.while.matlab
      tmp = rand;
      if tmp > limit
%     ^^ meta.block.while.matlab meta.block.if.matlab keyword.control.conditional.if.matlab
         break
%        ^^^^^ meta.block.while.matlab meta.block.if.matlab keyword.control.flow.break.matlab
      end
%     ^^^ meta.block.while.matlab meta.block.if.matlab keyword.control.end.if.matlab
%        ^ meta.block.while.matlab - meta.block.if
      s = s + tmp;
   end
%  ^^^ meta.block.while.matlab keyword.control.end.while.matlab
%     ^ - meta.block.while

   for n = 1:50
%  ^^^ meta.block.for.matlab keyword.control.loop.for.matlab
      if mod(n,7)
%     ^^ meta.block.for.matlab meta.block.if.matlab keyword.control.conditional.if.matlab
         continue
%        ^^^^^^^^ meta.block.for.matlab meta.block.if.matlab keyword.control.flow.continue.matlab
      end
%     ^^^ meta.block.for.matlab meta.block.if.matlab keyword.control.end.if.matlab
%        ^ meta.block.for.matlab - meta.block.if
      disp(['Divisible by 7: ' num2str(n)])
   end
%  ^^^ meta.block.for.matlab keyword.control.end.for.matlab

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
%     ^^^ meta.block.try.matlab meta.block.switch.matlab keyword.control.end.switch.matlab
%        ^ meta.block.try.matlab - meta.block.switch
   end
%  ^^^ meta.block.try.matlab keyword.control.end.try.matlab
%     ^ - meta.block.try


%---------------------------------------------
% Built-in commands and functions

   import matlab.io.hdf4.*
%  ^^^^^^ keyword.other.import.matlab
%         ^^^^^^^^^^^^^^^^ meta.path.import.matlab
%                        ^ - keyword.operator

   clear all
%  ^^^^^ keyword.other.command.matlab
%        ^^^ support.constant.matlab
   clear on
%        ^^ - support
   clc
%  ^^^ keyword.other.command.matlab

   figure
%  ^^^^^^ keyword.other.command.matlab
   grid on
%  ^^^^ keyword.other.command.matlab
%       ^^ support.constant.matlab
   axis equal
%  ^^^^ keyword.other.command.matlab
%       ^^^^^ support.constant.matlab

   tic
%  ^^^ keyword.other.command.matlab
   pause(1)
%  ^^^^^ support.function.builtin.matlab
   toc
%  ^^^ keyword.other.command.matlab

tEnd = cputime - tStart
%      ^^^^^^^ support.constant.builtin.matlab

X = zeros
%   ^^^^^ support.function.builtin.matlab
X = zeros(2)
%   ^^^^^ support.function.builtin.matlab

   not(and(A, B))
%  ^^^ support.function.builtin.matlab - keyword.operator
%      ^^^ support.function.builtin.matlab - keyword.operator

y = int32(10)
%   ^^^^^ support.function.builtin.matlab storage.type.matlab

X = inf(n)
%   ^^^ support.function.builtin.matlab

X = nan(n)
%   ^^^ support.function.builtin.matlab
