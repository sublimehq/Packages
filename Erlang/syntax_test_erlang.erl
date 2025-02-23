% SYNTAX TEST "Packages/Erlang/Erlang.sublime-syntax"
% <- comment.line.percentage.erlang punctuation.definition.comment.erlang
% ^ comment.line.percentage.erlang
%                                                   ^^ comment.line.percentage.erlang

%%%%%%%%%%%%%--%%
%^^^^^^^^^^^^ comment.line.percentage.erlang punctuation.definition.comment.erlang
%            ^^^^^ comment.line.percentage.erlang - punctuation

%
% Merge Conflict Marker Tests
%

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

% Atom tests

atom_tests() -> .

    foo_Bar7@Baz
%   ^^^^^^^^^^^^ constant.other.symbol.erlang

   'Atom \^d \b \7 \^@ \" \' bar'
%  ^ punctuation.definition.atom.begin.erlang
%  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
%        ^ punctuation.definition.escape.erlang
%        ^^^ constant.character.escape.erlang
%            ^ punctuation.definition.escape.erlang
%            ^^ constant.character.escape.erlang
%               ^ punctuation.definition.escape.erlang
%               ^^ constant.character.escape.erlang
%                  ^^^ invalid.illegal.escape.erlang
%                      ^ punctuation.definition.escape.erlang
%                      ^^ constant.character.escape.erlang
%                         ^ punctuation.definition.escape.erlang
%                         ^^ constant.character.escape.erlang
%                               ^ punctuation.definition.atom.end.erlang

% Special atom tests

    true
%   ^^^^ constant.language.boolean.true.erlang

    false
%   ^^^^^ constant.language.boolean.false.erlang

    error
%   ^^^^^ constant.language.exception.type.erlang

    exit
%   ^^^^ constant.language.exception.type.erlang

    throw
%   ^^^^ constant.language.exception.type.erlang

    ok
%   ^^ constant.language.exception.type.erlang

    badmatch
%   ^^^^^^^^ constant.language.exception.reason.erlang

    none
%   ^^^^ constant.language.undefined.erlang

    undefined
%   ^^^^^^^^^ constant.language.undefined.erlang

    millisecond
%   ^^^^^^^^^^^ constant.language.time.erlang

    milli_seconds
%   ^^^^^^^^^^^^^ constant.language.time.erlang invalid.deprecated.erlang

binary_tests() -> .

% Bit String tests

    << .
%   ^^^ meta.sequence.binary.erlang
%   ^^ punctuation.definition.sequence.begin.erlang
%      ^ punctuation.terminator.clause.erlang - meta.sequence.binary

    << ;
%   ^^^ meta.sequence.binary.erlang
%   ^^ punctuation.definition.sequence.begin.erlang
%      ^ punctuation.separator.clauses.erlang - meta.sequence.binary

    <<A:8/.
%   ^^^^^^ meta.sequence.binary.erlang
%   ^^ punctuation.definition.sequence.begin.erlang
%         ^ punctuation.terminator.clause.erlang - meta.sequence.binary

    <<A:8/;
%   ^^^^^^ meta.sequence.binary.erlang
%   ^^ punctuation.definition.sequence.begin.erlang
%         ^ punctuation.separator.clauses.erlang - meta.sequence.binary

    <<10,20>>
%   ^^^^^^^^^ meta.sequence.binary.erlang
%   ^^ punctuation.definition.sequence.begin.erlang
%     ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%       ^ punctuation.separator.sequence.erlang
%        ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%          ^^ punctuation.definition.sequence.end.erlang

    << 10 , 20 >>
%   ^^^^^^^^^^^^^ meta.sequence.binary.erlang
%   ^^ punctuation.definition.sequence.begin.erlang
%      ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%         ^ punctuation.separator.sequence.erlang
%           ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%              ^^ punctuation.definition.sequence.end.erlang

    <<1:1,0:1>>
%   ^^^^^^^^^^^ meta.sequence.binary.erlang
%   ^^ punctuation.definition.sequence.begin.erlang
%     ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%      ^ punctuation.separator.value-size.erlang
%       ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%        ^ punctuation.separator.sequence.erlang
%         ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%          ^ punctuation.separator.value-size.erlang
%           ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%            ^^ punctuation.definition.sequence.end.erlang

    << 1 : 1 , 0 : 1 >>
%   ^^^^^^^^^^^^^^^^^^^ meta.sequence.binary.erlang
%   ^^ punctuation.definition.sequence.begin.erlang
%      ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%        ^ punctuation.separator.value-size.erlang
%          ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%            ^ punctuation.separator.sequence.erlang
%              ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                ^ punctuation.separator.value-size.erlang
%                  ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                    ^^ punctuation.definition.sequence.end.erlang

    <<A:8/unsigned-unit:1-integer>>
%   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.binary.erlang
%   ^^ punctuation.definition.sequence.begin.erlang
%     ^ variable.other.readwrite.erlang
%      ^ punctuation.separator.value-size.erlang
%       ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%        ^ punctuation.separator.value-type.erlang
%         ^^^^^^^^ storage.modifier.signedness.erlang
%                 ^ punctuation.separator.type-specifiers.erlang
%                  ^^^^ storage.modifier.unit.erlang
%                      ^ punctuation.separator.unit-value.erlang
%                       ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                        ^ punctuation.separator.type-specifiers.erlang
%                         ^^^^^^^ storage.type.erlang
%                                ^^ punctuation.definition.sequence.end.erlang

    << A : 8 / unsigned - unit : 1 - integer >>
%   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.binary.erlang
%   ^^ punctuation.definition.sequence.begin.erlang
%      ^ variable.other.readwrite.erlang
%        ^ punctuation.separator.value-size.erlang
%          ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%            ^ punctuation.separator.value-type.erlang
%              ^^^^^^^^ storage.modifier.signedness.erlang
%                       ^ punctuation.separator.type-specifiers.erlang
%                         ^^^^ storage.modifier.unit.erlang
%                              ^ punctuation.separator.unit-value.erlang
%                                ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                  ^ punctuation.separator.type-specifiers.erlang
%                                    ^^^^^^^ storage.type.erlang
%                                            ^^ punctuation.definition.sequence.end.erlang

    << A : ?size / ?sign - ?unit : ?value - ?type >>
%   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.binary.erlang
%   ^^ punctuation.definition.sequence.begin.erlang
%      ^ variable.other.readwrite.erlang
%        ^ punctuation.separator.value-size.erlang
%          ^^^^^ constant.other.macro.erlang
%                ^ punctuation.separator.value-type.erlang
%                  ^^^^^ constant.other.macro.erlang
%                        ^ punctuation.separator.type-specifiers.erlang
%                          ^^^^^ constant.other.macro.erlang
%                                ^ punctuation.separator.unit-value.erlang
%                                  ^^^^^^ constant.other.macro.erlang
%                                         ^ punctuation.separator.type-specifiers.erlang
%                                           ^^^^^ constant.other.macro.erlang
%                                                 ^^ punctuation.definition.sequence.end.erlang

    <<$a/utf8,$b/utf8,$c/utf8>>
%   ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.binary.erlang
%   ^^ punctuation.definition.sequence.begin.erlang
%     ^ punctuation.definition.character.erlang
%     ^^ constant.character.erlang
%       ^ punctuation.separator.value-type.erlang
%        ^^^^ storage.type.erlang
%            ^ punctuation.separator.sequence.erlang
%             ^ punctuation.definition.character.erlang
%             ^^ constant.character.erlang
%               ^ punctuation.separator.value-type.erlang
%                ^^^^ storage.type.erlang
%                    ^ punctuation.separator.sequence.erlang
%                     ^ punctuation.definition.character.erlang
%                     ^^ constant.character.erlang
%                       ^ punctuation.separator.value-type.erlang
%                        ^^^^ storage.type.erlang
%                            ^^ punctuation.definition.sequence.end.erlang

    <<"ab.c"/utf8>>
%   ^^^^^^^^^^^^^^^ meta.sequence.binary.erlang
%   ^^ punctuation.definition.sequence.begin.erlang
%     ^ punctuation.definition.string.begin.erlang
%     ^^^^^^ string.quoted.double.erlang
%          ^ punctuation.definition.string.end.erlang
%           ^ punctuation.separator.value-type.erlang
%            ^^^^ storage.type.erlang
%                ^^ punctuation.definition.sequence.end.erlang

% Bit String Comprehension tests

    << << (X*2) >> || <<X>> <= << 1,2,3 >> >>
%  ^ - meta.sequence.binary.erlang
%   ^^^ meta.sequence.binary.erlang - meta.sequence.binary.erlang meta.sequence.binary.erlang
%      ^^^^^^^^^^^ meta.sequence.binary.erlang meta.sequence.binary.erlang
%         ^^^^^ meta.group.erlang
%                 ^^^^ meta.sequence.binary.erlang - meta.sequence.binary.erlang meta.sequence.binary.erlang
%                     ^^^^^ meta.sequence.binary.erlang meta.sequence.binary.erlang
%                          ^^^^ meta.sequence.binary.erlang - meta.sequence.binary.erlang meta.sequence.binary.erlang
%                              ^^^^^^^^^^^ meta.sequence.binary.erlang meta.sequence.binary.erlang
%                                         ^^^ meta.sequence.binary.erlang - meta.sequence.binary.erlang meta.sequence.binary.erlang
%                                            ^ - meta.sequence.binary.erlang
%   ^^ punctuation.definition.sequence.begin.erlang
%      ^^ punctuation.definition.sequence.begin.erlang
%         ^ punctuation.section.group.begin.erlang
%          ^ variable.other.readwrite.erlang
%           ^ keyword.operator.arithmetic.erlang
%            ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%             ^ punctuation.section.group.end.erlang
%               ^^ punctuation.definition.sequence.end.erlang
%                  ^^ keyword.operator.comprehension.erlang
%                     ^^ punctuation.definition.sequence.begin.erlang
%                       ^ variable.other.readwrite.erlang
%                        ^^ punctuation.definition.sequence.end.erlang
%                           ^^ keyword.operator.generator.erlang
%                              ^^ punctuation.definition.sequence.begin.erlang
%                                 ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                  ^ punctuation.separator.sequence.erlang
%                                   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                    ^ punctuation.separator.sequence.erlang
%                                     ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                       ^^ punctuation.definition.sequence.end.erlang
%                                          ^^ punctuation.definition.sequence.end.erlang

% Character tests

character_tests() -> .

    $a $%
%   ^ punctuation.definition.character.erlang
%   ^^ constant.character.erlang
%      ^ punctuation.definition.character.erlang
%      ^^ constant.character.erlang - comment

    $\1
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^ punctuation.definition.escape.erlang
%    ^^ constant.character.escape.erlang - constant.character.erlang

    $\8
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^^ constant.character.escape.erlang invalid.illegal.escape.erlang

    $\57
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^ punctuation.definition.escape.erlang
%    ^^^ constant.character.escape.erlang - constant.character.erlang

    $\58
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^ punctuation.definition.escape.erlang
%    ^^ constant.character.escape.erlang - constant.character.erlang
%      ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang

    $\85
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^^ constant.character.escape.erlang invalid.illegal.escape.erlang
%      ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang

    $\127
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^ punctuation.definition.escape.erlang
%    ^^^^ constant.character.escape.erlang - constant.character.erlang

    $\xaf
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^^ punctuation.definition.escape.erlang
%    ^^^^ constant.character.escape.erlang

    $\x9a
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^^ punctuation.definition.escape.erlang
%    ^^^^ constant.character.escape.erlang

    $\xbf123
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^^ punctuation.definition.escape.erlang
%    ^^^^ constant.character.escape.erlang
%        ^^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang

    $\xbz123
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^^ punctuation.definition.escape.erlang
%    ^^^^ constant.character.escape.erlang invalid.illegal.escape.erlang
%        ^^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang

    $\x{9ab1}
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^^^^^^^^ constant.character.escape.erlang
%    ^^^ punctuation.definition.escape.begin.erlang
%           ^ punctuation.definition.escape.end.erlang

    $\x{9az1}
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^^^^^^^^ constant.character.escape.erlang
%    ^^^ punctuation.definition.escape.begin.erlang
%         ^ invalid.illegal.hex.erlang
%           ^ punctuation.definition.escape.end.erlang

    $\x{1%0}
%        ^^^^ comment.line.percentage.erlang

    $\x{1.
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^^^^ constant.character.escape.erlang
%        ^ punctuation.terminator.clause.erlang - constant
    $\x{1
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^^^^ constant.character.escape.erlang
%        - constant
    }
%   ^ invalid.illegal.stray.erlang

    $\a
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^ punctuation.definition.escape.erlang
%    ^^ constant.character.escape.erlang invalid.illegal.escape.erlang

    $\b $\d $\e $\f $\n $\r $\s $\t $\v $\\ $\' $\" $\$
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^ punctuation.definition.escape.erlang
%    ^^ constant.character.escape.erlang - constant.character.erlang
%       ^ constant.character.erlang punctuation.definition.character.erlang
%        ^ punctuation.definition.escape.erlang
%        ^^ constant.character.escape.erlang - constant.character.erlang
%           ^ constant.character.erlang punctuation.definition.character.erlang
%            ^ punctuation.definition.escape.erlang
%            ^^ constant.character.escape.erlang - constant.character.erlang
%               ^ constant.character.erlang punctuation.definition.character.erlang
%                ^ punctuation.definition.escape.erlang
%                ^^ constant.character.escape.erlang - constant.character.erlang
%                   ^ constant.character.erlang punctuation.definition.character.erlang
%                    ^ punctuation.definition.escape.erlang
%                    ^^ constant.character.escape.erlang - constant.character.erlang
%                       ^ constant.character.erlang punctuation.definition.character.erlang
%                        ^ punctuation.definition.escape.erlang
%                        ^^ constant.character.escape.erlang - constant.character.erlang
%                           ^ constant.character.erlang punctuation.definition.character.erlang
%                            ^ punctuation.definition.escape.erlang
%                            ^^ constant.character.escape.erlang - constant.character.erlang
%                               ^ constant.character.erlang punctuation.definition.character.erlang
%                                ^ punctuation.definition.escape.erlang
%                                ^^ constant.character.escape.erlang - constant.character.erlang
%                                   ^ constant.character.erlang punctuation.definition.character.erlang
%                                    ^ punctuation.definition.escape.erlang
%                                    ^^ constant.character.escape.erlang - constant.character.erlang
%                                       ^ constant.character.erlang punctuation.definition.character.erlang
%                                        ^ punctuation.definition.escape.erlang
%                                        ^^ constant.character.escape.erlang - constant.character.erlang
%                                           ^ constant.character.erlang punctuation.definition.character.erlang
%                                            ^ punctuation.definition.escape.erlang
%                                            ^^ constant.character.escape.erlang - constant.character.erlang
%                                               ^ constant.character.erlang punctuation.definition.character.erlang
%                                                ^ punctuation.definition.escape.erlang
%                                                ^^ constant.character.escape.erlang - constant.character.erlang
%                                                   ^ constant.character.erlang punctuation.definition.character.erlang
%                                                    ^ punctuation.definition.escape.erlang
%                                                    ^^ constant.character.escape.erlang - constant.character.erlang

    $\^A $\^Z $\^a $\^z $\^5
%   ^ constant.character.erlang punctuation.definition.character.erlang
%    ^^ punctuation.definition.escape.erlang
%    ^^^ constant.character.escape.erlang - constant.character.erlang
%        ^ constant.character.erlang punctuation.definition.character.erlang
%         ^^ punctuation.definition.escape.erlang
%         ^^^ constant.character.escape.erlang - constant.character.erlang
%             ^ constant.character.erlang punctuation.definition.character.erlang
%              ^^ punctuation.definition.escape.erlang
%              ^^^ constant.character.escape.erlang - constant.character.erlang
%                  ^ constant.character.erlang punctuation.definition.character.erlang
%                   ^^ punctuation.definition.escape.erlang
%                       ^ constant.character.erlang punctuation.definition.character.erlang
%                        ^^ punctuation.definition.escape.erlang
%                        ^^^ constant.character.escape.erlang invalid.illegal.escape.erlang - constant.character.erlang

% List tests

list_tests() -> .

    []
%  ^ - meta.sequence
%   ^ meta.sequence.list.erlang punctuation.section.sequence.begin.erlang
%    ^ meta.sequence.list.erlang punctuation.section.sequence.end.erlang
%     ^ - meta.sequence

    [c|[]]
%  ^ - meta.sequence
%   ^^^ meta.sequence.list.erlang - meta.sequence.list.erlang meta.sequence.list.erlang
%      ^^ meta.sequence.list.erlang meta.sequence.list.erlang
%        ^ meta.sequence.list.erlang - meta.sequence.list.erlang meta.sequence.list.erlang
%         ^ - meta.sequence
%   ^ punctuation.section.sequence.begin.erlang
%    ^ constant.other.symbol.erlang
%     ^ punctuation.separator.sequence.erlang
%      ^ punctuation.section.sequence.begin.erlang
%       ^^ punctuation.section.sequence.end.erlang

    [b|[c|[]]]
%  ^ - meta.sequence
%   ^^^ meta.sequence.list.erlang - meta.sequence.list.erlang meta.sequence.list.erlang
%      ^^^ meta.sequence.list.erlang meta.sequence.list.erlang - meta.sequence.list.erlang meta.sequence.list.erlang meta.sequence.list.erlang
%         ^^ meta.sequence.list.erlang meta.sequence.list.erlang meta.sequence.list.erlang
%           ^ meta.sequence.list.erlang meta.sequence.list.erlang - meta.sequence.list.erlang meta.sequence.list.erlang meta.sequence.list.erlang
%            ^ meta.sequence.list.erlang - meta.sequence.list.erlang meta.sequence.list.erlang
%             ^ - meta.sequence
%   ^ punctuation.section.sequence.begin.erlang
%    ^ constant.other.symbol.erlang
%     ^ punctuation.separator.sequence.erlang
%      ^ punctuation.section.sequence.begin.erlang
%       ^ constant.other.symbol.erlang
%        ^ punctuation.separator.sequence.erlang
%         ^ punctuation.section.sequence.begin.erlang
%          ^^^ punctuation.section.sequence.end.erlang

    [a,b,c]
%  ^ - meta.sequence
%   ^^^^^^^ meta.sequence.list.erlang
%          ^ - meta.sequence
%   ^ punctuation.section.sequence.begin.erlang
%    ^ constant.other.symbol.erlang
%     ^ punctuation.separator.sequence.erlang
%      ^ constant.other.symbol.erlang
%       ^ punctuation.separator.sequence.erlang
%        ^ constant.other.symbol.erlang
%         ^ punctuation.section.sequence.end.erlang

% List Comprehension tests

    [X*2 || X <- [1,2,3]]
%  ^ - meta.sequence
%   ^^^^^^^^^^^^^ meta.sequence.list.erlang - meta.sequence.list.erlang meta.sequence.list.erlang
%                ^^^^^^^ meta.sequence.list.erlang meta.sequence.list.erlang
%                       ^ meta.sequence.list.erlang - meta.sequence.list.erlang meta.sequence.list.erlang
%                        ^ - meta.sequence
%   ^ punctuation.section.sequence.begin.erlang
%    ^ variable.other.readwrite.erlang
%     ^ keyword.operator.arithmetic.erlang
%      ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%        ^^ keyword.operator.comprehension.erlang
%           ^ variable.other.readwrite.erlang
%             ^^ keyword.operator.generator.erlang
%                ^ punctuation.section.sequence.begin.erlang
%                 ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                  ^ punctuation.separator.sequence.erlang
%                   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                    ^ punctuation.separator.sequence.erlang
%                     ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                      ^^ punctuation.section.sequence.end.erlang

    [2 || true]
%  ^ - meta.sequence
%   ^^^^^^^^^^^ meta.sequence.list.erlang
%              ^ - meta.sequence
%   ^ punctuation.section.sequence.begin.erlang
%    ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%      ^^ keyword.operator.comprehension.erlang
%         ^^^^ constant.language.boolean.true.erlang
%             ^ punctuation.section.sequence.end.erlang

    [2 || is_integer(2)]
%  ^ - meta.sequence
%   ^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.erlang
%         ^^^^^^^^^^ meta.function-call.identifier.erlang - meta.function-call.arguments.erlang
%                   ^^^ meta.function-call.arguments.erlang - meta.function-call.identifier.erlang
%                       ^ - meta.sequence
%   ^ punctuation.section.sequence.begin.erlang
%    ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%      ^^ keyword.operator.comprehension.erlang
%                      ^ punctuation.section.sequence.end.erlang

% Map tests

map_tests() -> .

    #{}
%  ^ - meta.mapping
%   ^^^ meta.mapping.erlang
%   ^^ punctuation.section.mapping.begin.erlang
%     ^ punctuation.section.mapping.end.erlang
%      ^ - meta.mapping

    #{ key1 , key2 , => val }
%  ^ - meta.mapping
%   ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%     ^^^^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%           ^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%            ^^^^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%                  ^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                   ^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%                    ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                      ^^^^^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%                           ^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                            ^ - meta.mapping
%   ^^ punctuation.section.mapping.begin.erlang
%           ^ punctuation.separator.sequence.erlang
%                  ^ punctuation.separator.sequence.erlang
%                           ^ punctuation.section.mapping.end.erlang

    Expr#{name=>"adam",{age,24}:=fct(),4.0=>{july,29},kay:=value}
%      ^ - meta.mapping
%       ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%         ^^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%             ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%               ^^^^^^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%                     ^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                      ^^^^^^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang meta.sequence.tuple.erlang
%                              ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                                ^^^^^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang meta.function-call.identifier.erlang
%                                     ^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                                      ^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%                                         ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                                           ^^^^^^^^^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang meta.sequence.tuple.erlang
%                                                    ^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                                                     ^^^ meta.mapping.key.erlang meta.atom.erlang
%                                                        ^^ meta.mapping.erlang
%                                                          ^^^^^ meta.mapping.value.erlang meta.atom.erlang
%                                                               ^ meta.mapping.erlang - meta.atom
%                                                                ^ - meta.mapping
%   ^^^^ variable.other.readwrite.erlang
%       ^^ punctuation.section.mapping.begin.erlang
%         ^^^^ constant.other.symbol.erlang
%             ^^ punctuation.separator.key-value.erlang
%               ^^^^^^ string.quoted.double.erlang
%                     ^ punctuation.separator.sequence.erlang
%                      ^ punctuation.section.sequence.begin.erlang
%                       ^^^ constant.other.symbol.erlang
%                          ^ punctuation.separator.sequence.erlang
%                           ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                             ^ punctuation.section.sequence.end.erlang
%                              ^^ punctuation.separator.key-value.erlang
%                                ^^^ variable.function.erlang
%                                   ^ punctuation.section.arguments.begin.erlang
%                                    ^ punctuation.section.arguments.end.erlang
%                                     ^ punctuation.separator.sequence.erlang
%                                      ^^^ meta.number.float.decimal.erlang constant.numeric.value.erlang
%                                         ^^ punctuation.separator.key-value.erlang
%                                           ^ punctuation.section.sequence.begin.erlang
%                                            ^^^^ constant.other.symbol.erlang
%                                                ^ punctuation.separator.sequence.erlang
%                                                 ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                                   ^ punctuation.section.sequence.end.erlang
%                                                    ^ punctuation.separator.sequence.erlang
%                                                     ^^^ constant.other.symbol.erlang
%                                                        ^^ punctuation.separator.key-value.erlang
%                                                          ^^^^^ constant.other.symbol.erlang
%                                                               ^ punctuation.section.mapping.end.erlang
%

    #{ name => "adam" , { age , 24 } => fct () , 4.0 := { july , 29 } }
%  ^ - meta.mapping
%   ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%     ^^^^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%           ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%             ^^^^^^^^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%                     ^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                      ^^^^^^^^^^^^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang meta.sequence.tuple.erlang
%                                    ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                                      ^^^^^^^^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang meta.function-call.identifier.erlang
%                                              ^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                                               ^^^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%                                                    ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                                                      ^^^^^^^^^^^^^^^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang meta.sequence.tuple.erlang
%                                                                     ^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                                                                      ^ - meta.mapping
%   ^^ punctuation.section.mapping.begin.erlang
%      ^^^^ constant.other.symbol.erlang
%           ^^ punctuation.separator.key-value.erlang
%              ^^^^^^ string.quoted.double.erlang
%                     ^ punctuation.separator.sequence.erlang
%                       ^ punctuation.section.sequence.begin.erlang
%                         ^^^ constant.other.symbol.erlang
%                             ^ punctuation.separator.sequence.erlang
%                               ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                  ^ punctuation.section.sequence.end.erlang
%                                    ^^ punctuation.separator.key-value.erlang
%                                       ^^^ variable.function.erlang
%                                           ^ punctuation.section.arguments.begin.erlang
%                                            ^ punctuation.section.arguments.end.erlang
%                                              ^ punctuation.separator.sequence.erlang
%                                                ^^^ meta.number.float.decimal.erlang constant.numeric.value.erlang
%                                                    ^^ punctuation.separator.key-value.erlang
%                                                       ^ punctuation.section.sequence.begin.erlang
%                                                         ^^^^ constant.other.symbol.erlang
%                                                              ^ punctuation.separator.sequence.erlang
%                                                                ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                                                   ^ punctuation.section.sequence.end.erlang
%                                                                     ^ punctuation.section.mapping.end.erlang

    #{
%  ^ - meta.mapping.erlang
%   ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%     ^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%   ^^ punctuation.section.mapping.begin.erlang
        name
%      ^^^^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%       ^^^^ constant.other.symbol.erlang
        =>
%      ^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%       ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%         ^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%       ^^ punctuation.separator.key-value.erlang
        "adam"
%      ^^^^^^^^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%       ^^^^^^ string.quoted.double.erlang
        ,
%      ^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%       ^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%        ^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%       ^ punctuation.separator.sequence.erlang
        {
%      ^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%       ^ punctuation.section.sequence.begin.erlang
            age
%          ^^^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%           ^^^ constant.other.symbol.erlang
            ,
%          ^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%           ^ punctuation.separator.sequence.erlang
            24
%          ^^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%           ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
        }
%      ^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%       ^ punctuation.section.sequence.end.erlang
        =>
%      ^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%       ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%         ^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%       ^^ punctuation.separator.key-value.erlang
        fct ()
%      ^^^^^^^^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%       ^^^ variable.function.erlang
%           ^ punctuation.section.arguments.begin.erlang
%            ^ punctuation.section.arguments.end.erlang
        ,
%      ^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%       ^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%        ^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%       ^ punctuation.separator.sequence.erlang
        4.0
%      ^^^^^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%       ^^^ meta.number.float.decimal.erlang constant.numeric.value.erlang
        :=
%      ^ meta.mapping.key.erlang - meta.mapping.value.erlang - meta.mapping.erlang
%       ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%         ^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%       ^^ punctuation.separator.key-value.erlang
        {
%      ^^^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%       ^ punctuation.section.sequence.begin.erlang
            july
%          ^^^^^^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%           ^^^^ constant.other.symbol.erlang
            ,
%          ^^^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%           ^ punctuation.separator.sequence.erlang
            29
%          ^^^^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%           ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
        }
%      ^^^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%       ^ punctuation.section.sequence.end.erlang
    }
%  ^ meta.mapping.value.erlang - meta.mapping.key.erlang - meta.mapping.erlang
%   ^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%    ^ - meta.mapping
%   ^ punctuation.section.mapping.end.erlang

% Number tests

numbers_test() -> .

    2 2_2 0__9
%  ^ - meta.number - constant
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%    ^ - meta.number - constant
%     ^^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%        ^ - meta.number - constant
%         ^^^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%             ^ - meta.number - constant

    45a
%   ^^^ invalid.illegal.integer.erlang

    2.3 2_._3_ 2_4.5_0 _2_._3_
%  ^ - meta.number - constant
%   ^^^ meta.number.float.decimal.erlang constant.numeric.value.erlang
%    ^ punctuation.separator.decimal.erlang
%      ^ - meta.number - constant
%       ^^^^^^ meta.number.float.decimal.erlang constant.numeric.value.erlang
%             ^ - meta.number - constant
%              ^^^^^^^ meta.number.float.decimal.erlang constant.numeric.value.erlang
%                     ^^^^^^^^ - meta.number - constant

    2.3e3 2_2._3_3_e_2_3_
%   ^^^^^ meta.number.float.decimal.erlang constant.numeric.value.erlang
%    ^ punctuation.separator.decimal.erlang
%        ^ - meta.number - constant
%         ^^^^^^^^^^^^^^^ meta.number.float.decimal.erlang constant.numeric.value.erlang
%                        ^ - meta.number - constant

    2.3e+3 2_2._3_3_e+_2_3_
%   ^^^^^^ meta.number.float.decimal.erlang constant.numeric.value.erlang
%    ^ punctuation.separator.decimal.erlang
%         ^ - meta.number - constant
%          ^^^^^^^^^^^^^^^^ meta.number.float.decimal.erlang constant.numeric.value.erlang
%                          ^ - meta.number - constant

    2.3e-3 2_2._3_3_e-_2_3_
%   ^^^^^^ meta.number.float.decimal.erlang constant.numeric.value.erlang
%    ^ punctuation.separator.decimal.erlang
%         ^ - meta.number - constant
%          ^^^^^^^^^^^^^^^^ meta.number.float.decimal.erlang constant.numeric.value.erlang
%                          ^ - meta.number - constant

    1#0
%   ^^^ invalid.illegal.integer.erlang

    2#01 2#012 2#_0_1_
%   ^^ meta.number.integer.binary.erlang constant.numeric.base.erlang
%     ^^ meta.number.integer.binary.erlang constant.numeric.value.erlang
%        ^^^^^ invalid.illegal.integer.erlang
%              ^^ meta.number.integer.binary.erlang constant.numeric.base.erlang
%                ^^^^^ meta.number.integer.binary.erlang constant.numeric.value.erlang

    3#012 3#123 3#_0_1_2_
