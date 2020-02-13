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

   class (Functor t, Foldable t) => Traversable t where
-- ^^^^^ keyword.other.haskell
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.haskell
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
--       ^^^ entity.name.function.infix.haskell
--             ^ constant.numeric.integer.decimal.haskell
   a a = (-) a 2
--     ^ keyword.operator.haskell
--       ^^^ entity.name.function.infix.haskell
--             ^ constant.numeric.integer.decimal.haskell
   a a = (*) a 2
--     ^ keyword.operator.haskell
--       ^^^ entity.name.function.infix.haskell
--             ^ constant.numeric.integer.decimal.haskell
   a a = (/) a 2
--     ^ keyword.operator.haskell
--       ^^^ entity.name.function.infix.haskell
--             ^ constant.numeric.integer.decimal.haskell

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

  data Record =
    Record {
        recordInt :: Int
      , recordString :: String
      , recordDouble :: Double
      , recordRational :: Rational
      } deriving (Eq, Ord, Generic)
        deriving (Read, Show) via (Quiet Record)
--                            ^^^ keyword.other.haskell
--                            ^^^^^^^^^^^^^^^^^^ meta.deriving.haskell
