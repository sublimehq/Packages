% SYNTAX TEST "Packages/Erlang/Erlang.sublime-syntax"
% <- comment.line punctuation.definition.comment
% ^ comment.line
%                                                   ^^ comment.line

show_name(Mod, Name) ->
% <- meta.function entity.name.function.definition
    %                ^^ meta.function keyword.operator.symbolic
    Identifier = lists:flatten(io_lib:format("~s:~s()", [Mod, Name])),
    %          ^ meta.function keyword.operator.symbolic
    %            ^^^^^ entity.name.type.class.module
    %                 ^ meta.function punctuation
    %                  ^^^^^^^ variable.function
    %                         ^ meta.function meta.function-call punctuation.section.parameters.begin
    %                                ^ meta.function meta.function-call meta.function-call punctuation.separator.module-function
    %                                       ^ meta.function meta.function-call meta.function-call punctuation.section.parameters.begin
    %                                        ^ meta.function meta.function-call meta.function-call string.quoted.double punctuation.definition.string.begin
    %                                                ^ meta.function meta.function-call meta.function-call string.quoted.double punctuation.definition.string.end
    %                                                 ^ meta.function meta.function-call meta.function-call punctuation.separator.parameters
    %                                                   ^ meta.function meta.function-call meta.function-call meta.structure.list punctuation.section.list.begin
    %                                                       ^ meta.function meta.function-call meta.function-call meta.structure.list punctuation.separator.list
    %                                                             ^ meta.function meta.function-call meta.function-call meta.structure.list punctuation.section.list.end
    %                                                              ^ meta.function meta.function-call meta.function-call punctuation.section.parameters.end
    %                                                               ^ meta.function meta.function-call punctuation.section.parameters.end
    %                                                                ^ meta.function punctuation.separator.expressions
    Len = max(40, string:len(Identifier)),
    %   ^ keyword.operator.symbolic
    %     ^^^ meta.function-call variable.function
    %        ^ meta.function-call punctuation.section.parameters.begin
    %         ^^ meta.function-call constant.numeric.integer.decimal
    %           ^ meta.function-call punctuation.separator.parameters
    %             ^^^^^^ meta.function-call meta.function-call entity.name.type.class.module
    %                   ^ meta.function-call meta.function-call punctuation.separator.module-function
    %                    ^^^ meta.function-call meta.function-call variable.function
    %                       ^ meta.function-call meta.function-call punctuation.section.parameters.begin
    %                        ^^^^^^^^^^ meta.function-call meta.function-call variable.other
    %                                  ^ meta.function-call meta.function-call punctuation.section.parameters.end
    %                                   ^ meta.function-call punctuation.section.parameters.end
    %                                    ^ punctuation.separator.expressions
    io:format("~-*s", [Len, Identifier]).
    % <- meta.function-call entity.name.type.class.module
    % ^ meta.function-call punctuation.separator.module-function
    %  ^^^^^^ meta.function-call variable.function
    %        ^ meta.function-call punctuation.section.parameters.begin
    %         ^ meta.function-call string.quoted.double punctuation.definition.string.begin
    %          ^ meta.function-call string.quoted.double constant.other.placeholder punctuation.definition.placeholder
    %           ^ meta.function-call string.quoted.double constant.other.placeholder
    %              ^ meta.function-call string.quoted.double punctuation.definition.string.end
    %               ^ meta.function-call punctuation.separator.parameters
    %                 ^ meta.function-call meta.structure.list punctuation.section.list.begin
    %                  ^^^ meta.function-call meta.structure.list variable.other
    %                     ^ meta.function-call meta.structure.list punctuation.separator.list
    %                       ^^^^^^^^^^ meta.function-call meta.structure.list variable.other
    %                                 ^ meta.function-call meta.structure.list punctuation.section.list.end
    %                                  ^ meta.function-call punctuation.section.parameters.end
    %                                   ^ punctuation.terminator.function

format_report(Rep, Indent, {Enc,Depth}) ->
    % <- meta.function entity.name.function.definition
    %        ^ meta.function meta.expression.parenthesized punctuation.section.expression.begin
    %         ^^^ meta.function meta.expression.parenthesized variable.other
    %              ^^^^^^ meta.function meta.expression.parenthesized variable.other
    %                      ^ meta.function meta.expression.parenthesized meta.structure.tuple punctuation.section.tuple.begin
    %                       ^^^ meta.function meta.expression.parenthesized meta.structure.tuple variable.other
    %                          ^ meta.function meta.expression.parenthesized meta.structure.tuple punctuation.separator.tuple
    %                           ^^^^^ meta.function meta.expression.parenthesized meta.structure.tuple variable.other
    %                                ^ meta.function meta.expression.parenthesized meta.structure.tuple punctuation.section.tuple.end
    %                                 ^ meta.function meta.expression.parenthesized punctuation.section.expression.end
    %                                   ^^ meta.function keyword.operator.symbolic
    io_lib:format("~s~"++modifier(Enc)++"P~n", [Indent, Rep, Depth]).
    %     ^ meta.function meta.function-call punctuation.separator.module-function
    %                 ^ - invalid.illegal
