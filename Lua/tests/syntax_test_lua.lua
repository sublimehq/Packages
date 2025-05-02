-- SYNTAX TEST "Packages/Lua/Lua.sublime-syntax"

--COMMENTS

    -- Foo!
-- ^ - comment
--  ^^^^^^^^ comment.line
--  ^^ punctuation.definition.comment


    --[[ Foo! ]]
-- ^ - comment
--  ^^^^^^^^^^^^ comment.block
--  ^^^^ punctuation.definition.comment.begin
--            ^^ punctuation.definition.comment.end
--              ^ - comment

    --[=[ Foo! ]] ]=]
-- ^ - comment
--  ^^^^^^^^^^^^^^^^^ comment.block
--  ^^^^^ punctuation.definition.comment.begin
--             ^^ - punctuation
--                ^^^ punctuation.definition.comment.end
--                   ^ - comment

    --[=[
-- ^ - comment
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
--     ^ - comment

---@param name_of_parameter Type @EmmyLua style doc comment
-- <- comment.line.documentation.lua punctuation.definition.comment.lua
 -- <- comment.line.documentation.lua punctuation.definition.comment.lua
--^ comment.line.documentation.lua punctuation.definition.comment.lua
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.documentation.lua
-- ^^^^^^ entity.name.tag.documentation.lua
--        ^^^^^^^^^^^^^^^^^ variable.parameter.lua

---@return Type|Othertype @the description of the return value
-- ^^^^^^^ comment.line.documentation.lua entity.name.tag.documentation.lua

---@unknowntagname
-- ^^^^^^^^^^^^^^^ comment.line.documentation.lua entity.name.tag.documentation.custom.lua

--- LDoc style doc comment.
-- <- comment.line.documentation.lua punctuation.definition.comment.lua
--^ comment.line.documentation.lua punctuation.definition.comment.lua
-- ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.documentation.lua
-- Description; this can extend over
-- several lines
-- ^^^^^^^^^^^^^^ comment.line.documentation.lua
-- NOTE: The following comments with @tags start with a triple-dash to prevent being recognized as symbol tests by ST.
--       The triple-dash is not required for consecutive doc comment lines by LDoc.
--- @section section name
--^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.documentation.lua
--  ^^^^^^^^ entity.name.tag.documentation.lua
--           ^^^^^^^^^^^^ entity.name.section.lua
--- @param name_of_parameter the description of this parameter as verbose text
--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.documentation.lua
--  ^^^^^^ entity.name.tag.documentation.lua
--         ^^^^^^^^^^^^^^^^^ variable.parameter.lua
--- @param[opt] name_of_parameter the description of this parameter as verbose text
--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.documentation.lua
--  ^^^^^^ entity.name.tag.documentation.lua
--              ^^^^^^^^^^^^^^^^^ variable.parameter.lua
--- @param[type=number] name_of_parameter the description of this parameter as verbose text
--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.documentation.lua
--  ^^^^^^ entity.name.tag.documentation.lua
--                      ^^^^^^^^^^^^^^^^^ variable.parameter.lua
--- @return the description of the return value
--  ^^^^^^^ entity.name.tag.documentation.lua
--- @unknowntagname
--  ^^^^^^^^^^^^^^^ entity.name.tag.documentation.custom.lua
-- text @return text
--      ^^^^^^^ - entity

-- no more doc comment after empty line
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - comment.line.documentation

--- Another doc comment
    --[=[ block comments after should work with an equals
--  ^^^^^ comment.block punctuation.definition.comment.begin
    commented
--  ^^^^^^^^^ comment.block
    ]=]
--  ^^^ comment.block punctuation.definition.comment.end

-----------------
--^^^^^^^^^^^^^^^ comment.line.documentation.lua punctuation.definition.comment.lua
-- This will also do.
-- ^^^^^^^^^^^^^^^^^^^ comment.line.documentation.lua

    --- LDoc style doc comment with indentation.
    -- Description
--^^ - comment
--  ^^^^^^^^^^^^^^^ comment.line.documentation.lua
--  ^^ punctuation.definition.comment.lua
    --- @param name_of_parameter the description of this parameter as verbose text
--^^ - comment
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.documentation.lua
--  ^^^ punctuation.definition.comment.lua
--      ^^^^^^ entity.name.tag.documentation.lua
--             ^^^^^^^^^^^^^^^^^ variable.parameter.lua

    --[[--
--  ^^^^^^ comment.block.documentation.lua punctuation.definition.comment.begin.lua
        Summary. A description
        @section section name
--      ^^^^^^^^ entity.name.tag.documentation.lua
--               ^^^^^^^^^^^^ entity.name.section.lua
        @param name_of_parameter the description of this parameter as verbose text
--      ^^^^^^ entity.name.tag.documentation.lua
--             ^^^^^^^^^^^^^^^^^ variable.parameter.lua
        @return the description of the return value
--      ^^^^^^^ entity.name.tag.documentation.lua
        @unknowntagname
--      ^^^^^^^^^^^^^^^ entity.name.tag.documentation.custom.lua
    ]]
--  ^^ comment.block.documentation.lua punctuation.definition.comment.end.lua

    --[[--
--  ^^^^^^ comment.block.documentation.lua punctuation.definition.comment.begin.lua
        @section section name ]
--               ^^^^^^^^^^^^^^ entity.name.section.lua
        @section section name ]]
--               ^^^^^^^^^^^^ entity.name.section.lua
--                            ^^ punctuation.definition.comment.end.lua - entity.name.section
--                              ^ - comment

    ---
    -- line doc comment followed by block comment
    --[[
--  ^^^^ comment.block.lua punctuation.definition.comment.begin.lua - comment.line
    ]]

--
-- Merge Conflict Marker Tests
--

<<<<<<< HEAD
-- <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
--^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
--     ^ meta.block.conflict.begin.diff - entity - punctuation
--      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
--          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
-- <- meta.block.conflict.separator.diff punctuation.section.block.diff
--^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
--     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
-- <- meta.block.conflict.end.diff punctuation.section.block.end.diff
--^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
--     ^ meta.block.conflict.end.diff - entity - punctuation
--      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
--            ^ meta.block.conflict.end.diff - entity - punctuation

--VARIABLES

    foo;
--  ^^^ variable.other

    true_ish;
--  ^^^^^^^^ variable.other - constant

--CONSTANTS

    true;
--  ^^^^ constant.language.boolean.true

    false;
--  ^^^^^ constant.language.boolean.false

    nil;
--  ^^^ constant.language.null

    ...;
--  ^^^ constant.language

    self;
--  ^^^^ variable.language.this

--NUMBERS

    0;
--  ^ meta.number.integer.decimal constant.numeric.value

    1234567890;
--  ^^^^^^^^^^ meta.number.integer.decimal constant.numeric.value

    12.345;
--  ^^^^^^ meta.number.float.decimal constant.numeric.value
--    ^ punctuation.separator.decimal

    1.;
--  ^^ meta.number.float.decimal constant.numeric.value
--   ^ punctuation.separator.decimal

    .2;
--  ^^ meta.number.float.decimal constant.numeric.value
--  ^ punctuation.separator.decimal

    1e10;
--  ^^^^ meta.number.float.decimal constant.numeric.value

    0.5e+0;
--  ^^^^^^ meta.number.float.decimal constant.numeric.value
--   ^ punctuation.separator.decimal

    9e-1;
--  ^^^^ meta.number.float.decimal constant.numeric.value

    0x0;
--  ^^^ meta.number.integer.hexadecimal constant.numeric
--  ^^ constant.numeric.base
--    ^ constant.numeric.value

    0XdeafBEEF42;
--  ^^^^^^^^^^^^ meta.number.integer.hexadecimal constant.numeric
--  ^^ constant.numeric.base
--    ^^^^^^^^^^ constant.numeric.value

    0xa.bc + 0xa. + 0x.b;
--  ^^^^^^ meta.number.float.hexadecimal constant.numeric
--  ^^ constant.numeric.base
--    ^^^^ constant.numeric.value
--     ^ punctuation.separator.decimal
--           ^^^^ meta.number.float.hexadecimal constant.numeric
--           ^^ constant.numeric.base
--             ^^ constant.numeric.value
--              ^ punctuation.separator.decimal
--                  ^^^^ meta.number.float.hexadecimal constant.numeric
--                  ^^ constant.numeric.base
--                    ^^ constant.numeric.value
--                    ^ punctuation.separator.decimal

    0x1p10 + 0x1.p10 + 0x.1p10;
--  ^^^^^^ meta.number.float.hexadecimal constant.numeric
--  ^^ constant.numeric.base
--    ^^^^ constant.numeric.value
--           ^^^^^^^ meta.number.float.hexadecimal constant.numeric
--           ^^ constant.numeric.base
--             ^^^^^ constant.numeric.value
--              ^ punctuation.separator.decimal
--                     ^^^^^^^ meta.number.float.hexadecimal constant.numeric
--                     ^^ constant.numeric.base
--                       ^^^^^ constant.numeric.value
--                       ^ punctuation.separator.decimal

    'foo';
--  ^^^^^ meta.string string.quoted.single
--  ^ punctuation.definition.string.begin
--      ^ punctuation.definition.string.end

--STRINGS

    'foo';
--  ^^^^^ meta.string string.quoted.single
--  ^ punctuation.definition.string.begin
--      ^ punctuation.definition.string.end

    '-- [[';
--  ^^^^^^^ meta.string string.quoted.single - comment

    "foo";
--  ^^^^^ meta.string string.quoted.double
--  ^ punctuation.definition.string.begin
--      ^ punctuation.definition.string.end

    "-- [[";
--  ^^^^^^^ meta.string string.quoted.double - comment

    '\a\b\f\n\r\t\v\\\'\"\[\]';
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string string.quoted.single
--   ^^^^^^^^^^^^^^^^^^^^^^^^ constant.character.escape

    '\x1ff';
--   ^^^^ meta.string constant.character.escape.hexadecimal
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

-- <- - invalid

    'foo\q';
--      ^^ invalid.illegal.invalid-escape

    '
--   ^ invalid.illegal.unclosed-string

    "foo\"\'";
--  ^^^^^^^^^ meta.string string.quoted.double
--  ^ punctuation.definition.string.begin
--      ^^^^ constant.character.escape
--          ^ punctuation.definition.string.end

    [[ Foo! ]];
--  ^^^^^^^^^^ meta.string string.quoted.multiline
--  ^^ punctuation.definition.string.begin
--          ^^ punctuation.definition.string.end

    [[ -- [[ ]];
--  ^^^^^^^^^^^ meta.string string.quoted.multiline - comment

    [[ Foo! \a \]];
--  ^^^^^^^^^^^^^^ meta.string string.quoted.multiline
--  ^^ punctuation.definition.string.begin
--          ^^^^ - constant
--              ^^ punctuation.definition.string.end

    [=[ Foo! ]] ]=];
--  ^^^^^^^^^^^^^^^ meta.string string.quoted.multiline
--  ^^^ punctuation.definition.string.begin
--           ^^ - punctuation
--              ^^^ punctuation.definition.string.end

    [=[
--  ^^^ meta.string string.quoted.multiline punctuation.definition.string.begin
        ]]
--      ^^^ meta.string string.quoted.multiline - punctuation
        ]==]