%   ^^ meta.number.integer.other.erlang constant.numeric.base.erlang
%     ^^^ meta.number.integer.other.erlang constant.numeric.value.erlang
%         ^^^^^ invalid.illegal.integer.erlang
%               ^^ meta.number.integer.other.erlang constant.numeric.base.erlang
%                 ^^^^^^^ meta.number.integer.other.erlang constant.numeric.value.erlang

    4#0123 4#1234 4#_0_1_2_3_
%   ^^ meta.number.integer.other.erlang constant.numeric.base.erlang
%     ^^^^ meta.number.integer.other.erlang constant.numeric.value.erlang
%          ^^^^^^ invalid.illegal.integer.erlang
%                 ^^ meta.number.integer.other.erlang constant.numeric.base.erlang
%                   ^^^^^^^^^ meta.number.integer.other.erlang constant.numeric.value.erlang

    8#0723 8#1834 8#_0_7_2_3_
%   ^^ meta.number.integer.octal.erlang constant.numeric.base.erlang
%     ^^^^ meta.number.integer.octal.erlang constant.numeric.value.erlang
%          ^^^^^^ invalid.illegal.integer.erlang
%                 ^^ meta.number.integer.octal.erlang constant.numeric.base.erlang
%                   ^^^^^^^^^ meta.number.integer.octal.erlang constant.numeric.value.erlang

    10#0943 10#183A 10#_0_9_4_3_
%   ^^^ meta.number.integer.decimal.erlang constant.numeric.base.erlang
%      ^^^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%           ^^^^^^ invalid.illegal.integer.erlang
%                   ^^^ meta.number.integer.decimal.erlang constant.numeric.base.erlang
%                      ^^^^^^^^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang

    16#0F2B 16#F8G4 16#_0_F_2_B_
%   ^^^ meta.number.integer.hexadecimal.erlang constant.numeric.base.erlang
%      ^^^^ meta.number.integer.hexadecimal.erlang constant.numeric.value.erlang
%           ^^^^^^^ invalid.illegal.integer.erlang
%                   ^^^ meta.number.integer.hexadecimal.erlang constant.numeric.base.erlang
%                      ^^^^^^^^^ meta.number.integer.hexadecimal.erlang constant.numeric.value.erlang

    35#0Y2B 35#F8Z4 35#_0_Y_2_B_
%   ^^^ meta.number.integer.other.erlang constant.numeric.base.erlang
%      ^^^^ meta.number.integer.other.erlang constant.numeric.value.erlang
%           ^^^^^^^ invalid.illegal.integer.erlang
%                   ^^^ meta.number.integer.other.erlang constant.numeric.base.erlang
%                      ^^^^^^^^^ meta.number.integer.other.erlang constant.numeric.value.erlang

    37#ABC
%   ^^^^^^ invalid.illegal.integer.erlang

% String tests

strings_test() -> .

    "foo \^A \^Z \^a \^z \^5 \'bar\' \x{9az1} baz\" \$"
%  ^ - string
%   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.erlang
%   ^ punctuation.definition.string.begin.erlang
%        ^^ punctuation.definition.escape.erlang
%        ^^^ constant.character.escape.erlang - constant.character.erlang
%            ^^ punctuation.definition.escape.erlang
%            ^^^ constant.character.escape.erlang - constant.character.erlang
%                ^^ punctuation.definition.escape.erlang
%                ^^^ constant.character.escape.erlang - constant.character.erlang
%                    ^^ punctuation.definition.escape.erlang
%                        ^^ punctuation.definition.escape.erlang
%                        ^^^ constant.character.escape.erlang invalid.illegal.escape.erlang - constant.character.erlang
%                            ^ punctuation.definition.escape.erlang
%                            ^^ constant.character.escape.erlang
%                                 ^ punctuation.definition.escape.erlang
%                                 ^^ constant.character.escape.erlang
%                                    ^^^^^^^^ constant.character.escape.erlang
%                                    ^^^ punctuation.definition.escape.begin.erlang
%                                         ^ invalid.illegal.hex.erlang
%                                           ^ punctuation.definition.escape.end.erlang
%                                                ^ punctuation.definition.escape.erlang
%                                                ^^ constant.character.escape.erlang
%                                                   ^ punctuation.definition.escape.erlang
%                                                   ^^ constant.character.escape.erlang
%                                                     ^ punctuation.definition.string.end.erlang
%                                                      ^ - string

    "out: ~8f"
%  ^ - string
%   ^ punctuation.definition.string.begin.erlang
%   ^^^^^^ string.quoted.double.erlang - constant.other.placeholder
%         ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%          ^ string.quoted.double.erlang constant.other.placeholder.width.integer.erlang
%           ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%            ^ string.quoted.double.erlang punctuation.definition.string.end.erlang - constant.other.placeholder
%             ^ - string

    "out: ~.8f"
%  ^ - string
%   ^ punctuation.definition.string.begin.erlang
%   ^^^^^^ string.quoted.double.erlang - constant.other.placeholder
%         ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%          ^ string.quoted.double.erlang constant.other.placeholder.precision.erlang punctuation.separator.placeholder.erlang
%           ^ string.quoted.double.erlang constant.other.placeholder.precision.integer.erlang
%            ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%             ^ string.quoted.double.erlang punctuation.definition.string.end.erlang - constant.other.placeholder
%              ^ - string

    "out: ~..#f"
%  ^ - string
%   ^ punctuation.definition.string.begin.erlang
%   ^^^^^^ string.quoted.double.erlang - constant.other.placeholder
%         ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%          ^ string.quoted.double.erlang constant.other.placeholder.precision.erlang punctuation.separator.placeholder.erlang
%           ^ string.quoted.double.erlang constant.other.placeholder.separator.erlang punctuation.separator.placeholder.erlang
%            ^ string.quoted.double.erlang constant.other.placeholder.padding.character.erlang
%             ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%              ^ string.quoted.double.erlang punctuation.definition.string.end.erlang - constant.other.placeholder
%               ^ - string

    "out: ~*.*.0f"
%  ^ - string
%   ^ punctuation.definition.string.begin.erlang
%   ^^^^^^ string.quoted.double.erlang - constant.other.placeholder
%         ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%          ^ string.quoted.double.erlang constant.other.placeholder.width.asterisk.erlang
%           ^ string.quoted.double.erlang constant.other.placeholder.precision.erlang punctuation.separator.placeholder.erlang
%            ^ string.quoted.double.erlang constant.other.placeholder.precision.asterisk.erlang
%             ^ string.quoted.double.erlang constant.other.placeholder.separator.erlang punctuation.separator.placeholder.erlang
%              ^ string.quoted.double.erlang constant.other.placeholder.padding.character.erlang
%               ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                ^ string.quoted.double.erlang punctuation.definition.string.end.erlang - constant.other.placeholder
%                 ^ - string

    "out: ~-*.*.*f"
%  ^ - string
%   ^ punctuation.definition.string.begin.erlang
%   ^^^^^^ string.quoted.double.erlang - constant.other.placeholder
%         ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%          ^^ string.quoted.double.erlang constant.other.placeholder.width.asterisk.erlang
%            ^ string.quoted.double.erlang constant.other.placeholder.precision.erlang punctuation.separator.placeholder.erlang
%             ^ string.quoted.double.erlang constant.other.placeholder.precision.asterisk.erlang
%              ^ string.quoted.double.erlang constant.other.placeholder.separator.erlang punctuation.separator.placeholder.erlang
%               ^ string.quoted.double.erlang constant.other.placeholder.padding.character.erlang
%                ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                 ^ string.quoted.double.erlang punctuation.definition.string.end.erlang - constant.other.placeholder
%                  ^ - string

    "out: ~8.12.ff"
%  ^ - string
%   ^ punctuation.definition.string.begin.erlang
%   ^^^^^^ string.quoted.double.erlang - constant.other.placeholder
%         ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%          ^ string.quoted.double.erlang constant.other.placeholder.width.integer.erlang
%           ^ string.quoted.double.erlang constant.other.placeholder.precision.erlang punctuation.separator.placeholder.erlang
%            ^^ string.quoted.double.erlang constant.other.placeholder.precision.integer.erlang
%              ^ string.quoted.double.erlang constant.other.placeholder.separator.erlang punctuation.separator.placeholder.erlang
%               ^ string.quoted.double.erlang constant.other.placeholder.padding.character.erlang
%                ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                 ^ string.quoted.double.erlang punctuation.definition.string.end.erlang - constant.other.placeholder
%                  ^ - string

    "out: ~p ~tp ~lp ~tlp ~ltp ~15p ~15lp ~15tp ~15tlp ~15ltp"
%  ^ - string
%   ^ punctuation.definition.string.begin.erlang
%   ^^^^^^ string.quoted.double.erlang - constant.other.placeholder
%         ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%          ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%            ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%             ^ string.quoted.double.erlang constant.other.placeholder.control.modifier.erlang
%              ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                 ^ string.quoted.double.erlang constant.other.placeholder.control.modifier.erlang
%                  ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                    ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                     ^^ string.quoted.double.erlang constant.other.placeholder.control.modifier.erlang
%                       ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                         ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                          ^^ string.quoted.double.erlang constant.other.placeholder.control.modifier.erlang
%                            ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                              ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                               ^^ string.quoted.double.erlang constant.other.placeholder.width.integer.erlang
%                                 ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                                   ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                                    ^^ string.quoted.double.erlang constant.other.placeholder.width.integer.erlang
%                                      ^ string.quoted.double.erlang constant.other.placeholder.control.modifier.erlang
%                                       ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                                         ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                                          ^^ string.quoted.double.erlang constant.other.placeholder.width.integer.erlang
%                                            ^ string.quoted.double.erlang constant.other.placeholder.control.modifier.erlang
%                                             ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                                               ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                                                ^^ string.quoted.double.erlang constant.other.placeholder.width.integer.erlang
%                                                  ^^ string.quoted.double.erlang constant.other.placeholder.control.modifier.erlang
%                                                    ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                                                      ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                                                       ^^ string.quoted.double.erlang constant.other.placeholder.width.integer.erlang
%                                                         ^^ string.quoted.double.erlang constant.other.placeholder.control.modifier.erlang
%                                                           ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                                                            ^ string.quoted.double.erlang punctuation.definition.string.end.erlang - constant.other.placeholder
%                                                             ^ - string

    "out: ~B ~.16B ~4.16B ~4.16.#B ~# ~.10# ~+ ~.10+ ~X ~.16X ~-5.16X ~-5.16. X"
%  ^ - string
%   ^ punctuation.definition.string.begin.erlang
%   ^^^^^^ string.quoted.double.erlang - constant.other.placeholder
%         ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%          ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%            ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%             ^ string.quoted.double.erlang constant.other.placeholder.precision.erlang punctuation.separator.placeholder.erlang
%              ^^ string.quoted.double.erlang constant.other.placeholder.precision.integer.erlang
%                ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                  ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                   ^ string.quoted.double.erlang constant.other.placeholder.width.integer.erlang
%                    ^ string.quoted.double.erlang constant.other.placeholder.precision.erlang punctuation.separator.placeholder.erlang
%                     ^^ string.quoted.double.erlang constant.other.placeholder.precision.integer.erlang
%                       ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                         ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                          ^ string.quoted.double.erlang constant.other.placeholder.width.integer.erlang
%                           ^ string.quoted.double.erlang constant.other.placeholder.precision.erlang punctuation.separator.placeholder.erlang
%                            ^^ string.quoted.double.erlang constant.other.placeholder.precision.integer.erlang
%                              ^ string.quoted.double.erlang constant.other.placeholder.separator.erlang punctuation.separator.placeholder.erlang
%                               ^ string.quoted.double.erlang constant.other.placeholder.padding.character.erlang
%                                ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                                  ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                                   ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                                     ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                                      ^ string.quoted.double.erlang constant.other.placeholder.precision.erlang punctuation.separator.placeholder.erlang
%                                       ^^ string.quoted.double.erlang constant.other.placeholder.precision.integer.erlang
%                                         ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                                           ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                                            ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                                              ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                                               ^ string.quoted.double.erlang constant.other.placeholder.precision.erlang punctuation.separator.placeholder.erlang
%                                                ^^ string.quoted.double.erlang constant.other.placeholder.precision.integer.erlang
%                                                  ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                                                    ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                                                     ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                                                       ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                                                        ^ string.quoted.double.erlang constant.other.placeholder.precision.erlang punctuation.separator.placeholder.erlang
%                                                         ^^ string.quoted.double.erlang constant.other.placeholder.precision.integer.erlang
%                                                           ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                                                             ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                                                              ^^ string.quoted.double.erlang constant.other.placeholder.width.integer.erlang
%                                                                ^ string.quoted.double.erlang constant.other.placeholder.precision.erlang punctuation.separator.placeholder.erlang
%                                                                 ^^ string.quoted.double.erlang constant.other.placeholder.precision.integer.erlang
%                                                                   ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                                                                     ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%                                                                      ^^ string.quoted.double.erlang constant.other.placeholder.width.integer.erlang
%                                                                        ^ string.quoted.double.erlang constant.other.placeholder.precision.erlang punctuation.separator.placeholder.erlang
%                                                                         ^^ string.quoted.double.erlang constant.other.placeholder.precision.integer.erlang
%                                                                           ^ string.quoted.double.erlang constant.other.placeholder.separator.erlang punctuation.separator.placeholder.erlang
%                                                                            ^ string.quoted.double.erlang constant.other.placeholder.padding.character.erlang
%                                                                             ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                                                                              ^ string.quoted.double.erlang punctuation.definition.string.end.erlang - constant.other.placeholder
%                                                                               ^ - string

% Tuple tests

tuple_tests() -> .

    {}
%  ^ - meta.sequence.tuple.erlang
%   ^ meta.sequence.tuple.erlang punctuation.section.sequence.begin.erlang
%    ^ meta.sequence.tuple.erlang punctuation.section.sequence.end.erlang
%     ^ - meta.sequence.tuple.erlang

    {adam,24,{july,29}}
%  ^ - meta.sequence.tuple.erlang
%   ^^^^^^^^^ meta.sequence.tuple.erlang - meta.sequence.tuple.erlang meta.sequence.tuple.erlang
%            ^^^^^^^^^ meta.sequence.tuple.erlang meta.sequence.tuple.erlang
%                     ^ meta.sequence.tuple.erlang - meta.sequence.tuple.erlang meta.sequence.tuple.erlang
%                      ^ - meta.sequence.tuple.erlang
%   ^ punctuation.section.sequence.begin.erlang
%        ^ punctuation.separator.sequence.erlang
%           ^ punctuation.separator.sequence.erlang
%            ^ punctuation.section.sequence.begin.erlang
%                 ^ punctuation.separator.sequence.erlang
%                    ^^ punctuation.section.sequence.end.erlang

    { adam , 24 , { july , 29 } }
%  ^ - meta.sequence.tuple.erlang
%   ^^^^^^^^^^^^^^ meta.sequence.tuple.erlang - meta.sequence.tuple.erlang meta.sequence.tuple.erlang
%                 ^^^^^^^^^^^^^ meta.sequence.tuple.erlang meta.sequence.tuple.erlang
%                              ^^ meta.sequence.tuple.erlang - meta.sequence.tuple.erlang meta.sequence.tuple.erlang
%                                ^ - meta.sequence.tuple.erlang
%   ^ punctuation.section.sequence.begin.erlang
%          ^ punctuation.separator.sequence.erlang
%               ^ punctuation.separator.sequence.erlang
%                 ^ punctuation.section.sequence.begin.erlang
%                        ^ punctuation.separator.sequence.erlang
%                             ^ punctuation.section.sequence.end.erlang
%                               ^ punctuation.section.sequence.end.erlang

    {
%  ^ - meta.sequence.tuple.erlang
%   ^^ meta.sequence.tuple.erlang - meta.sequence.tuple.erlang meta.sequence.tuple.erlang
%   ^ punctuation.section.sequence.begin.erlang
        adam,
%^^^^^^^^^^^^^ meta.sequence.tuple.erlang - meta.sequence.tuple.erlang meta.sequence.tuple.erlang
%           ^ punctuation.separator.sequence.erlang
        24,
%^^^^^^^^^^^ meta.sequence.tuple.erlang - meta.sequence.tuple.erlang meta.sequence.tuple.erlang
%         ^ punctuation.separator.sequence.erlang
        {july,29}
%^^^^^^^ meta.sequence.tuple.erlang - meta.sequence.tuple.erlang meta.sequence.tuple.erlang
%       ^^^^^^^^^ meta.sequence.tuple.erlang meta.sequence.tuple.erlang
%                ^ meta.sequence.tuple.erlang - meta.sequence.tuple.erlang meta.sequence.tuple.erlang
%       ^ punctuation.section.sequence.begin.erlang
%            ^ punctuation.separator.sequence.erlang
%               ^ punctuation.section.sequence.end.erlang
%                ^ meta.sequence.tuple.erlang - meta.sequence.tuple.erlang meta.sequence.tuple.erlang
    }
%^^^^ meta.sequence.tuple.erlang
%   ^ punctuation.section.sequence.end.erlang
%    ^ - meta.sequence.tuple.erlang

% Variables tests

variables_tests() -> .

    Foo
%   ^^^ variable.other.readwrite.erlang
    _foo
%   ^^^^ variable.other.readwrite.erlang
    _Foo@bar_baz
%   ^^^^^^^^^^^^ variable.other.readwrite.erlang
    _Foo
%   ^^^^ variable.other.readwrite.erlang
    _@
%   ^^ variable.other.readwrite.erlang
    __
%   ^^ variable.other.readwrite.erlang
    _1
%   ^^ variable.other.readwrite.erlang
    _
%   ^ variable.language.anonymous.erlang
    _+
%   ^ variable.language.anonymous.erlang
%    ^ keyword.operator.arithmetic.erlang
    [_,_,_]
%    ^ variable.language.anonymous.erlang
%      ^ variable.language.anonymous.erlang
%        ^ variable.language.anonymous.erlang

    namespace:
%   ^^^^^^^^^ variable.namespace.erlang
%            ^ punctuation.accessor.double-colon.erlang

% Operator tests

operator_tests() -> .

    X ! Expr   % assign return value of Expr to X
%     ^ keyword.operator.assignment.erlang

    X = foo    % assign a value
%     ^ keyword.operator.assignment.erlang

    X++Y
%    ^^ keyword.operator.lists.erlang

    X--Y
%    ^^ keyword.operator.lists.erlang

    2 /= 3
%     ^^ keyword.operator.comparison.erlang

    2 == 3
%     ^^ keyword.operator.comparison.erlang

    2 >= 3
%     ^^ keyword.operator.comparison.erlang

    2 =< 3
%     ^^ keyword.operator.comparison.erlang

    X =:= 3
%     ^^^ keyword.operator.comparison.erlang

    X =/= 3
%     ^^^ keyword.operator.comparison.erlang

    X =! 3
%     ^^ keyword.operator.comparison.erlang

    X <- [1,2,3]
%   ^ variable.other.readwrite.erlang
%     ^^ keyword.operator.generator.erlang
%        ^ punctuation.section.sequence.begin.erlang
%        ^^^^^^^ meta.sequence.list.erlang
%         ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%          ^ punctuation.separator.sequence.erlang
%           ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%            ^ punctuation.separator.sequence.erlang
%             ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%              ^ punctuation.section.sequence.end.erlang

    <<X>> <= << 1,2,3 >>
%   ^^ punctuation.definition.sequence.begin.erlang
%   ^^^^^ meta.sequence.binary.erlang
%     ^ variable.other.readwrite.erlang
%      ^^ punctuation.definition.sequence.end.erlang
%         ^^ keyword.operator.generator.erlang
%            ^^ punctuation.definition.sequence.begin.erlang
%            ^^^^^^^^^^^ meta.sequence.binary.erlang
%               ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                ^ punctuation.separator.sequence.erlang
%                 ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                  ^ punctuation.separator.sequence.erlang
%                   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                     ^^ punctuation.definition.sequence.end.erlang

    {A, B, C} -> 0, 1, D.
%   ^^^^^^^^^ meta.sequence.tuple.erlang
%             ^^ punctuation.separator.clause-head-body.erlang
%                ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                 ^ punctuation.separator.expressions.erlang
%                   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                    ^ punctuation.separator.expressions.erlang
%                      ^ variable.other.readwrite.erlang

    a := b
%   ^ meta.atom.erlang constant.other.symbol.erlang
%     ^^ punctuation.separator.key-value.erlang
%        ^ meta.atom.erlang constant.other.symbol.erlang

    a => b
%   ^ meta.atom.erlang constant.other.symbol.erlang
%     ^^ punctuation.separator.key-value.erlang
%        ^ meta.atom.erlang constant.other.symbol.erlang

% directive-control-flow tests

preprocessor_control_tests() -> .

    4 -if end
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.control.conditional.erlang
%      ^ keyword.control.conditional - meta.preprocessor

    4 -if() end
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.control.conditional.erlang
%      ^ keyword.control.conditional - meta.preprocessor

    -if
%   ^^^^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^ keyword.control.directive.conditional.erlang

    -if ().
%   ^^^^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%       ^^ meta.preprocessor.conditional.arguments.erlang
%         ^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^ keyword.control.directive.conditional.erlang
%       ^ punctuation.section.arguments.begin.erlang
%        ^ punctuation.section.arguments.end.erlang
%         ^ punctuation.terminator.clause.erlang

    -  if  ( ) .
%   ^^^^^^^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%          ^^^ meta.preprocessor.conditional.arguments.erlang
%             ^^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%      ^^ keyword.control.directive.conditional.erlang
%          ^ punctuation.section.arguments.begin.erlang
%            ^ punctuation.section.arguments.end.erlang
%              ^ punctuation.terminator.clause.erlang

    -if(?OTP_RELEASE >= 22).
%   ^^^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%      ^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.conditional.arguments.erlang
%                          ^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^ keyword.control.directive.conditional.erlang
%      ^ punctuation.section.arguments.begin.erlang
%       ^ punctuation.definition.macro.erlang
%       ^^^^^^^^^^^^ constant.language.macro.erlang
%                    ^^ keyword.operator.comparison.erlang
%                       ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                         ^ punctuation.section.arguments.end.erlang
%                          ^ punctuation.terminator.clause.erlang

    -elif(?OTP_RELEASE >= 22).
%   ^^^^^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%        ^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.conditional.arguments.erlang
%                            ^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^ keyword.control.directive.conditional.erlang
%        ^ punctuation.section.arguments.begin.erlang
%         ^ punctuation.definition.macro.erlang
%         ^^^^^^^^^^^^ constant.language.macro.erlang
%                      ^^ keyword.operator.comparison.erlang
%                         ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                           ^ punctuation.section.arguments.end.erlang
%                            ^ punctuation.terminator.clause.erlang

    -ifdef(MACRO_NAME).
%   ^^^^^^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%         ^^^^^^^^^^^^ meta.preprocessor.conditional.arguments.erlang
%                     ^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.conditional.erlang
%         ^ punctuation.section.arguments.begin.erlang
%          ^^^^^^^^^^ constant.other.macro.erlang
%                    ^ punctuation.section.arguments.end.erlang
%                     ^ punctuation.terminator.clause.erlang

    -ifdef(MACRO_NAME illegal).
%   ^^^^^^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%         ^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.conditional.arguments.erlang
%                             ^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.conditional.erlang
%         ^ punctuation.section.arguments.begin.erlang
%          ^^^^^^^^^^ constant.other.macro.erlang
%                     ^^^^^^^ invalid.illegal.expect-arguments-end.erlang
%                            ^ punctuation.section.arguments.end.erlang
%                             ^ punctuation.terminator.clause.erlang

    4 -ifndef
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.control.erlang
%      ^ constant.other.symbol.erlang - keyword.control.directive.attribute.erlang

    4 -ifndef()
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.control.erlang
%      ^ variable.function.erlang - keyword.control.directive.attribute.erlang

    -ifndef
%   ^^^^^^^^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.conditional.erlang

    -ifndef()
%   ^^^^^^^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%          ^^ meta.preprocessor.conditional.arguments.erlang
%            ^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.conditional.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.section.arguments.end.erlang
%            ^ invalid.illegal.expect-terminator.erlang

    -ifndef(macro_name).
%   ^^^^^^^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%          ^^^^^^^^^^^^ meta.preprocessor.conditional.arguments.erlang
%                      ^ meta.preprocessor.conditional.erlang - meta.preprocessor.conditional.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.conditional.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^^^^^^^ constant.other.macro.erlang
%                     ^ punctuation.section.arguments.end.erlang
%                      ^ punctuation.terminator.clause.erlang

    4 -else
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.control.erlang
%      ^ constant.other.symbol.erlang - keyword.control.directive.attribute.erlang

    4 -else()
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.control.erlang
%      ^ variable.function.erlang - keyword.control.directive.attribute.erlang

    -else.
%   ^^^^^^ meta.preprocessor.conditional.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^ keyword.control.directive.conditional.erlang
%        ^ punctuation.terminator.clause.erlang

    - else .
%   ^^^^^^^^ meta.preprocessor.conditional.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%     ^^^^ keyword.control.directive.conditional.erlang
%          ^ punctuation.terminator.clause.erlang

    -else().
%   ^^^^^^ meta.preprocessor.conditional.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^ keyword.control.directive.conditional.erlang
%        ^^ invalid.illegal.expect-terminator.erlang
%          ^ punctuation.terminator.clause.erlang

    -endif.
%   ^^^^^^^ meta.preprocessor.conditional.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.conditional.erlang
%         ^ punctuation.terminator.clause.erlang

    - endif .
%   ^^^^^^^^^ meta.preprocessor.conditional.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%     ^^^^^ keyword.control.directive.conditional.erlang
%           ^ punctuation.terminator.clause.erlang

    -endif().
%   ^^^^^^^ meta.preprocessor.conditional.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.conditional.erlang
%         ^^ invalid.illegal.expect-terminator.erlang
%           ^ punctuation.terminator.clause.erlang

% directive-undef tests

preprocessor_undef_tests() -> .

    4 -undef
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.undef.erlang
%      ^^^^^ constant.language.exception.reason.erlang - keyword.control.directive.undef.erlang

    4 -undef()
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.undef.erlang
%      ^ variable.function.erlang - keyword.control.directive.undef.erlang

    -undef
%   ^^^^^^^ meta.preprocessor.undef.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.undef.erlang

    -undef(
%   ^^^^^^ meta.preprocessor.undef.erlang - meta.preprocessor.undef.arguments.erlang
%         ^^ meta.preprocessor.undef.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.undef.erlang
%         ^ punctuation.section.arguments.begin.erlang

    -undef)
%  ^^^^^^^^ meta.preprocessor.undef.arguments.erlang
%          ^ meta.preprocessor.undef.erlang - meta.preprocessor.undef.arguments.erlang
%   ^^^^^^ invalid.illegal.expect-identifier.erlang
%         ^ punctuation.section.arguments.end.erlang
%          ^ invalid.illegal.expect-terminator.erlang

    -undef()
%   ^^^^^^ meta.preprocessor.undef.erlang - meta.preprocessor.undef.arguments.erlang
%         ^^ meta.preprocessor.undef.arguments.erlang
%           ^ meta.preprocessor.undef.erlang - meta.preprocessor.undef.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.undef.erlang
%         ^ punctuation.section.arguments.begin.erlang
%          ^ punctuation.section.arguments.end.erlang
%           ^ invalid.illegal.expect-terminator.erlang

    -undef().
%   ^^^^^^ meta.preprocessor.undef.erlang - meta.preprocessor.undef.arguments.erlang
%         ^^ meta.preprocessor.undef.arguments.erlang
%           ^ meta.preprocessor.undef.erlang - meta.preprocessor.undef.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.undef.erlang
%         ^ punctuation.section.arguments.begin.erlang
%          ^ punctuation.section.arguments.end.erlang
%           ^ punctuation.terminator.clause.erlang

    -undef(name)
%   ^^^^^^ meta.preprocessor.undef.erlang - meta.preprocessor.undef.arguments.erlang
%         ^^^^^^ meta.preprocessor.undef.arguments.erlang
%               ^ meta.preprocessor.undef.erlang - meta.preprocessor.undef.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.undef.erlang
%         ^ punctuation.section.arguments.begin.erlang
%          ^^^^ entity.name.constant.macro.erlang
%              ^ punctuation.section.arguments.end.erlang
%               ^ invalid.illegal.expect-terminator.erlang

    - undef ( name illegal ) illegal .
%   ^^^^^^^^ meta.preprocessor.undef.erlang - meta.preprocessor.undef.arguments.erlang
%           ^^^^^^^^^^^^^^^^ meta.preprocessor.undef.arguments.erlang
%                           ^^^^^^^^^ meta.preprocessor.undef.erlang - meta.preprocessor.undef.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%     ^^^^^ keyword.control.directive.undef.erlang
%           ^ punctuation.section.arguments.begin.erlang
%             ^^^^ entity.name.constant.macro.erlang
%                  ^^^^^^^ invalid.illegal.expect-arguments-end.erlang
%                          ^ punctuation.section.arguments.end.erlang
%                            ^^^^^^^ invalid.illegal.expect-terminator.erlang
%                                    ^ punctuation.terminator.clause.erlang

% directive-define tests

preprocessor_define_tests() -> .

    4 -define
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.define.erlang
%      ^ constant.other.symbol.erlang - keyword.control.directive.define.erlang

    4 -define()
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.define.erlang
%      ^ variable.function.erlang - keyword.control.directive.define.erlang

    -define
%   ^^^^^^^^ meta.preprocessor.define.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang

    -define(
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^^ meta.preprocessor.define.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang
%          ^ punctuation.section.arguments.begin.erlang

    -define)
