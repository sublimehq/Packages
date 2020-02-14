-- SYNTAX TEST "Packages/Haskell/Haskell.sublime-syntax"

23*36  -- single line comment
--     ^^ punctuation.definition.comment.haskell
--     ^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.haskell
23*36
-- <- - comment.line.double-dash.haskell

   {- block comment -} 23*36
-- ^^ punctuation.definition.comment.begin.haskell
-- ^^^^^^^^^^^^^^^^^^^ comment.block.haskell
--                  ^^ punctuation.definition.comment.end.haskell
--                    ^ - comment.block.haskell

   {- {-# #-} -} 23*36
-- ^^ punctuation.definition.comment.begin.haskell
-- ^^^^^^^^^^^^^ comment.block.haskell - meta.preprocessor.haskell
--            ^^ punctuation.definition.comment.end.haskell
--              ^ - comment.block.haskell

   {- {- #-} -} 23*36
-- ^^ punctuation.definition.comment.begin.haskell
-- ^^^^^^^^^^^^ comment.block.haskell
--           ^^ punctuation.definition.comment.end.haskell
--             ^ - comment.block.haskell

   {- {- -} -} 23*36
-- ^^ punctuation.definition.comment.begin.haskell
-- ^^^^^^^^^^^ comment.block.haskell
--          ^^ punctuation.definition.comment.end.haskell
--            ^ - comment.block.haskell

   {- {-# -} -} 23*36
-- ^^ punctuation.definition.comment.begin.haskell
-- ^^^^^^^^^^^^ comment.block.haskell - meta.preprocessor.haskell
--           ^^ punctuation.definition.comment.end.haskell
--             ^ - comment.block.haskell

   {- {-# {- test -} -} -} 23*36
-- ^^ punctuation.definition.comment.begin.haskell
-- ^^^^^^^^^^^^^^^^^^^^^^^ comment.block.haskell - meta.preprocessor.haskell
--                      ^^ punctuation.definition.comment.end.haskell
--                        ^ - comment.block.haskell

--DECLARATIONS

   module Name where
-- ^^^^^^^^^^^^^^^^^ meta.declaration.module.haskell
-- ^^^^^^ keyword.declaration.namespace.haskell
--        ^^^^ entity.name.namespace.haskell
--             ^^^^^ keyword.control.context.haskell

   class (Functor t, Foldable t) => Traversable t where
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.haskell
-- ^^^^^ keyword.declaration.class.haskell
--                                                ^^^^^ keyword.control.context.haskell
   {-# MINIMAL traverse | sequenceA LANGUAGE #-}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell
--                                              ^ - meta.preprocessor.haskell
--                                   ^^^^^^^ keyword.other.preprocessor.haskell

-- | Map each element of a structure to an action,
-- evaluate these actions from left to right, and
-- collect the results. For a version that ignores
-- the results see 'Data.Foldable.traverse_'.
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.haskell

   traverse :: Applicative f =>
-- ^^^^^^^^ entity.name.function.haskell
--          ^^ keyword.other.double-colon.haskell
--             ^^^^^^^^^^^ storage.type.haskell
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
--                           ^^ keyword.other.big-arrow.haskell
    (a -> f b)
-- ^^^^^^^^^^^^ meta.function.type-declaration.haskell
--     ^^ keyword.other.arrow.haskell
    -> t a
-- ^^^^^^^^ meta.function.type-declaration.haskell
--  ^^ keyword.other.arrow.haskell
    -> f (t b)
-- ^^^^^^^^^^^^ meta.function.type-declaration.haskell
--  ^^ keyword.other.arrow.haskell
   traverse f = sequenceA . fmap f
--            ^ keyword.operator.haskell
--                        ^ keyword.operator.haskell

-- | Evaluate each action in the structure from
-- left to right, and collect the results.
-- For a version that ignores the results see
-- 'Data.Foldable.sequenceA_'.
   sequenceA ∷ Applicative f ⇒ t (f a) → f (t a)
-- ^^^^^^^^^ entity.name.function.haskell
--           ^ keyword.other.double-colon.haskell
--             ^^^^^^^^^^^ storage.type.haskell
--                           ^ keyword.other.big-arrow.haskell
--                                     ^ keyword.other.arrow.haskell
   sequenceA = traverse id
--           ^ keyword.operator.haskell

--
-- infix operators
--
   a a = (+) a 2
--     ^ keyword.operator.haskell
--       ^^^ variable.function.infix.haskell
--        ^ keyword.operator.haskell
--             ^ constant.numeric.integer.decimal.haskell
   a a = (-) a 2
--     ^ keyword.operator.haskell
--       ^^^ variable.function.infix.haskell
--             ^ constant.numeric.integer.decimal.haskell
   a a = (*) a 2
--     ^ keyword.operator.haskell
--       ^^^ variable.function.infix.haskell
--             ^ constant.numeric.integer.decimal.haskell
   a a = (/) a 2
--     ^ keyword.operator.haskell
--       ^^^ variable.function.infix.haskell
--             ^ constant.numeric.integer.decimal.haskell


   a `member` x
--   ^^^^^^^^ keyword.operator.function.infix.haskell
--   ^ punctuation.definition.function.begin.haskell
--          ^ punctuation.definition.function.end.haskell
   a `P.atan2` x
--   ^^^^^^^^^ keyword.operator.function.infix.haskell
--   ^ punctuation.definition.function.begin.haskell
--           ^ punctuation.definition.function.end.haskell

-- Tests for #1320, #1880.

   class TooMany a where
     tooMany :: a -> Bool
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
     tooManyToo ::
-- ^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
       a -> Bool
-- ^^^^^^^^^^^^^ meta.function.type-declaration.haskell

   instance TooMany Int where
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell
-- ^^^^^^^^ keyword.declaration..haskell
--                      ^^^^^ keyword.control.context.haskell
     tooMany n = n > 42

   foldBoolGuard :: a -> a -> Bool -> a
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
   foldBoolGuard x y z
-- ^^^^^^^^^^^^^^^^^^^ source.haskell
     | z         = y
--   ^ keyword.operator.haskell
     | otherwise = x

   countTheBeforeVowel :: String
   -- This comment should not interrupt the type signature.

   -- The blank line above should not interrupt the type signature.

   {-
      This multiline comment should
      not interrupt the type signature.
   -}

     -> Integer
-- ^^^^^^^^^^^^ meta.function.type-declaration.haskell
   countTheBeforeVowel = undefined


--KEYWORDS

import qualified Data.Vector.Mutable as MutableVector
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell
-- ^^^ keyword.control.import.haskell
--     ^^^^^^^^^ keyword.control.import.haskell
--               ^^^^^^^^^^^^^^^^^^^ support.other.module.haskell
--                                   ^^ keyword.control.import.haskell
--                                      ^^^^^^^^^^^^^ support.other.module.haskell
import Data.List.Split (splitOn)
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell
-- ^^^ keyword.control.import.haskell
--     ^^^^^^^^^^^^^^^ support.other.module.haskell
--                     ^^^^^^^^^ meta.declaration.exports.haskell
--                     ^ punctuation.section.group.begin.haskell
--                      ^^^^^^^ variable.function.haskell
--                             ^ punctuation.section.group.end.haskell

test =
--   ^ keyword.operator.haskell
    let x = 2 in x * y
--  ^^^ keyword.declaration.variable.haskell
--            ^^ keyword.control.context.haskell
    where
--  ^^^^^ keyword.declaration.variable.haskell
        y = 1
--        ^ keyword.operator.haskell

test a = case a of
--       ^^^^ keyword.control.conditional.select.haskell
--              ^^ keyword.control.conditional.select.haskell
    Nothing -> 0
    Just n -> if n > 0
--            ^^ keyword.control.conditional.if.haskell
        then n
--      ^^^^ keyword.control.conditional.then.haskell
        else 0
--      ^^^^ keyword.control.conditional.else.haskell

main = do
--     ^^ keyword.control.context.haskell
    return ()
--  ^^^^^^ keyword.control.flow.return.haskell

--MISC

    (group)
--  ^^^^^^^ meta.group.haskell
--  ^ punctuation.section.group.begin.haskell
--        ^ punctuation.section.group.end.haskell

    [1,2]
--  ^^^^^ meta.sequence.haskell
--  ^ punctuation.section.sequence.begin.haskell
--   ^ constant.numeric.integer.decimal.haskell
--    ^ punctuation.separator.sequence.haskell
--     ^ constant.numeric.integer.decimal.haskell
--      ^ punctuation.section.sequence.end.haskell


--NUMBERS

    0
--  ^ constant.numeric.integer.decimal

    1234567890
--  ^^^^^^^^^^ constant.numeric.integer.decimal

    0o1234567
--  ^^^^^^^^^ constant.numeric.integer.octal
--  ^^ punctuation.definition.numeric.base.haskell

    1.
--  ^ constant.numeric.integer.decimal
--   ^ keyword.operator.haskell

    .2
--  ^ keyword.operator.haskell
--   ^ constant.numeric.integer.decimal

    12.345
--  ^^^^^^ constant.numeric.float.decimal
--    ^ punctuation.separator.decimal

    1e10
--  ^^^^ constant.numeric.float.decimal

    0.5e+0
--  ^^^^^^ constant.numeric.float.decimal
--   ^ punctuation.separator.decimal

    9e-1
--  ^^^^ constant.numeric.float.decimal

    0x0
--  ^^^ constant.numeric.integer.hexadecimal
--  ^^ punctuation.definition.numeric.base

    0XdeafBEEF42
--  ^^^^^^^^^^^^ constant.numeric.integer.hexadecimal
--  ^^ punctuation.definition.numeric.base

--STRINGS


   'ab'
-- ^^^^ string.quoted.single.haskell
-- ^ punctuation.definition.string.begin.haskell
--   ^ invalid.illegal.expected-closing-quotation.haskell
--    ^ punctuation.definition.string.end.haskell

   '\129x'
-- ^^^^ string.quoted.single.haskell
--  ^^^^ constant.character.escape.decimal.haskell
--      ^ invalid.illegal.expected-closing-quotation.haskell
--       ^ punctuation.definition.string.end.haskell

   "\o129x\NUL"
-- ^^^^^^^^^^^^ string.quoted.double.haskell
--  ^^^^ constant.character.escape.octal.haskell
--      ^ - constant
--            ^ punctuation.definition.string.end.haskell
--        ^^^^ constant.character.escape.haskell

   a' = b'
-- ^^ meta.name.haskell - string

   {-# OPTIONS_HADDOCK not-home #-}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.haskell
--                                 ^ - meta.preprocessor.haskell
--     ^^^^^^^^^^^^^^^ keyword.other.preprocessor.haskell