--      ^^^^ meta.string string.quoted.multiline - punctuation
    ]=];
--  ^^^ meta.string string.quoted.multiline punctuation.definition.string.end

--OPERATORS

    #'foo';
--  ^ keyword.operator.length

    -1;
--  ^ keyword.operator.arithmetic
--   ^ meta.number.integer.decimal constant.numeric.value

    ~1;
--  ^ keyword.operator.bitwise
--   ^ meta.number.integer.decimal constant.numeric.value

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
--  ^^^^^^^^^^^^^^^^ meta.mapping - meta.mapping meta.mapping
--   ^^^ meta.mapping.key meta.brackets
--   ^ punctuation.section.brackets.begin
--    ^ variable.other
--     ^ punctuation.section.brackets.end
--       ^ punctuation.separator.key-value
--         ^ meta.mapping.value variable.other
--          ^ meta.mapping.lua punctuation.separator.field
--            ^ meta.mapping.key string.unquoted.key
--              ^ punctuation.separator.key-value
--                ^ meta.mapping variable.other

    {[[actually a string]], [=[this too]=]}
--   ^^ meta.mapping.lua meta.string string.quoted.multiline.lua punctuation.definition.string.begin.lua
--                          ^^^ meta.mapping.lua string.quoted.multiline.lua punctuation.definition.string.begin.lua

    {some = 2}, {some == 2}