%  ^^^^^^^^^ meta.preprocessor.define.arguments.erlang
%           ^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%  ^ - entity - invalid
%   ^^^^^^^ invalid.illegal.expect-identifier.erlang
%          ^ punctuation.section.arguments.end.erlang - entity - invalid
%           ^ invalid.illegal.expect-terminator.erlang

    -define()
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^^ meta.preprocessor.define.arguments.erlang
%            ^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.section.arguments.end.erlang
%            ^ invalid.illegal.expect-terminator.erlang

    -define().
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^^ meta.preprocessor.define.arguments.erlang
%            ^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.section.arguments.end.erlang
%            ^ punctuation.terminator.clause.erlang

    -define(,)
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^^^ meta.preprocessor.define.arguments.erlang
%             ^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.separator.arguments.erlang
%            ^ punctuation.section.arguments.end.erlang
%             ^ invalid.illegal.expect-terminator.erlang

    -define(.)
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^ meta.preprocessor.define.arguments.erlang
%           ^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.terminator.clause.erlang
%            ^ invalid.illegal.stray.erlang

    -define(,,)
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^^^^ meta.preprocessor.define.arguments.erlang
%              ^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.separator.arguments.erlang
%            ^ punctuation.separator.expressions.erlang
%             ^ punctuation.section.arguments.end.erlang
%              ^ invalid.illegal.expect-terminator.erlang

    -define(name,)
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^^^^^^^ meta.preprocessor.define.arguments.erlang
%                 ^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang
%          ^ punctuation.section.arguments.begin.erlang - entity - invalid
%           ^^^^ entity.name.constant.macro.erlang
%               ^ punctuation.separator.arguments.erlang - entity - invalid
%                ^ punctuation.section.arguments.end.erlang
%                 ^ invalid.illegal.expect-terminator.erlang

    -define( Name , )
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^^^^^^^^^^ meta.preprocessor.define.arguments.erlang
%                    ^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ - entity
%            ^^^^ entity.name.constant.macro.erlang
%                ^ - entity
%                 ^ punctuation.separator.arguments.erlang
%                   ^ punctuation.section.arguments.end.erlang
%                    ^ invalid.illegal.expect-terminator.erlang

    -define(NAME, 16#1AF).
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^^^^^^^^^^^^^^ meta.preprocessor.define.arguments.erlang
%                        ^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^ entity.name.constant.macro.erlang
%               ^ punctuation.separator.arguments.erlang
%                 ^^^ meta.number.integer.hexadecimal.erlang constant.numeric.base.erlang
%                    ^^^ meta.number.integer.hexadecimal.erlang constant.numeric.value.erlang
%                       ^ punctuation.section.arguments.end.erlang
%                        ^ punctuation.terminator.clause.erlang

    -define('name', 16#1AF).
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^^^^^^^^^^^^^^^^ meta.preprocessor.define.arguments.erlang
%                          ^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^^^ entity.name.constant.macro.erlang
%                 ^ punctuation.separator.arguments.erlang
%                   ^^^ meta.number.integer.hexadecimal.erlang constant.numeric.base.erlang
%                      ^^^ meta.number.integer.hexadecimal.erlang constant.numeric.value.erlang
%                         ^ punctuation.section.arguments.end.erlang
%                          ^ punctuation.terminator.clause.erlang

    -define(?NAME, 16#1AF).
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^^^^^^^^^^^^^^^ meta.preprocessor.define.arguments.erlang
%                         ^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^^ constant.other.macro.erlang
%                ^ punctuation.separator.arguments.erlang
%                  ^^^ meta.number.integer.hexadecimal.erlang constant.numeric.base.erlang
%                     ^^^ meta.number.integer.hexadecimal.erlang constant.numeric.value.erlang
%                        ^ punctuation.section.arguments.end.erlang
%                         ^ punctuation.terminator.clause.erlang

    -define(HASH, sha1() | sha2() ; ripemd160 ).
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.define.arguments.erlang
%                                              ^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^ entity.name.constant.macro.erlang
%               ^ punctuation.separator.arguments.erlang
%                        ^ punctuation.separator.sequence.erlang
%                                 ^ punctuation.separator.clauses.erlang
%                                             ^ punctuation.section.arguments.end.erlang
%                                              ^ punctuation.terminator.clause.erlang

    -define(FUNC(X, Y), {a, X, b, Y}).
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.define.arguments.erlang
%          ^ - meta.macro
%           ^^^^ meta.macro.identifier.erlang - meta.macro.parameters
%               ^^^^^^ meta.macro.parameters.erlang
%                     ^ - meta.macro
%                       ^^^^^^^^^^^^ meta.sequence.tuple.erlang
%                                    ^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^ entity.name.constant.macro.erlang
%                     ^ punctuation.separator.arguments.erlang
%                       ^ punctuation.section.sequence.begin.erlang
%                        ^ constant.other.symbol.erlang
%                         ^ punctuation.separator.sequence.erlang
%                           ^ variable.other.readwrite.erlang
%                            ^ punctuation.separator.sequence.erlang
%                              ^ constant.other.symbol.erlang
%                               ^ punctuation.separator.sequence.erlang
%                                 ^ variable.other.readwrite.erlang
%                                  ^ punctuation.section.sequence.end.erlang
%                                   ^ punctuation.section.arguments.end.erlang
%                                    ^ punctuation.terminator.clause.erlang

    -define('E...'(X), ?'2bin'(X)/binary ).
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.define.arguments.erlang
%          ^ - meta.macro
%           ^^^^^^ meta.macro.identifier.erlang - meta.macro.parameters
%                 ^^^ meta.macro.parameters.erlang
%                    ^ - meta.macro
%                      ^^^^^^^ meta.function-call.identifier.erlang
%                             ^^^ meta.function-call.arguments.erlang
%                                         ^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.define.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^^^ entity.name.constant.macro.erlang
%                 ^ punctuation.section.parameters.begin.erlang
%                  ^ variable.parameter.erlang
%                   ^ punctuation.section.parameters.end.erlang
%                    ^ punctuation.separator.arguments.erlang
%                      ^ punctuation.definition.macro.erlang
%                      ^^^^^^^ constant.other.macro.erlang
%                       ^ punctuation.definition.atom.begin.erlang
%                            ^ punctuation.definition.atom.end.erlang
%                             ^ punctuation.section.arguments.begin.erlang
%                              ^ variable.other.readwrite.erlang
%                               ^ punctuation.section.arguments.end.erlang
%                                ^ keyword.operator.arithmetic.erlang
%                                 ^^^^^^ constant.other.symbol.erlang
%                                        ^ punctuation.section.arguments.end.erlang
%                                         ^ punctuation.terminator.clause.erlang

    -define(CALL(Rec, Func, Args),
%   ^^^^^^^ meta.preprocessor.define.erlang - meta.preprocessor.define.arguments.erlang
%          ^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.define.arguments.erlang
            erlang:apply(Rec.mod, Func, Args ++ [Rec.mod_state])
%           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.define.arguments.erlang
%                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.erlang
%                                               ^^^^^^^^^^^^^^^ meta.sequence.list.erlang
%           ^^^^^^ meta.path.erlang support.namespace.erlang
%                 ^ meta.path.erlang punctuation.accessor.double-colon.erlang
%                  ^^^^^ meta.path.erlang meta.function-call.identifier.erlang support.function.erlang
%                       ^ punctuation.section.arguments.begin.erlang
%                        ^^^ variable.other.readwrite.erlang
%                           ^ punctuation.accessor.dot.erlang
%                            ^^^ variable.other.member.erlang
%                               ^ punctuation.separator.arguments.erlang
%                                 ^^^^ variable.other.readwrite.erlang
%                                     ^ punctuation.separator.arguments.erlang
%                                       ^^^^ variable.other.readwrite.erlang
%                                            ^^ keyword.operator.lists.erlang
%                                                ^^^ variable.other.readwrite.erlang
%                                                   ^ punctuation.accessor.dot.erlang
%                                                    ^^^^^^^^^ variable.other.member.erlang
).
% <- punctuation.section.arguments.end.erlang
%^ punctuation.terminator.clause.erlang

-define(_get_stacktrace_(),
        try exit('$get_stacktrace') catch exit:'$get_stacktrace':Stacktrace -> Stacktrace end).
%       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.define.arguments.erlang
%       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.exception.try.erlang
%                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.exception.catch.erlang
%                                                                                         ^^^ meta.exception.try.erlang
%           ^^^^ meta.function-call.identifier.erlang
%               ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.erlang
%       ^^^ keyword.control.exception.try.erlang
%           ^^^^ support.function.erlang
%               ^ punctuation.section.arguments.begin.erlang
%                ^ punctuation.definition.atom.begin.erlang
%                ^^^^^^^^^^^^^^^^^ constant.other.symbol.erlang
%                                ^ punctuation.definition.atom.end.erlang
%                                 ^ punctuation.section.arguments.end.erlang
%                                   ^^^^^ keyword.control.exception.catch.erlang
%                                         ^^^^ constant.language.exception.type.erlang
%                                             ^ punctuation.separator.patterns.erlang
%                                              ^ punctuation.definition.atom.begin.erlang
%                                              ^^^^^^^^^^^^^^^^^ constant.other.symbol.erlang
%                                                              ^ punctuation.definition.atom.end.erlang
%                                                               ^ punctuation.separator.patterns.erlang
%                                                                ^^^^^^^^^^ variable.other.readwrite.erlang
%                                                                           ^^ punctuation.separator.clause-head-body.erlang
%                                                                              ^^^^^^^^^^ variable.other.readwrite.erlang
%                                                                                         ^^^ keyword.control.exception.end.erlang
%

% directive-export tests

preprocessor_export_tests() -> .

    4 -export
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.export.erlang
%      ^ constant.other.symbol.erlang - keyword.control.directive.export.erlang

    4 -export()
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.export.erlang
%      ^ variable.function.erlang - keyword.control.directive.export.erlang

    -export
%   ^^^^^^^^ meta.preprocessor.export.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.export.erlang

    -export(
        illegal
%       ^ invalid.illegal.expect-list.erlang
        [ref/]
%       ^^^^^^ meta.sequence.list.erlang
        illegal
%       ^ invalid.illegal.expect-arguments-end.erlang
    .
%   ^ punctuation.terminator.clause.erlang
%    ^ - meta.preprocessor.export

    -export(
%   ^^^^^^^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%          ^^ meta.preprocessor.export.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.export.erlang
%          ^ punctuation.section.arguments.begin.erlang

    -export)
%  ^^^^^^^^^ meta.preprocessor.export.arguments.erlang
%           ^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%   ^^^^^^^ invalid.illegal.expect-list.erlang
%          ^ punctuation.section.arguments.end.erlang
%           ^ invalid.illegal.expect-terminator.erlang

    -export()
%   ^^^^^^^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%          ^^ meta.preprocessor.export.arguments.erlang
%            ^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.export.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.section.arguments.end.erlang
%            ^ invalid.illegal.expect-terminator.erlang

    -export().
%   ^^^^^^^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%          ^^ meta.preprocessor.export.arguments.erlang
%            ^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.export.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.section.arguments.end.erlang
%            ^ punctuation.terminator.clause.erlang

    -export([start_link/1, report / 2, stop/a, FooBar/2, fooBar/]).
%   ^^^^^^^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.export.arguments.erlang
%                                                                 ^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.erlang
%            ^^^^^^^^^^ meta.reference.function.name.erlang
%                      ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                       ^ meta.reference.function.arity.erlang
%                          ^^^^^^^ meta.reference.function.name.erlang
%                                 ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                                  ^^ meta.reference.function.arity.erlang
%                                      ^^^^ meta.reference.function.name.erlang
%                                          ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                                           ^ meta.reference.function.arity.erlang
%                                              ^^^^^^ meta.reference.function.name.erlang
%                                                    ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                                                     ^ meta.reference.function.arity.erlang
%                                                        ^^^^^^ meta.reference.function.name.erlang
%                                                              ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.export.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.section.sequence.begin.erlang
%            ^^^^^^^^^^ variable.function.erlang
%                      ^ punctuation.separator.reference.erlang
%                       ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                        ^ punctuation.separator.sequence.erlang
%                          ^^^^^^ variable.function.erlang
%                                 ^ punctuation.separator.reference.erlang
%                                   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                    ^ punctuation.separator.sequence.erlang
%                                      ^^^^ variable.function.erlang
%                                          ^ punctuation.separator.reference.erlang
%                                           ^ invalid.illegal.expect-integer.erlang
%                                            ^  punctuation.separator.sequence.erlang
%                                              ^^^^^^ variable.other.readwrite.erlang
%                                                    ^ punctuation.separator.reference.erlang
%                                                     ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                                      ^ punctuation.separator.sequence.erlang
%                                                        ^^^^^^ variable.function.erlang
%                                                              ^ punctuation.separator.reference.erlang
%                                                               ^ punctuation.section.sequence.end.erlang
%                                                                ^ punctuation.section.arguments.end.erlang
%                                                                 ^ punctuation.terminator.clause.erlang

% directive-export_type tests

    4 -export_type
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.export.erlang
%      ^ constant.other.symbol.erlang - keyword.control.directive.export.erlang

    4 -export_type()
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.export.erlang
%      ^ variable.function.erlang - keyword.control.directive.export.erlang

    -export_type
%   ^^^^^^^^^^^^^ meta.preprocessor.export.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^^^^^ keyword.control.directive.export.erlang

    -export_type(
%   ^^^^^^^^^^^^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%               ^^ meta.preprocessor.export.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^^^^^ keyword.control.directive.export.erlang
%               ^ punctuation.section.arguments.begin.erlang

    -export_type)
%  ^^^^^^^^^^^^^^ meta.preprocessor.export.arguments.erlang
%                ^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%   ^^^^^^^^^^^^ invalid.illegal.expect-list.erlang
%               ^ punctuation.section.arguments.end.erlang
%                ^ invalid.illegal.expect-terminator.erlang

    -export_type()
%   ^^^^^^^^^^^^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%               ^^ meta.preprocessor.export.arguments.erlang
%                 ^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^^^^^ keyword.control.directive.export.erlang
%               ^ punctuation.section.arguments.begin.erlang
%                ^ punctuation.section.arguments.end.erlang
%                 ^ invalid.illegal.expect-terminator.erlang

    -export_type().
%   ^^^^^^^^^^^^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%               ^^ meta.preprocessor.export.arguments.erlang
%                 ^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^^^^^ keyword.control.directive.export.erlang
%               ^ punctuation.section.arguments.begin.erlang
%                ^ punctuation.section.arguments.end.erlang
%                 ^ punctuation.terminator.clause.erlang

    -export_type([start_link/1, report / 2, stop/a, FooBar/2, fooBar/]).
%   ^^^^^^^^^^^^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.export.arguments.erlang
%                                                                      ^ meta.preprocessor.export.erlang - meta.preprocessor.export.arguments.erlang
%                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.erlang
%                 ^^^^^^^^^^ meta.reference.function.name.erlang
%                           ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                            ^ meta.reference.function.arity.erlang
%                               ^^^^^^^ meta.reference.function.name.erlang
%                                      ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                                       ^^ meta.reference.function.arity.erlang
%                                           ^^^^ meta.reference.function.name.erlang
%                                               ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                                                ^ meta.reference.function.arity.erlang
%                                                   ^^^^^^ meta.reference.function.name.erlang
%                                                         ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                                                          ^ meta.reference.function.arity.erlang
%                                                             ^^^^^^ meta.reference.function.name.erlang
%                                                                   ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^^^^^ keyword.control.directive.export.erlang
%               ^ punctuation.section.arguments.begin.erlang
%                ^ punctuation.section.sequence.begin.erlang
%                 ^^^^^^^^^^ variable.function.erlang
%                           ^ punctuation.separator.reference.erlang
%                            ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                             ^ punctuation.separator.sequence.erlang
%                               ^^^^^^ variable.function.erlang
%                                      ^ punctuation.separator.reference.erlang
%                                        ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                         ^ punctuation.separator.sequence.erlang
%                                           ^^^^ variable.function.erlang
%                                               ^ punctuation.separator.reference.erlang
%                                                ^ invalid.illegal.expect-integer.erlang
%                                                 ^  punctuation.separator.sequence.erlang
%                                                   ^^^^^^ variable.other.readwrite.erlang
%                                                         ^ punctuation.separator.reference.erlang
%                                                          ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                                           ^ punctuation.separator.sequence.erlang
%                                                             ^^^^^^ variable.function.erlang
%                                                                   ^ punctuation.separator.reference.erlang
%                                                                    ^ punctuation.section.sequence.end.erlang
%                                                                     ^ punctuation.section.arguments.end.erlang
%                                                                      ^ punctuation.terminator.clause.erlang

% directive-import tests

preprocessor_import_tests() -> .

    4 -import
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.import.erlang
%      ^ constant.other.symbol.erlang - keyword.control.directive.import.erlang

    4 -import()
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.import.erlang
%      ^ variable.function.erlang - keyword.control.directive.import.erlang

    -import
%   ^^^^^^^^ meta.preprocessor.import.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.import.erlang

    -import.
%   ^^^^^^^^ meta.preprocessor.import.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.import.erlang

    -import).
%   ^^^^^^^^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%           ^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.import.erlang
%          ^ invalid.illegal.stray-arguments-end.erlang

    -import(
%   ^^^^^^^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%          ^^ meta.preprocessor.import.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.import.erlang
%          ^ punctuation.section.arguments.begin.erlang

    -import)
%  ^^^^^^^^^ meta.preprocessor.import.arguments.erlang
%           ^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%   ^^^^^^^ invalid.illegal.expect-atom.erlang
%          ^ punctuation.section.arguments.end.erlang
%           ^ invalid.illegal.expect-terminator.erlang

    -import()
%   ^^^^^^^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%          ^^ meta.preprocessor.import.arguments.erlang
%            ^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.import.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.section.arguments.end.erlang
%            ^ invalid.illegal.expect-terminator.erlang

    -import().
%   ^^^^^^^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%          ^^ meta.preprocessor.import.arguments.erlang
%            ^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.import.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.section.arguments.end.erlang
%            ^ punctuation.terminator.clause.erlang

    -import(,)
%   ^^^^^^^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%          ^^^ meta.preprocessor.import.arguments.erlang
%             ^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.import.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.separator.arguments.erlang
%            ^ punctuation.section.arguments.end.erlang
%             ^ invalid.illegal.expect-terminator.erlang

    -import(,,)
%   ^^^^^^^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%          ^^^^ meta.preprocessor.import.arguments.erlang
%              ^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.import.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.separator.arguments.erlang
%            ^ invalid.illegal.expect-list.erlang
%             ^ punctuation.section.arguments.end.erlang
%              ^ invalid.illegal.expect-terminator.erlang

    -import(name,)
%   ^^^^^^^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%          ^^^^^^^ meta.preprocessor.import.arguments.erlang
%                 ^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.import.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^ entity.name.namespace.erlang
%               ^ punctuation.separator.arguments.erlang
%                ^ punctuation.section.arguments.end.erlang
%                 ^ invalid.illegal.expect-terminator.erlang

    -import(Name,)
%   ^^^^^^^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%          ^^^^^^^ meta.preprocessor.import.arguments.erlang
%                 ^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.import.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^ invalid.illegal.expect-atom.erlang
%               ^ punctuation.separator.arguments.erlang
%                ^ punctuation.section.arguments.end.erlang
%                 ^ invalid.illegal.expect-terminator.erlang

    -import('Mod-name',)
%   ^^^^^^^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%          ^^^^^^^^^^^^^ meta.preprocessor.import.arguments.erlang
%                       ^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.import.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.definition.atom.begin.erlang
%            ^^^^^^^^ entity.name.namespace.erlang
%                    ^ punctuation.definition.atom.end.erlang
%                     ^ punctuation.separator.arguments.erlang
%                      ^ punctuation.section.arguments.end.erlang
%                       ^ invalid.illegal.expect-terminator.erlang

    -import( [start_link/1, report / 2, stop/a, FooBar/2, fooBar/]).
%   ^^^^^^^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.import.arguments.erlang
%                                                                  ^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.erlang
%             ^^^^^^^^^^ meta.reference.function.name.erlang
%                       ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                        ^ meta.reference.function.arity.erlang
%                           ^^^^^^^ meta.reference.function.name.erlang
%                                  ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                                   ^^ meta.reference.function.arity.erlang
%                                       ^^^^ meta.reference.function.name.erlang
%                                           ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                                            ^ meta.reference.function.arity.erlang
%                                               ^^^^^^ meta.reference.function.name.erlang
%                                                     ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                                                      ^ meta.reference.function.arity.erlang
%                                                         ^^^^^^ meta.reference.function.name.erlang
%                                                               ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.import.erlang
%          ^ punctuation.section.arguments.begin.erlang
%            ^ punctuation.section.sequence.begin.erlang
%             ^^^^^^^^^^ variable.function.erlang
%                       ^ punctuation.separator.reference.erlang
%                        ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                         ^ punctuation.separator.sequence.erlang
%                           ^^^^^^ variable.function.erlang
%                                  ^ punctuation.separator.reference.erlang
%                                    ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                     ^ punctuation.separator.sequence.erlang
%                                       ^^^^ variable.function.erlang
%                                           ^ punctuation.separator.reference.erlang
%                                            ^ invalid.illegal.expect-integer.erlang
%                                             ^  punctuation.separator.sequence.erlang
%                                               ^^^^^^ variable.other.readwrite.erlang
%                                                     ^ punctuation.separator.reference.erlang
%                                                      ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                                       ^ punctuation.separator.sequence.erlang
%                                                         ^^^^^^ variable.function.erlang
%                                                               ^ punctuation.separator.reference.erlang
%                                                                ^ punctuation.section.sequence.end.erlang
%                                                                 ^ punctuation.section.arguments.end.erlang
%                                                                  ^ punctuation.terminator.clause.erlang

    -import(module, [start_link/1, report / 2, stop/a, FooBar/2, fooBar/]).
%   ^^^^^^^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.import.arguments.erlang
%                                                                         ^ meta.preprocessor.import.erlang - meta.preprocessor.import.arguments.erlang
%                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.erlang
%                    ^^^^^^^^^^ meta.reference.function.name.erlang
%                              ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                               ^ meta.reference.function.arity.erlang
%                                  ^^^^^^^ meta.reference.function.name.erlang
%                                         ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                                          ^^ meta.reference.function.arity.erlang
%                                              ^^^^ meta.reference.function.name.erlang
%                                                  ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                                                   ^ meta.reference.function.arity.erlang
%                                                      ^^^^^^ meta.reference.function.name.erlang
%                                                            ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                                                             ^ meta.reference.function.arity.erlang
%                                                                ^^^^^^ meta.reference.function.name.erlang
%                                                                      ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.import.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^^^ entity.name.namespace.erlang
%                 ^ punctuation.separator.arguments.erlang
%                   ^ punctuation.section.sequence.begin.erlang
%                    ^^^^^^^^^^ variable.function.erlang
%                              ^ punctuation.separator.reference.erlang
%                               ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                ^ punctuation.separator.sequence.erlang
%                                  ^^^^^^ variable.function.erlang
%                                         ^ punctuation.separator.reference.erlang
%                                           ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                            ^ punctuation.separator.sequence.erlang
%                                              ^^^^ variable.function.erlang
%                                                  ^ punctuation.separator.reference.erlang
%                                                   ^ invalid.illegal.expect-integer.erlang
%                                                    ^  punctuation.separator.sequence.erlang
%                                                      ^^^^^^ variable.other.readwrite.erlang
%                                                            ^ punctuation.separator.reference.erlang
%                                                             ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                                              ^ punctuation.separator.sequence.erlang
%                                                                ^^^^^^ variable.function.erlang
%                                                                      ^ punctuation.separator.reference.erlang
%                                                                       ^ punctuation.section.sequence.end.erlang
%                                                                        ^ punctuation.section.arguments.end.erlang
%                                                                         ^ punctuation.terminator.clause.erlang

% include tests

preprocessor_include_tests() -> .

    4 -include
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.include.erlang
%      ^ constant.other.symbol.erlang - keyword.control.directive.include.erlang

    4 -include()
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.include.erlang
%      ^ variable.function.erlang - keyword.control.directive.include.erlang

    -include
%   ^^^^^^^^ meta.preprocessor.include.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^ keyword.control.directive.include.erlang

    -include(
%   ^^^^^^^^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%           ^^ meta.preprocessor.include.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^ keyword.control.directive.include.erlang
%           ^ punctuation.section.arguments.begin.erlang

    -include)
%  ^^^^^^^^^^ meta.preprocessor.include.arguments.erlang
%            ^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%   ^^^^^^^^ invalid.illegal.expect-arguments-end.erlang
%           ^ punctuation.section.arguments.end.erlang
%            ^ invalid.illegal.expect-terminator.erlang

    -include()
%   ^^^^^^^^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%           ^^ meta.preprocessor.include.arguments.erlang
%             ^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^ keyword.control.directive.include.erlang
%           ^ punctuation.section.arguments.begin.erlang
%            ^ punctuation.section.arguments.end.erlang
%             ^ invalid.illegal.expect-terminator.erlang

    -include().
%   ^^^^^^^^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%           ^^ meta.preprocessor.include.arguments.erlang
%             ^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^ keyword.control.directive.include.erlang
%           ^ punctuation.section.arguments.begin.erlang
%            ^ punctuation.section.arguments.end.erlang
%             ^ punctuation.terminator.clause.erlang

    -include(illegal).
%   ^^^^^^^^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%           ^^^^^^^^^ meta.preprocessor.include.arguments.erlang
%                    ^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^ keyword.control.directive.include.erlang
%           ^ punctuation.section.arguments.begin.erlang
%            ^^^^^^^ invalid.illegal.expect-arguments-end.erlang
%                   ^ punctuation.section.arguments.end.erlang
%                    ^ punctuation.terminator.clause.erlang

    -include("$foo/bar/baz.hrl" illegal).
%   ^^^^^^^^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.include.arguments.erlang
%                                       ^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^ keyword.control.directive.include.erlang
%           ^ punctuation.section.arguments.begin.erlang
%            ^ punctuation.definition.string.begin.erlang
%            ^^^^^^^^^^^^^^^^^^ string.quoted.double.erlang
%             ^ punctuation.definition.variable.erlang
%             ^^^^ variable.language.environment.erlang
%                             ^ punctuation.definition.string.end.erlang
%                               ^^^^^^^ invalid.illegal.expect-arguments-end.erlang
%                                      ^ punctuation.section.arguments.end.erlang
%                                       ^ punctuation.terminator.clause.erlang

    4 -include_lib
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.include.erlang
%      ^ constant.other.symbol.erlang - keyword.control.directive.include.erlang

    -include_lib
%   ^^^^^^^^^^^^ meta.preprocessor.include.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^^^^^ keyword.control.directive.include.erlang

    -include_lib(
%   ^^^^^^^^^^^^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%               ^^ meta.preprocessor.include.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^^^^^ keyword.control.directive.include.erlang
%               ^ punctuation.section.arguments.begin.erlang

    -include_lib)
%  ^^^^^^^^^^^^^^ meta.preprocessor.include.arguments.erlang
%                ^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%   ^^^^^^^^^^^^ invalid.illegal.expect-arguments-end.erlang
%               ^ punctuation.section.arguments.end.erlang
%                ^ invalid.illegal.expect-terminator.erlang

    -include_lib()
%   ^^^^^^^^^^^^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%               ^^ meta.preprocessor.include.arguments.erlang
%                 ^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^^^^^ keyword.control.directive.include.erlang
%               ^ punctuation.section.arguments.begin.erlang
%                ^ punctuation.section.arguments.end.erlang
%                 ^ invalid.illegal.expect-terminator.erlang

    -include_lib().
%   ^^^^^^^^^^^^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%               ^^ meta.preprocessor.include.arguments.erlang
%                 ^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^^^^^ keyword.control.directive.include.erlang
%               ^ punctuation.section.arguments.begin.erlang
%                ^ punctuation.section.arguments.end.erlang
%                 ^ punctuation.terminator.clause.erlang

    -include_lib("foo/bar/baz.hrl").
%   ^^^^^^^^^^^^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%               ^^^^^^^^^^^^^^^^^^^ meta.preprocessor.include.arguments.erlang
%                                  ^ meta.preprocessor.include.erlang - meta.preprocessor.include.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^^^^^ keyword.control.directive.include.erlang
%               ^ punctuation.section.arguments.begin.erlang
%                                 ^ punctuation.section.arguments.end.erlang
%                                  ^ punctuation.terminator.clause.erlang

% directive-module tests

preprocessor_module_tests() -> .

    4 -module
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.namespace.erlang
%      ^ constant.other.symbol.erlang - keyword.control.directive.namespace.erlang

    -module
%   ^^^^^^^^ meta.preprocessor.namespace.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.namespace.erlang

    -module(
%   ^^^^^^^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%          ^^ meta.preprocessor.namespace.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.namespace.erlang
%          ^ punctuation.section.arguments.begin.erlang

    -module)
%  ^^^^^^^^^ meta.preprocessor.namespace.arguments.erlang
%           ^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%  ^ - entity - illegal
%   ^^^^^^^ invalid.illegal.expect-atom.erlang
%          ^ punctuation.section.arguments.end.erlang - entity - illegal
%           ^ invalid.illegal.expect-terminator.erlang

    -module()
%   ^^^^^^^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%          ^^ meta.preprocessor.namespace.arguments.erlang
%            ^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.namespace.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.section.arguments.end.erlang
%            ^ invalid.illegal.expect-terminator.erlang

    -module().
%   ^^^^^^^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%          ^^ meta.preprocessor.namespace.arguments.erlang
%            ^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.namespace.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.section.arguments.end.erlang
%            ^ punctuation.terminator.clause.erlang

    -module(,)
%   ^^^^^^^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%          ^^^ meta.preprocessor.namespace.arguments.erlang
%             ^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.namespace.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ invalid.illegal.expect-arguments-end.erlang
%            ^ punctuation.section.arguments.end.erlang
%             ^ invalid.illegal.expect-terminator.erlang

    -module(name)
%   ^^^^^^^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%          ^^^^^^ meta.preprocessor.namespace.arguments.erlang
%                ^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.namespace.erlang
%          ^ punctuation.section.arguments.begin.erlang - entity
%           ^^^^ entity.name.namespace.erlang
%               ^ punctuation.section.arguments.end.erlang - entity
%                ^ invalid.illegal.expect-terminator.erlang

    -module(Name)
%   ^^^^^^^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%          ^^^^^^ meta.preprocessor.namespace.arguments.erlang
%                ^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.namespace.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^ invalid.illegal.expect-atom.erlang
%               ^ punctuation.section.arguments.end.erlang
%                ^ invalid.illegal.expect-terminator.erlang

    -module('Mod-name')
%   ^^^^^^^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%          ^^^^^^^^^^^^ meta.preprocessor.namespace.arguments.erlang
%                      ^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.namespace.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.definition.atom.begin.erlang
%            ^^^^^^^^ entity.name.namespace.erlang
%                    ^ punctuation.definition.atom.end.erlang
%                     ^ punctuation.section.arguments.end.erlang
%                      ^ invalid.illegal.expect-terminator.erlang

    -module(?MOD_NAME)
%   ^^^^^^^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%          ^^^^^^^^^^^ meta.preprocessor.namespace.arguments.erlang
%                     ^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.namespace.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.definition.macro.erlang
%           ^^^^^^^^^ constant.other.macro.erlang
%                    ^ punctuation.section.arguments.end.erlang
%                     ^ invalid.illegal.expect-terminator.erlang

    -module(?'ModName')
%   ^^^^^^^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%          ^^^^^^^^^^^^ meta.preprocessor.namespace.arguments.erlang
%                      ^ meta.preprocessor.namespace.erlang - meta.preprocessor.namespace.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.namespace.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.definition.macro.erlang
%           ^^^^^^^^^^ constant.other.macro.erlang
%            ^ punctuation.definition.atom.begin.erlang
%                    ^ punctuation.definition.atom.end.erlang
%                     ^ punctuation.section.arguments.end.erlang
%                      ^ invalid.illegal.expect-terminator.erlang

% directive on_load tests

preprocessor_onload_tests() -> .

    4 -on_load
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.control.directive.attribute.erlang
%      ^ constant.other.symbol.erlang - keyword.control.directive.attribute.erlang

    -on_load
%   ^^^^^^^^^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^ keyword.control.directive.attribute.erlang

    -on_load(
%   ^^^^^^^^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^ keyword.control.directive.attribute.erlang
%           ^^ meta.preprocessor.attribute.arguments.erlang
%           ^ punctuation.section.arguments.begin.erlang

    -on_load)
%  ^^^^^^^^^ meta.preprocessor.attribute.arguments.erlang
%            ^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%   ^^^^^^^^ - keyword.control.directive
%           ^ punctuation.section.arguments.end.erlang
%            ^ invalid.illegal.expect-terminator.erlang

    -on_load(function/0).
%   ^^^^^^^^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%           ^^^^^^^^^^^^ meta.preprocessor.attribute.arguments.erlang
%            ^^^^^^^^ meta.reference.function.name.erlang
%                    ^ meta.reference.function.erlang - meta.reference.identifier - mete.reference.arity
%                     ^ meta.reference.function.arity.erlang
%                       ^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^ keyword.control.directive.attribute.erlang
%           ^ punctuation.section.arguments.begin.erlang
%            ^^^^^^^^ variable.function.erlang
%                    ^ punctuation.separator.reference.erlang
%                     ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                      ^ punctuation.section.arguments.end.erlang
%                       ^ punctuation.terminator.clause.erlang

    -on_load(module:function/0).
%   ^^^^^^^^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%           ^^^^^^^^^^^^^^^^^^^ meta.preprocessor.attribute.arguments.erlang
%            ^^^^^^^^^^^^^^^^^ meta.path.erlang
%                              ^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^^ keyword.control.directive.attribute.erlang
%           ^ punctuation.section.arguments.begin.erlang
%            ^^^^^^ variable.namespace.erlang
%                   ^^^^^^^^ variable.function.erlang
%                           ^ punctuation.separator.reference.erlang
%                            ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                             ^ punctuation.section.arguments.end.erlang
%                              ^ punctuation.terminator.clause.erlang

% directive-other tests

preprocessor_other_tests() -> .

    4 -other
%   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%     ^ keyword.operator.arithmetic.erlang - keyword.declaration.other.erlang
%      ^^^^^ constant.other.symbol.erlang - keyword.control.directive.attribute.erlang

    -other
%   ^^^^^^^ meta.preprocessor.attribute.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.attribute.erlang

    -other(
%   ^^^^^^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%         ^^ meta.preprocessor.attribute.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.attribute.erlang
%         ^ punctuation.section.arguments.begin.erlang

    -other)
%  ^^^^^^^^ meta.preprocessor.attribute.arguments.erlang
%          ^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%   ^^^^^^ - keyword.control.directive.attribute.erlang
%         ^ punctuation.section.arguments.end.erlang
%          ^ invalid.illegal.expect-terminator.erlang

    -other()
%   ^^^^^^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%         ^^ meta.preprocessor.attribute.arguments.erlang
%           ^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.attribute.erlang
%         ^ punctuation.section.arguments.begin.erlang
%          ^ punctuation.section.arguments.end.erlang
%           ^ invalid.illegal.expect-terminator.erlang

    -other().
%   ^^^^^^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%         ^^ meta.preprocessor.attribute.arguments.erlang
%           ^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.attribute.erlang
%         ^ punctuation.section.arguments.begin.erlang
%          ^ punctuation.section.arguments.end.erlang
%           ^ punctuation.terminator.clause.erlang

    -other(,)
%   ^^^^^^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%         ^^^ meta.preprocessor.attribute.arguments.erlang
%            ^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.attribute.erlang
%         ^ punctuation.section.arguments.begin.erlang
%          ^ punctuation.separator.arguments.erlang
%           ^ punctuation.section.arguments.end.erlang
%            ^ invalid.illegal.expect-terminator.erlang

    -other([func/?AR]).
%   ^^^^^^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%         ^ meta.preprocessor.attribute.arguments.erlang - meta.sequence.list - meta.reference
%          ^ meta.preprocessor.attribute.arguments.erlang meta.sequence.list.erlang - meta.reference
%           ^^^^ meta.preprocessor.attribute.arguments.erlang meta.sequence.list.erlang meta.reference.function.name.erlang
%               ^ meta.preprocessor.attribute.arguments.erlang meta.sequence.list.erlang meta.reference.function.erlang
%                ^^^ meta.preprocessor.attribute.arguments.erlang meta.sequence.list.erlang meta.reference.function.arity.erlang
%                   ^ meta.preprocessor.attribute.arguments.erlang meta.sequence.list.erlang - meta.reference
%                    ^ meta.preprocessor.attribute.arguments.erlang - meta.sequence.list - meta.reference
%                     ^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.attribute.erlang
%         ^ punctuation.section.arguments.begin.erlang
%          ^ punctuation.section.sequence.begin.erlang - variable.function
%           ^^^^ variable.function.erlang
%               ^ punctuation.separator.reference.erlang - variable.function
%                ^ punctuation.definition.macro.erlang
%                ^^^ constant.other.macro.erlang - variable.function
%                   ^ punctuation.section.sequence.end.erlang
%                    ^ punctuation.section.arguments.end.erlang
%                     ^ punctuation.terminator.clause.erlang

    -other Foo + bar, baz();.
%   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^ keyword.control.directive.attribute.erlang
%          ^^^ variable.other.readwrite.erlang
%              ^ keyword.operator.arithmetic.erlang
%                ^^^ constant.other.symbol.erlang
%                   ^ punctuation.separator.expressions.erlang
%                     ^^^ variable.function.erlang
%                        ^ punctuation.section.arguments.begin.erlang
%                         ^ punctuation.section.arguments.end.erlang
%                          ^ invalid.illegal.expect-terminator.erlang
%                           ^ punctuation.terminator.clause.erlang

    -'my-other' Foo + bar.
%   ^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.attribute.erlang - meta.preprocessor.attribute.arguments.erlang
%   ^ punctuation.definition.keyword.erlang
%    ^ punctuation.definition.atom.begin.erlang
%    ^^^^^^^^^^ keyword.control.directive.attribute.erlang
%             ^ punctuation.definition.atom.end.erlang
%               ^^^ variable.other.readwrite.erlang
%                   ^ keyword.operator.arithmetic.erlang
%                     ^^^ constant.other.symbol.erlang
%                        ^ punctuation.terminator.clause.erlang

% Function specification tests

preprocessor_spec_tests() -> .

5 -spec
%  ^^^^ - keyword.control.directive.spec.erlang

-spec.
%<- meta.preprocessor.spec.erlang punctuation.definition.keyword.erlang
%^^^^^ source.erlang meta.preprocessor.spec.erlang
%^^^^ keyword.control.directive.spec.erlang
- spec .
%^^^^^^^ source.erlang meta.preprocessor.spec.erlang
%^ - keyword
% ^^^^ keyword.control.directive.spec.erlang
%     ^ - keyword

-spec foo.
%^^^^^ source.erlang meta.preprocessor.spec.erlang
%     ^^^ source.erlang meta.preprocessor.spec.name.erlang
%        ^ source.erlang meta.preprocessor.spec.erlang
%^^^^ keyword.control.directive.spec.erlang
%     ^^^ entity.name.function.erlang
%        ^ punctuation.terminator.clause.erlang

-spec foo(.
%^^^^^ source.erlang meta.preprocessor.spec.erlang
%     ^^^ source.erlang meta.preprocessor.spec.name.erlang
%        ^ source.erlang meta.preprocessor.spec.parameters.erlang
%         ^ source.erlang meta.preprocessor.spec.erlang
%^^^^ keyword.control.directive.spec.erlang
%     ^^^ entity.name.function.erlang
%        ^ punctuation.section.parameters.begin.erlang
%         ^ punctuation.terminator.clause.erlang

-spec foo({.
%^^^^^ source.erlang meta.preprocessor.spec.erlang
%     ^^^ source.erlang meta.preprocessor.spec.name.erlang
%        ^^ source.erlang meta.preprocessor.spec.parameters.erlang
%          ^ source.erlang meta.preprocessor.spec.erlang
%^^^^ keyword.control.directive.spec.erlang
%     ^^^ entity.name.function.erlang
%        ^ punctuation.section.parameters.begin.erlang
%         ^ punctuation.section.sequence.begin.erlang
%          ^ punctuation.terminator.clause.erlang

-spec foo({{.
%^^^^^ source.erlang meta.preprocessor.spec.erlang
%     ^^^ source.erlang meta.preprocessor.spec.name.erlang
%        ^^^ source.erlang meta.preprocessor.spec.parameters.erlang
%           ^ source.erlang meta.preprocessor.spec.erlang
%^^^^ keyword.control.directive.spec.erlang
%     ^^^ entity.name.function.erlang
%        ^ punctuation.section.parameters.begin.erlang
%         ^^ punctuation.section.sequence.begin.erlang
%           ^ punctuation.terminator.clause.erlang

-spec foo({ -> int().
%^^^^^ source.erlang meta.preprocessor.spec.erlang
%     ^^^ source.erlang meta.preprocessor.spec.name.erlang
%        ^^^ source.erlang meta.preprocessor.spec.parameters.erlang
%           ^^ source.erlang meta.preprocessor.spec.erlang
%              ^^^^^ source.erlang meta.preprocessor.spec.return-type.erlang
%^^^^ keyword.control.directive.spec.erlang
%     ^^^ entity.name.function.erlang
%        ^ punctuation.section.parameters.begin.erlang
%         ^ punctuation.section.sequence.begin.erlang
%           ^^ punctuation.separator.parameters-return-type.erlang
%              ^^^ storage.type.erlang
%                   ^ punctuation.terminator.clause.erlang

-spec foo() illegal.
%^^^^^ source.erlang meta.preprocessor.spec.erlang
%     ^^^ source.erlang meta.preprocessor.spec.name.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.guards - meta.preprocessor.spec.return-type
%        ^^ source.erlang meta.preprocessor.spec.parameters.erlang
%          ^^^^^^^^^ source.erlang meta.preprocessor.spec.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.guards - meta.preprocessor.spec.return-type
%           ^^^^^^^ invalid.illegal.expect-separator.erlang
%                  ^ punctuation.terminator.clause.erlang

-spec foo() when Guard.
%^^^^^ source.erlang meta.preprocessor.spec.erlang
%     ^^^ source.erlang meta.preprocessor.spec.name.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.guards - meta.preprocessor.spec.return-type
%        ^^ source.erlang meta.preprocessor.spec.parameters.erlang
%          ^ source.erlang meta.preprocessor.spec.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.guards - meta.preprocessor.spec.return-type
%           ^^^^^^^^^^ source.erlang meta.preprocessor.spec.guards.erlang - meta.preprocessor.spec.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.return-type
%                     ^ source.erlang meta.preprocessor.spec.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.guards - meta.preprocessor.spec.return-type
%           ^^^^ keyword.control.conditional.when.erlang
%                ^^^^^ variable.other.readwrite.erlang
%                     ^ punctuation.terminator.clause.erlang

-spec foo(Pid) -> boolean() when Pid :: pid() | if() [term(), ....
%^^^^^ source.erlang meta.preprocessor.spec.erlang
%     ^^^ source.erlang meta.preprocessor.spec.name.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.guards - meta.preprocessor.spec.return-type
%        ^^^^^ source.erlang meta.preprocessor.spec.parameters.erlang
%             ^^^ source.erlang meta.preprocessor.spec.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.guards - meta.preprocessor.spec.return-type
%                ^^^^^^^^^^^ source.erlang meta.preprocessor.spec.return-type.erlang - meta.preprocessor.spec.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.guard
%                           ^^^^^^^^^^^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.guards.erlang - meta.preprocessor.spec.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.return-type - meta.sequence.list
%                                                    ^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.guards.erlang meta.sequence.list.erlang - meta.preprocessor.spec.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.return-type
%                                                                ^ source.erlang meta.preprocessor.spec.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.guards - meta.preprocessor.spec.return-type
%^^^^ keyword.control.directive.spec.erlang
%     ^^^ entity.name.function.erlang
%        ^ punctuation.section.parameters.begin.erlang
%         ^^^ variable.parameter.erlang
%            ^ punctuation.section.parameters.end.erlang
%              ^^ punctuation.separator.parameters-return-type.erlang
%                 ^^^^^^^ support.type.erlang
%                        ^ punctuation.section.arguments.begin.erlang
%                         ^ punctuation.section.arguments.end.erlang
%                           ^^^^ keyword.control.conditional.when.erlang
%                                ^^^ variable.other.readwrite.erlang
%                                    ^^ punctuation.separator.variable-type.erlang
%                                       ^^^ support.type.erlang
%                                          ^ punctuation.section.arguments.begin.erlang
%                                           ^ punctuation.section.arguments.end.erlang
%                                             ^ punctuation.separator.sequence.erlang
%                                               ^^ invalid.illegal.keyword.erlang
%                                                 ^ punctuation.section.group.begin.erlang
%                                                  ^ punctuation.section.group.end.erlang
%                                                    ^ punctuation.section.sequence.begin.erlang
%                                                     ^^^^ support.type.erlang
%                                                           ^ punctuation.separator.sequence.erlang
%                                                             ^^^ variable.language.any.erlang
%                                                                ^ punctuation.terminator.clause.erlang

-spec Foo.
%^^^^^ source.erlang meta.preprocessor.spec.erlang
%     ^^^ source.erlang meta.preprocessor.spec.name.erlang
%^^^^ keyword.control.directive.spec.erlang
%     ^^^ invalid.illegal.expect-atom.erlang
%        ^ punctuation.terminator.clause.erlang

-spec Foo() -> int().
%^^^^^ source.erlang meta.preprocessor.spec.erlang
%     ^^^ source.erlang meta.preprocessor.spec.name.erlang
%        ^^ source.erlang meta.preprocessor.spec.parameters.erlang
%          ^^^ source.erlang meta.preprocessor.spec.erlang
%             ^^^^^^ source.erlang meta.preprocessor.spec.return-type.erlang
%                   ^ source.erlang meta.preprocessor.spec.erlang
%^^^^ keyword.control.directive.spec.erlang
%     ^^^ invalid.illegal.expect-atom.erlang
%        ^ punctuation.section.parameters.begin.erlang
%         ^ punctuation.section.parameters.end.erlang
%           ^^ punctuation.separator.parameters-return-type.erlang
%              ^^^ storage.type.erlang
%                 ^ punctuation.section.arguments.begin.erlang
%                  ^ punctuation.section.arguments.end.erlang
%                   ^ punctuation.terminator.clause.erlang

-spec mod:foo({X, integer()}) -> X when X :: atom()
%^^^^^ source.erlang meta.preprocessor.spec.erlang - meta.path
%     ^^^^^^^ source.erlang meta.preprocessor.spec.name.erlang meta.path.erlang
%            ^^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.parameters.erlang - meta.path
%                            ^^^ source.erlang meta.preprocessor.spec.erlang
%                               ^^^ source.erlang meta.preprocessor.spec.return-type.erlang
%                                  ^^^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.guards.erlang
%     ^^^ variable.namespace.erlang
%        ^ punctuation.accessor.double-colon.erlang
%         ^^^ entity.name.function.erlang

     ; mod:foo(X::string()) -> int()
%    ^^ source.erlang meta.preprocessor.spec.erlang - meta.path
%      ^^^^^^^ source.erlang meta.preprocessor.spec.name.erlang meta.path.erlang
%             ^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.parameters.erlang - meta.path
%                          ^^^ source.erlang meta.preprocessor.spec.erlang
%                             ^^^^^^ source.erlang meta.preprocessor.spec.return-type.erlang
%    ^ punctuation.separator.clauses.erlang
%      ^^^ variable.namespace.erlang
%         ^ punctuation.accessor.double-colon.erlang
%          ^^^ entity.name.function.erlang

     ; ?mod:?foo(X::string()) -> int()
%    ^^ source.erlang meta.preprocessor.spec.erlang - meta.path
%      ^^^^^^^^^ source.erlang meta.preprocessor.spec.name.erlang meta.path.erlang
%               ^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.parameters.erlang - meta.path
%                            ^^^ source.erlang meta.preprocessor.spec.erlang
%                               ^^^^^^ source.erlang meta.preprocessor.spec.return-type.erlang
%    ^ punctuation.separator.clauses.erlang
%      ^^^^ constant.other.macro.erlang
%          ^ punctuation.accessor.double-colon.erlang
%           ^^^^ constant.other.macro.erlang

     ; ([Y]) -> Y when Y :: number().
%    ^^ source.erlang meta.preprocessor.spec.erlang
%      ^^^^^ source.erlang meta.preprocessor.spec.parameters.erlang
%           ^^^ source.erlang meta.preprocessor.spec.erlang
%               ^^ source.erlang meta.preprocessor.spec.return-type.erlang
%                 ^^^^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.guards.erlang
%                                   ^ source.erlang meta.preprocessor.spec.erlang
%                                    ^ - meta.preprocessor.spec
%    ^ punctuation.separator.clauses.erlang

-spec 'F\1':'\2r'() -> int().
%     ^^^^^ source.erlang meta.preprocessor.spec.name.erlang meta.path.erlang variable.namespace
%          ^ source.erlang meta.preprocessor.spec.name.erlang meta.path.erlang punctuation.accessor.double-colon.erlang
%           ^^^^^ source.erlang meta.preprocessor.spec.name.erlang meta.path.erlang entity.name.function.erlang
%                ^^ source.erlang meta.preprocessor.spec.parameters.erlang
%                  ^^^ source.erlang meta.preprocessor.spec.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.return-type
%                     ^^^^^^ source.erlang meta.preprocessor.spec.return-type.erlang
%                            ^ - meta.preprocessor

-spec ?MODULE:.
%^^^^^ source.erlang meta.preprocessor.spec.erlang
%     ^^^^^^^^ source.erlang meta.preprocessor.spec.name.erlang meta.path.erlang
%             ^ source.erlang meta.preprocessor.spec.erlang
%^^^^ keyword.control.directive.spec.erlang
%     ^ punctuation.definition.macro.erlang
%     ^^^^^^^ constant.language.macro.erlang
%            ^ punctuation.accessor.double-colon.erlang
%             ^ punctuation.terminator.clause.erlang

-spec ?MODULE:foo.
%^^^^^ source.erlang meta.preprocessor.spec.erlang
%     ^^^^^^^^^^^ source.erlang meta.preprocessor.spec.name.erlang meta.path.erlang
%                ^ source.erlang meta.preprocessor.spec.erlang
%^^^^ keyword.control.directive.spec.erlang
%     ^ punctuation.definition.macro.erlang
%     ^^^^^^^ constant.language.macro.erlang
%            ^ punctuation.accessor.double-colon.erlang
%             ^^^ entity.name.function.erlang
%                ^ punctuation.terminator.clause.erlang

-spec ?MODULE:?FUNCTION_NAME() -> int().
%     ^^^^^^^ source.erlang meta.preprocessor.spec.name.erlang meta.path.erlang constant.language.macro.erlang
%            ^ source.erlang meta.preprocessor.spec.name.erlang meta.path.erlang punctuation.accessor.double-colon.erlang
%             ^^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.name.erlang meta.path.erlang constant.language.macro.erlang
%                           ^^ source.erlang meta.preprocessor.spec.parameters.erlang
%                             ^^^ source.erlang meta.preprocessor.spec.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.return-type
%                                ^^^^^^ source.erlang meta.preprocessor.spec.return-type.erlang
%                                       ^ - meta.preprocessor

-spec ?FOO:?BAR() -> int().
%     ^^^^ source.erlang meta.preprocessor.spec.name.erlang meta.path.erlang constant.other.macro.erlang
%         ^ source.erlang meta.preprocessor.spec.name.erlang meta.path.erlang punctuation.accessor.double-colon.erlang
%          ^^^^ source.erlang meta.preprocessor.spec.name.erlang meta.path.erlang constant.other.macro.erlang
%              ^^ source.erlang meta.preprocessor.spec.parameters.erlang
%                ^^^ source.erlang meta.preprocessor.spec.erlang - meta.preprocessor.spec.parameters - meta.preprocessor.spec.return-type
%                   ^^^^^^ source.erlang meta.preprocessor.spec.return-type.erlang
%                          ^ - meta.preprocessor

-spec 'fun-\nabled' ( Tag :: trace_status,
%^^^^^ source.erlang meta.preprocessor.spec.erlang
%     ^^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.name.erlang - meta.preprocessor.spec.parameters
%                   ^^^^^^^^^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.parameters.erlang
%^^^^ keyword.control.directive.spec.erlang
%     ^ punctuation.definition.atom.begin.erlang
%      ^^^^^^^^^^^ entity.name.function.erlang
%                 ^ punctuation.definition.atom.end.erlang
%                   ^ punctuation.section.parameters.begin.erlang
%                     ^^^ variable.parameter.erlang
%                         ^^ punctuation.separator.variable-type.erlang
%                            ^^^^^^^^^^^^ constant.other.symbol.erlang
%                                        ^ punctuation.separator.parameters.erlang
                      Tracee :: tracee()) ->
%                    ^^^^^^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.parameters.erlang - meta.preprocessor.spec.return-type.erlang
%                                        ^^^ source.erlang meta.preprocessor.spec.erlang - meta.preprocessor.spec.parameters.erlang - meta.preprocessor.spec.return-type.erlang
%                                           ^ source.erlang meta.preprocessor.spec.return-type.erlang
%                     ^^^^^^ variable.parameter.erlang
%                            ^^ punctuation.separator.variable-type.erlang
%                               ^^^^^^ storage.type.erlang
%                                     ^ punctuation.section.arguments.begin.erlang
%                                      ^ punctuation.section.arguments.end.erlang
%                                       ^ punctuation.section.parameters.end.erlang
%                                         ^^ punctuation.separator.parameters-return-type.erlang
                trace | remove;
%              ^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.return-type.erlang
%                             ^ source.erlang meta.preprocessor.spec.erlang
%               ^^^^^ constant.other.symbol.erlang
%                     ^ punctuation.separator.sequence.erlang
%                       ^^^^^^ constant.other.symbol.erlang
%                             ^ punctuation.separator.clauses.erlang
                    (
%                   ^ source.erlang meta.preprocessor.spec.parameters.erlang punctuation.section.parameters.begin.erlang
                      Tag :: trace_tag() | seq_trace,
%                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.parameters.erlang
%                            ^^^^^^^^^ meta.type-call.identifier.erlang
%                                     ^^ meta.type-call.arguments.erlang
%                                                   ^^ source.erlang meta.preprocessor.spec.parameters.erlang
%                     ^^^ variable.parameter.erlang
%                         ^^ punctuation.separator.variable-type.erlang
%                            ^ storage.type.erlang
%                                        ^ punctuation.separator.sequence.erlang
%                                          ^^^^^^^^^ constant.other.symbol.erlang
%                                                   ^ punctuation.separator.parameters.erlang
                      Tracee :: tracee()
%                     ^^^^^^ variable.parameter.erlang
%                            ^^ punctuation.separator.variable-type.erlang
%                               ^ storage.type.erlang
                    ) ->
%                   ^ source.erlang meta.preprocessor.spec.parameters.erlang
%                    ^^^ source.erlang meta.preprocessor.spec.erlang - meta.preprocessor.spec.parameters.erlang - meta.preprocessor.spec.return-type.erlang
%                       ^ source.erlang meta.preprocessor.spec.return-type.erlang
%                   ^ punctuation.section.parameters.end.erlang
                trace | discard when
%              ^^^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.return-type.erlang
%                               ^^^^^ source.erlang meta.preprocessor.spec.guards.erlang
%               ^^^^^ constant.other.symbol.erlang
%                     ^ punctuation.separator.sequence.erlang
%                       ^^^^^^^ constant.other.symbol.erlang
%                               ^^^^ keyword.control.conditional.when.erlang
                      Tag :: string(),
%                    ^^^^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.guards.erlang
%                            ^^^^^^ meta.type-call.identifier.erlang - meta.type-call.arguments.erlang
%                                  ^^ meta.type-call.arguments.erlang
%                     ^^^ variable.other.readwrite.erlang
%                         ^^ punctuation.separator.variable-type.erlang
%                            ^^^^^^ support.type.erlang
%                                    ^ punctuation.separator.expressions.erlang
                      Tracee :: 2..36.
%                    ^^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.spec.guards.erlang
%                                    ^ source.erlang meta.preprocessor.spec.erlang - meta.function
%                     ^^^^^^ variable.other.readwrite.erlang
%                            ^^ punctuation.separator.variable-type.erlang
%                               ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                ^^ punctuation.separator.range.erlang
%                                  ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                    ^ punctuation.terminator.clause.erlang

% Typing tests

preprocessor_type_tests() -> .

5 -type
%  ^^^^ - keyword.control.directive.type.erlang

-type.
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%^^^^ keyword.control.directive.type.erlang

- type .
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^^^ source.erlang meta.preprocessor.type.erlang
%       ^ - meta.preprocessor
%^ - keyword
% ^^^^ keyword.control.directive.type.erlang
%     ^ - keyword

-type (.
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^ source.erlang meta.preprocessor.type.parameters.erlang
%      ^ source.erlang meta.preprocessor.type.erlang
%       ^ - meta.preprocessor - invalid
%^^^^ keyword.control.directive.type.erlang
%     ^ punctuation.section.parameters.begin.erlang
%      ^ punctuation.terminator.clause.erlang

-type (.)
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^ source.erlang meta.preprocessor.type.parameters.erlang
%      ^ source.erlang meta.preprocessor.type.erlang
%^^^^ keyword.control.directive.type.erlang
%     ^ punctuation.section.parameters.begin.erlang
%      ^ punctuation.terminator.clause.erlang
%       ^ invalid.illegal.stray.erlang - meta.preprocessor

-type (2.4).
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^^^^^ source.erlang meta.preprocessor.type.parameters.erlang
%          ^ source.erlang meta.preprocessor.type.erlang
%^^^^ keyword.control.directive.type.erlang
%     ^ punctuation.section.parameters.begin.erlang
%      ^^^ meta.number.float.decimal.erlang constant.numeric.value.erlang
%          ^ punctuation.terminator.clause.erlang

-type [.
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^^^ source.erlang meta.preprocessor.type.erlang
%       ^ - meta.preprocessor - invalid
%^^^^ keyword.control.directive.type.erlang
%     ^ invalid.illegal.unexpected-list.erlang
%      ^ punctuation.terminator.clause.erlang

-type [.]
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^^^ source.erlang meta.preprocessor.type.erlang
%^^^^ keyword.control.directive.type.erlang
%     ^ invalid.illegal.unexpected-list.erlang
%      ^ punctuation.terminator.clause.erlang
%       ^ invalid.illegal.stray.erlang - meta.preprocessor

-type [1.].
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^^^^^^ source.erlang meta.preprocessor.type.erlang
%          ^ - meta.preprocessor - invalid
%^^^^ keyword.control.directive.type.erlang
%     ^^^^ invalid.illegal.unexpected-list.erlang
%         ^ punctuation.terminator.clause.erlang

-type {.
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^^^ source.erlang meta.preprocessor.type.erlang
%       ^ - meta.preprocessor - invalid
%^^^^ keyword.control.directive.type.erlang
%     ^ invalid.illegal.unexpected-tuple.erlang
%      ^ punctuation.terminator.clause.erlang
-type {.}
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^^^ source.erlang meta.preprocessor.type.erlang
%^^^^ keyword.control.directive.type.erlang
%     ^ invalid.illegal.unexpected-tuple.erlang
%      ^ punctuation.terminator.clause.erlang
%       ^ invalid.illegal.stray.erlang - meta.preprocessor
-type {2.4}.
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^^^^^^^ source.erlang meta.preprocessor.type.erlang
%           ^ - meta.preprocessor - invalid
%^^^^ keyword.control.directive.type.erlang
%     ^^^^^ invalid.illegal.unexpected-tuple.erlang
%          ^ punctuation.terminator.clause.erlang

-type Foo.
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^^^ source.erlang meta.preprocessor.type.name.erlang
%        ^ source.erlang meta.preprocessor.type.erlang
%         ^ - meta.preprocessor
%^^^^ keyword.control.directive.type.erlang
%     ^^^ invalid.illegal.expect-atom.erlang
%        ^ punctuation.terminator.clause.erlang

-type Foo :: int().
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^^^^ source.erlang meta.preprocessor.type.name.erlang
%         ^^^^^^^^^ source.erlang meta.preprocessor.type.erlang
%                  ^ - meta.preprocessor
%^^^^ keyword.control.directive.type.erlang
%     ^^^ invalid.illegal.expect-atom.erlang
%         ^^ punctuation.separator.type-head-body.erlang
%            ^^^ storage.type.erlang
%               ^ punctuation.section.arguments.begin.erlang
%                ^ punctuation.section.arguments.end.erlang
%                 ^ punctuation.terminator.clause.erlang

-type foo.
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%     ^^^ source.erlang meta.preprocessor.type.name.erlang
%        ^ source.erlang meta.preprocessor.type.erlang
%         ^ - meta.preprocessor
%^^^^ keyword.control.directive.type.erlang
%     ^^^ entity.name.type.erlang
%        ^ punctuation.terminator.clause.erlang

-type foo ::.
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^^^^ source.erlang meta.preprocessor.type.name.erlang
%         ^^^ source.erlang meta.preprocessor.type.erlang
%            ^ - meta.preprocessor
%^^^^ keyword.control.directive.type.erlang
%     ^^^ entity.name.type.erlang
%         ^^ punctuation.separator.type-head-body.erlang
%           ^ punctuation.terminator.clause.erlang

-type foo().
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^^^ source.erlang meta.preprocessor.type.name.erlang
%        ^^ source.erlang meta.preprocessor.type.parameters.erlang
%          ^ source.erlang meta.preprocessor.type.erlang
%           ^ - meta.preprocessor
%^^^^ keyword.control.directive.type.erlang
%     ^^^ entity.name.type.erlang
%        ^ punctuation.section.parameters.begin.erlang
%         ^ punctuation.section.parameters.end.erlang
%          ^ punctuation.terminator.clause.erlang

-type foo()::.
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^^^ source.erlang meta.preprocessor.type.name.erlang
%        ^^ source.erlang meta.preprocessor.type.parameters.erlang
%          ^^^ source.erlang meta.preprocessor.type.erlang
%             ^ - meta.preprocessor
%^^^^ keyword.control.directive.type.erlang
%     ^^^ entity.name.type.erlang
%        ^ punctuation.section.parameters.begin.erlang
%         ^ punctuation.section.parameters.end.erlang
%          ^^ punctuation.separator.type-head-body.erlang
%            ^ punctuation.terminator.clause.erlang

-type foo( :: int( .
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^^^ source.erlang meta.preprocessor.type.name.erlang
%        ^^^^^^^^^^ source.erlang meta.preprocessor.type.parameters.erlang
%                  ^ source.erlang meta.preprocessor.type.erlang
%                   ^ - meta.preprocessor
%^^^^ keyword.control.directive.type.erlang
%     ^^^ entity.name.type.erlang
%        ^ punctuation.section.parameters.begin.erlang
%          ^^ punctuation.separator.variable-type.erlang
%             ^^^ storage.type.erlang
%                ^ punctuation.section.arguments.begin.erlang
%                  ^ punctuation.terminator.clause.erlang

-type foo() illegal.
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^^^ source.erlang meta.preprocessor.type.name.erlang
%        ^^ source.erlang meta.preprocessor.type.parameters.erlang
%          ^^^^^^^^^ source.erlang meta.preprocessor.type.erlang
%                   ^ - meta.preprocessor
%^^^^ keyword.control.directive.type.erlang
%     ^^^ entity.name.type.erlang
%        ^ punctuation.section.parameters.begin.erlang
%         ^ punctuation.section.parameters.end.erlang
%           ^^^^^^^ invalid.illegal.expect-separator.erlang
%                  ^ punctuation.terminator.clause.erlang

-type :: int().
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^^^^^^^^^^ source.erlang meta.preprocessor.type.erlang
%^^^^ keyword.control.directive.type.erlang
%     ^^ punctuation.separator.type-head-body.erlang
%        ^^^ storage.type.erlang
%           ^ punctuation.section.arguments.begin.erlang
%            ^ punctuation.section.arguments.end.erlang
%             ^ punctuation.terminator.clause.erlang

-type map() :: #{ .
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^^^ source.erlang meta.preprocessor.type.name.erlang
%        ^^ source.erlang meta.preprocessor.type.parameters.erlang
%          ^^^^^^^ source.erlang meta.preprocessor.type.erlang
%                 ^ punctuation.terminator.clause.erlang - meta.mapping
%                  ^ - meta.preprocessor

-type map() :: #{ term( .
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^^^ source.erlang meta.preprocessor.type.name.erlang
%        ^^ source.erlang meta.preprocessor.type.parameters.erlang
%          ^^^^^^^^^^^^^ source.erlang meta.preprocessor.type.erlang
%                       ^ punctuation.terminator.clause.erlang - meta.mapping
%                        ^ - meta.preprocessor

-type map() :: #{ _ => _ .
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^^^ source.erlang meta.preprocessor.type.name.erlang
%        ^^ source.erlang meta.preprocessor.type.parameters.erlang
%          ^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.type.erlang
%                        ^ punctuation.terminator.clause.erlang - meta.mapping
%                         ^ - meta.preprocessor

-type Map() :: #{any() => Any}.
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^^^ source.erlang meta.preprocessor.type.name.erlang
%        ^^ source.erlang meta.preprocessor.type.parameters.erlang
%          ^^^^^^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.type.erlang
%              ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                ^^^^^^ meta.mapping.key.erlang - meta.mapping.erlang - meta.mapping.value.erlang
%                ^^^ meta.type-call.identifier.erlang - meta.type-call.arguments.erlang
%                   ^^ meta.type-call.arguments.erlang - meta.type-call.identifier.erlang
%                      ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                        ^^^^ meta.mapping.value.erlang - meta.mapping.erlang - meta.mapping.key.erlang
%                            ^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                             ^ - meta.mapping
%                              ^ - meta.preprocessor
%^^^^ keyword.control.directive.type.erlang
%     ^^^ invalid.illegal.expect-atom.erlang
%        ^ punctuation.section.parameters.begin.erlang
%         ^ punctuation.section.parameters.end.erlang
%           ^^ punctuation.separator.type-head-body.erlang
%              ^^ punctuation.section.mapping.begin.erlang
%                ^^^ support.type.erlang
%                   ^ punctuation.section.arguments.begin.erlang
%                    ^ punctuation.section.arguments.end.erlang
%                      ^^ punctuation.separator.key-value.erlang
%                         ^^^ variable.other.readwrite.erlang
%                            ^ punctuation.section.mapping.end.erlang
%                             ^ punctuation.terminator.clause.erlang

-type map() :: #{ _ => _ }.
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^^^ source.erlang meta.preprocessor.type.name.erlang
%        ^^ source.erlang meta.preprocessor.type.parameters.erlang
%          ^^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.type.erlang
%              ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                ^^^ meta.mapping.key.erlang - meta.mapping.erlang - meta.mapping.value.erlang
%                   ^^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                     ^^^ meta.mapping.value.erlang - meta.mapping.erlang - meta.mapping.key.erlang
%                        ^ meta.mapping.erlang - meta.mapping.key.erlang - meta.mapping.value.erlang
%                         ^ - meta.type - meta.mapping
%                          ^ - meta.preprocessor
%     ^^^ entity.name.type.erlang
%        ^ punctuation.section.parameters.begin.erlang
%         ^ punctuation.section.parameters.end.erlang
%           ^^ punctuation.separator.type-head-body.erlang
%              ^^ punctuation.section.mapping.begin.erlang
%                 ^ variable.language.anonymous.erlang
%                   ^^ punctuation.separator.key-value.erlang
%                      ^ variable.language.anonymous.erlang
%                        ^ punctuation.section.mapping.end.erlang
%                         ^ punctuation.terminator.clause.erlang

-type foo() :: {term(.
%              ^^^^^^ source.erlang meta.preprocessor.type.erlang meta.sequence.tuple.erlang
%                    ^ source.erlang meta.preprocessor.type.erlang punctuation.terminator.clause.erlang - meta.sequence.tuple.erlang

-type foo() :: {term().
%              ^^^^^^^ source.erlang meta.preprocessor.type.erlang meta.sequence.tuple.erlang
%                     ^ source.erlang meta.preprocessor.type.erlang punctuation.terminator.clause.erlang - meta.sequence.tuple.erlang

-type foo() :: {term(1.5).
%              ^^^^^^^^^^ source.erlang meta.preprocessor.type.erlang meta.sequence.tuple.erlang
%                        ^ source.erlang meta.preprocessor.type.erlang punctuation.terminator.clause.erlang - meta.sequence.tuple.erlang

-type foo() :: {term({{).
%              ^^^^^^^^^ source.erlang meta.preprocessor.type.erlang meta.sequence.tuple.erlang
%                    ^^ punctuation.section.sequence.begin.erlang
%                      ^ invalid.illegal.stray.erlang
%                       ^ source.erlang meta.preprocessor.type.erlang punctuation.terminator.clause.erlang - meta.sequence.tuple.erlang

-type foo() :: {term(), int( }.
%              ^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.type.erlang meta.sequence.tuple.erlang
%                          ^^^ meta.type-call.arguments.erlang
%                            ^ invalid.illegal.stray.erlang
%                             ^ source.erlang meta.preprocessor.type.erlang punctuation.terminator.clause.erlang - meta.sequence.tuple.erlang

-type foo() :: {term(), int()}.
%              ^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.type.erlang meta.sequence.tuple.erlang
%                             ^ source.erlang meta.preprocessor.type.erlang punctuation.terminator.clause.erlang - meta.sequence.tuple.erlang

-type m_int(ListItem, Term) :: integer()
% <- source.erlang meta.preprocessor.type.erlang punctuation.definition.keyword.erlang - keyword
%^^^^^ source.erlang meta.preprocessor.type.erlang
%     ^^^^^ source.erlang meta.preprocessor.type.name.erlang
%          ^^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.type.parameters.erlang
%                           ^^^^^^^^^^^^^ source.erlang meta.preprocessor.type.erlang
%^^^^ keyword.control.directive.type.erlang
%     ^^^^^ entity.name.type.erlang
%          ^ punctuation.section.parameters.begin.erlang
%           ^^^^^^^^ variable.parameter.erlang
%                   ^ punctuation.separator.parameters.erlang
%                     ^^^^ variable.parameter.erlang
%                         ^ punctuation.section.parameters.end.erlang
%                           ^^ punctuation.separator.type-head-body.erlang
%                              ^^^^^^^ support.type.erlang
%                                     ^ punctuation.section.arguments.begin.erlang
%                                      ^ punctuation.section.arguments.end.erlang
      | 20
%     ^ punctuation.separator.sequence.erlang
%       ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
      | 100..50      %% specifies an integer range
%     ^ punctuation.separator.sequence.erlang
%       ^^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%          ^^ punctuation.separator.range.erlang
%            ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
       | [ ListItem | erlang:integer() | {list(any()), Term} ].
%      ^ punctuation.separator.sequence.erlang
%       ^ - meta.sequence
%        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.erlang - meta.sequence.tuple.erlang
%                     ^^^^^^^ source.erlang meta.preprocessor.type.erlang meta.path.erlang - meta.type-call
%                            ^^^^^^^ source.erlang meta.preprocessor.type.erlang meta.path.erlang meta.type-call.identifier.erlang - meta.type-call.arguments.erlang
%                                   ^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang - meta.type-call.identifier.erlang
%                                        ^^^^^^^^^^^^^^^^^^^ meta.sequence.list.erlang meta.sequence.tuple.erlang
%                                                           ^^ meta.sequence.list.erlang - meta.sequence.tuple.erlang
%                                                             ^ - meta.type - meta.sequence
%        ^ punctuation.section.sequence.begin.erlang
%          ^^^^^^^^ variable.other.readwrite.erlang
%                   ^ punctuation.separator.sequence.erlang
%                     ^^^^^^ support.namespace.erlang
%                           ^ punctuation.accessor.double-colon.erlang
%                            ^^^^^^^ support.type.erlang
%                                   ^ punctuation.section.arguments.begin.erlang
%                                    ^ punctuation.section.arguments.end.erlang
%                                      ^ punctuation.separator.sequence.erlang
%                                        ^ punctuation.section.sequence.begin.erlang
%                                         ^^^^ support.type.erlang
%                                             ^ punctuation.section.arguments.begin.erlang
%                                              ^^^ support.type.erlang
%                                                 ^ punctuation.section.arguments.begin.erlang
%                                                  ^^ punctuation.section.arguments.end.erlang
%                                                    ^ punctuation.separator.sequence.erlang
%                                                      ^^^^ variable.other.readwrite.erlang
%                                                          ^ punctuation.section.sequence.end.erlang
%                                                            ^ punctuation.section.sequence.end.erlang
%                                                             ^ punctuation.terminator.clause.erlang

preprocessor_fun_type_tests() -> .

-type fun() :: fun().
%     ^^^ entity.name.type.erlang
%             ^ - meta.type-call
%              ^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.identifier.erlang - meta.type-call.arguments - meta.fun
%                 ^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang - meta.type-call.identifier.erlang - meta.fun
%                   ^ - meta.type-call
%              ^^^ support.type.erlang
%                 ^ punctuation.section.arguments.begin.erlang
%                  ^ punctuation.section.arguments.end.erlang
%                   ^ punctuation.terminator.clause.erlang

-type fun() :: fun(()).
%             ^ - meta.type-call
%              ^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.identifier.erlang - meta.type-call.arguments - meta.fun
%                 ^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang - meta.type-call.identifier.erlang - meta.fun
%                  ^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang meta.fun.parameters.erlang
%                    ^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang - meta.type-call.identifier.erlang - meta.fun
%                     ^ - meta.type-call
%              ^^^ support.type.erlang
%                 ^ punctuation.section.arguments.begin.erlang
%                  ^ punctuation.section.parameters.begin.erlang
%                   ^ punctuation.section.parameters.end.erlang
%                    ^ punctuation.section.arguments.end.erlang
%                     ^ punctuation.terminator.clause.erlang

-type fun() :: fun( -> () ).
%                 ^^^^^^^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang
%                   ^^ punctuation.separator.parameters-return-type.erlang
%                      ^^ meta.fun.return-type.erlang meta.group.erlang

-type fun() :: fun( () () ).
%                 ^^^^^^^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang
%                 ^ punctuation.section.arguments.begin.erlang
%                   ^^ meta.fun.parameters.erlang
%                      ^^ invalid.illegal.unexpected-group.erlang
%                         ^ punctuation.section.arguments.end.erlang

-type fun() :: fun(() -> int()).
%              ^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.identifier.erlang - meta.type-call.arguments.erlang
%                 ^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang - meta.type-call.identifier.erlang - meta.fun.parameters.erlang
%                  ^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang meta.fun.parameters.erlang
%                    ^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang - meta.fun.parameters.erlang - meta.fun.return-type.erlang
%                       ^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang meta.fun.return-type.erlang - meta.type-call.identifier.erlang - meta.type-call.arguments.erlang meta.type-call.arguments.erlang
%                        ^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang meta.fun.return-type.erlang - meta.type-call.arguments.erlang meta.type-call.arguments.erlang
%                           ^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang meta.fun.return-type.erlang meta.type-call.arguments.erlang
%                             ^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang - meta.fun.parameters.erlang - meta.fun.return-type.erlang
%              ^^^ support.type.erlang
%                 ^ punctuation.section.arguments.begin.erlang
%                  ^ punctuation.section.parameters.begin.erlang
%                   ^ punctuation.section.parameters.end.erlang
%                     ^^ punctuation.separator.parameters-return-type.erlang
%                        ^^^ storage.type.erlang
%                           ^ punctuation.section.arguments.begin.erlang
%                            ^ punctuation.section.arguments.end.erlang
%                             ^ punctuation.section.arguments.end.erlang
%                              ^ punctuation.terminator.clause.erlang

-type fun() :: fun((...) -> int()).
%              ^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.identifier.erlang - meta.type-call.arguments.erlang
%                 ^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang - meta.type-call.identifier.erlang - meta.fun.parameters.erlang
%                  ^^^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang meta.fun.parameters.erlang
%                       ^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang - meta.fun.parameters.erlang - meta.fun.return-type.erlang
%                          ^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang meta.fun.return-type.erlang - meta.type-call.identifier.erlang - meta.type-call.arguments.erlang meta.type-call.arguments.erlang
%                           ^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang meta.fun.return-type.erlang meta.type-call.identifier.erlang - meta.type-call.arguments.erlang meta.type-call.arguments.erlang
%                              ^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang meta.fun.return-type.erlang meta.type-call.arguments.erlang
%                                ^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang - meta.fun.parameters.erlang - meta.fun.return-type.erlang
%              ^^^ support.type.erlang
%                 ^ punctuation.section.arguments.begin.erlang
%                  ^ punctuation.section.parameters.begin.erlang
%                   ^^^ variable.language.any.erlang
%                      ^ punctuation.section.parameters.end.erlang
%                        ^^ punctuation.separator.parameters-return-type.erlang
%                           ^^^ storage.type.erlang
%                              ^ punctuation.section.arguments.begin.erlang
%                               ^ punctuation.section.arguments.end.erlang
%                                ^ punctuation.section.arguments.end.erlang
%                                 ^ punctuation.terminator.clause.erlang

-type fun() :: fun( ( Key , int () , AccIn :: bool () ) -> AccOut :: void() ) .
%              ^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.identifier.erlang
%                 ^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang - meta.type-call.identifier.erlang - meta.fun.parameters.erlang
%                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang meta.fun.parameters.erlang
%                                                      ^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang - meta.fun.parameters.erlang - meta.fun.return-type.erlang
%                                                         ^^^^^^^^^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang meta.fun.return-type.erlang
%                                                                    ^^^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang meta.fun.return-type.erlang meta.type-call.identifier.erlang
%                                                                        ^^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang meta.fun.return-type.erlang meta.type-call.arguments.erlang
%                                                                          ^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang meta.fun.return-type.erlang
%                                                                           ^ source.erlang meta.preprocessor.type.erlang meta.type-call.arguments.erlang - meta.fun.parameters.erlang - meta.fun.return-type.erlang
%              ^^^ support.type.erlang
%                 ^ punctuation.section.arguments.begin.erlang
%                     ^^^ variable.parameter.erlang
%                         ^ punctuation.separator.parameters.erlang
%                           ^^^ storage.type.erlang
%                               ^ punctuation.section.arguments.begin.erlang
%                                ^ punctuation.section.arguments.end.erlang
%                                  ^ punctuation.separator.parameters.erlang
%                                    ^^^^^ variable.parameter.erlang
%                                          ^^ punctuation.separator.variable-type.erlang
%                                             ^^^^ storage.type.erlang
%                                                  ^ punctuation.section.arguments.begin.erlang
%                                                   ^ punctuation.section.arguments.end.erlang
%                                                     ^ punctuation.section.parameters.end.erlang
%                                                       ^^ punctuation.separator.parameters-return-type.erlang
%                                                          ^^^^^^ variable.other.readwrite.erlang
%                                                                 ^^ punctuation.separator.variable-type.erlang
%                                                                    ^^^^ storage.type.erlang
%                                                                        ^ punctuation.section.arguments.begin.erlang
%                                                                         ^ punctuation.section.arguments.end.erlang
%                                                                           ^ punctuation.section.arguments.end.erlang

% Record tests

preprocessor_record_tests() -> .

    -record
%   ^^^^^^^^ meta.preprocessor.record.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang

    -record(
%   ^^^^^^^ meta.preprocessor.record.erlang
%          ^^ meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang

    -record)
%^^^^^^^^^^^ meta.preprocessor.record.arguments.erlang
%           ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^^^^^^^ invalid.illegal.expect-atom.erlang
%          ^ punctuation.section.arguments.end.erlang
%           ^ invalid.illegal.expect-terminator.erlang

    -record()
%   ^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%          ^^ meta.preprocessor.record.arguments.erlang
%            ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.section.arguments.end.erlang
%            ^ invalid.illegal.expect-terminator.erlang

    -record ()
%   ^^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%           ^^ meta.preprocessor.record.arguments.erlang
%             ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%           ^ punctuation.section.arguments.begin.erlang
%            ^ punctuation.section.arguments.end.erlang
%             ^ invalid.illegal.expect-terminator.erlang

    -record(,)
%   ^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%          ^^^ meta.preprocessor.record.arguments.erlang
%             ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.separator.arguments.erlang
%            ^ punctuation.section.arguments.end.erlang

    -record (,)
%   ^^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%           ^^^ meta.preprocessor.record.arguments.erlang
%              ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%           ^ punctuation.section.arguments.begin.erlang
%            ^ punctuation.separator.arguments.erlang
%             ^ punctuation.section.arguments.end.erlang
%              ^ invalid.illegal.expect-terminator.erlang

    -record(name)
%   ^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%          ^^^^^^ meta.preprocessor.record.arguments.erlang
%                ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^ entity.name.record.erlang
%               ^ punctuation.section.arguments.end.erlang
%                ^ invalid.illegal.expect-terminator.erlang

    -record(?name)
%   ^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%          ^^^^^^^ meta.preprocessor.record.arguments.erlang
%                 ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%          ^ punctuation.section.arguments.begin.erlang - entity
%           ^^^^^ constant.other.macro.erlang
%                ^ punctuation.section.arguments.end.erlang - entity
%                 ^ invalid.illegal.expect-terminator.erlang

    -record(?'name')
%   ^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%          ^^^^^^^^^ meta.preprocessor.record.arguments.erlang
%                   ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%          ^ punctuation.section.arguments.begin.erlang - entity
%           ^^^^^^^ constant.other.macro.erlang
%                  ^ punctuation.section.arguments.end.erlang - entity
%                   ^ invalid.illegal.expect-terminator.erlang

    -record('record-name')
%   ^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%          ^^^^^^^^^^^^^^^ meta.preprocessor.record.arguments.erlang
%                         ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.definition.atom.begin.erlang
%           ^^^^^^^^^^^^^ entity.name.record.erlang
%                       ^ punctuation.definition.atom.end.erlang
%                        ^ punctuation.section.arguments.end.erlang
%                         ^ invalid.illegal.expect-terminator.erlang

    -record(name,)
%   ^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%          ^^^^^^^ meta.preprocessor.record.arguments.erlang
%                 ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^ entity.name.record.erlang
%               ^ punctuation.separator.arguments.erlang
%                ^ punctuation.section.arguments.end.erlang
%                 ^ invalid.illegal.expect-terminator.erlang

    -record('record-name',)
%   ^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%          ^^^^^^^^^^^^^^^^ meta.preprocessor.record.arguments.erlang
%                          ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.definition.atom.begin.erlang
%           ^^^^^^^^^^^^^ entity.name.record.erlang
%                       ^ punctuation.definition.atom.end.erlang
%                        ^ punctuation.separator.arguments.erlang
%                         ^ punctuation.section.arguments.end.erlang
%                          ^ invalid.illegal.expect-terminator.erlang

    -record(Name,)
%   ^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%          ^^^^^^^ meta.preprocessor.record.arguments.erlang
%                 ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^ invalid.illegal.expect-atom.erlang
%               ^ punctuation.separator.arguments.erlang
%                ^ punctuation.section.arguments.end.erlang
%                 ^ invalid.illegal.expect-terminator.erlang

    -record(,{})
%   ^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%          ^^^^^ meta.preprocessor.record.arguments.erlang
%               ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ punctuation.separator.arguments.erlang
%            ^ punctuation.section.fields.begin.erlang
%             ^ punctuation.section.fields.end.erlang
%              ^ punctuation.section.arguments.end.erlang
%               ^ invalid.illegal.expect-terminator.erlang

    -record(name,{})
%   ^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%          ^^^^^^^^^ meta.preprocessor.record.arguments.erlang
%                   ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^ entity.name.record.erlang
%               ^ punctuation.separator.arguments.erlang
%                ^ punctuation.section.fields.begin.erlang
%                 ^ punctuation.section.fields.end.erlang
%                  ^ punctuation.section.arguments.end.erlang
%                   ^ invalid.illegal.expect-terminator.erlang

    -record(name {})
%   ^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%          ^^^^^^^^^ meta.preprocessor.record.arguments.erlang
%                   ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^ entity.name.record.erlang
%                ^ punctuation.section.fields.begin.erlang
%                 ^ punctuation.section.fields.end.erlang
%                  ^ punctuation.section.arguments.end.erlang
%                   ^ invalid.illegal.expect-terminator.erlang

    -record(name, {field1="val1", Field2=3::integer()|Atom, field3, 'Field-4'={}, field5::tuple(), _=atom} illegal).
%   ^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.record.arguments.erlang
%                  ^^^^^^ meta.field.identifier.erlang - meta.field.erlang - meta.field.value.erlang - meta.field.type.erlang
%                        ^ meta.field.erlang - meta.field.identifier.erlang - meta.field.value.erlang - meta.field.type.erlang
%                         ^^^^^^ meta.field.value.erlang - meta.field.erlang - meta.field.identifier.erlang - meta.field.type.erlang
%                               ^ - meta.field
%                                ^^^^^^^ meta.field.identifier.erlang - meta.field.erlang - meta.field.value.erlang - meta.field.type.erlang
%                                       ^ meta.field.erlang - meta.field.identifier.erlang - meta.field.value.erlang - meta.field.type.erlang
%                                        ^ meta.field.value.erlang - meta.field.erlang - meta.field.identifier.erlang - meta.field.type.erlang
%                                         ^^ meta.field.erlang - meta.field.value - meta.field.type
%                                           ^^^^^^^^^^^^^^ meta.field.type.erlang - meta.field.erlang - meta.field.identifier.erlang - meta.field.value.erlang
%                                                         ^ - meta.field
%                                                          ^^^^^^^ meta.field.identifier.erlang - meta.field.erlang - meta.field.value.erlang - meta.field.type.erlang
%                                                                 ^ - meta.field
%                                                                  ^^^^^^^^^^ meta.field.identifier.erlang - meta.field.erlang - meta.field.value.erlang - meta.field.type.erlang
%                                                                            ^ meta.field.erlang - meta.field.identifier.erlang - meta.field.value.erlang - meta.field.type.erlang
%                                                                             ^^ meta.field.value.erlang - meta.field.erlang - meta.field.identifier.erlang - meta.field.type.erlang
%                                                                               ^ - meta.field
%                                                                                ^^^^^^^ meta.field.identifier.erlang
%                                                                                       ^^ meta.field.erlang - meta.field.identifier - meta.field.type
%                                                                                         ^^^^^^^ meta.field.type.erlang - meta.field.erlang - meta.field.identifier.erlang - meta.field.value.erlang
%                                                                                                  ^ meta.field.identifier.erlang - meta.field.erlang - meta.field.value.erlang - meta.field.type.erlang
%                                                                                                   ^ meta.field.erlang - meta.field.identifier.erlang - meta.field.value.erlang - meta.field.type.erlang
%                                                                                                    ^^^^ meta.field.value.erlang - meta.field.erlang - meta.field.identifier.erlang - meta.field.type.erlang
%                                                                                                        ^ - meta.field
%                                                                                                                  ^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^^^^ entity.name.record.erlang
%               ^ punctuation.separator.arguments.erlang
%                 ^ punctuation.section.fields.begin.erlang
%                  ^^^^^^ variable.other.member.erlang
%                        ^ keyword.operator.assignment.erlang
%                         ^^^^^^ string.quoted.double.erlang
%                               ^ punctuation.separator.expressions.erlang
%                                 ^^^^^^ invalid.illegal.expect-atom.erlang
%                                       ^ keyword.operator.assignment.erlang
%                                        ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                         ^^ punctuation.separator.variable-type.erlang
%                                           ^^^^^^^ support.type.erlang
%                                                  ^ punctuation.section.arguments.begin.erlang
%                                                   ^ punctuation.section.arguments.end.erlang
%                                                    ^ punctuation.separator.sequence.erlang
%                                                     ^^^^ variable.other.readwrite.erlang
%                                                         ^ punctuation.separator.expressions.erlang
%                                                           ^^^^^^ variable.other.member.erlang
%                                                                 ^ punctuation.separator.expressions.erlang
%                                                                   ^ punctuation.definition.atom.begin.erlang
%                                                                   ^^^^^^^^^ variable.other.member.erlang
%                                                                           ^ punctuation.definition.atom.end.erlang
%                                                                            ^ keyword.operator.assignment.erlang
%                                                                             ^  meta.sequence.tuple.erlang punctuation.section.sequence.begin.erlang
%                                                                              ^ meta.sequence.tuple.erlang punctuation.section.sequence.end.erlang
%                                                                               ^ punctuation.separator.expressions.erlang
%                                                                                       ^^ punctuation.separator.variable-type.erlang
%                                                                                         ^^^^^ support.type.erlang
%                                                                                              ^ punctuation.section.arguments.begin.erlang
%                                                                                               ^ punctuation.section.arguments.end.erlang
%                                                                                                ^ punctuation.separator.expressions.erlang
%                                                                                                  ^ variable.language.anonymous.erlang
%                                                                                                   ^ keyword.operator.assignment.erlang
%                                                                                                    ^^^^ constant.other.symbol.erlang
%                                                                                                        ^ punctuation.section.fields.end.erlang
%                                                                                                          ^^^^^^^ invalid.illegal.expect-arguments-end.erlang
%                                                                                                                 ^ punctuation.section.arguments.end.erlang
%                                                                                                                  ^ punctuation.terminator.clause.erlang

    -record (
%   ^^^^^^^^ meta.preprocessor.record.erlang - meta.preprocessor.record.arguments.erlang
%           ^^ meta.preprocessor.record.arguments.erlang
%   ^ punctuation.definition.keyword.erlang - keyword
%    ^^^^^^ keyword.control.directive.record.erlang
%           ^ punctuation.section.arguments.begin.erlang
        name,
%       ^^^^ entity.name.record.erlang
%           ^ punctuation.separator.arguments.erlang
        {
%       ^ punctuation.section.fields.begin.erlang
            field1
%           ^^^^^^ variable.other.member.erlang
            =
%           ^ keyword.operator.assignment.erlang
            "val1"
%           ^^^^^^ string.quoted.double.erlang
            ,
%           ^ punctuation.separator.expressions.erlang
            Field2 = 3
%           ^^^^^^ invalid.illegal.expect-atom.erlang
%                  ^ keyword.operator.assignment.erlang
%                    ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
            :: integer() | Atom ,
%           ^^ punctuation.separator.variable-type.erlang
%              ^^^^^^^ support.type.erlang
%                     ^ punctuation.section.arguments.begin.erlang
%                      ^ punctuation.section.arguments.end.erlang
%                        ^ punctuation.separator.sequence.erlang
%                          ^^^^ variable.other.readwrite.erlang
%                               ^ punctuation.separator.expressions.erlang
            field3,
%           ^^^^^^ variable.other.member.erlang
%                 ^ punctuation.separator.expressions.erlang
            'Field-4'
%           ^ punctuation.definition.atom.begin.erlang
%           ^^^^^^^^^ variable.other.member.erlang
%                   ^ punctuation.definition.atom.end.erlang
            =
%           ^ keyword.operator.assignment.erlang
            {
%           ^  meta.sequence.tuple.erlang punctuation.section.sequence.begin.erlang
            }
%           ^ meta.sequence.tuple.erlang punctuation.section.sequence.end.erlang
            ,
%           ^ punctuation.separator.expressions.erlang
            field5 :: tuple() ,
%           ^^^^^^ variable.other.member.erlang
%                  ^^ punctuation.separator.variable-type.erlang
%                     ^^^^^ support.type.erlang
%                          ^ punctuation.section.arguments.begin.erlang
%                           ^ punctuation.section.arguments.end.erlang
%                             ^ punctuation.separator.expressions.erlang
            _
%           ^ variable.language.anonymous.erlang
            =
%           ^ keyword.operator.assignment.erlang
            atom
%           ^^^^ constant.other.symbol.erlang
        } illegal
%       ^ punctuation.section.fields.end.erlang
%         ^^^^^^^ invalid.illegal.expect-arguments-end.erlang
    ) .
%   ^ punctuation.section.arguments.end.erlang
%     ^ punctuation.terminator.clause.erlang

    #
%  ^^^ - meta.record - variable

    #record
%  ^ - meta.record - variable
%   ^ punctuation.definition.record.erlang
%    ^^^^^^ meta.record.identifier.erlang storage.type.record.erlang

    #record.
%   ^^^^^^^ meta.record.identifier.erlang - meta.record.erlang - meta.record.field
%          ^ meta.record.erlang - meta.record.identifier - meta.record.field
%           ^ - meta.record
%   ^ punctuation.definition.record.erlang
%    ^^^^^^ storage.type.record.erlang
%          ^ punctuation.accessor.dot.erlang

    #record.field
%  ^ - meta.record
%   ^^^^^^^ meta.record.identifier.erlang - meta.record.erlang - meta.record.field
%          ^ meta.record.erlang - meta.record.identifier - meta.record.field
%           ^^^^^ meta.record.field.erlang - meta.record.erlang - meta.record.identifier
%                ^ - meta.record
%   ^ punctuation.definition.record.erlang
%    ^^^^^^ storage.type.record.erlang
%          ^ punctuation.accessor.dot.erlang
%           ^^^^^ variable.other.member.erlang

    #record.Field
%  ^ - meta.record
%   ^^^^^^^ meta.record.identifier.erlang - meta.record.erlang - meta.record.field
%          ^ meta.record.erlang - meta.record.identifier - meta.record.field
%           ^^^^^ meta.record.field.erlang - meta.record.erlang - meta.record.identifier
%                ^ - meta.record
%   ^ punctuation.definition.record.erlang
%    ^^^^^^ storage.type.record.erlang
%          ^ punctuation.accessor.dot.erlang
%           ^^^^^ invalid.illegal.expect-atom.erlang

    #record.'field-name'
%  ^ - meta.record
%   ^^^^^^^ meta.record.identifier.erlang - meta.record.erlang - meta.record.field
%          ^ meta.record.erlang - meta.record.identifier - meta.record.field
%           ^^^^^^^^^^^^ meta.record.field.erlang - meta.record.erlang - meta.record.identifier
%                       ^ - meta.record
%   ^ punctuation.definition.record.erlang
%    ^^^^^^ storage.type.record.erlang
%          ^ punctuation.accessor.dot.erlang
%           ^ punctuation.definition.atom.begin.erlang
%           ^^^^^^^^^^^^ variable.other.member.erlang
%                      ^ punctuation.definition.atom.end.erlang

    #'atomic-record'.'field-name'
%  ^ - meta.record
%   ^^^^^^^^^^^^^^^^ meta.record.identifier.erlang - meta.record.erlang - meta.record.field
%                   ^ meta.record.erlang - meta.record.identifier - meta.record.field
%                    ^^^^^^^^^^^^ meta.record.field.erlang - meta.record.erlang - meta.record.identifier
%                                ^ - meta.record
%   ^ punctuation.definition.record.erlang
%    ^ punctuation.definition.atom.begin.erlang
%    ^^^^^^^^^^^^^^^ storage.type.record.erlang
%           ^ - keyword - punctuation
%                  ^ punctuation.definition.atom.end.erlang
%                   ^ punctuation.accessor.dot.erlang
%                    ^ punctuation.definition.atom.begin.erlang
%                    ^^^^^^^^^^^^ variable.other.member.erlang
%                               ^ punctuation.definition.atom.end.erlang

    #?MACRO.field
%  ^ - meta.record
%   ^^^^^^^ meta.record.identifier.erlang - meta.record.erlang - meta.record.field
%          ^ meta.record.erlang - meta.record.identifier - meta.record.field
%           ^^^^^ meta.record.field.erlang - meta.record.erlang - meta.record.identifier
%                ^ - meta.record
%   ^ punctuation.definition.record.erlang
%    ^ punctuation.definition.macro.erlang
%    ^^^^^^ constant.other.macro.erlang
%          ^ punctuation.accessor.dot.erlang
%           ^^^^^ variable.other.member.erlang

    #?MACRO . field
%  ^ - meta.record
%   ^^^^^^^^ meta.record.identifier.erlang - meta.record.erlang - meta.record.field
%           ^ meta.record.erlang - meta.record.identifier - meta.record.field
%            ^^^^^^ meta.record.field.erlang - meta.record.erlang - meta.record.identifier
%                  ^ - meta.record
%   ^ punctuation.definition.record.erlang
%    ^ punctuation.definition.macro.erlang
%    ^^^^^^ constant.other.macro.erlang
%          ^ - constant - punctuation - variable
%           ^ punctuation.accessor.dot.erlang
%            ^ - constant - punctuation - variable
%             ^^^^^ variable.other.member.erlang

    #?'MACRO'.field
%  ^ - meta.record
%   ^^^^^^^^^ meta.record.identifier.erlang - meta.record.erlang - meta.record.field
%            ^ meta.record.erlang - meta.record.identifier - meta.record.field
%             ^^^^^ meta.record.field.erlang - meta.record.erlang - meta.record.identifier
%                  ^ - meta.record
%   ^ punctuation.definition.record.erlang
%    ^ punctuation.definition.macro.erlang
%    ^^^^^^^^ constant.other.macro.erlang
%            ^ punctuation.accessor.dot.erlang
%             ^^^^^ variable.other.member.erlang

    #?'MACRO' . field
%  ^ - meta.record
%   ^^^^^^^^^^ meta.record.identifier.erlang - meta.record.erlang - meta.record.field
%             ^ meta.record.erlang - meta.record.identifier - meta.record.field
%              ^^^^^^ meta.record.field.erlang - meta.record.erlang - meta.record.identifier
%                    ^ - meta.record
%   ^ punctuation.definition.record.erlang
%    ^ punctuation.definition.macro.erlang
%    ^^^^^^^^ constant.other.macro.erlang
%            ^ - constant - punctuation - variable
%             ^ punctuation.accessor.dot.erlang
%               ^^^^^ variable.other.member.erlang

    #record.?field
%  ^ - meta.record
%   ^^^^^^^ meta.record.identifier.erlang - meta.record.erlang - meta.record.field
%          ^ meta.record.erlang - meta.record.identifier - meta.record.field
%           ^^^^^^ meta.record.field.erlang - meta.record.erlang - meta.record.identifier
%                 ^ - meta.record
%   ^ punctuation.definition.record.erlang
%          ^ punctuation.accessor.dot.erlang
%           ^ punctuation.definition.macro.erlang
%           ^^^^^^ constant.other.macro.erlang

local_record_definition_tests() -> .

    #'atomic-record'
%  ^ - meta.record - variable
%   ^ punctuation.definition.record.erlang
%   ^^^^^^^^^^^^^^^^ meta.record.identifier.erlang - meta.record.fields
%    ^ punctuation.definition.atom.begin.erlang
%    ^^^^^^^^^^^^^^^ storage.type.record.erlang
%           ^ - keyword - punctuation
%                  ^ punctuation.definition.atom.end.erlang

    #record{}
%   ^^^^^^^ meta.record.identifier.erlang - meta.record.fields.erlang
%          ^^ meta.record.fields.erlang - meta.record.identifier
%            ^ - meta.record
%   ^ punctuation.definition.record.erlang
%    ^^^^^^ storage.type.record.erlang
%          ^ punctuation.section.fields.begin.erlang
%           ^ punctuation.section.fields.end.erlang

    #record{field1="val1", Field2=3, field3, 'Field-4'={}, _=atom, ?FIELD=undefined}
%  ^ - meta.record
%   ^^^^^^^ meta.record.identifier.erlang - meta.record.fields.erlang
%          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.record.fields.erlang - meta.record.identifier
%           ^^^^^^ meta.field.identifier.erlang - meta.field.erlang - meta.field.value.erlang
%                 ^ meta.field.erlang - meta.field.identifier.erlang - meta.field.value.erlang
%                  ^^^^^^ meta.field.value.erlang - meta.field.erlang - meta.field.identifier.erlang
%                        ^ - meta.field
%                         ^^^^^^^ meta.field.identifier.erlang - meta.field.erlang - meta.field.value.erlang
%                                ^ meta.field.erlang - meta.field.identifier.erlang - meta.field.value.erlang
%                                 ^ meta.field.value.erlang - meta.field.erlang - meta.field.identifier.erlang
%                                  ^ - meta.field
%                                   ^^^^^^^ meta.field.identifier.erlang - meta.field.erlang - meta.field.value.erlang
%                                          ^ - meta.field
%                                           ^^^^^^^^^^ meta.field.identifier.erlang - meta.field.erlang - meta.field.value.erlang
%                                                     ^ meta.field.erlang - meta.field.identifier.erlang - meta.field.value.erlang
%                                                      ^^ meta.field.value.erlang - meta.field.erlang - meta.field.identifier.erlang
%                                                        ^ - meta.field
%                                                         ^^ meta.field.identifier.erlang - meta.field.erlang - meta.field.value.erlang
%                                                           ^ meta.field.erlang - meta.field.identifier.erlang - meta.field.value.erlang
%                                                            ^^^^ meta.field.value.erlang - meta.field.erlang - meta.field.identifier.erlang
%                                                                ^ - meta.field
%                                                                 ^^^^^^^ meta.field.identifier.erlang - meta.field.erlang - meta.field.value.erlang
%                                                                        ^ meta.field.erlang - meta.field.identifier.erlang - meta.field.value.erlang
%                                                                         ^^^^^^^^^ meta.field.value.erlang - meta.field.erlang - meta.field.identifier.erlang
%                                                                                  ^ - meta.field
%                                                                                    ^ - meta.record
%   ^ punctuation.definition.record.erlang
%    ^^^^^^ storage.type.record.erlang
%          ^ punctuation.section.fields.begin.erlang
%           ^^^^^^ variable.other.member.erlang
%                 ^ keyword.operator.assignment.erlang
%                  ^^^^^^ string.quoted.double.erlang
%                        ^ punctuation.separator.expressions.erlang
%                          ^^^^^^ invalid.illegal.expect-atom.erlang
%                                ^ keyword.operator.assignment.erlang
%                                 ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                  ^ punctuation.separator.expressions.erlang
%                                    ^^^^^^ variable.other.member.erlang
%                                          ^ punctuation.separator.expressions.erlang
%                                            ^ punctuation.definition.atom.begin.erlang
%                                            ^^^^^^^^^ variable.other.member.erlang
%                                                    ^ punctuation.definition.atom.end.erlang
%                                                     ^ keyword.operator.assignment.erlang
%                                                      ^ meta.sequence.tuple.erlang punctuation.section.sequence.begin.erlang
%                                                       ^ meta.sequence.tuple.erlang punctuation.section.sequence.end.erlang
%                                                        ^ punctuation.separator.expressions.erlang
%                                                          ^ variable.language.anonymous.erlang
%                                                           ^ keyword.operator.assignment.erlang
%                                                            ^^^^ constant.other.symbol.erlang
%                                                                ^ punctuation.separator.expressions.erlang
%                                                                  ^^^^^^ constant.other.macro.erlang
%                                                                        ^ keyword.operator.assignment.erlang
%                                                                         ^^^^^^^^^ constant.language.undefined.erlang
%                                                                                  ^ punctuation.section.fields.end.erlang

    #record {
%  ^ - meta.record
%   ^^^^^^^^ meta.record.identifier.erlang - meta.record.fields.erlang
%           ^^ meta.record.fields.erlang - meta.record.identifier
%   ^ punctuation.definition.record.erlang
%    ^^^^^^ storage.type.record.erlang
%           ^ punctuation.section.fields.begin.erlang
        field1 = "val1" ,
%^^^^^^^^^^^^^^^^^^^^^^^^ meta.record.fields.erlang
%       ^^^^^^ variable.other.member.erlang
%              ^ keyword.operator.assignment.erlang
%                ^^^^^^ string.quoted.double.erlang
%                       ^ punctuation.separator.expressions.erlang
        Field2 = 3 ,
%^^^^^^^^^^^^^^^^^^^ meta.record.fields.erlang
%       ^^^^^^ invalid.illegal.expect-atom.erlang
%              ^ keyword.operator.assignment.erlang
%                ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                  ^ punctuation.separator.expressions.erlang
        field3 ,
%^^^^^^^^^^^^^^^ meta.record.fields.erlang
%       ^^^^^^ variable.other.member.erlang
%              ^ punctuation.separator.expressions.erlang
        _ = atom
%^^^^^^^^^^^^^^^^ meta.record.fields.erlang
%       ^ variable.language.anonymous.erlang
%         ^ keyword.operator.assignment.erlang
%           ^^^^ constant.other.symbol.erlang
    }
%^^^^ meta.record.fields.erlang
%   ^ punctuation.section.fields.end.erlang
%     ^ - meta.record

    Expr#'record-name'{'field-name'='value-name','Field-name'="string"}
%   ^^^^ variable.other.readwrite.erlang
%       ^^^^^^^^^^^^^^ meta.record.identifier.erlang - meta.record.fields
%                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.record.fields.erlang - meta.record.identifier
%                      ^^^^^^^^^^^^ meta.field.identifier.erlang - meta.field.erlang - meta.field.value.erlang
%                                  ^ meta.field.erlang - meta.field.identifier.erlang - meta.field.value.erlang
%                                   ^^^^^^^^^^^^ meta.field.value.erlang - meta.field.erlang - meta.field.identifier.erlang
%                                                                      ^ - meta.record
%       ^ punctuation.definition.record.erlang
%        ^ punctuation.definition.atom.begin.erlang
%         ^^^^^^^^^^^ storage.type.record.erlang
%               ^ - keyword - punctuation
%                    ^ punctuation.definition.atom.end.erlang
%                     ^ punctuation.section.fields.begin.erlang
%                      ^ punctuation.definition.atom.begin.erlang
%                       ^^^^^^^^^^ variable.other.member.erlang
%                                 ^ punctuation.definition.atom.end.erlang
%                                  ^ keyword.operator.assignment.erlang
%                                   ^ punctuation.definition.atom.begin.erlang
%                                    ^^^^^^^^^^ constant.other.symbol.erlang
%                                              ^ punctuation.definition.atom.end.erlang
%                                               ^ punctuation.separator.expressions.erlang
%                                                ^ punctuation.definition.atom.begin.erlang
%                                                 ^^^^^^^^^^ variable.other.member.erlang
%                                                           ^ punctuation.definition.atom.end.erlang
%                                                            ^ keyword.operator.assignment.erlang
%                                                             ^ punctuation.definition.string.begin.erlang
%                                                             ^^^^^^^^ string.quoted.double.erlang
%                                                                    ^ punctuation.definition.string.end.erlang
%                                                                     ^ punctuation.section.fields.end.erlang

    Expr#'record-name'{
%   ^^^^ variable.other.readwrite.erlang
%       ^^^^^^^^^^^^^^ meta.record.identifier.erlang - meta.record.fields
%                     ^^ meta.record.fields.erlang - meta.record.name
%       ^ punctuation.definition.record.erlang
%        ^ punctuation.definition.atom.begin.erlang
%        ^^^^^^^^^^^^^ storage.type.record.erlang
%               ^ - keyword - punctuation
%                    ^ punctuation.definition.atom.end.erlang
%                     ^ punctuation.section.fields.begin.erlang
        'field-name'
%      ^^^^^^^^^^^^^^ meta.record.fields.erlang meta.field.identifier.erlang
%       ^ punctuation.definition.atom.begin.erlang
%       ^^^^^^^^^^^^ variable.other.member.erlang
%                  ^ punctuation.definition.atom.end.erlang
        =
%      ^^^ meta.record.fields.erlang
%      ^ meta.field.identifier.erlang
%       ^ meta.field.erlang
%        ^ meta.field.value.erlang
%       ^ keyword.operator.assignment.erlang
        'value-name'
%      ^^^^^^^^^^^^^^ meta.record.fields.erlang meta.field.value.erlang
%       ^ punctuation.definition.atom.begin.erlang
%       ^^^^^^^^^^^^
%                  ^ punctuation.definition.atom.end.erlang
        ,
%      ^ meta.record.fields.erlang meta.field.value.erlang
%       ^ meta.record.fields.erlang - meta.field
%       ^ punctuation.separator.expressions.erlang
        'Field-name'
%      ^^^^^^^^^^^^^^ meta.record.fields.erlang meta.field.identifier.erlang
%       ^ punctuation.definition.atom.begin.erlang
%       ^^^^^^^^^^^ variable.other.member.erlang
%                  ^ punctuation.definition.atom.end.erlang
        =
%      ^^^ meta.record.fields.erlang
%      ^ meta.field.identifier.erlang
%       ^ meta.field.erlang
%        ^ meta.field.value.erlang
%       ^ keyword.operator.assignment.erlang
        "string"
%      ^^^^^^^^^^ meta.record.fields.erlang meta.field.value.erlang
%       ^ punctuation.definition.string.begin.erlang
%       ^^^^^^^^ string.quoted.double.erlang
%              ^ punctuation.definition.string.end.erlang
    }
%^^^ meta.record.fields.erlang meta.field.value.erlang
%   ^ meta.record.fields.erlang - meta.field
%    ^ - meta.record
%   ^ punctuation.section.fields.end.erlang

% Nested record tests

    "nested0" = N2#nrec2.nrec1#nrec1.nrec0#nrec0.name,
%                ^ - meta.record
%                 ^^^^^^ meta.record.identifier.erlang
%                       ^ meta.record.erlang
%                        ^^^^^ meta.record.field.erlang
%                             ^^^^^^ meta.record.identifier.erlang
%                                   ^ meta.record.erlang
%                                    ^^^^^ meta.record.field.erlang
%                                         ^^^^^^ meta.record.identifier.erlang
%                                               ^ meta.record.erlang
%                                                ^^^^ meta.record.field.erlang
%               ^^ variable.other.readwrite.erlang
%                 ^ punctuation.definition.record.erlang
%                  ^^^^^ storage.type.record.erlang
%                       ^ punctuation.accessor.dot.erlang
%                        ^^^^^ variable.other.member.erlang
%                             ^ punctuation.definition.record.erlang
%                              ^^^^^ storage.type.record.erlang
%                                   ^ punctuation.accessor.dot.erlang
%                                    ^^^^^ variable.other.member.erlang
%                                         ^ punctuation.definition.record.erlang
%                                          ^^^^^ storage.type.record.erlang
%                                               ^ punctuation.accessor.dot.erlang
%                                                ^^^^ variable.other.member.erlang
%                                                    ^ punctuation.separator.expressions.erlang

    N0n = N2#nrec2.nrec1#nrec1.nrec0#nrec0{name = "nested0a"},
%          ^ - meta.record
%           ^^^^^^ meta.record.identifier.erlang
%                 ^ meta.record.erlang
%                  ^^^^^ meta.record.field.erlang
%                       ^^^^^^ meta.record.identifier.erlang
%                             ^ meta.record.erlang
%                              ^^^^^ meta.record.field.erlang
%                                   ^^^^^^ meta.record.identifier.erlang
%                                         ^^^^^^^^^^^^^^^^^^^ meta.record.fields.erlang
%                                                            ^ - meta.record
%         ^^ variable.other.readwrite.erlang
%           ^ punctuation.definition.record.erlang
%            ^^^^^ storage.type.record.erlang
%                 ^ punctuation.accessor.dot.erlang
%                  ^^^^^ variable.other.member.erlang
%                       ^ punctuation.definition.record.erlang
%                        ^^^^^ storage.type.record.erlang
%                             ^ punctuation.accessor.dot.erlang
%                              ^^^^^ variable.other.member.erlang
%                                   ^ punctuation.definition.record.erlang
%                                    ^^^^^ storage.type.record.erlang
%                                         ^ punctuation.section.fields.begin.erlang
%                                                           ^ punctuation.section.fields.end.erlang
%                                                            ^ punctuation.separator.expressions.erlang

% Function tests

func_name(.)
%^^^^^^^^^^^ - meta.function meta.function
% <- meta.function.identifier.erlang entity.name.function.erlang
%^^^^^^^^ meta.function.identifier.erlang entity.name.function.erlang
%        ^ meta.function.parameters.erlang punctuation.section.parameters.begin.erlang
%         ^ meta.function.erlang punctuation.terminator.clause.erlang
%          ^ invalid.illegal.stray.erlang

func_name(;)
%^^^^^^^^^^^ - meta.function meta.function
% <- meta.function.identifier.erlang entity.name.function.erlang
%^^^^^^^^ meta.function.identifier.erlang entity.name.function.erlang
%        ^ meta.function.parameters.erlang punctuation.section.parameters.begin.erlang
%         ^ meta.function.erlang punctuation.separator.clauses.erlang
%          ^ invalid.illegal.stray.erlang

func_name( -> ;)
%^^^^^^^^^^^^^^^ - meta.function meta.function
% <- meta.function.identifier.erlang entity.name.function.erlang
%^^^^^^^^ meta.function.identifier.erlang entity.name.function.erlang
%        ^ punctuation.section.parameters.begin.erlang
%        ^^ meta.function.parameters.erlang
%          ^^ meta.function.erlang punctuation.separator.clause-head-body.erlang
%             ^ meta.function.erlang punctuation.separator.clauses.erlang
%              ^ invalid.illegal.stray.erlang

func_name( when .)
%^^^^^^^^^^^^^^^^^ - meta.function meta.function
% <- meta.function.identifier.erlang entity.name.function.erlang
%^^^^^^^^ meta.function.identifier.erlang entity.name.function.erlang
%        ^ punctuation.section.parameters.begin.erlang
%        ^^ meta.function.parameters.erlang
%          ^^^^ meta.function.erlang keyword.control.conditional.when.erlang
%              ^^ meta.function.erlang
%               ^ punctuation.terminator.clause.erlang
%                ^ invalid.illegal.stray.erlang

func_name({[( -> ;)
%^^^^^^^^^^^^^^^^^^ - meta.function meta.function
% <- meta.function.identifier.erlang entity.name.function.erlang
%^^^^^^^^ meta.function.identifier.erlang entity.name.function.erlang
%        ^ punctuation.section.parameters.begin.erlang
%        ^^^^^ meta.function.parameters.erlang
%             ^^ meta.function.erlang punctuation.separator.clause-head-body.erlang
%                ^ meta.function.erlang punctuation.separator.clauses.erlang
%                 ^ invalid.illegal.stray.erlang

func_name({[( when .)
%^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
% <- meta.function.identifier.erlang entity.name.function.erlang
%^^^^^^^^ meta.function.identifier.erlang entity.name.function.erlang
%        ^ punctuation.section.parameters.begin.erlang
%        ^^^^^ meta.function.parameters.erlang
%             ^^^^ meta.function.erlang keyword.control.conditional.when.erlang
%                 ^^ meta.function.erlang
%                  ^ punctuation.terminator.clause.erlang
%                   ^ invalid.illegal.stray.erlang

func_name ( )
%^^^^^^^^^^^^ - meta.function meta.function
% <- meta.function.identifier.erlang entity.name.function.erlang
%^^^^^^^^ meta.function.identifier.erlang entity.name.function.erlang
%         ^ punctuation.section.parameters.begin.erlang
%         ^^^ meta.function.parameters.erlang
%           ^ punctuation.section.parameters.end.erlang
%            ^ meta.function.erlang
    ;
%   ^ meta.function.erlang punctuation.separator.clauses.erlang
%    ^ - meta.function.erlang

func_name ( )
% <- meta.function.identifier.erlang entity.name.function.erlang
%^^^^^^^^ meta.function.identifier.erlang entity.name.function.erlang
%         ^ punctuation.section.parameters.begin.erlang
%         ^^^ meta.function.parameters.erlang
%           ^ punctuation.section.parameters.end.erlang
%            ^ meta.function.erlang
    .
%   ^ meta.function.erlang punctuation.terminator.clause.erlang
%    ^ - meta.function.erlang


func_name ( ) ->
% <- meta.function.identifier.erlang entity.name.function.erlang
%^^^^^^^^ meta.function.identifier.erlang entity.name.function.erlang
%         ^ punctuation.section.parameters.begin.erlang
%         ^^^ meta.function.parameters.erlang
%           ^ punctuation.section.parameters.end.erlang
%            ^^^ meta.function.erlang
%             ^^ punctuation.separator.clause-head-body.erlang
    .
%   ^ meta.function.erlang punctuation.terminator.clause.erlang
%    ^ - meta.function.erlang

func_name ( ) when true ->
%^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
% <- meta.function.identifier.erlang entity.name.function.erlang
%^^^^^^^^ meta.function.identifier.erlang entity.name.function.erlang
%         ^^^ meta.function.parameters.erlang
%            ^^^^^^^^^^^^^^ meta.function.erlang - meta.function.parameters.erlang.erlang
%         ^ punctuation.section.parameters.begin.erlang
%           ^ punctuation.section.parameters.end.erlang
%             ^^^^ keyword.control.conditional.when.erlang
%                  ^^^^ constant.language.boolean.true.erlang
%                       ^^ punctuation.separator.clause-head-body.erlang
    .
%   ^ meta.function.erlang punctuation.terminator.clause.erlang
%    ^ - meta.function.erlang

func_name ( ) when is_list(), is_tuple(); is_atom() ->
%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
% <- meta.function.identifier.erlang entity.name.function.erlang
%^^^^^^^^ meta.function.identifier.erlang entity.name.function.erlang
%         ^^^ meta.function.parameters.erlang
%            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.erlang - meta.function.parameters
%         ^ punctuation.section.parameters.begin.erlang
%           ^ punctuation.section.parameters.end.erlang
%             ^^^^ keyword.control.conditional.when.erlang
%                  ^^^^^^^ support.function.erlang
%                           ^ punctuation.separator.expressions.erlang
%                             ^^^^^^^^ support.function.erlang
%                                     ^ punctuation.section.arguments.begin.erlang
%                                      ^ punctuation.section.arguments.end.erlang
%                                       ^ punctuation.separator.clauses.erlang
%                                         ^^^^^^^ support.function.erlang
%                                                ^ punctuation.section.arguments.begin.erlang
%                                                 ^ punctuation.section.arguments.end.erlang
%                                                   ^^ punctuation.separator.clause-head-body.erlang
    .
%   ^ meta.function.erlang punctuation.terminator.clause.erlang
%    ^ - meta.function.erlang

func_name ( )
% <- meta.function.identifier.erlang entity.name.function.erlang
%^^^^^^^^ meta.function.identifier.erlang entity.name.function.erlang
%         ^^^ meta.function.parameters.erlang
%            ^ meta.function.erlang - meta.function.parameters.erlang.erlang
%         ^ punctuation.section.parameters.begin.erlang
%           ^ punctuation.section.parameters.end.erlang
    when
%  ^ meta.function.erlang - meta.function.parameters.erlang.erlang
%   ^^^^ keyword.control.conditional.when.erlang
        is_list(),
%       ^^^^^^^ support.function.erlang
        is_tuple()
%       ^^^^^^^^ support.function.erlang
    ->
%   ^^ punctuation.separator.clause-head-body.erlang
    .
%   ^ meta.function.erlang punctuation.terminator.clause.erlang
%    ^ - meta.function.erlang

'2\'Bin'() -> .
% <-  meta.function.identifier.erlang entity.name.function.erlang
%^^^^^^^ meta.function.identifier.erlang entity.name.function.erlang
% <- punctuation.definition.atom.begin.erlang
%      ^ punctuation.definition.atom.end.erlang
%       ^ meta.function.parameters.erlang punctuation.section.parameters.begin.erlang
%        ^ meta.function.parameters.erlang punctuation.section.parameters.end.erlang
%          ^^ meta.function.erlang punctuation.separator.clause-head-body.erlang
%             ^ meta.function.erlang punctuation.terminator.clause.erlang

?FUNC() -> .
% <- meta.function.identifier.erlang constant.other.macro.erlang
%^^^^ meta.function.identifier.erlang constant.other.macro.erlang
%    ^ meta.function.parameters.erlang punctuation.section.parameters.begin.erlang
%     ^ meta.function.parameters.erlang punctuation.section.parameters.end.erlang
%       ^^ meta.function.erlang punctuation.separator.clause-head-body.erlang
%          ^ meta.function.erlang punctuation.terminator.clause.erlang

?'2\'Bin'() -> .
%<- meta.function.identifier.erlang constant.other.macro.erlang
%^^^^^^^^ meta.function.identifier.erlang constant.other.macro.erlang
%        ^ meta.function.parameters.erlang punctuation.section.parameters.begin.erlang
%         ^ meta.function.parameters.erlang punctuation.section.parameters.end.erlang
%           ^^ meta.function.erlang punctuation.separator.clause-head-body.erlang
%              ^ meta.function.erlang punctuation.terminator.clause.erlang

func_name(Mod, Name, _, {Enc,Depth}, <<Code:32/little-unsigned>>) ->
% <- meta.function.identifier.erlang entity.name.function.erlang
%^^^^^^^^ meta.function.identifier.erlang
%        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.erlang
%                       ^^^^^^^^^^^ meta.sequence.tuple.erlang
%                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.binary.erlang
%                                                                ^^^^ meta.function.erlang - meta.function.parameters.erlang
%^^^^^^^^ entity.name.function.erlang
%        ^ punctuation.section.parameters.begin.erlang
%         ^^^ variable.parameter.erlang
%            ^ punctuation.separator.parameters.erlang
%              ^^^^ variable.parameter.erlang
%                  ^ punctuation.separator.parameters.erlang
%                    ^ variable.language.anonymous.erlang
%                     ^ punctuation.separator.parameters.erlang
%                       ^ punctuation.section.sequence.begin.erlang
%                        ^^^ variable.parameter.erlang
%                           ^ punctuation.separator.sequence.erlang
%                            ^^^^^ variable.parameter.erlang
%                                 ^ punctuation.section.sequence.end.erlang
%                                  ^ punctuation.separator.parameters.erlang
%                                    ^^ punctuation.definition.sequence.begin.erlang
%                                      ^^^^ variable.parameter.erlang
%                                          ^ punctuation.separator.value-size.erlang
%                                           ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                             ^ punctuation.separator.value-type.erlang
%                                              ^^^^^^ storage.modifier.endianness.erlang
%                                                    ^ punctuation.separator.type-specifiers.erlang
%                                                     ^^^^^^^^ storage.modifier.signedness.erlang
%                                                             ^^ punctuation.definition.sequence.end.erlang
%                                                               ^ punctuation.section.parameters.end.erlang
%                                                                 ^^ punctuation.separator.clause-head-body.erlang
    Identifier = lists:flatten(io_lib:format("~s:~s()", [Mod, Name])),
%                      ^^^^^^^ meta.function-call.identifier.erlang - meta.function-call.arguments.erlang
%                             ^ meta.function-call.arguments.erlang - meta.function-call.identifier.erlang
%                              ^^^^^^^^^^^^^ meta.function-call.arguments.erlang - meta.function-call.identifier.erlang meta.function-call.identifier.erlang
%                                           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.erlang meta.function-call.arguments.erlang - meta.function-call.identifier.erlang meta.function-call.arguments.erlang
%                                                       ^^^^^^^^^^^ meta.sequence.list
%                                                                   ^ meta.function-call.arguments.erlang - meta.function-call.identifier.erlang - meta.function-call.arguments.erlang meta.function-call.arguments.erlang
%                                                                    ^ - meta.function-call
%   ^^^^^^^^^^ variable.other.readwrite.erlang
%              ^ keyword.operator.assignment.erlang
%                ^^^^^ variable.namespace.erlang
%                     ^ punctuation.accessor.double-colon.erlang
%                      ^^^^^^^ variable.function.erlang
%                             ^ punctuation.section.arguments.begin.erlang
%                                    ^ punctuation.accessor.double-colon.erlang
%                                           ^ punctuation.section.arguments.begin.erlang
%                                            ^ string.quoted.double punctuation.definition.string.begin.erlang
%                                                    ^ string.quoted.double punctuation.definition.string.end.erlang
%                                                     ^ punctuation.separator.arguments.erlang
%                                                       ^ punctuation.section.sequence.begin.erlang
%                                                           ^ punctuation.separator.sequence.erlang
%                                                                 ^ punctuation.section.sequence.end.erlang
%                                                                  ^ punctuation.section.arguments.end.erlang
%                                                                   ^ punctuation.section.arguments.end.erlang
%                                                                    ^ punctuation.separator.expressions.erlang
    io:format("~-*s", [Len, Identifier]).
%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.erlang
%   ^^^ meta.path.erlang - meta.function-call
%      ^^^^^^ meta.path.erlang meta.function-call.identifier.erlang - meta.function-call.arguments.erlang
%            ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.erlang - meta.function-call.identifier - meta.path
%                      ^^^^^^^^^^^^^^^^ meta.sequence.list.erlang
%                                       ^ - meta.function-call
%   ^^ variable.namespace.erlang
%     ^ punctuation.accessor.double-colon.erlang
%      ^^^^^^ variable.function.erlang
%            ^ punctuation.section.arguments.begin.erlang
%             ^ string.quoted.double.erlang punctuation.definition.string.begin.erlang
%              ^ string.quoted.double.erlang constant.other.placeholder.erlang punctuation.definition.placeholder.erlang
%               ^^ string.quoted.double.erlang constant.other.placeholder.width.asterisk.erlang
%                 ^ string.quoted.double.erlang constant.other.placeholder.control.character.erlang
%                  ^ string.quoted.double.erlang punctuation.definition.string.end.erlang - constant.other.placeholder
%                   ^ punctuation.separator.arguments.erlang
%                     ^ punctuation.section.sequence.begin.erlang
%                      ^^^ variable.other.readwrite.erlang - punctuation
%                         ^ punctuation.separator.sequence.erlang - variable
%                           ^^^^^^^^^^ variable.other.readwrite.erlang - punctuation
%                                     ^ punctuation.section.sequence.end.erlang
%                                      ^ punctuation.section.arguments.end.erlang
%                                       ^ punctuation.terminator.clause.erlang

    foo(F,G) -> fun(E) -> F() end.
%   ^^^ meta.function.identifier.erlang - meta.function.parameters.erlang
%      ^^^^^ meta.function.parameters.erlang
%           ^^^^^^^^^^^^^^^^^^^^^^ meta.function.erlang
%   ^^^ entity.name.function.erlang
%      ^ punctuation.section.parameters.begin.erlang
%       ^ variable.parameter.erlang
%        ^ punctuation.separator.parameters.erlang
%         ^ variable.parameter.erlang
%          ^ punctuation.section.parameters.end.erlang
%               ^^^ keyword.declaration.function.erlang
%                             ^^^ keyword.declaration.end.erlang
%                                ^ punctuation.terminator.clause.erlang

    fact(N) when N>0 ->  % first clause head
%   ^^^^ meta.function.identifier.erlang - meta.function.parameters.erlang
%       ^^^ meta.function.parameters.erlang
%           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.erlang - meta.function.parameters.erlang
%   ^^^^ entity.name.function.erlang
%       ^ punctuation.section.parameters.begin.erlang
%        ^ variable.parameter.erlang
%         ^ punctuation.section.parameters.end.erlang
%           ^^^^ keyword.control.conditional.when.erlang
%                ^ variable.other.readwrite.erlang
%                 ^ keyword.operator.comparison.erlang
%                  ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                    ^^ punctuation.separator.clause-head-body.erlang
%                        ^ punctuation.definition.comment.erlang
%                        ^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.erlang
        N * fact(N-1);   % first clause body
%   ^^^^^^^^^^^^^^^^^^ meta.function.erlang
%                    ^ punctuation.separator.clauses.erlang

    fact(0) ->           % second clause head
%   ^^^^ meta.function.identifier.erlang - meta.function.parameters.erlang
%       ^^^ meta.function.parameters.erlang
%          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.erlang
%   ^^^^ entity.name.function.erlang
%       ^ punctuation.section.parameters.begin.erlang
%        ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%         ^ punctuation.section.parameters.end.erlang
%           ^^ punctuation.separator.clause-head-body.erlang
        1.               % second clause body
%   ^^^^^^ meta.function.erlang
%         ^ - meta.function.erlang
%       ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%        ^ punctuation.terminator.clause.erlang

% case expression tests
% http://erlang.org/doc/reference_manual/expressions.html#case

case_tests() ->

    case4you
%   ^^^^^^^^ constant.other.symbol.erlang - keyword

case_tests() ->

    case4you
%   ^^^^^^^^ constant.other.symbol.erlang - keyword

    case_here
%   ^^^^^^^^^ constant.other.symbol.erlang - keyword

    case@here
%   ^^^^^^^^^ constant.other.symbol.erlang - keyword

    case
%  ^ - meta.case
%   ^^^^^ meta.case.erlang
%   ^^^^ keyword.control.conditional.case.erlang
    end,
%   ^^^ meta.case.erlang
%      ^ - meta.case
%   ^^^ keyword.control.conditional.end.erlang
%      ^ punctuation.separator.expressions.erlang

    case Var of
%  ^ - meta.case
%   ^^^^^^^^^ meta.case.erlang
%   ^^^^ keyword.control.conditional.case.erlang
%        ^^^ variable.other.readwrite.erlang
        {ok, time} when is_tuple(); Bar /= false ->
%      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.case.erlang
%       ^^^^^^^^^^ meta.sequence.tuple.erlang
%                 ^ - meta.sequence
%                       ^^^^^^^^ meta.function-call.identifier.erlang
%                               ^^ meta.function-call.arguments.erlang
%                  ^^^^ keyword.control.conditional.when.erlang
%                       ^^^^^^^^ support.function.erlang
%                               ^ punctuation.section.arguments.begin.erlang
%                                ^ punctuation.section.arguments.end.erlang
%                                 ^ punctuation.separator.clauses.erlang
%                                   ^^^ variable.other.readwrite.erlang
%                                       ^^ keyword.operator.comparison.erlang
%                                          ^^^^^ constant.language.boolean.false.erlang
%                                                ^^ punctuation.separator.clause-head-body.erlang
            print("ok");
%          ^^^^^^^^^^^^ meta.case.erlang
%           ^^^^^^^^^^^ meta.function-call
%                      ^^ meta.case.erlang
%                      ^ punctuation.separator.clauses.erlang
        error ->
%      ^^^^^^^^^^ meta.case.erlang
%             ^^ punctuation.separator.clause-head-body.erlang
            print("not ok")
%          ^^^^^^^^^^^^^^^^^ meta.case.erlang
%           ^^^^^^^^^^^^^^^ meta.function-call
    end.
%  ^^^^ meta.case.erlang
%      ^ - meta.case.erlang
%   ^^^ keyword.control.conditional.end.erlang
%      ^ punctuation.terminator.clause.erlang

if_tests() ->

    if4you
%   ^^^^^^ constant.other.symbol.erlang - keyword

    if_here
%   ^^^^^^^ constant.other.symbol.erlang - keyword

    if@here
%   ^^^^^^^ constant.other.symbol.erlang - keyword

    if
%  ^ - meta.if
%   ^^^^^ meta.if.erlang
%   ^^ keyword.control.conditional.if.erlang
    end,
%   ^^^ meta.if.erlang
%      ^ - meta.if
%   ^^^ keyword.control.conditional.end.erlang
%      ^ punctuation.separator.expressions.erlang

    if
%  ^ - meta.if
%   ^^^ meta.if.erlang
%   ^^ keyword.control.conditional.if.erlang
        {ok, time} when is_tuple(); Bar /= false ->
%      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.if.erlang
%       ^^^^^^^^^^ meta.sequence.tuple.erlang
%                 ^ - meta.sequence
%                       ^^^^^^^^ meta.function-call.identifier.erlang
%                               ^^ meta.function-call.arguments.erlang
%                  ^^^^ keyword.control.conditional.when.erlang
%                       ^^^^^^^^ support.function.erlang
%                               ^ punctuation.section.arguments.begin.erlang
%                                ^ punctuation.section.arguments.end.erlang
%                                 ^ punctuation.separator.clauses.erlang
%                                   ^^^ variable.other.readwrite.erlang
%                                       ^^ keyword.operator.comparison.erlang
%                                          ^^^^^ constant.language.boolean.false.erlang
%                                                ^^ punctuation.separator.clause-head-body.erlang
            print("ok");
%          ^^^^^^^^^^^^ meta.if.erlang
%           ^^^^^^^^^^^ meta.function-call
%                      ^^ meta.if.erlang
%                      ^ punctuation.separator.clauses.erlang
        true ->
%      ^^^^^^^^^ meta.if.erlang
%            ^^ punctuation.separator.clause-head-body.erlang
            print("not ok")
%          ^^^^^^^^^^^^^^^^^ meta.if.erlang
%           ^^^^^^^^^^^^^^^ meta.function-call
    end.
%  ^^^^ meta.if.erlang
%      ^ - meta.if.erlang
%   ^^^ keyword.control.conditional.end.erlang
%      ^ punctuation.terminator.clause.erlang

maybe_tests() ->

    maybe4you
%   ^^^^^^^^^ meta.atom.erlang constant.other.symbol.erlang - keyword

    maybe_you
%   ^^^^^^^^^ meta.atom.erlang constant.other.symbol.erlang - keyword

    maybe@you
%   ^^^^^^^^^ meta.atom.erlang constant.other.symbol.erlang - keyword

    maybe
%  ^ - meta.maybe - keyword
%   ^^^^^^ meta.maybe.erlang - meta.maybe meta.maybe
%   ^^^^^ keyword.control.conditional.maybe.erlang
%        ^ - keyword
        maybe
%   ^^^^ meta.maybe.erlang - meta.maybe meta.maybe - keyword
%       ^^^^^^ meta.maybe.erlang meta.maybe.erlang
%       ^^^^^ keyword.control.conditional.maybe.erlang
%            ^ - keyword
            {ok, A} ?= a(),
%   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.maybe.erlang meta.maybe.erlang
%           ^^^^^^^ meta.sequence.tuple.erlang
%                   ^^ keyword.operator.logical.erlang
%                      ^ variable.function.erlang
%                       ^ punctuation.section.arguments.begin.erlang
%                        ^ punctuation.section.arguments.end.erlang
%                         ^ punctuation.separator.expressions.erlang
            true = A >= 0,
%   ^^^^^^^^^^^^^^^^^^^^^^^ meta.maybe.erlang meta.maybe.erlang
%           ^^^^ constant.language.boolean.true.erlang
%                ^ keyword.operator.assignment.erlang
%                  ^ variable.other.readwrite.erlang
%                    ^^ keyword.operator.comparison.erlang
%                       ^ constant.numeric.value.erlang
%                        ^ punctuation.separator.expressions.erlang
            {ok, B} ?= b(),
%   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.maybe.erlang meta.maybe.erlang
%           ^^^^^^^ meta.sequence.tuple.erlang
%                   ^^ keyword.operator.logical.erlang
%                      ^ variable.function.erlang
%                       ^ punctuation.section.arguments.begin.erlang
%                        ^ punctuation.section.arguments.end.erlang
%                         ^ punctuation.separator.expressions.erlang
            A + B
%   ^^^^^^^^^^^^^^ meta.maybe.erlang meta.maybe.erlang
%           ^ variable.other.readwrite.erlang
%             ^ keyword.operator.arithmetic.erlang
%               ^ variable.other.readwrite.erlang
        end
%   ^^^^^^^ meta.maybe.erlang meta.maybe.erlang
%      ^ - keyword
%       ^^^ keyword.control.conditional.end.erlang
%          ^ meta.maybe.erlang - meta.maybe meta.maybe - keyword
    end
%  ^^^^ meta.maybe.erlang - meta.maybe meta.maybe
%  ^ - keyword
%   ^^^ keyword.control.conditional.end.erlang
%      ^ - meta.maybe - keyword
    .
%   ^ meta.function.erlang punctuation.terminator.clause.erlang

function_call_tests() ->

% erlang is a special autoimported namespace

    erlang
%   ^^^^^^ meta.atom.erlang constant.other.symbol.erlang - meta.path - support.namespace

    erlang:
%  ^ - meta.path
%   ^^^^^^ meta.path.erlang support.namespace.erlang
%         ^ meta.path.erlang punctuation.accessor.double-colon.erlang
%          ^ - meta.path

    erlang:foo(X),
%  ^ - meta.path
%   ^^^^^^^ meta.path.erlang - meta.function-call
%          ^^^ meta.path.erlang meta.function-call.identifier.erlang
%             ^^^ meta.function-call.arguments.erlang - meta.path
%                ^ - meta.path - meta.function-call
%   ^^^^^^ support.namespace.erlang
%         ^ punctuation.accessor.double-colon.erlang
%          ^^^ variable.function.erlang
%             ^ punctuation.section.arguments.begin.erlang
%              ^ variable.other.readwrite.erlang
%               ^ punctuation.section.arguments.end.erlang
%                ^ punctuation.separator.expressions.erlang

% match builtin functions without respect of preceded namespace

    erlang:abs(X),
%   ^^^^^^^ meta.path.erlang - meta.function-call
%          ^^^ meta.path.erlang meta.function-call.identifier.erlang
%             ^^^ meta.function-call.arguments.erlang - meta.path
%                ^ - meta.path - meta.function-call
%   ^^^^^^ support.namespace.erlang
%         ^ punctuation.accessor.double-colon.erlang
%          ^^^ support.function.erlang
%             ^ punctuation.section.arguments.begin.erlang
%              ^ variable.other.readwrite.erlang
%               ^ punctuation.section.arguments.end.erlang
%                ^ punctuation.separator.expressions.erlang

    erlang : abs ( X ) ,
%   ^^^^^^^^^ meta.path.erlang - meta.function-call
%            ^^^^ meta.path.erlang meta.function-call.identifier.erlang
%                ^^^^^ meta.function-call.arguments.erlang - meta.path
%                     ^^ - meta.path - meta.function-call
%   ^^^^^^ support.namespace.erlang
%         ^^^ - constant - support - variable
%          ^ punctuation.accessor.double-colon.erlang
%            ^^^ support.function.erlang
%               ^ - constant - support - variable
%                ^ punctuation.section.arguments.begin.erlang
%                  ^ variable.other.readwrite.erlang
%                    ^ punctuation.section.arguments.end.erlang
%                      ^ punctuation.separator.expressions.erlang

    module:abs(X),
%   ^^^^^^^ meta.path.erlang - meta.function-call
%          ^^^ meta.path.erlang meta.function-call.identifier.erlang
%             ^^^ meta.function-call.arguments.erlang - meta.path
%                ^ - meta.path - meta.function-call
%   ^^^^^^ variable.namespace.erlang
%         ^ punctuation.accessor.double-colon.erlang
%          ^^^ support.function.erlang
%             ^ punctuation.section.arguments.begin.erlang
%              ^ variable.other.readwrite.erlang
%               ^ punctuation.section.arguments.end.erlang
%                ^ punctuation.separator.expressions.erlang

    '\'od%le':abs(X),
%   ^^^^^^^^^^ meta.path.erlang - meta.function-call
%             ^^^ meta.path.erlang meta.function-call.identifier.erlang
%                ^^^ meta.function-call.arguments.erlang - meta.path
%                   ^ - meta.path - meta.function-call
%   ^^^^^^^^^ variable.namespace.erlang
%            ^ punctuation.accessor.double-colon.erlang
%             ^^^ support.function.erlang
%                ^ punctuation.section.arguments.begin.erlang
%                 ^ variable.other.readwrite.erlang
%                  ^ punctuation.section.arguments.end.erlang
%                   ^ punctuation.separator.expressions.erlang

    'M\'od%le ' : abs ( X ),
%   ^^^^^^^^^^^^^^ meta.path.erlang - meta.function-call
%                 ^^^^ meta.path.erlang meta.function-call.identifier.erlang
%                     ^^^^^ meta.function-call.arguments.erlang - meta.path
%                          ^ - meta.path - meta.function-call
%   ^^^^^^^^^^^ variable.namespace.erlang
%              ^^^ - constant - support - variable
%               ^ punctuation.accessor.double-colon.erlang
%                 ^^^ support.function.erlang
%                    ^ - constant - support - variable
%                     ^ punctuation.section.arguments.begin.erlang
%                       ^ variable.other.readwrite.erlang
%                         ^ punctuation.section.arguments.end.erlang
%                          ^ punctuation.separator.expressions.erlang

    Module:abs(X),
%   ^^^^^^^ meta.path.erlang - meta.function-call
%          ^^^ meta.path.erlang meta.function-call.identifier.erlang
%             ^^^ meta.function-call.arguments.erlang - meta.path
%                ^ - meta.path - meta.function-call
%   ^^^^^^ variable.other.readwrite.erlang
%         ^ punctuation.accessor.double-colon.erlang
%          ^^^ support.function.erlang
%             ^ punctuation.section.arguments.begin.erlang
%              ^ variable.other.readwrite.erlang
%               ^ punctuation.section.arguments.end.erlang
%                ^ punctuation.separator.expressions.erlang

    ?MODULE:abs(X),
%   ^^^^^^^^ meta.path.erlang - meta.function-call
%           ^^^ meta.path.erlang meta.function-call.identifier.erlang
%              ^^^ meta.function-call.arguments.erlang - meta.path
%                 ^ - meta.path - meta.function-call
%   ^ punctuation.definition.macro.erlang
%   ^^^^^^^ constant.language.macro.erlang
%          ^ punctuation.accessor.double-colon.erlang
%           ^^^ support.function.erlang
%              ^ punctuation.section.arguments.begin.erlang
%               ^ variable.other.readwrite.erlang
%                ^ punctuation.section.arguments.end.erlang
%                 ^ punctuation.separator.expressions.erlang

    ?foo:abs(X),
%   ^^^^^ meta.path.erlang - meta.function-call
%        ^^^ meta.path.erlang meta.function-call.identifier.erlang
%           ^^^ meta.function-call.arguments.erlang - meta.path
%              ^ - meta.path - meta.function-call
%   ^ punctuation.definition.macro.erlang
%   ^^^^ constant.other.macro.erlang
%       ^ punctuation.accessor.double-colon.erlang
%        ^^^ support.function.erlang
%           ^ punctuation.section.arguments.begin.erlang
%            ^ variable.other.readwrite.erlang
%             ^ punctuation.section.arguments.end.erlang
%              ^ punctuation.separator.expressions.erlang

    ?'foo\'-%b':abs(X),
%   ^^^^^^^^^^^^ meta.path.erlang - meta.function-call
%               ^^^ meta.path.erlang meta.function-call.identifier.erlang
%                  ^^^ meta.function-call.arguments.erlang - meta.path
%                     ^ - meta.path - meta.function-call
%   ^ punctuation.definition.macro.erlang
%   ^^^^^^^^^^^ constant.other.macro.erlang
%    ^ punctuation.definition.atom.begin.erlang
%        ^ punctuation.definition.escape.erlang
%             ^ punctuation.definition.atom.end.erlang
%              ^ punctuation.accessor.double-colon.erlang
%               ^^^ support.function.erlang
%                  ^ punctuation.section.arguments.begin.erlang
%                   ^ variable.other.readwrite.erlang
%                    ^ punctuation.section.arguments.end.erlang
%                     ^ punctuation.separator.expressions.erlang

% builtins don't need the namespace preceded

    abs(X),
%  ^ - meta.function-call - meta.path
%   ^^^ meta.function-call.identifier.erlang - meta.path
%      ^^^ meta.function-call.arguments.erlang - meta.path
%         ^ - meta.function-call - meta.path
%   ^^^ support.function.erlang
%      ^ punctuation.section.arguments.begin.erlang
%       ^ variable.other.readwrite.erlang
%        ^ punctuation.section.arguments.end.erlang
%         ^ punctuation.separator.expressions.erlang

    abs ( X ) ,
%  ^ - meta.function-call - meta.path
%   ^^^^ meta.function-call.identifier.erlang - meta.path
%       ^^^^^ meta.function-call.arguments.erlang - meta.path
%            ^^^ - meta.function-call - meta.path
%   ^^^ support.function.erlang
%      ^ - constant - support - variable
%       ^ punctuation.section.arguments.begin.erlang
%         ^ variable.other.readwrite.erlang
%           ^ punctuation.section.arguments.end.erlang
%             ^ punctuation.separator.expressions.erlang

    abs@(X),
%  ^ - meta.function-call - meta.path
%   ^^^^ meta.function-call.identifier.erlang - meta.path
%       ^^^ meta.function-call.arguments.erlang - meta.path
%          ^ - meta.function-call - meta.path
%   ^^^^ variable.function.erlang
%       ^ punctuation.section.arguments.begin.erlang
%        ^ variable.other.readwrite.erlang
%         ^ punctuation.section.arguments.end.erlang
%          ^ punctuation.separator.expressions.erlang

    not@abs(X),
%  ^ - meta.function-call - meta.path
%   ^^^^^^^ meta.function-call.identifier.erlang - meta.path
%          ^^^ meta.function-call.arguments.erlang - meta.path
%             ^ - meta.function-call - meta.path
%   ^^^^^^^ variable.function.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ variable.other.readwrite.erlang
%            ^ punctuation.section.arguments.end.erlang
%             ^ punctuation.separator.expressions.erlang

    not_abs(X),
%  ^ - meta.function-call
%   ^^^^^^^ meta.function-call.identifier.erlang
%          ^^^ meta.function-call.arguments.erlang
%             ^ - meta.function-call
%   ^^^^^^^ variable.function.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ variable.other.readwrite.erlang
%            ^ punctuation.section.arguments.end.erlang
%             ^ punctuation.separator.expressions.erlang

% match as normal function if name contains escaped unbalanced quotes

    'abs\''(X),
%  ^ - meta.function-call - meta.path
%   ^^^^^^^ meta.function-call.identifier.erlang - meta.path
%          ^^^ meta.function-call.arguments.erlang - meta.path
%             ^ - meta.function-call - meta.path
%   ^^^^^^^ variable.function.erlang
%          ^ punctuation.section.arguments.begin.erlang
%           ^ variable.other.readwrite.erlang
%            ^ punctuation.section.arguments.end.erlang
%             ^ punctuation.separator.expressions.erlang

    ' abs\' ' ( X ),
%  ^ - meta.function-call - meta.path
%   ^^^^^^^^^^ meta.function-call.identifier.erlang - meta.path
%             ^^^^^ meta.function-call.arguments.erlang - meta.path
%                  ^ - meta.function-call - meta.path
%   ^^^^^^^^^ variable.function.erlang
%            ^ - constant - support - variable
%             ^ punctuation.section.arguments.begin.erlang
%               ^ variable.other.readwrite.erlang
%                 ^ punctuation.section.arguments.end.erlang
%                  ^ punctuation.separator.expressions.erlang

% match as normal function if name contains escaped quotes or `%`

    '\'abs%\''(X),
%  ^ - meta.function-call
%   ^^^^^^^^^^ meta.function-call.identifier.erlang
%             ^^^ meta.function-call.arguments.erlang
%                ^ - meta.function-call
%   ^^^^^^^^^^ variable.function.erlang
%             ^ punctuation.section.arguments.begin.erlang
%              ^ variable.other.readwrite.erlang
%               ^ punctuation.section.arguments.end.erlang
%                ^ punctuation.separator.expressions.erlang

    ' \'abs%\' ' ( X ),
%  ^ - meta.function-call
%   ^^^^^^^^^^^^^ meta.function-call.identifier.erlang
%                ^^^^^ meta.function-call.arguments.erlang
%                     ^ - meta.function-call
%   ^^^^^^^^^^^^ variable.function.erlang
%               ^ - constant - support - variable
%                ^ punctuation.section.arguments.begin.erlang
%                  ^ variable.other.readwrite.erlang
%                    ^ punctuation.section.arguments.end.erlang
%                     ^ punctuation.separator.expressions.erlang

% don't match macro names as builtin functions

    ?FUNC(X),
%  ^ - meta.function-call - meta.path
%   ^^^^^ meta.function-call.identifier.erlang - meta.path
%        ^^^ meta.function-call.arguments.erlang - meta.path
%           ^ - meta.function-call - meta.path
%   ^ punctuation.definition.macro.erlang
%   ^^^^^ constant.other.macro.erlang - support.function
%        ^ punctuation.section.arguments.begin.erlang
%         ^ variable.other.readwrite.erlang
%          ^ punctuation.section.arguments.end.erlang
%           ^ punctuation.separator.expressions.erlang

    ?ABS ( X ) ,
%  ^ - meta.function-call - meta.path
%   ^^^^^ meta.function-call.identifier.erlang - meta.path
%        ^^^^^ meta.function-call.arguments.erlang - meta.path
%             ^ - meta.function-call - meta.path
%   ^ punctuation.definition.macro.erlang
%   ^^^^ constant.other.macro.erlang - support.function
%       ^ - constant - support - variable
%        ^ punctuation.section.arguments.begin.erlang
%          ^ variable.other.readwrite.erlang
%            ^ punctuation.section.arguments.end.erlang
%              ^ punctuation.separator.expressions.erlang

    ?'abs'(X),
%  ^ - meta.function-call - meta.path
%   ^^^^^^ meta.function-call.identifier.erlang - meta.path
%         ^^^ meta.function-call.arguments.erlang - meta.path
%            ^ - meta.function-call - meta.path
%   ^ punctuation.definition.macro.erlang
%   ^^^^^^ constant.other.macro.erlang - support.function
%    ^ punctuation.definition.atom.begin.erlang
%        ^ punctuation.definition.atom.end.erlang
%         ^ punctuation.section.arguments.begin.erlang
%          ^ variable.other.readwrite.erlang
%           ^ punctuation.section.arguments.end.erlang
%            ^ punctuation.separator.expressions.erlang

    ?'abs' ( X ) ,
%  ^ - meta.function-call - meta.path
%   ^^^^^^^ meta.function-call.identifier.erlang - meta.path
%          ^^^^^ meta.function-call.arguments.erlang - meta.path
%               ^ - meta.function-call - meta.path
%   ^ punctuation.definition.macro.erlang
%   ^^^^^^ constant.other.macro.erlang - support.function
%    ^ punctuation.definition.atom.begin.erlang
%        ^ punctuation.definition.atom.end.erlang
%         ^ - constant - support - variable
%          ^ punctuation.section.arguments.begin.erlang
%            ^ variable.other.readwrite.erlang
%              ^ punctuation.section.arguments.end.erlang
%                ^ punctuation.separator.expressions.erlang

    ?'abs\''(X),
%  ^ - meta.function-call - meta.path
%   ^^^^^^^^ meta.function-call.identifier.erlang - meta.path
%           ^^^ meta.function-call.arguments.erlang - meta.path
%              ^ - meta.function-call - meta.path
%   ^ punctuation.definition.macro.erlang
%   ^^^^^^^^ constant.other.macro.erlang - support.function
%    ^ punctuation.definition.atom.begin.erlang
%          ^ punctuation.definition.atom.end.erlang
%           ^ punctuation.section.arguments.begin.erlang
%            ^ variable.other.readwrite.erlang
%             ^ punctuation.section.arguments.end.erlang
%              ^ punctuation.separator.expressions.erlang

    ?' abs\' ' ( X ),
%  ^ - meta.function-call - meta.path
%   ^^^^^^^^^^^ meta.function-call.identifier.erlang - meta.path
%              ^^^^^ meta.function-call.arguments.erlang - meta.path
%                   ^ - meta.function-call - meta.path
%   ^^^^^^^^^^ constant.other.macro.erlang - support.function
%             ^ - constant - support - variable
%              ^ punctuation.section.arguments.begin.erlang
%                ^ variable.other.readwrite.erlang
%                  ^ punctuation.section.arguments.end.erlang
%                   ^ punctuation.separator.expressions.erlang

    ?'\'abs%\''(X),
%  ^ - meta.function-call - meta.path
%   ^^^^^^^^^^^ meta.function-call.identifier.erlang - meta.path
%              ^^^ meta.function-call.arguments.erlang - meta.path
%                 ^ - meta.function-call - meta.path
%   ^^^^^^^^^^^ constant.other.macro.erlang - support.function
%              ^ punctuation.section.arguments.begin.erlang
%               ^ variable.other.readwrite.erlang
%                ^ punctuation.section.arguments.end.erlang
%                 ^ punctuation.separator.expressions.erlang

    ?' \'abs%\' ' ( X ),
%  ^ - meta.function-call - meta.path
%   ^^^^^^^^^^^^^^ meta.function-call.identifier.erlang - meta.path
%                 ^^^^^ meta.function-call.arguments.erlang - meta.path
%                      ^ - meta.function-call - meta.path
%   ^^^^^^^^^^^^^ constant.other.macro.erlang - support.function
%                ^ - constant - support - variable
%                 ^ punctuation.section.arguments.begin.erlang
%                   ^ variable.other.readwrite.erlang
%                     ^ punctuation.section.arguments.end.erlang
%                      ^ punctuation.separator.expressions.erlang

% a quote is an identifier break, so `?abs` is the function only

    ?'2Bin'?abs(X),
%         ^ - meta.function-call - meta.path
%          ^^^^ meta.function-call.identifier.erlang - meta.path
%              ^^^ meta.function-call.arguments.erlang - meta.path
%                 ^ - meta.function-call - meta.path
%   ^ punctuation.definition.macro.erlang
%   ^^^^^^^ constant.other.macro.erlang - variable.function
%          ^^^^ constant.other.macro.erlang - support.function
%    ^ punctuation.definition.atom.begin.erlang
%         ^ punctuation.definition.atom.end.erlang
%          ^ punctuation.definition.macro.erlang
%              ^ punctuation.section.arguments.begin.erlang
%               ^ variable.other.readwrite.erlang
%                ^ punctuation.section.arguments.end.erlang
%                 ^ punctuation.separator.expressions.erlang

% a function can be identified by special language macros

    ?MODULE : ?FUNCTION_NAME ( X , Y ).
%   ^^^^^^^^^^ meta.path.erlang - meta.function-call
%             ^^^^^^^^^^^^^^^ meta.path.erlang meta.function-call.identifier.erlang - meta.function-call.arguments.erlang
%                            ^^^^^^^^^ meta.function-call.arguments.erlang - meta.function-call.identifier.erlang - meta.path
%                                     ^ - meta.path - meta.function-call
%   ^ punctuation.definition.macro.erlang
%   ^^^^^^^ constant.language.macro.erlang
%          ^^^ - constant - support - variable
%           ^ punctuation.accessor.double-colon.erlang
%             ^ punctuation.definition.macro.erlang
%             ^^^^^^^^^^^^^^ constant.language.macro.erlang
%                           ^ - constant - support - variable
%                            ^ punctuation.section.arguments.begin.erlang
%                              ^ variable.other.readwrite.erlang
%                                ^  punctuation.separator.arguments.erlang
%                                  ^ variable.other.readwrite.erlang
%                                    ^ punctuation.section.arguments.end.erlang

% fun expression tests
% http://erlang.org/doc/reference_manual/expressions.html#fun-expressions

fun_expression_tests() ->

    fun4you
%   ^^^^^^^ constant.other.symbol.erlang - keyword

    fun_name
%   ^^^^^^^^ constant.other.symbol.erlang - keyword

    fun@name
%   ^^^^^^^^ constant.other.symbol.erlang - keyword

    end@name
%   ^^^^^^^^ constant.other.symbol.erlang - keyword

    fun
%  ^ - meta.fun
%   ^^^ meta.function.erlang meta.fun.erlang keyword.declaration.function.erlang
    end
%   ^^^ meta.function.erlang meta.fun.erlang keyword.declaration.end.erlang
%      ^ - meta.fun

    Abs = fun erlang:abs/1,
%        ^ - meta.fun.erlang
%         ^^^^ meta.function.erlang meta.fun.erlang - meta.path
%             ^^^^^^^^^^^^ meta.function.erlang meta.fun.erlang meta.path.erlang
%                         ^ - meta.fun.erlang
%   ^^^ variable.other.readwrite.erlang
%       ^ keyword.operator.assignment.erlang
%         ^^^ keyword.declaration.function.erlang
%             ^^^^^^ support.namespace.erlang
%                   ^ punctuation.accessor.double-colon.erlang
%                    ^^^ support.function.erlang
%                       ^ punctuation.separator.reference.erlang
%                        ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang

    Abs = fun module:abs/1,
%        ^ - meta.fun.erlang
%         ^^^^ meta.function.erlang meta.fun.erlang - meta.path
%             ^^^^^^^^^^^^ meta.function.erlang meta.fun.erlang meta.path.erlang
%                         ^ - meta.fun.erlang
%   ^^^ variable.other.readwrite.erlang
%       ^ keyword.operator.assignment.erlang
%         ^^^ keyword.declaration.function.erlang
%             ^^^^^^ variable.namespace.erlang
%                   ^ punctuation.accessor.double-colon.erlang
%                    ^^^ support.function.erlang
%                       ^ punctuation.separator.reference.erlang
%                        ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                         ^ punctuation.separator.expressions.erlang

    Abs = fun abs/1,
%        ^ - meta.fun.erlang
%         ^^^^^^^^^ meta.function.erlang meta.fun.erlang - meta.path
%                  ^ - meta.fun.erlang
%   ^^^ variable.other.readwrite.erlang
%       ^ keyword.operator.assignment.erlang
%         ^^^ keyword.declaration.function.erlang
%             ^^^ support.function.erlang
%                ^ punctuation.separator.reference.erlang
%                 ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang

    Fun1 = fun name/10,
%         ^ - meta.fun
%          ^^^^^^^^^^^ meta.function.erlang meta.fun.erlang - meta.fun.identifier - meta.path
%                     ^ - meta.fun
%   ^^^^ variable.other.readwrite.erlang
%        ^ keyword.operator.assignment.erlang
%          ^^^ keyword.declaration.function.erlang
%              ^^^^ variable.function.erlang
%                  ^ punctuation.separator.reference.erlang
%                   ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                     ^ punctuation.separator.expressions.erlang

    Fun1 = fun ?MODULE:name/10,
%         ^ - meta.fun
%          ^^^^ meta.function.erlang meta.fun.erlang - meta.path
%              ^^^^^^^^^^^^^^^ meta.function.erlang meta.fun.erlang meta.path.erlang
%                             ^ - meta.fun
%   ^^^^ variable.other.readwrite.erlang
%        ^ keyword.operator.assignment.erlang
%          ^^^ keyword.declaration.function.erlang
%              ^ punctuation.definition.macro.erlang
%              ^^^^^^^ constant.language.macro.erlang
%                     ^ punctuation.accessor.double-colon.erlang
%                      ^^^^ variable.function.erlang
%                          ^ punctuation.separator.reference.erlang
%                           ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                             ^ punctuation.separator.expressions.erlang

    Fun1 = fun ?CUSTOM:name/?ARI,
%         ^ - meta.fun
%          ^^^^ meta.function.erlang meta.fun.erlang - meta.path
%              ^^^^^^^^^^^^^^^^^ meta.function.erlang meta.fun.erlang meta.path.erlang
%                               ^ - meta.fun
%   ^^^^ variable.other.readwrite.erlang
%        ^ keyword.operator.assignment.erlang
%          ^^^ keyword.declaration.function.erlang
%              ^ punctuation.definition.macro.erlang
%              ^^^^^^^ constant.other.macro.erlang
%                     ^ punctuation.accessor.double-colon.erlang
%                      ^^^^ variable.function.erlang
%                          ^ punctuation.separator.reference.erlang
%                           ^ punctuation.definition.macro.erlang
%                           ^^^^ constant.other.macro.erlang
%                               ^ punctuation.separator.expressions.erlang

    Fun1 = fun module:name/Ari,
%         ^ - meta.fun
%          ^^^^ meta.function.erlang meta.fun.erlang - meta.path
%              ^^^^^^^^^^^^^^^ meta.function.erlang meta.fun.erlang meta.path.erlang
%                             ^ - meta.fun
%   ^^^^ variable.other.readwrite.erlang
%        ^ keyword.operator.assignment.erlang
%          ^^^ keyword.declaration.function.erlang
%              ^^^^^^ variable.namespace.erlang
%                    ^ punctuation.accessor.double-colon.erlang
%                     ^^^^ variable.function.erlang
%                         ^ punctuation.separator.reference.erlang
%                          ^^^ variable.other.readwrite.erlang
%                             ^ punctuation.separator.expressions.erlang

    Fun1 = fun 'my-module':name/10,
%         ^ - meta.fun
%          ^^^^ meta.function.erlang meta.fun.erlang - meta.path
%              ^^^^^^^^^^^^^^^^^^^ meta.function.erlang meta.fun.erlang meta.path.erlang
%                                 ^ - meta.fun
%   ^^^^ variable.other.readwrite.erlang
%        ^ keyword.operator.assignment.erlang
%          ^^^ keyword.declaration.function.erlang
%              ^ punctuation.definition.atom.begin.erlang
%               ^^^^^^^^^ variable.namespace.erlang
%                        ^ punctuation.definition.atom.end.erlang
%                         ^ punctuation.accessor.double-colon.erlang
%                          ^^^^ variable.function.erlang
%                              ^ punctuation.separator.reference.erlang
%                               ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                 ^ punctuation.separator.expressions.erlang

    Fun1 = fun 'my-module':?NAME/_,
%         ^ - meta.fun
%          ^^^^ meta.function.erlang meta.fun.erlang - meta.path
%              ^^^^^^^^^^^^^^^^^^^ meta.function.erlang meta.fun.erlang meta.path.erlang
%                                 ^ - meta.fun
%   ^^^^ variable.other.readwrite.erlang
%        ^ keyword.operator.assignment.erlang
%          ^^^ keyword.declaration.function.erlang
%              ^ punctuation.definition.atom.begin.erlang
%               ^^^^^^^^^ variable.namespace.erlang
%                        ^ punctuation.definition.atom.end.erlang
%                         ^ punctuation.accessor.double-colon.erlang
%                          ^ punctuation.definition.macro.erlang
%                          ^^^^^ constant.other.macro.erlang
%                               ^ punctuation.separator.reference.erlang
%                                ^ variable.language.anonymous.erlang
%                                 ^ punctuation.separator.expressions.erlang

    Fun1 = fun 'my-\^dule':'m\1func'/10,
%         ^ - meta.fun
%          ^^^^ meta.function.erlang meta.fun.erlang - meta.path
%              ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.erlang meta.fun.erlang meta.path.erlang
%                                      ^ - meta.fun
%   ^^^^ variable.other.readwrite.erlang
%        ^ keyword.operator.assignment.erlang
%          ^^^ keyword.declaration.function.erlang
%              ^ punctuation.definition.atom.begin.erlang
%               ^^^^^^^^^ variable.namespace.erlang
%                        ^ punctuation.definition.atom.end.erlang
%                         ^ punctuation.accessor.double-colon.erlang
%                          ^ punctuation.definition.atom.begin.erlang
%                           ^^^^^^^ variable.function.erlang
%                                  ^ punctuation.definition.atom.end.erlang
%                                   ^ punctuation.separator.reference.erlang
%                                    ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                      ^ punctuation.separator.expressions.erlang

% nested anonymous function definition

    Fun1 = fun abs(X) -> F = fun(Y) -> X+1 end, F(abs(X)) end,
%         ^ - meta.fun
%          ^^^^ meta.function.erlang meta.fun.erlang
%              ^^^ meta.function.erlang meta.fun.identifier.erlang
%                 ^^^ meta.function.erlang meta.fun.parameters.erlang
%                    ^^^^^^^^ meta.function.erlang meta.fun.erlang - meta.fun meta.fun
%                            ^^^ meta.function.erlang meta.fun.erlang meta.fun.erlang
%                               ^^^ meta.function.erlang meta.fun.erlang meta.fun.parameters.erlang
%                                  ^^^^^^^^^^^ meta.function.erlang meta.fun.erlang meta.fun.erlang
%                                             ^^^^^^^^^^^^^^^ meta.function.erlang meta.fun.erlang - meta.fun meta.fun
%                                               ^^^^^^^^^ meta.function-call
%                                                            ^ - meta.fun
%   ^^^^ variable.other.readwrite.erlang
%        ^ keyword.operator.assignment.erlang
%          ^^^ keyword.declaration.function.erlang
%              ^^^ invalid.illegal.expect-variable.erlang
%                 ^ punctuation.section.parameters.begin.erlang
%                   ^ punctuation.section.parameters.end.erlang
%                     ^^ punctuation.separator.clause-head-body.erlang
%                        ^ variable.other.readwrite.erlang
%                          ^ keyword.operator.assignment.erlang
%                            ^^^ keyword.declaration.function.erlang
%                               ^ punctuation.section.parameters.begin.erlang
%                                ^ variable.parameter.erlang
%                                 ^ punctuation.section.parameters.end.erlang
%                                   ^^ punctuation.separator.clause-head-body.erlang
%                                      ^ variable.other.readwrite.erlang
%                                       ^ keyword.operator.arithmetic.erlang
%                                        ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                          ^^^ keyword.declaration.end.erlang
%                                             ^ punctuation.separator.expressions.erlang
%                                               ^ variable.other.readwrite.erlang
%                                                ^ punctuation.section.arguments.begin.erlang
%                                                 ^^^ support.function.erlang
%                                                         ^^^ keyword.declaration.end.erlang
%                                                            ^ punctuation.separator.expressions.erlang

% guarded, overloaded anonymous functions

    Fun2 = fun (X) when X>=5 -> gt; (X) -> lt end,
%         ^ - meta.fun
%          ^^^^ meta.function.erlang meta.fun.erlang - meta.fun.identifier - meta.fun.parameters
%              ^^^ meta.function.erlang meta.fun.parameters.erlang - meta.fun.erlang - meta.fun.identifier
%                 ^^^^^^^^^^^^^^^^^^ meta.function.erlang meta.fun.erlang - meta.fun.identifier - meta.fun.parameters - meta.fun.identifier
%                                   ^^^ meta.function.erlang meta.fun.parameters.erlang - meta.fun.erlang - meta.fun.identifier
%                                      ^^^^^^^^^^ meta.function.erlang meta.fun.erlang - meta.fun.identifier - meta.fun.parameters
%                                                ^ - meta.fun
%   ^^^^ variable.other.readwrite.erlang
%        ^ keyword.operator.assignment.erlang
%          ^^^ keyword.declaration.function.erlang
%              ^ punctuation.section.parameters.begin.erlang
%               ^ variable.parameter.erlang
%                ^ punctuation.section.parameters.end.erlang
%                  ^^^^ keyword.control.conditional.when.erlang
%                       ^ variable.other.readwrite.erlang
%                        ^^ keyword.operator.comparison.erlang
%                          ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                            ^^ punctuation.separator.clause-head-body.erlang
%                               ^^ constant.other.symbol.erlang
%                                   ^ punctuation.section.parameters.begin.erlang
%                                    ^ variable.parameter.erlang
%                                     ^ punctuation.section.parameters.end.erlang
%                                       ^^ punctuation.separator.clause-head-body.erlang
%                                          ^^ constant.other.symbol.erlang
%                                             ^^^ keyword.declaration.end.erlang
%                                                ^ punctuation.separator.expressions.erlang

% recursive anonymous function calls

    Fun3 = fun Fact(1) -> 1; Fact(X) when X > 1 -> X * Fact(X - 1) end,
%         ^ - meta.fun
%          ^^^^ meta.function.erlang meta.fun.erlang - meta.fun.identifier - meta.fun.parameters
%              ^^^^ meta.function.erlang meta.fun.identifier.erlang - meta.fun.erlang - meta.fun.parameters
%                  ^^^ meta.function.erlang meta.fun.parameters.erlang - meta.fun.erlang - meta.fun.identifier
%                     ^^^^^^^ meta.function.erlang meta.fun.erlang - meta.fun.identifier - meta.fun.parameters
%                            ^^^^ meta.function.erlang meta.fun.identifier.erlang - meta.fun.erlang - meta.fun.parameters
%                                ^^^ meta.function.erlang meta.fun.parameters.erlang - meta.fun.erlang - meta.fun.identifier
%                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.erlang meta.fun.erlang - meta.fun.identifier - meta.fun.parameters
%                                                      ^^^^^^^^^^^ meta.function-call
%                                                                     ^ - meta.fun
%   ^^^^ variable.other.readwrite.erlang
%        ^ keyword.operator.assignment.erlang
%          ^^^ keyword.declaration.function.erlang
%              ^^^^ variable.other.readwrite.erlang
%                  ^ punctuation.section.parameters.begin.erlang
%                   ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                    ^ punctuation.section.parameters.end.erlang
%                      ^^ punctuation.separator.clause-head-body.erlang
%                         ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                          ^ punctuation.separator.clauses.erlang
%                            ^^^^ variable.other.readwrite.erlang
%                                ^ punctuation.section.parameters.begin.erlang
%                                 ^ variable.parameter.erlang
%                                  ^ punctuation.section.parameters.end.erlang
%                                    ^^^^ keyword.control.conditional.when.erlang
%                                         ^ variable.other.readwrite.erlang
%                                           ^ keyword.operator.comparison.erlang
%                                             ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                               ^^ punctuation.separator.clause-head-body.erlang
%                                                  ^ variable.other.readwrite.erlang
%                                                    ^ keyword.operator.arithmetic.erlang
%                                                      ^^^^ variable.other.readwrite.erlang
%                                                          ^ punctuation.section.arguments.begin.erlang
%                                                           ^ variable.other.readwrite.erlang
%                                                             ^ keyword.operator.arithmetic.erlang
%                                                               ^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                                                                ^ punctuation.section.arguments.end.erlang
%                                                                  ^^^ keyword.declaration.end.erlang
%                                                                     ^ punctuation.separator.expressions.erlang

    Fun1 = fun
%         ^ - meta.fun
%          ^^^^ meta.function.erlang meta.fun.erlang
%   ^^^^ variable.other.readwrite.erlang
%        ^ keyword.operator.assignment.erlang
%          ^^^ keyword.declaration.function.erlang
        (A, B) when A == true; is_tuple(B) ->
%       ^^^^^^ meta.function.erlang meta.fun.parameters.erlang
%             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.erlang meta.fun.erlang - meta.fun.identifier - meta.fun.parameters
%                              ^^^^^^^^^^^ meta.function-call
%       ^ punctuation.section.parameters.begin.erlang
%        ^ variable.parameter.erlang
%         ^ punctuation.separator.parameters.erlang
%           ^ variable.parameter.erlang
%            ^ punctuation.section.parameters.end.erlang
%              ^^^^ keyword.control.conditional.when.erlang
%                   ^ variable.other.readwrite.erlang
%                     ^^ keyword.operator.comparison.erlang
%                        ^^^^ constant.language.boolean.true.erlang
%                            ^ punctuation.separator.clauses.erlang
%                              ^^^^^^^^ support.function.erlang
%                                      ^ punctuation.section.arguments.begin.erlang
%                                       ^ variable.other.readwrite.erlang
%                                        ^ punctuation.section.arguments.end.erlang
%                                          ^^ punctuation.separator.clause-head-body.erlang
            Test = 40;
%           ^^^^^^^^^ meta.function.erlang meta.fun.erlang
%                    ^ meta.function.erlang meta.fun.erlang
%           ^^^^ variable.other.readwrite.erlang
%                ^ keyword.operator.assignment.erlang
%                  ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                    ^ punctuation.separator.clauses.erlang

        (A, B) when C = #{A => B}, is_map(C); is_list(A++B) ->
%       ^^^^^^ meta.function.erlang meta.fun.parameters.erlang
%             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.erlang meta.fun.erlang - meta.fun.identifier - meta.fun.parameters
%                       ^^^^^^^^^ meta.mapping
%                                  ^^^^^^^^^ meta.function-call
%                                             ^^^^^^^^^^^^^ meta.function-call
%       ^ punctuation.section.parameters.begin.erlang
%        ^ variable.parameter.erlang
%         ^ punctuation.separator.parameters.erlang
%           ^ variable.parameter.erlang
%            ^ punctuation.section.parameters.end.erlang
            apply(B),
%          ^^^^^^^^^^^ meta.function.erlang meta.fun.erlang
%           ^^^^^ support.function.erlang
            Test = 50;
%          ^^^^^^^^^^ meta.function.erlang meta.fun.erlang
%                    ^ meta.function.erlang meta.fun.erlang
%           ^^^^ variable.other.readwrite.erlang
%                ^ keyword.operator.assignment.erlang
%                  ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                    ^ punctuation.separator.clauses.erlang

        (A, B) ->
%       ^^^^^^ meta.function.erlang meta.fun.parameters.erlang
%             ^^^^ meta.function.erlang meta.fun.erlang - meta.fun.identifier - meta.fun.parameters
%       ^ punctuation.section.parameters.begin.erlang
%        ^ variable.parameter.erlang
%         ^ punctuation.separator.parameters.erlang
%           ^ variable.parameter.erlang
%            ^ punctuation.section.parameters.end.erlang
%              ^^ punctuation.separator.clause-head-body.erlang
            Fun = fun name/10,
%                ^ meta.function.erlang meta.fun.erlang - meta.fun.erlang meta.fun.erlang
%                 ^^^^^^^^^^^ meta.function.erlang meta.fun.erlang meta.fun.erlang
%                            ^ meta.function.erlang meta.fun.erlang - meta.fun.erlang meta.fun.erlang
%           ^^^ variable.other.readwrite.erlang
%               ^ keyword.operator.assignment.erlang
%                 ^^^ keyword.declaration.function.erlang
%                     ^^^^ variable.function.erlang
%                         ^ punctuation.separator.reference.erlang
%                          ^^ meta.number.integer.decimal.erlang constant.numeric.value.erlang
%                            ^ punctuation.separator.expressions.erlang
            error
%           ^^^^^ meta.function.erlang meta.fun.erlang constant.language.exception.type.erlang
    end.
%^^^^^^ meta.function.erlang meta.fun.erlang
%      ^ - meta.fun
%   ^^^ keyword.declaration.end.erlang
%      ^ punctuation.terminator.clause.erlang


try_catch_tests() ->

    _try try@me no@try
%   ^^^^^^^^^^^^^^^^^^ - keyword

    try
%  ^ - meta.exception
%   ^^^^ meta.exception.try.erlang
%   ^^^ keyword.control.exception.try.erlang
    end,
%  ^ meta.exception.try.erlang
%   ^^^ meta.exception.try.erlang keyword.control.exception.end.erlang
%      ^ - meta.exception

    try
%  ^ - meta.exception
%   ^^^^ meta.exception.try.erlang
%   ^^^ keyword.control.exception.try.erlang
    catch
%  ^ meta.exception.try.erlang
%   ^^^^^^ meta.exception.catch.erlang
%   ^^^^^ keyword.control.exception.catch.erlang
    end,
%  ^ meta.exception.catch.erlang
%   ^^^ meta.exception.try.erlang keyword.control.exception.end.erlang
%      ^ - meta.exception

    try
%  ^ - meta.exception
%   ^^^^ meta.exception.try.erlang
%   ^^^ keyword.control.exception.try.erlang
    after
%  ^ meta.exception.try.erlang
%   ^^^^^^ meta.exception.after.erlang
%   ^^^^^ keyword.control.exception.after.erlang
    end,
%  ^ meta.exception.after.erlang
%   ^^^ meta.exception.try.erlang keyword.control.exception.end.erlang
%      ^ - meta.exception

    try
%  ^ - meta.exception
%   ^^^^ meta.exception.try.erlang
%   ^^^ keyword.control.exception.try.erlang
    catch
%  ^ meta.exception.try.erlang
%   ^^^^^^ meta.exception.catch.erlang
%   ^^^^^ keyword.control.exception.catch.erlang
    after
%  ^ meta.exception.catch.erlang
%   ^^^^^^ meta.exception.after.erlang
%   ^^^^^ keyword.control.exception.after.erlang
    end,
%  ^ meta.exception.after.erlang
%   ^^^ meta.exception.try.erlang keyword.control.exception.end.erlang
%      ^ - meta.exception

    try apply(arg, arg) of
%  ^ - meta.exception
%   ^^^^^^^^^^^^^^^^^^^^^^^ meta.exception.try.erlang
%       ^^^^^^^^^^^^^^^ meta.function-call
%   ^^^ keyword.control.exception.try.erlang
        Expected ->
%      ^^^^^^^^^^^^^ meta.exception.try.erlang
%       ^^^^^^^^ variable.other.readwrite.erlang
%                ^^ punctuation.separator.clause-head-body.erlang
            ok;
%          ^^^^^ meta.exception.try.erlang
%           ^^ constant.language.exception.type.erlang
%             ^ meta.exception.try.erlang punctuation.separator.clauses.erlang
        _ ->
%      ^^^^^^ meta.exception.try.erlang
%       ^ variable.language.anonymous.erlang
%         ^^ punctuation.separator.clause-head-body.erlang
            ct:fail()
%          ^^^^^^^^^^^ meta.exception.try.erlang
%              ^^^^^^ meta.function-call
%           ^^ variable.namespace.erlang
%             ^ punctuation.accessor.double-colon.erlang
    catch
%  ^ meta.exception.try.erlang
%   ^^^^^^ meta.exception.catch.erlang
%   ^^^^^ keyword.control.exception.catch.erlang
        error:cause:trace when true ->
%     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.exception.catch.erlang
%       ^^^^^ constant.language.exception.type.erlang
%            ^ punctuation.separator.patterns.erlang
            ct:fail();
%           ^^ meta.path.erlang variable.namespace.erlang
%             ^ meta.path.erlang punctuation.accessor.double-colon.erlang
%              ^^^^ meta.path.erlang variable.function.erlang
        Class:Cause ->
%     ^^^^^^^^^^^^^^^^^ meta.exception.catch.erlang
%       ^^^^^ variable.other.readwrite.erlang
%             ^^^^^ variable.other.readwrite.erlang
    after
%  ^ meta.exception.catch.erlang
%   ^^^^^^ meta.exception.after.erlang
%   ^^^^^ keyword.control.exception.after.erlang
        print("ok")
    end.
%  ^ meta.exception.after.erlang
%   ^^^ meta.exception.try.erlang keyword.control.exception.end.erlang
%      ^ - meta.exception
