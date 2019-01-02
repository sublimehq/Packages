-- SYNTAX TEST "Packages/Lua/Lua.sublime-syntax"

--COMMENTS

    -- Foo!
--  ^^^^^^^ comment.line
--  ^^ punctuation.definition.comment


    --[[ Foo! ]]
--  ^^^^^^^^^^^^ comment.block
--  ^^^^ punctuation.definition.comment.begin
--            ^^ punctuation.definition.comment.end

    --[=[ Foo! ]] ]=]
--  ^^^^^^^^^^^^^^^^^ comment.block
--  ^^^^^ punctuation.definition.comment.begin
--             ^^ - punctuation
--                ^^^ punctuation.definition.comment.end

    --[=[
--  ^^^^^ comment.block punctuation.definition.comment.begin
        ]]
--      ^^^ comment.block - punctuation
        ]==]
--      ^^^^ comment.block - punctuation
        --
--      ^^ - punctuation
        [[
--      ^^ - punctuation
    ]=]
--  ^^^ comment.block punctuation.definition.comment.end

--VARIABLES

    foo;
--  ^^^ variable.other

    true_ish;
--  ^^^^^^^^ variable.other - constant

--CONSTANTS

    true;
--  ^^^^ constant.language.boolean.true

    false;
--  ^^^^^ constant.language.boolean.true

    nil;
--  ^^^ constant.language.null

    ...;
--  ^^^ constant.language

    self;
--  ^^^^ variable.language.this

--NUMBERS

    0;
--  ^ constant.numeric.decimal

    1234567890;
--  ^^^^^^^^^^ constant.numeric.decimal

    12.345;
--  ^^^^^^ constant.numeric.decimal

    1e10;
--  ^^^^ constant.numeric.decimal

    0.5e+0;
--  ^^^^^^ constant.numeric.decimal

    9e-1;
--  ^^^^ constant.numeric.decimal

    0x0;
--  ^^^ constant.numeric.hexadecimal

    0XdeafBEEF42;
--  ^^^^^^^^^^^^ constant.numeric.hexadecimal

    0xa.bc;
--  ^^^^^^ constant.numeric.hexadecimal

    0x1p10;
--  ^^^^^^ constant.numeric.hexadecimal

    'foo';
--  ^^^^^ string.quoted.single
--  ^ punctuation.definition.string.begin
--      ^ punctuation.definition.string.end

--STRINGS

    'foo';
--  ^^^^^ string.quoted.single
--  ^ punctuation.definition.string.begin
--      ^ punctuation.definition.string.end

    '-- [[';
--  ^^^^^^^ string.quoted.single - comment

    "foo";
--  ^^^^^ string.quoted.double
--  ^ punctuation.definition.string.begin
--      ^ punctuation.definition.string.end

    "-- [[";
--  ^^^^^^^ string.quoted.double - comment

    '\a\b\f\n\r\t\v\\\'\"\[\]';
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single
--   ^^^^^^^^^^^^^^^^^^^^^^^^ constant.character.escape

    '\x1ff';
--   ^^^^ constant.character.escape.hexadecimal
--       ^ - constant

    '\0 \123 \1234';
--   ^^ constant.character.escape.decimal
--      ^^^^ constant.character.escape.decimal
--           ^^^^ constant.character.escape.decimal
--                ^ - constant

    '\u{0} \u{f00d}';
--   ^^^^^ constant.character.escape.unicode
--         ^^^^^^^^ constant.character.escape.unicode

    '\z  
--   ^^^^^ constant.character.escape - invalid
    ';

    '\z

-- <- constant.character.escape
    ';

    '\z  done';
--   ^^^^ constant.character.escape
--       ^^^^ - constant

    '\
--   ^^ constant.character.escape
    ';

    'foo\q';
--      ^^ invalid.illegal.invalid-escape

    '
--   ^ invalid.illegal.newline
    ';

    "foo\"\'";
--  ^^^^^^^^^ string.quoted.double
--  ^ punctuation.definition.string.begin
--      ^^^^ constant.character.escape
--          ^ punctuation.definition.string.end

    [[ Foo! ]];
--  ^^^^^^^^^^ string.quoted.multiline
--  ^^ punctuation.definition.string.begin
--          ^^ punctuation.definition.string.end

    [[ -- [[ ]];
--  ^^^^^^^^^^^ string.quoted.multiline - comment

    [[ Foo! \a \]];
--  ^^^^^^^^^^^^^^ string.quoted.multiline
--  ^^ punctuation.definition.string.begin
--          ^^^^ - constant
--              ^^ punctuation.definition.string.end

    [=[ Foo! ]] ]=];