--   ^^^^ meta.mapping.key string.unquoted.key.lua
--        ^ punctuation.separator.key-value.lua
--          ^ meta.mapping.value meta.number.integer.decimal constant.numeric.value
--               ^^^^ variable.other.lua - meta.mapping.key
--                    ^^ keyword.operator.comparison

    {__index = function(i) end,
--   ^^^^^^^ meta.mapping.key entity.name.function support.function.metamethod.lua
     method = function ()
--   ^^^^^^ meta.mapping.key.lua entity.name.function.lua - support
     end,
     __call = some_func,
--   ^^^^^^ meta.mapping.key.lua entity.name.function.lua support.function.metamethod.lua
     not_method = some_var,
--   ^^^^^^^^^^ meta.mapping.key.lua string.unquoted.key.lua - entity - support
     __metatable = nil,
--   ^^^^^^^^^^^ meta.mapping.key.lua string.unquoted.key.lua support.other.metaproperty.lua
 }

--PARENS

    (foo + bar);
--  ^^^^^^^^^^^ meta.group
--  ^ punctuation.section.group.begin
--            ^ punctuation.section.group.end

    foo.bar;
--     ^ punctuation.accessor
--      ^^^ meta.property

    foo.__mode = "kv";
--      ^^^^^^ meta.property.lua support.other.metaproperty.lua

    foo:bar;
