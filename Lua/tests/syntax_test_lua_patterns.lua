-- SYNTAX TEST "Packages/Lua/Lua.sublime-syntax"

--------------------
-- Anchors and escapes
--------------------

(''):match('\'')
--          ^^ constant.character.escape.lua

(''):match(' \'')
--           ^^ constant.character.escape.lua

(''):match(" \"")
--           ^^ constant.character.escape.lua

(''):match('^foo ^bbar$ %f[test] %b() <test>$')
--          ^ keyword.control.anchor.lua
--               ^ - keyword.control.anchor.lua
--                    ^ - keyword.control.anchor.lua
--                      ^^ keyword.control.anchor.lua
--                        ^ punctuation.definition.set.begin.lua
--                             ^ punctuation.definition.set.end.lua
--                        ^^^^^^ meta.set.lua
--                               ^^^^ keyword.control.balanced.lua
--                                          ^ keyword.control.anchor.lua

(''):match[[^foo ^bbar$ %f[test] %b() <test>$]]
--          ^ keyword.control.anchor.lua
--               ^ - keyword.control.anchor.lua
--                    ^ - keyword.control.anchor.lua
--                      ^^ keyword.control.anchor.lua
--                        ^ punctuation.definition.set.begin.lua
--                             ^ punctuation.definition.set.end.lua
--                        ^^^^^^ meta.set.lua
--                               ^^^^ keyword.control.balanced.lua
--                                          ^ keyword.control.anchor.lua


(''):match('%^foo ^bbar$ <test>%$')
--           ^ - keyword.control.anchor.lua
--                              ^ - keyword.control.anchor.lua

(''):match[[%^foo ^bbar$ <test>%$]]
--          ^^ constant.character.escape.lua
--           ^ - keyword.control.anchor.lua
--                              ^ - keyword.control.anchor.lua
--                             ^^ constant.character.escape.lua

(''):match[[
^testing$]]
-- <- keyword.control.anchor.lua
--      ^ keyword.control.anchor.lua

(''):match('%1')
--          ^ keyword.other.backref-and-recursion
--           ^ variable.other.backref-and-recursion

(''):match('%W')
--          ^^ keyword.control.character-class

(''):match('%f[test]')
--          ^^ keyword.control.anchor

(''):match('% ')
--          ^^ constant.character.escape.lua

(''):match('%"')
--          ^^ constant.character.escape.lua

(''):match("%'")
--          ^^ constant.character.escape.lua

(''):match('%\x1b')
--          ^ constant.character.escape.lua
--           ^^^^ constant.character.escape.hexadecimal.lua

(''):match('%\1234')
--          ^ constant.character.escape.lua
--           ^^^^ constant.character.escape.decimal.lua
--               ^ - constant.character.escape.decimal.lua

(''):match('%\r %\n')
--          ^^^ constant.character.escape.lua
--              ^^^ constant.character.escape.lua

(''):match("%\u{2d}")
--          ^ constant.character.escape.lua
--           ^^^^^^ constant.character.escape.unicode.lua

-- note: this pattern only repeats the first byte of the UTF-8 character.
(''):match("%\u{2013}")
--          ^ constant.character.escape.lua
--           ^^^^^^^^ constant.character.escape.unicode.lua

-- invalid patterns that we allow because of highlighting concerns

(''):match('%')
--          ^ constant.character.escape.lua
--           ^ punctuation.definition.string.end.lua

(''):match("%")
--          ^ constant.character.escape.lua
--           ^ punctuation.definition.string.end.lua

(''):match[[%]]
--          ^ constant.character.escape.lua
--           ^^ punctuation.definition.string.end.lua


--------------------
-- Quantifiers
--------------------

(''):match('\x00**++--??')
--          ^^^^ constant.character.escape
--              ^ keyword.operator.quantifier.lua
--               ^ - keyword.operator.quantifier.lua
--                ^ keyword.operator.quantifier.lua
--                 ^ - keyword.operator.quantifier.lua
--                  ^ keyword.operator.quantifier.lua
--                   ^ - keyword.operator.quantifier.lua
--                    ^ keyword.operator.quantifier.lua
--                     ^ - keyword.operator.quantifier.lua

(''):match('(ab)+')
--              ^ - keyword.operator.quantifier.lua

(''):match('?(?abc)')
--          ^ - keyword.operator.quantifier.lua
--            ^ - keyword.operator.quantifier.lua

(''):match('hello**')
--               ^ keyword.operator.quantifier.lua
--                ^ - keyword.operator.quantifier.lua

(''):match(')')
--          ^ - punctuation.section.group.end.lua

--------------------
-- Sets
--------------------

(''):match(' [b-c]')
--           ^^^^^ meta.set.lua
--           ^ punctuation.definition.set.begin.lua
--               ^ punctuation.definition.set.end.lua
--            ^^^ constant.other.range.lua
--             ^ punctuation.separator.sequence.lua

(''):match('[\x00-\123]')
--          ^ meta.set.lua punctuation.definition.set.begin.lua
--          ^^^^^^^^^^^ meta.set.lua
--           ^^^^^^^^^ constant.other.range
--           ^^^^ constant.character.escape
--               ^ punctuation.separator.sequence - constant.character
--                ^^^^ constant.character.escape
--                    ^ punctuation.definition.set.end.lua

(''):match('[^][]')
--           ^ keyword.operator.logical.lua
--            ^ - punctuation.definition.set.end.lua
--             ^ - punctuation.definition.set.begin.lua

(''):match('[^abc%w\w0-9]')
--           ^^^^^^^^^^^^ meta.set.lua
--          ^ punctuation.definition.set.begin.lua
--           ^ keyword.operator.logical.lua
--               ^^ keyword.control.character-class.lua
--                 ^^ invalid.illegal.invalid-escape.lua
--                   ^^^ constant.other.range.lua
--                    ^ punctuation.separator.sequence.lua
--                      ^ punctuation.definition.set.end.lua

(''):match('[a-c-x]')
--           ^^^ constant.other.range
--              ^^ - constant.other.range

(''):match('[]-]')
--          ^ punctuation.definition.set.begin.lua
--           ^ - punctuation
--            ^ - constant.other.range
--             ^ punctuation.definition.set.end.lua

(''):match('[-a-n]')
--          ^ punctuation.definition.set.begin.lua
--           ^ - constant.other.range
--            ^^^ constant.other.range
--               ^ punctuation.definition.set.end.lua

(''):match('[%-a]')
--          ^ punctuation.definition.set.begin.lua
--           ^^^ - constant.other.range
--              ^ punctuation.definition.set.end.lua

(''):match('[a-z%-9]')
--              ^^^ - constant.other.range
--                 ^ punctuation.definition.set.end.lua

(''):match('[%--z]')
--            ^^ - comment
--           ^^ constant.character.escape.lua

(''):match('[a-%z]')
--          ^ punctuation.definition.set.begin.lua
--           ^^^ constant.other.range
--              ^ - constant.other.range
--               ^ punctuation.definition.set.end.lua

(''):match('[a-%-]')
--          ^ punctuation.definition.set.begin.lua
--           ^^^ constant.other.range
--              ^ - constant.other.range
--               ^ punctuation.definition.set.end.lua

------------------
-- Other various tests
------------------
(''):match[[[]]
--          ^ punctuation.definition.set.begin.lua
--           ^^ punctuation.definition.string.end.lua