--  ^^^^^^^^^^^^^^^ string.quoted.multiline
--  ^^^ punctuation.definition.string.begin
--           ^^ - punctuation
--              ^^^ punctuation.definition.string.end

    [=[
--  ^^^ string.quoted.multiline punctuation.definition.string.begin
        ]]
--      ^^^ string.quoted.multiline - punctuation
        ]==]
--      ^^^^ string.quoted.multiline - punctuation
    ]=];
--  ^^^ string.quoted.multiline punctuation.definition.string.end

--OPERATORS

    #'foo';
--  ^ keyword.operator.length

    -1;
--  ^ keyword.operator.arithmetic
--   ^ constant.numeric.decimal

    ~1;
--  ^ keyword.operator.bitwise
--   ^ constant.numeric.decimal

    not true;
--  ^^^ keyword.operator.logical
--      ^^^^ constant.language.boolean.true

    2 + 2 - 2 * 2 / 2 // 2 % 2 ^ 2;
--    ^ keyword.operator.arithmetic
--        ^ keyword.operator.arithmetic
--            ^ keyword.operator.arithmetic
--                ^ keyword.operator.arithmetic
--                    ^^ keyword.operator.arithmetic
--                         ^ keyword.operator.arithmetic
--                             ^ keyword.operator.arithmetic

    2 >> 2 << 2 & 2 | 2 ~ 2;
--    ^^ keyword.operator.bitwise
--         ^^ keyword.operator.bitwise
--              ^ keyword.operator.bitwise
--                  ^ keyword.operator.bitwise
--                      ^ keyword.operator.bitwise

    2 > 2; 2 < 2; 2 == 2; 2 >= 2; 2 <= 2; 2 ~= 2;
--    ^ keyword.operator.comparison
--           ^ keyword.operator.comparison
--                  ^^ keyword.operator.comparison
--                          ^^ keyword.operator.comparison
--                                  ^^ keyword.operator.comparison
--                                          ^^ keyword.operator.comparison

    true and false or nil;
--       ^^^ keyword.operator.logical
--                 ^^ keyword.operator.logical

    'foo' .. 'bar';
--        ^^ keyword.operator.concatenation

    x = 42;
--    ^ keyword.operator.assignment

--TABLES

    {};
--  ^^ meta.mapping
--  ^ punctuation.section.block.begin
--   ^ punctuation.section.block.end

    {a, b + c; c};
--  ^^^^^^^^^^^^^ meta.mapping
--  ^ punctuation.section.block.begin
--   ^ variable.other
--    ^ punctuation.separator.field
--      ^ variable.other
--          ^ variable.other
--           ^ punctuation.separator.field
--             ^ variable.other
--              ^ punctuation.section.block.end

    {[a] = x, b = y};
--   ^^^ meta.brackets
--   ^ punctuation.section.brackets.begin
--    ^ variable.other
--     ^ punctuation.section.brackets.end
--       ^ punctuation.separator.key-value
--         ^ variable.other
--          ^ punctuation.separator.field
--            ^ meta.key
--              ^ punctuation.separator.key-value
--                ^ meta.mapping variable.other

--PARENS

    (foo + bar);
--  ^^^^^^^^^^^ meta.group
--  ^ punctuation.section.group.begin
--            ^ punctuation.section.group.end

    foo.bar;
--     ^ punctuation.accessor
--      ^^^ meta.property

    foo:bar;
--     ^ punctuation.accessor
--      ^^^ meta.property

    foo.baz();
--     ^ punctuation.accessor
--      ^^^ meta.property variable.function

    foo.baz "";
--     ^ punctuation.accessor
--      ^^^ meta.property variable.function

    foo.baz '';
--     ^ punctuation.accessor
--      ^^^ meta.property variable.function

    foo.baz [=[ a string ]=];
--     ^ punctuation.accessor
--      ^^^ meta.property variable.function

    foo.baz {};
--     ^ punctuation.accessor
--      ^^^ meta.property variable.function
--          ^^ meta.function-call.arguments meta.mapping

    foo[bar + baz];
--     ^^^^^^^^^^^ meta.brackets
--     ^ punctuation.section.brackets.begin
--               ^ punctuation.section.brackets.end

--FUNCTION CALLS

    f(42);
--  ^ variable.function
--   ^ meta.function-call.arguments meta.group
--   ^ punctuation.section.group.begin
--      ^ punctuation.section.group.end

    f "argument";
--  ^ variable.function
--    ^^^^^^^^^^ meta.function-call.arguments string.quoted.double

    f
    'argument';