--     ^ punctuation.accessor
--      ^^^ meta.property

    foo.baz();
--     ^ punctuation.accessor
--      ^^^ meta.property meta.function-call variable.function

    foo.baz "";
--     ^ punctuation.accessor
--      ^^^ meta.property meta.function-call variable.function

    foo.baz '';
--     ^ punctuation.accessor
--      ^^^ meta.property meta.function-call variable.function

    foo.baz [=[ a string ]=];
--     ^ punctuation.accessor
--      ^^^ meta.property meta.function-call variable.function

    foo.baz {};
--     ^ punctuation.accessor
--      ^^^ meta.property meta.function-call variable.function
--          ^^ meta.function-call.arguments meta.mapping

    foo[bar + baz];
--     ^^^^^^^^^^^ meta.brackets
--     ^ punctuation.section.brackets.begin
--               ^ punctuation.section.brackets.end

    (not nil)
--   ^^^ keyword.operator.logical.lua
--       ^^^ constant.language.null.lua

    (function () return; end)
--   ^^^^^^^^^^^^^^^^^^^^^^^ - illegal

    (return)
--   ^^^^^^ meta.group.lua invalid.unexpected-keyword.lua

    foo[return] foo[false]
--      ^^^^^^ invalid.unexpected-keyword.lua
--            ^ - meta.brackets
--                  ^^^^^ constant.language.boolean.false

    some.return
--       ^^^^^^ invalid.unexpected-keyword.lua

--FUNCTION CALLS

    f(42);
--  ^ meta.function-call variable.function
--   ^ meta.function-call.arguments meta.group
--   ^ punctuation.section.group.begin
--      ^ punctuation.section.group.end

    f "argument";
--  ^ meta.function-call variable.function
--    ^^^^^^^^^^ meta.function-call.arguments meta.string string.quoted.double

    f
    'argument';
--  ^^^^^^^^^^ meta.function-call.arguments meta.string string.quoted.single

    f [[ foo ]];
--  ^ meta.function-call variable.function
--    ^^^^^^^^^ meta.function-call.arguments meta.string string.quoted.multiline

    f {};
