% SYNTAX TEST "Packages/Matlab/Matlab.sublime-syntax"


%---------------------------------------------
% Matlab OOP test

classdef (Sealed = false) classname < baseclass
% <- keyword.other
%         ^ variable.parameter
%                ^ keyword.operator.symbols
%                  ^ constant.language
%                         ^ entity.name.class
%                                     ^ entity.other.inherited-class
   properties (SetAccess = private, GetAccess = true)
%  ^ keyword.other
%              ^ variable.parameter
%                          ^ constant.language
%                                   ^ variable.parameter
      PropName
   end
%  ^ keyword.control
   methods
%  ^ keyword.other
      methodName
   end
   events
%  ^ keyword.other
      EventName
   end
   enumeration
%  ^ keyword.other
      EnumName
   end
end


%---------------------------------------------
% Syntax brackets/parens punctuation test

x = [ 1.76 ]
% <- source.matlab meta.variable.other.valid.matlab
% ^ source.matlab keyword.operator.symbols.matlab
%   ^ source.matlab punctuation.section.brackets.begin.matlab
%     ^^^^ source.matlab meta.brackets.matlab constant.numeric.matlab
%          ^ source.matlab punctuation.section.brackets.end.matlab


xAprox = fMetodoDeNewton( xi )
%  <- source.matlab meta.variable.other.valid.matlab
%      ^ source.matlab keyword.operator.symbols.matlab
%        ^ source.matlab meta.variable.other.valid.matlab
%                       ^ source.matlab punctuation.section.parens.begin.matlab
%                         ^ source.matlab meta.parens.matlab meta.variable.other.valid.matlab
%                            ^ source.matlab punctuation.section.parens.end.matlab


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
% ^ keyword.operator.symbols.matlab
%}

  %{
%}           Not end of block
%            ^ comment.block.percentage.matlab
x = 5
% ^ comment.block.percentage.matlab
  %}
x = 5 %{ not block comment
% ^ keyword.operator.symbols.matlab
x = 5
%   ^ constant.numeric.matlab


%---------------------------------------------
% Function

function y = average(x)
% <- keyword.other
%        ^ variable.parameter.output.function.matlab
%            ^^^^^^^ entity.name.function.matlab
%                    ^ variable.parameter.input.function.matlab
   if ~isvector(x)
%     ^ keyword.operator.symbols.matlab
       error('Input must be a vector')
   end
   y = sum(x)/length(x);
end

function [m,s] = stat(x)
% <- keyword.other
%         ^ variable.parameter.output.function.matlab
%          ^ -variable.parameter.output.function.matlab
%           ^ variable.parameter.output.function.matlab
%              ^ keyword.operator.assignment.matlab
%                ^^^^ entity.name.function.matlab
%                     ^ variable.parameter.input.function.matlab
   n = length(x);
   m = sum(x)/n;
   s = sqrt(sum((x-m).^2/n));
end

function m = avg(x,n)
%        ^ variable.parameter.output.function.matlab
%            ^^^ entity.name.function.matlab
%                ^ variable.parameter.input.function.matlab
%                  ^ variable.parameter.input.function.matlab
   m = sum(x)/n;
end

function foo(bar)
% <- keyword.other.matlab
%        ^^^ entity.name.function.matlab
%            ^^^ meta.function.parameters.matlab variable.parameter.input.function.matlab
end

function x = foo
% <- keyword.other.matlab
%        ^ variable.parameter.output.function.matlab
%          ^ keyword.operator.assignment.matlab
%            ^^^ entity.name.function.matlab
end

function foo
% <- keyword.other.matlab
%        ^^^ entity.name.function.matlab
end

function foo % with comment
% <- keyword.other.matlab
%        ^^^ entity.name.function.matlab
end


%---------------------------------------------
% Numbers

1
% <- constant.numeric.matlab
.1
% <- constant.numeric.matlab
1.1
% <- constant.numeric.matlab
.1e1
% <- constant.numeric.matlab
1.1e1
% <- constant.numeric.matlab
1e1
% <- constant.numeric.matlab
1i - (4i)
% <- constant.numeric.matlab
%     ^^ constant.numeric.matlab
1j
% <- constant.numeric.matlab
1e2j
% <- constant.numeric.matlab


%---------------------------------------------
% transpose
a = a' % is the conjugate and transpose
%   ^ -keyword.operator.transpose.matlab
%    ^ keyword.operator.transpose.matlab
a = a.' % is the transpose
%   ^ -keyword.operator.transpose.matlab
%    ^^ keyword.operator.transpose.matlab
x = a[3]' + b(4)' % is the conjugate and transpose
%       ^ keyword.operator.transpose.matlab
%               ^ keyword.operator.transpose.matlab

l = {l.n}';
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
parfor x = 1:10
%^ keyword.control.matlab
end