--  ^^^^^^^^^^ meta.function-call.arguments string.quoted.single

    f [[ foo ]];
--  ^ variable.function
--    ^^^^^^^^^ meta.function-call.arguments string.quoted.multiline

    f {};
--  ^ variable.function
--    ^^ meta.function-call.arguments meta.mapping

--FUNCTIONS

    function function_name( a, b, ... )
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
--  ^^^^^^^^ storage.type.function
--           ^^^^^^^^^^^^^ entity.name.function
--                        ^^^^^^^^^^^^^ meta.group
--                        ^ punctuation.section.group.begin
--                          ^ variable.parameter.function
--                           ^ punctuation.separator.comma
--                             ^ variable.parameter.function
--                              ^ punctuation.separator.comma
--                                ^^^ constant.language
--                                    ^ punctuation.section.group.end
    end
--  ^^^ meta.function meta.block keyword.control.end

    function foo.bar:baz (...) end
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
--           ^^^ variable.other - entity
--              ^ punctuation.accessor
--               ^^^ variable.other - entity
--                  ^ punctuation.accessor
--                   ^^^ entity.name.function
--                       ^^^^^ meta.group
--                             ^^^ keyword.control.end

    function foo
        .bar () end
--      ^^^^^^^^^^^ meta.function
--      ^ punctuation.accessor
--       ^^^ entity.name.function

    local function foo () end
--  ^^^^^ storage.modifier
--        ^^^^^^^^^^^^^^^^^^^ meta.function
--                 ^^^ entity.name.function

    ~function( a, b, ... ) end;
--   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
--   ^^^^^^^^ storage.type
--           ^^^^^^^^^^^^^ meta.group
--                         ^^^ keyword.control.end

    ~function foo () end;
--   ^^^^^^^^^^^^^^^^^^^ meta.function
--            ^^^ entity.name.function

    foo = function() end;
--  ^^^ entity.name.function

    foo.bar = function() end;
--      ^^^ entity.name.function

--STATEMENTS

    end;
--  ^^^ invalid.illegal.unexpected-end keyword.control.end

    do
--  ^^^ meta.block
--  ^^ keyword.control
        2 + 2
    end
-- ^^^^ meta.block
--  ^^^ keyword.control.end

    do 2 + 2 end
--  ^^^^^^^^^^^^ meta.block
--  ^^ keyword.control
--           ^^^ keyword.control.end

    if true then
--  ^^ keyword.control.conditional
--          ^^^^ keyword.control.conditional
        2 + 2
    elseif false then
--  ^^^^^^ keyword.control.conditional
--               ^^^^ keyword.control.conditional
    else
--  ^^^^ keyword.control.conditional
    end


    while true do
--  ^^^^^ keyword.control.loop
--             ^^ keyword.control
        2 + 2
    end
--  ^^^ keyword.control.end

    repeat
--  ^^^^^^ keyword.control.loop
        2 + 2;

        end;
--      ^^^ invalid.illegal.unexpected-end keyword.control.end
    until true;
--  ^^^^^ keyword.control.loop

    for x = 1, y, z do end
--  ^^^ keyword.control.loop
--      ^ variable.other
--        ^ keyword.operator.assignment
--           ^ punctuation.separator.comma
--             ^ variable.other
--              ^ punctuation.separator.comma
--                ^ variable.other
--                  ^^^^^^ meta.block
--                  ^^ keyword.control
--                     ^^^ keyword.control.end

    for x, y in a, b do end
--  ^^^ keyword.control.loop
--      ^ variable.other
--       ^ punctuation.separator.comma
--         ^ variable.other
--           ^^ keyword.control.loop
--              ^ variable.other
--               ^ punctuation.separator.comma
--                 ^ variable.other
--                   ^^^^^^ meta.block
--                   ^^ keyword.control
--                      ^^^ meta.block keyword.control.end


    :: foo ::;
--  ^^ punctuation.definition.label.begin
--     ^^^ entity.name.label
--         ^^ punctuation.definition.label.end

    goto foo;
--  ^^^^ keyword.control.goto
--       ^^^ variable.label

    break;
--  ^^^^^ keyword.control.break

    return;
--  ^^^^^^ keyword.control.return

    return foo;
--  ^^^^^^ keyword.control.return
--         ^^^ variable.other

    local x = 1, y = 2;
--  ^^^^^ storage.modifier
--        ^ variable.other
--          ^ keyword.operator.assignment
--            ^ constant.numeric.decimal
--             ^ punctuation.separator.comma
--               ^ variable.other
--                 ^ keyword.operator.assignment
--                   ^ constant.numeric.decimal
--                    ^ punctuation.terminator.statement