--  ^ meta.function-call variable.function
--    ^^ meta.function-call.arguments meta.mapping

    f( 'unclosed)
    return x
--  ^^^^^^ meta.function-call.arguments.lua meta.group.lua invalid.unexpected-keyword.lua
--         ^ - meta.function-call

    print('argument')
--  ^ meta.function-call.lua support.function.builtin.lua

--FUNCTIONS

    function function_name( a, b, ... )
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
--  ^^^^^^^^ keyword.declaration.function
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
--               ^^^ meta.property - entity
--                  ^ punctuation.accessor
--                   ^^^ meta.property entity.name.function
--                       ^^^^^ meta.group
--                             ^^^ keyword.control.end

    function foo.bar:__index (...) end
--                   ^^^^^^^ meta.name.function meta.property.lua entity.name.function.lua support.function.metamethod.lua

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
--   ^^^^^^^^ keyword.declaration.function.lua
--           ^^^^^^^^^^^^^ meta.group
--                         ^^^ keyword.control.end

    ~function foo () end;
--   ^^^^^^^^^^^^^^^^^^^ meta.function
--            ^^^ entity.name.function

    foo = function() end;
--  ^^^ entity.name.function

    foo.bar = function() end;
--      ^^^ meta.property entity.name.function

    foo.__call = function() end;
--      ^^^^^^ meta.property.lua entity.name.function.lua support.function.metamethod.lua

    function (return) end;
--            ^^^^^^ invalid.unexpected-keyword.lua

--STATEMENTS

    end;
--  ^^^ invalid.illegal.unexpected-end

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

    if true end
--  ^^^^^^^^^^^ - meta.block
--          ^^^ invalid.illegal.unexpected-end


    if a ! = b then end
--       ^ invalid.illegal.unexpected-character.lua
--             ^^^^ keyword.control.conditional
--                  ^^^ keyword.control.end

    while true do
--  ^^^^^ keyword.control.loop
--             ^^ keyword.control
        2 + 2
    end
--  ^^^ keyword.control.end

    while true end
--  ^^^^^^^^^^^^^^ - meta.block
--             ^^^ invalid.illegal.unexpected-end

    repeat
--  ^^^^^^ keyword.control.loop
        2 + 2;

        end;
--      ^^^ invalid.illegal.unexpected-end
    until true;
--  ^^^^^ keyword.control.loop
--        ^^^^ constant.language.boolean.true

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
--                      ^^^ keyword.control.end

    for x in a end
--  ^^^^^^^^^^^^^^ - meta.block
--             ^^^ invalid.illegal.unexpected-end


    :: foo ::;
--  ^^ punctuation.definition.label.begin
--     ^^^ entity.name.label
--         ^^ punctuation.definition.label.end

    local x = 1
    ::foo::
--  ^^ punctuation.definition.label.begin

    goto foo;
--  ^^^^ keyword.control.goto
--       ^^^ variable.label

    break;
--  ^^^^^ keyword.control.break

    return;
--  ^^^^^^ keyword.control.return

    return foo or a < b and a <= b;
--  ^^^^^^ keyword.control.return
--         ^^^ variable.other
--             ^^ keyword.operator.logical.lua
--                  ^ keyword.operator.comparison.lua
--                      ^^^ keyword.operator.logical.lua
--                            ^^ keyword.operator.comparison.lua

    return a << b;
--           ^^ keyword.operator.bitwise.lua

    local x = 1, y = 2;
--  ^^^^^ storage.modifier
--        ^ variable.other
--          ^ keyword.operator.assignment
--            ^ meta.number.integer.decimal constant.numeric.value
--             ^ punctuation.separator.comma
--               ^ variable.other
--                 ^ keyword.operator.assignment
--                   ^ meta.number.integer.decimal constant.numeric.value
--                    ^ punctuation.terminator.statement

    a, b = c, d
--  ^ variable.other
--   ^ punctuation.separator.comma
--     ^ variable.other
--       ^ keyword.operator.assignment
--         ^ variable.other
--          ^ punctuation.separator.comma
--            ^ variable.other

    local x <const>, y <  const  > = 1, 2;
--  ^^^^^ storage.modifier.lua
--        ^ variable.other.lua
--          ^^^^^^^ meta.modifier.lua
--          ^ punctuation.definition.modifier.begin.lua
--                ^ punctuation.definition.modifier.end.lua
--           ^^^^^ storage.modifier.lua
--                                 ^ keyword.operator.assignment.lua
--                                   ^ meta.number.integer.decimal.lua constant.numeric.value.lua
--                 ^ punctuation.separator.comma.lua
--                   ^ variable.other.lua
--                     ^^^^^^^^^^^ meta.modifier.lua
--                     ^ punctuation.definition.modifier.begin.lua
--                        ^^^^^ storage.modifier.lua
--                               ^ punctuation.definition.modifier.end.lua
--                                 ^ keyword.operator.assignment.lua
--                                      ^ meta.number.integer.decimal.lua constant.numeric.value.lua

    local t = a >= b and b <= a
--  ^^^^^ storage.modifier.lua
--          ^ keyword.operator.assignment.lua
--              ^^ keyword.operator.comparison.lua
--                   ^^^ keyword.operator.logical.lua
--                         ^^ keyword.operator.comparison.lua

    local text <const = "Hello, World";
--  ^^^^^ storage.modifier.lua
--        ^^^^ variable.other.lua
--              ^^^^^ - storage.modifier.lua
--                    ^ keyword.operator.assignment.lua - meta.modifier
--                      ^ punctuation.definition.string.begin.lua - meta.modifier
--                       ^^^^^^^^^^^^ meta.string.lua string.quoted.double.lua
--                                   ^ punctuation.definition.string.end.lua
--                                    ^ punctuation.terminator.statement.lua

    local f <close> = io.open("/etc/fstab", "r")
--  ^^^^^ storage.modifier.lua
--        ^ variable.other.lua
--          ^^^^^^^ meta.modifier.lua
--          ^ punctuation.definition.modifier.begin.lua
--           ^^^^^ storage.modifier.lua
--                ^ punctuation.definition.modifier.end.lua
--                  ^ keyword.operator.assignment.lua
--                    ^^ support.constant.builtin.lua
--                      ^ punctuation.accessor.lua
--                       ^^^^ meta.property.lua support.function.builtin.lua
--                           ^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.lua meta.group.lua
--                           ^ punctuation.section.group.begin.lua
--                            ^^^^^^^^^^^^ meta.string string.quoted.double.lua
--                                        ^ punctuation.separator.comma.lua
--                                             ^ punctuation.section.group.end.lua
