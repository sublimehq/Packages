% SYNTAX TEST "Packages/Haskell/Literate Haskell.sublime-syntax"

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

    \begin{code}
%  ^^^^^^^^^^^^^ - source.haskell
%               ^ source.haskell.embedded.latex
%   ^ punctuation.definition.backslash.latex
%   ^^^^^^ support.function.begin.latex keyword.control.block.begin.latex
%         ^ punctuation.definition.group.brace.begin.tex
%          ^^^^ variable.parameter.function.latex
%              ^ punctuation.definition.group.brace.end.tex

    {- comment -}
%   ^^^^^^^^^^^^^ source.haskell.embedded.latex comment.block.haskell

    {-# LANGUAGE EmptyCase #-}
%   ^^^^^^^^^^^^^^^^^^^^^^^^^^ source.haskell.embedded.latex
%   ^^^^^^^^^^^^ meta.preprocessor.pragma.directive.haskell
%               ^^^^^^^^^^^ meta.preprocessor.pragma.value.language.haskell
%                          ^^^ meta.preprocessor.pragma.value.haskell

    \end{code}
%  ^ source.haskell.embedded.latex
%   ^^^^^^^^^^^ - source.haskell
%   ^ punctuation.definition.backslash.latex
%   ^^^^ support.function.end.latex keyword.control.block.end.latex
%       ^ punctuation.definition.group.brace.begin.tex
%        ^^^^ variable.parameter.function.latex
%            ^ punctuation.definition.group.brace.end.tex
