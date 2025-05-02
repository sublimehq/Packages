-- SYNTAX TEST "Packages/Haskell/Haskell.sublime-syntax"

-- [ COMMENTS ] ---------------------------------------------------------------

23*36  -- single line comment
--     ^^ punctuation.definition.comment.haskell
--     ^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.haskell
23*36  --------------------------------------------------- single line comment
--    ^ - comment - punctuation
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.haskell punctuation.definition.comment.haskell
--                                                        ^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.haskell - punctuation
23*36
-- <- - comment.line.double-dash.haskell

    {- block comment -} 23*36
--  ^^ punctuation.definition.comment.begin.haskell
--  ^^^^^^^^^^^^^^^^^^^ comment.block.haskell
--                   ^^ punctuation.definition.comment.end.haskell
--                     ^ - comment.block.haskell

    {- {-# #-} -} 23*36
--  ^^ punctuation.definition.comment.begin.haskell
--  ^^^^^^^^^^^^^ comment.block.haskell - meta.preprocessor.haskell
--     ^^^^^^^ - meta.preprocessor
--             ^^ punctuation.definition.comment.end.haskell
--               ^ - comment.block.haskell

    {- {- #-} -} 23*36
--  ^^ punctuation.definition.comment.begin.haskell
--  ^^^^^^^^^^^^ comment.block.haskell
--            ^^ punctuation.definition.comment.end.haskell
--              ^ - comment.block.haskell

    {- {- -} -} 23*36
--  ^^ punctuation.definition.comment.begin.haskell
--  ^^^^^^^^^^^ comment.block.haskell
--           ^^ punctuation.definition.comment.end.haskell
--             ^ - comment.block.haskell

    {- {-# -} -} 23*36
--  ^^ punctuation.definition.comment.begin.haskell
--  ^^^^^^^^^^^^ comment.block.haskell - meta.preprocessor.haskell
--            ^^ punctuation.definition.comment.end.haskell
--              ^ - comment.block.haskell

    {- {-# {- test -} -} -} 23*36
--  ^^ punctuation.definition.comment.begin.haskell
--  ^^^^^^^^^^^^^^^^^^^^^^^ comment.block.haskell - meta.preprocessor.haskell
--                       ^^ punctuation.definition.comment.end.haskell
--                         ^ - comment.block.haskell


-- [ COMMENTS STARTING WITH SPECIAL SYMBOL CHARS ] ----------------------------

    --
--  ^^^ comment
    --_
--  ^^^ comment
    --"
--  ^^^ comment
    --'
--  ^^^ comment
    --(
--  ^^^ comment
    --)
--  ^^^ comment
    --,
--  ^^^ comment
    ---
--  ^^^ comment
    --;
--  ^^^ comment
    --[
--  ^^^ comment
    --]
--  ^^^ comment
    --`
--  ^^^ comment
    --{
--  ^^^ comment
    --}
--  ^^^ comment


-- [ NO COMMENTS ] ------------------------------------------------------------

    --!
--  ^^^ - comment
    --#
--  ^^^ - comment
    --$
--  ^^^ - comment
    --%
--  ^^^ - comment
    --&
--  ^^^ - comment
    --*
--  ^^^ - comment
    --+
--  ^^^ - comment
    --.
--  ^^^ - comment
    --/
--  ^^^ - comment
    --<
--  ^^^ - comment
    --=
--  ^^^ - comment
    -->
--  ^^^ - comment
    --?
--  ^^^ - comment
    --\
--  ^^^ - comment
    --^
--  ^^^ - comment
    --|
--  ^^^ - comment
    --~
--  ^^^ - comment
    --:
--  ^^^ - comment


-- [ MERGE CONFLICT MARKER TESTS ]---------------------------------------------

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


-- [ PREPROCESSOR ] -----------------------------------------------------------

    {-# INLINABLE unless #-}
--  ^^^^^^^^^^^^^ meta.preprocessor.pragma.directive.haskell
--               ^^^^^^^^ meta.preprocessor.pragma.value.signature.haskell
--                       ^^^ meta.preprocessor.pragma.value.haskell
--                          ^ - meta.preprocessor.haskell

    {-# MINIMAL traverse | sequenceA LANGUAGE #-}
--  ^^^^^^^^^^^ meta.preprocessor.pragma.directive.haskell
--             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.value.signature.haskell
--                                            ^^^ meta.preprocessor.pragma.value.haskell
--                                               ^ - meta.preprocessor.haskell
--  ^^^ punctuation.section.preprocessor.begin.haskell
--      ^^^^^^^ keyword.directive.builtin.haskell
--              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant - keyword
--                       ^ punctuation.separator.sequence.haskell
--                                            ^^^ punctuation.section.preprocessor.end.haskell

    {-# LANGUAGE
--  ^^^^^^^^^^^^ meta.preprocessor.pragma.directive.haskell
--              ^ meta.preprocessor.pragma.value.language.haskell
--  ^^^ punctuation.section.preprocessor.begin.haskell
--      ^^^^^^^^ keyword.directive.language.haskell
        -- Type level programming
--      ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.haskell
        DataKinds, PolyKinds,
--      ^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.value.language.haskell
--      ^^^^^^^^^ constant.language.extension.haskell
--               ^ punctuation.separator.sequence.haskell
--                 ^^^^^^^^^ constant.language.extension.haskell
--                          ^ punctuation.separator.sequence.haskell
        -- Generics
--      ^^^^^^^^^^^ comment.line.double-dash.haskell
        DeriveGeneric, DeriveAnyClass, DerivingVia
--      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.value.language.haskell
--      ^^^^^^^^^^^^^ constant.language.extension.haskell
--                   ^ punctuation.separator.sequence.haskell
--                     ^^^^^^^^^^^^^^ constant.language.extension.haskell
--                                   ^ punctuation.separator.sequence.haskell
--                                     ^^^^^^^^^^^ constant.language.extension.haskell
        {- Type applications -}
--      ^^^^^^^^^^^^^^^^^^^^^^^ comment.block.haskell
        , TypeApplications, AllowAmbiguousTypes
--      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.value.language.haskell
--      ^ punctuation.separator.sequence.haskell
--        ^^^^^^^^^^^^^^^^ constant.language.extension.haskell
--                        ^ punctuation.separator.sequence.haskell
--                          ^^^^^^^^^^^^^^^^^^^ constant.language.extension.haskell
        {- New in GHC 9 -}
        , QualifiedDo, LinearTypes
--      ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.value.language.haskell
--      ^ punctuation.separator.sequence.haskell
--        ^^^^^^^^^^^ constant.language.extension.haskell
--                   ^ punctuation.separator.sequence.haskell
--                     ^^^^^^^^^^^ constant.language.extension.haskell
    #-}
--  ^^^ meta.preprocessor.pragma.value.haskell punctuation.section.preprocessor.end.haskell

    {-# LINE 42 "Foo.vhs" #-}
--  ^^^^^^^^ meta.preprocessor.pragma.directive.haskell
--          ^^^^^^^^^^^^^^ meta.preprocessor.pragma.value.other.haskell
--                        ^^^ meta.preprocessor.pragma.value.haskell
--  ^^^ punctuation.section.preprocessor.begin.haskell
--      ^^^^ keyword.directive.builtin.haskell
--           ^^ constant.numeric.value.haskell
--              ^^^^^^^^^ meta.string.haskell string.quoted.double.haskell
--                        ^^^ punctuation.section.preprocessor.end.haskell

    {-# OPTIONS -XMagicHash -XBangPatterns #-}
--  ^^^^^^^^^^^ meta.preprocessor.pragma.directive.haskell
--             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.value.options.haskell
--                                         ^^^ meta.preprocessor.pragma.value.haskell
--                                            ^ - meta.preprocessor.haskell
--  ^^^ punctuation.section.preprocessor.begin.haskell
--      ^^^^^^^ keyword.directive.options.haskell
--              ^^^^^^^^^^^ constant.other.pragma.haskell
--              ^ punctuation.definition.constant.haskell
--                          ^^^^^^^^^^^^^^ constant.other.pragma.haskell
--                          ^ punctuation.definition.constant.haskell
--                                         ^^^ punctuation.section.preprocessor.end.haskell

    {-# OPTIONS_GHC -Drelease #-}
--  ^^^^^^^^^^^^^^^ meta.preprocessor.pragma.directive.haskell
--                 ^^^^^^^^^^^ meta.preprocessor.pragma.value.options.haskell
--                            ^^^ meta.preprocessor.pragma.value.haskell
--                               ^ - meta.preprocessor.haskell
--  ^^^ punctuation.section.preprocessor.begin.haskell
--      ^^^^^^^^^^^ keyword.directive.options.haskell
--                  ^^^^^^^^^ constant.other.pragma.haskell
--                  ^ punctuation.definition.constant.haskell
--                            ^^^ punctuation.section.preprocessor.end.haskell

    {-# OPTIONS_HADDOCK not-home #-}
--  ^^^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.directive.haskell
--                     ^^^^^^^^^^ meta.preprocessor.pragma.value.options.haskell
--                               ^^^ meta.preprocessor.pragma.value.haskell
--                                  ^ - meta.preprocessor.haskell
--  ^^^ punctuation.section.preprocessor.begin.haskell
--      ^^^^^^^^^^^^^^^ keyword.directive.options.haskell
--                      ^^^^^^^^ constant.other.pragma.haskell
--                               ^^^ punctuation.section.preprocessor.end.haskell

    {-# SPECIALIZE INLINE unless :: Bool -> IO () -> IO () #-}
--  ^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.directive.haskell
--                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.value.signature.haskell
--                                                         ^^^ meta.preprocessor.pragma.value.haskell
--  ^^^ punctuation.section.preprocessor.begin.haskell
--      ^^^^^^^^^^ keyword.directive.builtin.haskell
--                 ^^^^^^ keyword.directive.builtin.haskell
--                        ^^^^^^ entity.name.function.haskell
--                               ^^ punctuation.separator.type.haskell
--                                  ^^^^ support.type.prelude.haskell
--                                       ^^ keyword.operator.arrow.haskell
--                                          ^^ support.type.prelude.haskell
--                                                         ^^^ punctuation.section.preprocessor.end.haskell

    {-# SPECIALIZE instance Eq (Foo [(Int, Bar)]) #-}
--  ^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.directive.haskell
--                         ^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.value.signature.haskell
--                                                ^^^ meta.preprocessor.pragma.value.haskell
--  ^^^ punctuation.section.preprocessor.begin.haskell
--      ^^^^^^^^^^ keyword.directive.builtin.haskell
--                 ^^^^^^^^ keyword.declaration.instance.haskell
--                                                ^^^ punctuation.section.preprocessor.end.haskell

    {-# WARNING "Not supported" #-}
--  ^^^^^^^^^^^ meta.preprocessor.pragma.directive.haskell
--             ^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.value.other.haskell
--                              ^^^ meta.preprocessor.pragma.value.haskell
--                                 ^ - meta.preprocessor.haskell
--  ^^^ punctuation.section.preprocessor.begin.haskell
--      ^^^^^^^ keyword.directive.builtin.haskell
--              ^^^^^^^^^^^^^^^ meta.string.haskell string.quoted.double.haskell
--                              ^^^ punctuation.section.preprocessor.end.haskell

    module Wibble {-# DEPRECATED "Use Wobble instead" #-} where
--                ^^^^^^^^^^^^^^ meta.declaration.module.haskell meta.preprocessor.pragma.directive.haskell
--                               ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.module.haskell meta.preprocessor.pragma.value.other.haskell
--                                                    ^^^ meta.declaration.module.haskell meta.preprocessor.pragma.value.haskell
--                ^^^ punctuation.section.preprocessor.begin.haskell
--                    ^^^^^^^^^^ keyword.directive.builtin.haskell
--                               ^^^^^^^^^^^^^^^^^^^^ string.quoted.double.haskell
--                                                    ^^^ punctuation.section.preprocessor.end.haskell

    (res, ts) <- withRaw $
         {-# SCC attrParser #-} (AddAttributes <$> attrParser)
--       ^^^^^^^ meta.preprocessor.pragma.directive.haskell
--               ^^^^^^^^^^^ meta.preprocessor.pragma.value.other.haskell
--                          ^^^ meta.preprocessor.pragma.value.haskell
--       ^^^ punctuation.section.preprocessor.begin.haskell
--           ^^^ keyword.directive.builtin.haskell
--                          ^^^ punctuation.section.preprocessor.end.haskell
--                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.haskell
--                              ^ punctuation.section.group.begin.haskell
--                               ^^^^^^^^^^^^^ storage.type.haskell
--                                             ^^^ keyword.operator.haskell
--                                                 ^^^^^^^^^^ variable.other.haskell
--                                                           ^ punctuation.section.group.end.haskell


    #if 0
--  ^^^ meta.preprocessor.c
--  ^ punctuation.definition.preprocessor.c
--  ^^^ keyword.directive.other.c

    #endif
--  ^^^^^^ meta.preprocessor.c
--  ^ punctuation.definition.preprocessor.c
--  ^^^^^^ keyword.directive.other.c


-- [ MODULE DECLARATIONS ] ----------------------------------------------------

    'module
--  ^ keyword.operator.haskell
--   ^^^^^^ keyword.declaration.namespace.haskell

    module'
--  ^^^^^^^ - keyword

    module
--  ^^^^^^^ meta.declaration.module.haskell
--  ^^^^^^ keyword.declaration.namespace.haskell

    module Name
--  ^^^^^^^^^^^^ meta.declaration.module.haskell
--  ^^^^^^ keyword.declaration.namespace.haskell
--         ^^^^ entity.name.namespace.haskell

    module Name where
--  ^^^^^^^^^^^^ meta.declaration.module.haskell
--              ^^^^^ - meta.declaration.module
--  ^^^^^^ keyword.declaration.namespace.haskell
--         ^^^^ entity.name.namespace.haskell
--              ^^^^^ keyword.control.context.haskell

    module ()
--  ^^^^^^^ meta.declaration.module.haskell - meta.sequence
--         ^^ meta.declaration.module.haskell meta.sequence.tuple.haskell
--  ^^^^^^ keyword.declaration.namespace.haskell
--         ^ punctuation.section.sequence.begin.haskell
--          ^ punctuation.section.sequence.end.haskell

    module Name ()
--  ^^^^^^^^^^^^ meta.declaration.module.haskell - meta.sequence
--              ^^ meta.declaration.module.haskell meta.sequence.tuple.haskell
--  ^^^^^^ keyword.declaration.namespace.haskell
--         ^^^^ entity.name.namespace.haskell
--              ^ punctuation.section.sequence.begin.haskell
--               ^ punctuation.section.sequence.end.haskell

    module Name () where
--  ^^^^^^^^^^^^ meta.declaration.module.haskell - meta.sequence
--              ^^ meta.declaration.module.haskell meta.sequence.tuple.haskell
--                ^ meta.declaration.module.haskell - meta.sequence
--                 ^^^^^^ - meta.declaration.module
--  ^^^^^^ keyword.declaration.namespace.haskell
--         ^^^^ entity.name.namespace.haskell
--              ^ punctuation.section.sequence.begin.haskell
--               ^ punctuation.section.sequence.end.haskell
--                 ^^^^^ keyword.control.context.haskell

    module Ns.Name (sym1, Sym2, sym2#, Sym3#, (<:>)) where { import Ns.Other; import Ns.Other2 }
--  ^^^^^^^^^^^^^^^ meta.declaration.module.haskell - meta.sequence
--                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.module.haskell meta.sequence.tuple.haskell - meta.prefix
--                                            ^^^^^ meta.declaration.module.haskell meta.sequence.tuple.haskell meta.prefix.haskell
--                                                 ^ meta.declaration.module.haskell meta.sequence.tuple.haskell - meta.prefix
--                                                  ^ meta.declaration.module.haskell - meta.sequence
--                                                   ^^^^^ - meta.declaration.module - meta.block - meta.sequence
--                                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.haskell - meta.declaration.module
--                                                                                              ^ - meta.block
--  ^^^^^^ keyword.declaration.namespace.haskell
--         ^^ variable.namespace.haskell
--           ^ punctuation.accessor.dot.haskell
--            ^^^^ entity.name.namespace.haskell
--                 ^ punctuation.section.sequence.begin.haskell
--                  ^^^^ entity.name.export.haskell
--                      ^ punctuation.separator.sequence.haskell
--                        ^^^^ entity.name.export.haskell
--                            ^ punctuation.separator.sequence.haskell
--                              ^^^^^ entity.name.export.haskell
--                                  ^ storage.modifier.unboxed.haskell
--                                   ^ punctuation.separator.sequence.haskell
--                                     ^^^^^ entity.name.export.haskell
--                                         ^ storage.modifier.unboxed.haskell
--                                          ^ punctuation.separator.sequence.haskell
--                                            ^ punctuation.definition.prefix.begin.haskell
--                                             ^^^ keyword.operator.haskell
--                                                ^ punctuation.definition.prefix.end.haskell
--                                                 ^ punctuation.section.sequence.end.haskell
--                                                   ^^^^^ keyword.control.context.haskell
--                                                         ^ punctuation.section.block.begin.haskell
--                                                           ^^^^^^ keyword.declaration.import.haskell
--                                                                  ^^ variable.namespace.haskell
--                                                                    ^ punctuation.accessor.dot.haskell
--                                                                     ^^^^^ variable.namespace.haskell
--                                                                          ^ punctuation.terminator.statement.haskell
--                                                                            ^^^^^^ keyword.declaration.import.haskell
--                                                                                   ^^ variable.namespace.haskell
--                                                                                     ^ punctuation.accessor.dot.haskell
--                                                                                      ^^^^^^ variable.namespace.haskell
--                                                                                             ^ punctuation.section.block.end.haskell

    module Name (module Other.Module) where { import Other.Module }
--  ^^^^^^^^^^^^ meta.declaration.module.haskell - meta.sequence
--              ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.module.haskell meta.sequence.tuple.haskell
--                                   ^ meta.declaration.module.haskell - meta.sequence
--                                    ^^^^^^ - meta.declaration - meta.block - meta.sequence
--                                          ^^ meta.block.haskell - meta.import
--                                            ^^^^^^ meta.block.haskell meta.import.haskell
--                                                  ^^^^^^^^^^^^^^ meta.block.haskell meta.import.module.haskell
--                                                                ^ meta.block.haskell - meta.import
--                                                                 ^ - meta.declaration - meta.block
--  ^^^^^^ keyword.declaration.namespace.haskell
--         ^^^^ entity.name.namespace.haskell
--              ^ punctuation.section.sequence.begin.haskell
--               ^^^^^^ keyword.declaration.namespace.haskell
--                      ^^^^^ variable.namespace.haskell
--                           ^ punctuation.accessor.dot.haskell
--                            ^^^^^^ entity.name.export.haskell
--                                  ^ punctuation.section.sequence.end.haskell
--                                    ^^^^^ keyword.control.context.haskell
--                                          ^ punctuation.section.block.begin.haskell
--                                            ^^^^^^ keyword.declaration.import.haskell
--                                                   ^^^^^ variable.namespace.haskell
--                                                        ^ punctuation.accessor.dot.haskell
--                                                         ^^^^^^ variable.namespace.haskell
--                                                                ^ punctuation.section.block.end.haskell


-- [ MODULE SIGNATURE DECLARATIONS ] ------------------------------------------

    'signature
--  ^ keyword.operator.haskell
--   ^^^^^^^^^ keyword.declaration.namespace.haskell

    signature'
--  ^^^^^^^^^^ - keyword

    signature
--  ^^^^^^^^^^ meta.declaration.signature.haskell
--  ^^^^^^^^^ keyword.declaration.namespace.haskell

    signature Name
--  ^^^^^^^^^^^^^^^ meta.declaration.signature.haskell
--  ^^^^^^^^^ keyword.declaration.namespace.haskell
--            ^^^^ entity.name.namespace.haskell

    signature Name where
--  ^^^^^^^^^^^^^^^ meta.declaration.signature.haskell
--                 ^^^^^ - meta.declaration.signature
--  ^^^^^^^^^ keyword.declaration.namespace.haskell
--            ^^^^ entity.name.namespace.haskell
--                 ^^^^^ keyword.control.context.haskell

    signature ()
--  ^^^^^^^^^^ meta.declaration.signature.haskell - meta.sequence
--            ^^ meta.declaration.signature.haskell meta.sequence.tuple.haskell
--  ^^^^^^^^^ keyword.declaration.namespace.haskell
--            ^ punctuation.section.sequence.begin.haskell
--             ^ punctuation.section.sequence.end.haskell

    signature Name ()
--  ^^^^^^^^^^^^^^^ meta.declaration.signature.haskell - meta.sequence
--                 ^^ meta.declaration.signature.haskell meta.sequence.tuple.haskell
--  ^^^^^^^^^ keyword.declaration.namespace.haskell
--            ^^^^ entity.name.namespace.haskell
--                 ^ punctuation.section.sequence.begin.haskell
--                  ^ punctuation.section.sequence.end.haskell

    signature Name () where
--  ^^^^^^^^^^^^^^^ meta.declaration.signature.haskell - meta.sequence
--                 ^^ meta.declaration.signature.haskell meta.sequence.tuple.haskell
--                   ^ meta.declaration.signature.haskell - meta.sequence
--                    ^^^^^^ - meta.declaration.signature
--  ^^^^^^^^^ keyword.declaration.namespace.haskell
--            ^^^^ entity.name.namespace.haskell
--                 ^ punctuation.section.sequence.begin.haskell
--                  ^ punctuation.section.sequence.end.haskell
--                    ^^^^^ keyword.control.context.haskell

    signature Ns.Name (sym1, Sym2, sym2#, Sym3#) where { import Ns.Other; import Ns.Other2 }
--  ^^^^^^^^^^^^^^^^^^ meta.declaration.signature.haskell - meta.sequence
--                    ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.signature.haskell meta.sequence.tuple.haskell
--                                              ^ meta.declaration.signature.haskell - meta.sequence
--                                               ^^^^^ - meta.declaration.signature - meta.block - meta.sequence
--                                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.haskell - meta.declaration.signature
--                                                                                          ^ - meta.block
--  ^^^^^^^^^ keyword.declaration.namespace.haskell
--            ^^ variable.namespace.haskell
--              ^ punctuation.accessor.dot.haskell
--               ^^^^ entity.name.namespace.haskell
--                    ^ punctuation.section.sequence.begin.haskell
--                     ^^^^ entity.name.export.haskell
--                         ^ punctuation.separator.sequence.haskell
--                           ^^^^ entity.name.export.haskell
--                               ^ punctuation.separator.sequence.haskell
--                                 ^^^^^ entity.name.export.haskell
--                                     ^ storage.modifier.unboxed.haskell
--                                      ^ punctuation.separator.sequence.haskell
--                                        ^^^^^ entity.name.export.haskell
--                                            ^ storage.modifier.unboxed.haskell
--                                             ^ punctuation.section.sequence.end.haskell
--                                               ^^^^^ keyword.control.context.haskell
--                                                     ^ punctuation.section.block.begin.haskell
--                                                       ^^^^^^ keyword.declaration.import.haskell
--                                                              ^^ variable.namespace.haskell
--                                                                ^ punctuation.accessor.dot.haskell
--                                                                 ^^^^^ variable.namespace.haskell
--                                                                      ^ punctuation.terminator.statement.haskell
--                                                                        ^^^^^^ keyword.declaration.import.haskell
--                                                                               ^^ variable.namespace.haskell
--                                                                                 ^ punctuation.accessor.dot.haskell
--                                                                                  ^^^^^^ variable.namespace.haskell
--                                                                                         ^ punctuation.section.block.end.haskell

    signature Name (module Other.Module) where { import Other.Module }
--  ^^^^^^^^^^^^^^^ meta.declaration.signature.haskell - meta.sequence
--                 ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.signature.haskell meta.sequence.tuple.haskell
--                                      ^ meta.declaration.signature.haskell - meta.sequence
--                                       ^^^^^^ - meta.declaration - meta.block - meta.sequence
--                                             ^^ meta.block.haskell - meta.import
--                                               ^^^^^^ meta.block.haskell meta.import.haskell
--                                                     ^^^^^^^^^^^^^^ meta.block.haskell meta.import.module.haskell
--                                                                   ^ meta.block.haskell - meta.import
--                                                                    ^ - meta.declaration - meta.block
--  ^^^^^^^^^ keyword.declaration.namespace.haskell
--            ^^^^ entity.name.namespace.haskell
--                 ^ punctuation.section.sequence.begin.haskell
--                  ^^^^^^ keyword.declaration.namespace.haskell
--                         ^^^^^ variable.namespace.haskell
--                              ^ punctuation.accessor.dot.haskell
--                               ^^^^^^ entity.name.export.haskell
--                                     ^ punctuation.section.sequence.end.haskell
--                                       ^^^^^ keyword.control.context.haskell
--                                             ^ punctuation.section.block.begin.haskell
--                                               ^^^^^^ keyword.declaration.import.haskell
--                                                      ^^^^^ variable.namespace.haskell
--                                                           ^ punctuation.accessor.dot.haskell
--                                                            ^^^^^^ variable.namespace.haskell
--                                                                   ^ punctuation.section.block.end.haskell

-- [ IMPORT DECLARATIONS ] ----------------------------------------------------

    'import
--  ^ keyword.operator.haskell
--   ^^^^^^ keyword.declaration.import.haskell

    import'
--  ^^^^^^^ - keyword

    import import
-- ^ - meta.import
--  ^^^^^^ meta.import.haskell keyword.declaration.import.haskell
--        ^ meta.import.module.haskell - keyword
--         ^^^^^^ meta.import.haskell keyword.declaration.import.haskell
--               ^ meta.import.module.haskell - keyword

    import ; import
--  ^^^^^^ meta.import.haskell
--        ^ meta.import.module.haskell
--         ^^ - meta.import
--           ^^^^^^ meta.import.haskell
--                 ^ meta.import.module.haskell
--  ^^^^^^ keyword.declaration.import.haskell
--         ^ punctuation.terminator.statement.haskell
--           ^^^^^^ meta.import.haskell keyword.declaration.import.haskell

    import safe qualified Data.Vector.Mutable as My.MutableVector
--  ^^^^^^ meta.import.haskell
--        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.module.haskell
--                                            ^^^^^^^^^^^^^^^^^^^ meta.import.alias.haskell
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ storage.modifier.import.haskell
--              ^^^^^^^^^ storage.modifier.import.haskell
--                        ^^^^ variable.namespace.haskell - punctuation
--                            ^ punctuation.accessor.dot.haskell - variable
--                             ^^^^^^ variable.namespace.haskell - punctuation
--                                   ^ punctuation.accessor.dot.haskell - variable
--                                    ^^^^^^^ variable.namespace.haskell - punctuation
--                                            ^^ keyword.declaration.import.as.haskell
--                                               ^^ variable.namespace.haskell
--                                                 ^ punctuation.accessor.dot.haskell
--                                                  ^^^^^^^^^^^^^ variable.namespace.haskell

    import
--  ^^^^^^ meta.import.haskell keyword.declaration.import.haskell
--        ^ meta.import.module.haskell - keyword
    qualified
--  ^^^^^^^^^^ meta.import.module.haskell
--  ^^^^^^^^^ storage.modifier.import.haskell
    Data.Vector.Mutable
--  ^^^^^^^^^^^^^^^^^^^^ meta.import.module.haskell
--  ^^^^ variable.namespace.haskell - punctuation
--      ^ punctuation.accessor.dot.haskell - variable
--       ^^^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^^^^ variable.namespace.haskell - punctuation
    as
--  ^^^ meta.import.alias.haskell
--  ^^ keyword.declaration.import.as.haskell
    MutableVector
--  ^^^^^^^^^^^^^ meta.import.alias.haskell variable.namespace.haskell

--  escape from imports as early as possible
    import Data.Vector.Mutable My.MutableVector
--  ^^^^^^ meta.import.haskell
--        ^^^^^^^^^^^^^^^^^^^^^ meta.import.module.haskell
--                             ^^^^^^^^^^^^^^^^^^ - meta.import
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^^^ variable.namespace.haskell - punctuation
--                    ^ punctuation.accessor.dot.haskell - variable
--                     ^^^^^^^ variable.namespace.haskell - punctuation
--                             ^^ variable.namespace.haskell
--                               ^ punctuation.accessor.dot.haskell
--                                ^^^^^^^^^^^^^ storage.type.haskell

    import Mod1.Mod2.Module (funcName, unboxed#, Type#)
--  ^^^^^^ meta.import.haskell - meta.sequence
--        ^^^^^^^^^^^^^^^^^^ meta.import.module.haskell - meta.sequence
--                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell
--                                                     ^ - meta.import
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^^^^^^^^^^ meta.sequence.tuple.haskell
--                          ^ punctuation.section.sequence.begin.haskell
--                           ^^^^^^^^ entity.name.import.haskell
--                                   ^ punctuation.separator.sequence.haskell
--                                     ^^^^^^^^ entity.name.import.haskell
--                                            ^ storage.modifier.unboxed.haskell
--                                             ^ punctuation.separator.sequence.haskell
--                                               ^^^^^ entity.name.import.haskell
--                                                   ^ storage.modifier.unboxed.haskell
--                                                    ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module (ClassName(..))
--  ^^^^^^ meta.import.haskell - meta.sequence
--        ^^^^^^^^^^^^^^^^^^ meta.import.module.haskell - meta.sequence
--                          ^^^^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                    ^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--                                        ^ meta.import.filter.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                         ^ - meta.import
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^ punctuation.section.sequence.begin.haskell
--                           ^^^^^^^^^ entity.name.import.haskell
--                                    ^ punctuation.section.sequence.begin.haskell
--                                     ^^ keyword.operator.haskell
--                                       ^ punctuation.section.sequence.end.haskell
--                                        ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module (ClassName (SubClass), funcName)
--  ^^^^^^ meta.import.haskell - meta.sequence
--        ^^^^^^^^^^^^^^^^^^ meta.import.module.haskell - meta.sequence
--                          ^^^^^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                     ^^^^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--                                               ^^^^^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                                          ^ - meta.import
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^ punctuation.section.sequence.begin.haskell
--                           ^^^^^^^^^ entity.name.import.haskell
--                                     ^ punctuation.section.sequence.begin.haskell
--                                      ^^^^^^^^ entity.name.import.haskell
--                                              ^ punctuation.section.sequence.end.haskell
--                                               ^ punctuation.separator.sequence.haskell
--                                                 ^^^^^^^^ entity.name.import.haskell
--                                                         ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module (ClassName (memberName), funcName)
--  ^^^^^^ meta.import.haskell - meta.sequence
--        ^^^^^^^^^^^^^^^^^^ meta.import.module.haskell - meta.sequence
--                          ^^^^^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                     ^^^^^^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--                                                 ^^^^^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                                            ^ - meta.import
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^ punctuation.section.sequence.begin.haskell
--                           ^^^^^^^^^ entity.name.import.haskell
--                                     ^ punctuation.section.sequence.begin.haskell
--                                      ^^^^^^^^^^ entity.name.import.haskell
--                                                ^ punctuation.section.sequence.end.haskell
--                                                 ^ punctuation.separator.sequence.haskell
--                                                   ^^^^^^^^ entity.name.import.haskell
--                                                           ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module (ClassName (SubClass, memberName), funcName)
--  ^^^^^^ meta.import.haskell - meta.sequence
--        ^^^^^^^^^^^^^^^^^^ meta.import.module.haskell - meta.sequence
--                          ^^^^^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                     ^^^^^^^^^^^^^^^^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--                                                           ^^^^^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                                                      ^ - meta.import
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^ punctuation.section.sequence.begin.haskell
--                           ^^^^^^^^^ entity.name.import.haskell
--                                     ^ punctuation.section.sequence.begin.haskell
--                                      ^^^^^^^^ entity.name.import.haskell
--                                              ^ punctuation.separator.sequence.haskell
--                                                ^^^^^^^^^^ entity.name.import.haskell
--                                                          ^ punctuation.section.sequence.end.haskell
--                                                           ^ punctuation.separator.sequence.haskell
--                                                             ^^^^^^^^ entity.name.import.haskell
--                                                                     ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module ((</>), (<.>), fun1, fun2,
--  ^^^^^^ meta.import.haskell - meta.sequence
--        ^^^^^^^^^^^^^^^^^^ meta.import.module.haskell - meta.sequence
--                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                          ^ punctuation.section.sequence.begin.haskell
--                           ^^^^^ meta.prefix.haskell
--                           ^ punctuation.definition.prefix.begin.haskell
--                            ^^^ keyword.operator.haskell
--                               ^ punctuation.definition.prefix.end.haskell
--                                ^ punctuation.separator.sequence.haskell
--                                  ^^^^^ meta.prefix.haskell
--                                  ^ punctuation.definition.prefix.begin.haskell
--                                   ^^^ keyword.operator.haskell
--                                      ^ punctuation.definition.prefix.end.haskell
--                                       ^ punctuation.separator.sequence.haskell
--                                         ^^^^ entity.name.import.haskell
--                                             ^ punctuation.separator.sequence.haskell
--                                               ^^^^ entity.name.import.haskell
--                                                   ^ punctuation.separator.sequence.haskell
                             fun3, fun4)
--                           ^^^^^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell
--                                      ^ - meta.import
--                           ^^^^ entity.name.import.haskell
--                               ^ punctuation.separator.sequence.haskell
--                                 ^^^^ entity.name.import.haskell
--                                     ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module (())
--  ^^^^^^ meta.import.haskell - meta.sequence
--        ^^^^^^^^^^^^^^^^^^ meta.import.module.haskell - meta.sequence
--                          ^ meta.import.filter.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                           ^^ meta.import.filter.haskell meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--                             ^ meta.import.filter.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                              ^ - meta.import
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^^^^ meta.sequence.tuple.haskell
--                          ^^ punctuation.section.sequence.begin.haskell
--                            ^^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module (--
--  ^^^^^^ meta.import.haskell
--        ^^^^^^^^^^^^^^^^^^ meta.import.module.haskell
--                          ^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^^^^^ meta.sequence.tuple.haskell
--                          ^ punctuation.section.sequence.begin.haskell
--                           ^^^ comment.line.double-dash.haskell
--                           ^^ punctuation.definition.comment.haskell
                            )
--                          ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module (--)
--  ^^^^^^ meta.import.haskell
--        ^^^^^^^^^^^^^^^^^^ meta.import.module.haskell
--                          ^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^^^^^ meta.sequence.tuple.haskell
--                          ^ punctuation.section.sequence.begin.haskell
--                           ^^^^ comment.line.double-dash.haskell
--                           ^^ punctuation.definition.comment.haskell
                            )
--                          ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module ((--))
--  ^^^^^^ meta.import.haskell
--        ^^^^^^^^^^^^^^^^^^ meta.import.module.haskell
--                          ^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^^^^^^^ meta.sequence.tuple.haskell
--                          ^ punctuation.section.sequence.begin.haskell
--                            ^^^^^ comment.line.double-dash.haskell
--                            ^^ punctuation.definition.comment.haskell
                            )
--                          ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module ((--])
--  ^^^^^^ meta.import.haskell
--        ^^^^^^^^^^^^^^^^^^ meta.import.module.haskell
--                          ^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^^^^^^^ meta.sequence.tuple.haskell
--                          ^ punctuation.section.sequence.begin.haskell
--                            ^^^^^ comment.line.double-dash.haskell
--                            ^^ punctuation.definition.comment.haskell
                            )
--                          ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module ((--")
--  ^^^^^^ meta.import.haskell
--        ^^^^^^^^^^^^^^^^^^ meta.import.module.haskell
--                          ^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^^^^^^^ meta.sequence.tuple.haskell
--                          ^ punctuation.section.sequence.begin.haskell
--                            ^^^^^ comment.line.double-dash.haskell
--                            ^^ punctuation.definition.comment.haskell
                            )
--                          ^ punctuation.section.sequence.end.haskell

    import Foo.Bar.Types (type (|?) (..))
--  ^^^^^^ meta.import.haskell
--        ^^^^^^^^^^^^^^^ meta.import.module.haskell
--                       ^^^^^^^^^^^^^^^^ meta.import.filter.haskell meta.sequence.tuple.haskell
--                             ^^^^ meta.prefix.haskell
--                                  ^^^^ meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^ variable.namespace.haskell
--            ^ punctuation.accessor.dot.haskell
--             ^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^ variable.namespace.haskell
--                       ^ punctuation.section.sequence.begin.haskell
--                        ^^^^ keyword.declaration.type.haskell

-- [ FOREIGN EXPORT DECLARATIONS ]---------------------------------------------

    foreign export
--  ^^^^^^^^^^^^^^^ meta.declaration.foreign.export.haskell
--  ^^^^^^^ storage.modifier.foreign.haskell
--          ^^^^^^ keyword.declaration.export.haskell

    foreign export ccall
--  ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.foreign.export.haskell
--  ^^^^^^^ storage.modifier.foreign.haskell
--          ^^^^^^ keyword.declaration.export.haskell
--                 ^^^^^ constant.language.convention.haskell

    foreign export ccall triple :: Int -> Int
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.foreign.export.haskell
--  ^^^^^^^ storage.modifier.foreign.haskell
--          ^^^^^^ keyword.declaration.export.haskell
--                 ^^^^^ constant.language.convention.haskell
--                       ^^^^^^ entity.name.function.haskell
--                              ^^ punctuation.separator.type.haskell
--                                 ^^^ support.type.prelude.haskell
--                                     ^^ keyword.operator.arrow.haskell
--                                        ^^^ support.type.prelude.haskell

    foreign
--  ^^^^^^^^ meta.declaration.foreign.export.haskell
--  ^^^^^^^ storage.modifier.foreign.haskell
    export
-- ^^^^^^^^ meta.declaration.foreign.export.haskell
--  ^^^^^^ keyword.declaration.export.haskell
    ccall
-- ^^^^^^^ meta.declaration.foreign.export.haskell
--  ^^^^^ constant.language.convention.haskell
    safe
-- ^^^^^^ meta.declaration.foreign.export.haskell
--  ^^^^ invalid.illegal.unexpected-keyword.haskell
    triple
-- ^^^^^^^^ meta.declaration.foreign.export.haskell
--  ^^^^^^ entity.name.function.haskell
    :: Int -> Int
-- ^ meta.declaration.foreign.export.haskell
--  ^^ punctuation.separator.type.haskell
--     ^^^ support.type.prelude.haskell
--         ^^ keyword.operator.arrow.haskell
--            ^^^ support.type.prelude.haskell

    foreign export ccall triple# :: Int -> Int
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.foreign.export.haskell
--  ^^^^^^^ storage.modifier.foreign.haskell
--          ^^^^^^ keyword.declaration.export.haskell
--                 ^^^^^ constant.language.convention.haskell
--                       ^^^^^^^ entity.name.function.haskell
--                             ^ storage.modifier.unboxed.haskell
--                               ^^ punctuation.separator.type.haskell
--                                  ^^^ support.type.prelude.haskell
--                                      ^^ keyword.operator.arrow.haskell
--                                         ^^^ support.type.prelude.haskell

    foreign export ccall "addInt" (+) :: Int->Int->Int
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.foreign.export.haskell
--  ^^^^^^^ storage.modifier.foreign.haskell
--          ^^^^^^ keyword.declaration.export.haskell
--                 ^^^^^ constant.language.convention.haskell
--                       ^^^^^^^^ meta.string.haskell string.quoted.double.haskell
--                                ^^^ meta.prefix.haskell
--                                ^ punctuation.definition.prefix.begin.haskell
--                                 ^ keyword.operator.haskell
--                                  ^ punctuation.definition.prefix.end.haskell
--                                    ^^ punctuation.separator.type.haskell
--                                       ^^^ support.type.prelude.haskell
--                                          ^^ keyword.operator.arrow.haskell
--                                            ^^^ support.type.prelude.haskell
--                                               ^^ keyword.operator.arrow.haskell
--                                                 ^^^ support.type.prelude.haskell


-- [ FOREIGN IMPORT DECLARATIONS ]---------------------------------------------

    foreign
--  ^^^^^^^^ meta.declaration.foreign.import.haskell
--  ^^^^^^^ storage.modifier.foreign.haskell

    foreign import
--  ^^^^^^^^^^^^^^^ meta.declaration.foreign.import.haskell
--  ^^^^^^^ storage.modifier.foreign.haskell
--          ^^^^^^ keyword.declaration.import.haskell

    foreign import ccall
--  ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.foreign.import.haskell
--  ^^^^^^^ storage.modifier.foreign.haskell
--          ^^^^^^ keyword.declaration.import.haskell
--                 ^^^^^ constant.language.convention.haskell

    foreign import ccall "exp"
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.foreign.import.haskell
--  ^^^^^^^ storage.modifier.foreign.haskell
--          ^^^^^^ keyword.declaration.import.haskell
--                 ^^^^^ constant.language.convention.haskell
--                       ^^^^^ meta.string.haskell string.quoted.double.haskell
--

    foreign import ccall "exp" c_exp :: Double -> Double
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.foreign.import.haskell
--  ^^^^^^^ storage.modifier.foreign.haskell
--          ^^^^^^ keyword.declaration.import.haskell
--                 ^^^^^ constant.language.convention.haskell
--                       ^^^^^ meta.string.haskell string.quoted.double.haskell
--                             ^^^^^ entity.name.function.haskell
--                                   ^^ punctuation.separator.type.haskell
--                                      ^^^^^^ support.type.prelude.haskell
--                                             ^^ keyword.operator.arrow.haskell
--                                                ^^^^^^ support.type.prelude.haskell

    foreign import dotnet safe "func" func# :: String -> Bool
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.foreign.import.haskell
--  ^^^^^^^ storage.modifier.foreign.haskell
--          ^^^^^^ keyword.declaration.import.haskell
--                 ^^^^^^ constant.language.convention.haskell
--                        ^^^^ storage.modifier.import.haskell
--                             ^^^^^^ meta.string.haskell string.quoted.double.haskell
--                                    ^^^^^ entity.name.function.haskell
--                                        ^ storage.modifier.unboxed.haskell
--                                          ^^ punctuation.separator.type.haskell
--                                             ^^^^^^ support.type.prelude.haskell
--                                                    ^^ keyword.operator.arrow.haskell
--                                                       ^^^^ support.type.prelude.haskell

    foreign import ccall "addInt" (+) :: Int->Int->Int
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.foreign.import.haskell
--  ^^^^^^^ storage.modifier.foreign.haskell
--          ^^^^^^ keyword.declaration.import.haskell
--                 ^^^^^ constant.language.convention.haskell
--                       ^^^^^^^^ meta.string.haskell string.quoted.double.haskell
--                                ^^^ meta.prefix.haskell
--                                ^ punctuation.definition.prefix.begin.haskell
--                                 ^ keyword.operator.haskell
--                                  ^ punctuation.definition.prefix.end.haskell
--                                    ^^ punctuation.separator.type.haskell
--                                       ^^^ support.type.prelude.haskell
--                                          ^^ keyword.operator.arrow.haskell
--                                            ^^^ support.type.prelude.haskell
--                                               ^^ keyword.operator.arrow.haskell
--                                                 ^^^ support.type.prelude.haskell


-- [ CLASS DECLARATIONS ] -----------------------------------------------------

   'class
-- ^ keyword.operator.haskell
--  ^^^^^ keyword.declaration.class.haskell

    class'
--  ^^^^^^ - keyword

    class
--  ^^^^^^ meta.declaration.class.haskell
--  ^^^^^ keyword.declaration.class.haskell

    class =>
--  ^^^^^ meta.declaration.class.haskell
--       ^ meta.declaration.class.context.haskell
--        ^^^ meta.declaration.class.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^ punctuation.separator.type.context.haskell

    class QTyCls tyVar
--  ^^^^^^^^^^^^^^^^^^^ meta.declaration.class.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^^^^^ entity.name.class.haskell
--               ^^^^^ variable.other.haskell

    class QTyCls# tyVar#
--  ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^^^^^^ entity.name.class.haskell
--              ^ storage.modifier.unboxed.haskell
--                ^^^^^^ variable.other.haskell
--                     ^ storage.modifier.unboxed.haskell

    class ModId.QTyCls tyVar1 tyVar2, ident
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^^^^ variable.namespace.haskell
--             ^ punctuation.accessor.dot.haskell
--              ^^^^^^ entity.name.class.haskell
--                     ^^^^^^ variable.other.haskell
--                            ^^^^^^ variable.other.haskell
--                                  ^ invalid.illegal.haskell
--                                    ^^^^^ variable.other.haskell

    class ModId.QTyCls tyVar1 tyVar2 =>
--  ^^^^^ meta.declaration.class.haskell
--       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.context.haskell
--                                   ^^^ meta.declaration.class.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^^^^ variable.namespace.haskell
--             ^ punctuation.accessor.dot.haskell
--              ^^^^^^ storage.type.haskell
--                     ^^^^^^ variable.other.haskell
--                            ^^^^^^ variable.other.haskell
--                                   ^^ punctuation.separator.type.context.haskell

    class ModId.QTyCls (tyVar1 tyVar2#) =>
--  ^^^^^ meta.declaration.class.haskell
--       ^^^^^^^^^^^^^^ meta.declaration.class.context.haskell - meta.group
--                     ^^^^^^^^^^^^^^^^ meta.declaration.class.context.haskell meta.group.haskell
--                                     ^ meta.declaration.class.context.haskell - meta.group
--                                      ^^^ meta.declaration.class.haskell - meta.group
--  ^^^^^ keyword.declaration.class.haskell
--        ^^^^^ variable.namespace.haskell
--             ^ punctuation.accessor.dot.haskell
--              ^^^^^^ storage.type.haskell
--                     ^ punctuation.section.group.begin.haskell
--                      ^^^^^^ variable.other.haskell
--                             ^^^^^^^ variable.other.haskell
--                                   ^ storage.modifier.unboxed.haskell
--                                    ^ punctuation.section.group.end.haskell
--                                      ^^ punctuation.separator.type.context.haskell

    class ModId.QTyCls (tyVar1 tyVar2  => )
--  ^^^^^^^^^^^^^^^^^^^ meta.declaration.class.haskell - meta.group
--                     ^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.haskell meta.group.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^^^^ variable.namespace.haskell
--             ^ punctuation.accessor.dot.haskell
--              ^^^^^^ entity.name.class.haskell
--                     ^ punctuation.section.group.begin.haskell
--                      ^^^^^^ variable.other.haskell
--                             ^^^^^^ variable.other.haskell
--                                     ^^ punctuation.separator.type.context.haskell
--                                        ^ punctuation.section.group.end.haskell

    class ModId.QTyCls tyVar1 tyVar2 => Traversable t
--  ^^^^^ meta.declaration.class.haskell
--       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.context.haskell
--                                   ^^^^^^^^^^^^^^^^^ meta.declaration.class.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^^^^ variable.namespace.haskell
--             ^ punctuation.accessor.dot.haskell
--              ^^^^^^ storage.type.haskell
--                     ^^^^^^ variable.other.haskell
--                            ^^^^^^ variable.other.haskell
--                                   ^^ punctuation.separator.type.context.haskell
--                                      ^^^^^^^^^^^ entity.name.class.haskell
--                                                  ^ variable.other.haskell

    class () =>
--  ^^^^^ meta.declaration.class.haskell
--       ^^^^ meta.declaration.class.context.haskell
--           ^^^ meta.declaration.class.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^ meta.sequence.tuple.empty.haskell
--        ^ punctuation.section.sequence.begin.haskell
--         ^ punctuation.section.sequence.end.haskell
--           ^^ punctuation.separator.type.context.haskell

    class (Functor t, Foldable t) => Traversable t where
--  ^^^^^ meta.declaration.class.haskell - meta.sequence
--       ^ meta.declaration.class.context.haskell - meta.sequence
--        ^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.context.haskell meta.sequence.tuple.haskell
--                               ^ meta.declaration.class.context.haskell - meta.sequence
--                                ^^^^^^^^^^^^^^^^^ meta.declaration.class.haskell - meta.sequence
--  ^^^^^ keyword.declaration.class.haskell
--        ^ punctuation.section.sequence.begin.haskell
--         ^^^^^^^ support.class.prelude.haskell
--                 ^ variable.other.haskell
--                  ^ punctuation.separator.sequence.haskell
--                    ^^^^^^^^ support.class.prelude.haskell
--                             ^ variable.other.haskell
--                              ^ punctuation.section.sequence.end.haskell
--                                ^^ punctuation.separator.type.context.haskell
--                                   ^^^^^^^^^^^ entity.name.class.haskell
--                                               ^ variable.other.haskell
--                                                 ^^^^^ keyword.control.context.haskell

    class (b ~ (Body b) GhcPs, AnnoBody b) => DisambECP b where
--  ^^^^^ meta.declaration.class.haskell
--       ^ meta.declaration.class.context.haskell - meta.sequence
--        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.context.haskell meta.sequence.tuple.haskell
--             ^^^^^^^^ meta.group.haskell
--                                        ^ meta.declaration.class.context.haskell - meta.sequence
--                                         ^^^^^^^^^^^^^^^ meta.declaration.class.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^ punctuation.section.sequence.begin.haskell
--         ^ variable.other.haskell
--           ^ keyword.operator.haskell
--             ^ punctuation.section.group.begin.haskell
--              ^^^^ storage.type.haskell
--                   ^ variable.other.haskell
--                    ^ punctuation.section.group.end.haskell
--                      ^^^^^ storage.type.haskell
--                           ^ punctuation.separator.sequence.haskell
--                             ^^^^^^^^ storage.type.haskell
--                                      ^ variable.other.haskell
--                                       ^ punctuation.section.sequence.end.haskell
--                                         ^^ punctuation.separator.type.context.haskell
--                                            ^^^^^^^^^ entity.name.class.haskell
--                                                      ^ variable.other.haskell
--                                                        ^^^^^ keyword.control.context.haskell
--

--  A class declaration with no where part may be useful for combining
--  a collection of classes into a larger one that inherits all of the class
--  methods in the original ones.

    class Eq a => a -> a
--  ^^^^^ meta.declaration.class.haskell
--       ^^^^^^ meta.declaration.class.context.haskell
--             ^^^^^^^^^^ meta.declaration.class.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^ support.class.prelude.haskell
--           ^ variable.other.haskell
--             ^^ punctuation.separator.type.context.haskell
--                ^ variable.other.haskell
--                  ^^ keyword.operator.arrow.haskell
--                     ^ variable.other.haskell

    class (Eq a, Show a, Eq b) => [a] -> [b] -> String
--  ^^^^^ meta.declaration.class.haskell - meta.sequence
--       ^ meta.declaration.class.context.haskell - meta.sequence
--        ^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.context.haskell meta.sequence.tuple.haskell
--                            ^ meta.declaration.class.context.haskell - meta.sequence
--                             ^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.haskell
--  ^^^^^ keyword.declaration.class.haskell
--         ^^ support.class.prelude.haskell
--            ^ variable.other.haskell
--                             ^^ punctuation.separator.type.context.haskell
--                                 ^ variable.other.haskell
--                                    ^^ keyword.operator.arrow.haskell
--                                        ^ variable.other.haskell
--                                           ^^ keyword.operator.arrow.haskell
--                                              ^^^^^^ support.type.prelude.haskell

    class (Eq (f a), Functor f) => (a -> b) -> f a -> f b -> Bool
--  ^^^^^ meta.declaration.class.haskell - meta.sequence - meta.group
--       ^ meta.declaration.class.context.haskell - meta.sequence
--        ^^^^ meta.declaration.class.context.haskell meta.sequence.tuple.haskell - meta.sequence meta.group
--            ^^^^^ meta.declaration.class.context.haskell meta.sequence.tuple.haskell meta.group.haskell
--                 ^^^^^^^^^^^^ meta.declaration.class.context.haskell meta.sequence.tuple.haskell - meta.sequence meta.group
--                             ^ meta.declaration.class.context.haskell - meta.sequence
--                              ^^^ meta.declaration.class.haskell - meta.sequence - meta.group
--                                 ^^^^^^^^ meta.declaration.class.haskell meta.group.haskell
--                                         ^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.haskell - meta.group
--  ^^^^^ keyword.declaration.class.haskell
--         ^^ support.class.prelude.haskell
--            ^ punctuation.section.group.begin.haskell
--             ^ variable.other.haskell
--               ^ variable.other.haskell
--                ^ punctuation.section.group.end.haskell
--                 ^ punctuation.separator.sequence.haskell
--                   ^^^^^^^ support.class.prelude.haskell
--                           ^ variable.other.haskell
--                            ^ punctuation.section.sequence.end.haskell
--                              ^^ punctuation.separator.type.context.haskell
--                                 ^ punctuation.section.group.begin.haskell
--                                  ^ variable.other.haskell
--                                    ^^ keyword.operator.arrow.haskell
--                                       ^ variable.other.haskell
--                                        ^ punctuation.section.group.end.haskell
--                                          ^^ keyword.operator.arrow.haskell
--                                             ^ variable.other.haskell
--                                               ^ variable.other.haskell
--                                                 ^^ keyword.operator.arrow.haskell
--                                                    ^ variable.other.haskell
--                                                      ^ variable.other.haskell
--                                                        ^^ keyword.operator.arrow.haskell
--                                                           ^^^^ support.type.prelude.haskell


-- [ DATA DECLARATIONS ] ------------------------------------------------------

    data
--  ^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell

    data'
--  ^^^^^ variable.other.haskell

    data TyCls
--  ^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^^ entity.name.type.haskell

    data ModId.QTyCls
--  ^^^^^^^^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^^ variable.namespace.haskell
--            ^ punctuation.accessor.dot.haskell
--             ^^^^^^ entity.name.type.haskell

    data CtxCls ctx => ModId.QTyCls
--  ^^^^ meta.declaration.data.haskell
--      ^^^^^^^^^^^^ meta.declaration.data.context.haskell
--                  ^^^^^^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^^^ storage.type.haskell
--              ^^^ variable.other.haskell
--                  ^^ punctuation.separator.type.context.haskell
--                     ^^^^^ variable.namespace.haskell
--                          ^ punctuation.accessor.dot.haskell
--                           ^^^^^^ entity.name.type.haskell

    data =
--  ^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^ keyword.operator.haskell

    -- Declare a list-like data family
    data family XList a
--  ^^^^^^^^^^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^^^ storage.modifier.family.haskell
--              ^^^^^ entity.name.type.haskell
--                    ^ variable.other.haskell

    data family CtxCls par => XList a
--  ^^^^^^^^^^^ meta.declaration.data.haskell
--             ^^^^^^^^^^^^ meta.declaration.data.context.haskell
--                         ^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^^^ storage.modifier.family.haskell
--              ^^^^^^ storage.type.haskell
--                     ^^^ variable.other.haskell
--                         ^^ punctuation.separator.type.context.haskell
--                            ^^^^^ entity.name.type.haskell
--                                  ^ variable.other.haskell

    -- Declare a list-like instance for Char
    data instance XList Char = XCons !Char !(XList Char) | XNil
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^^^^^ storage.modifier.family.haskell
--                ^^^^^ entity.name.type.haskell
--                      ^^^^ support.type.prelude.haskell
--                           ^ keyword.operator.haskell
--                             ^^^^^ entity.name.constant.haskell
--                                   ^ keyword.operator.haskell
--                                    ^^^^ support.type.prelude.haskell
--                                         ^ keyword.operator.haskell
--                                          ^ punctuation.section.group.begin.haskell
--                                           ^^^^^ storage.type.haskell
--                                                 ^^^^ support.type.prelude.haskell
--                                                     ^ punctuation.section.group.end.haskell
--                                                       ^ punctuation.separator.sequence.haskell
--                                                         ^^^^ entity.name.constant.haskell

    -- Declare a number-like instance for ()
    data instance XList () = XListUnit !Int
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^^^^^ storage.modifier.family.haskell
--                ^^^^^ entity.name.type.haskell
--                      ^ punctuation.section.sequence.begin.haskell
--                       ^ punctuation.section.sequence.end.haskell
--                         ^ keyword.operator.haskell
--                           ^^^^^^^^^ entity.name.constant.haskell
--                                     ^ keyword.operator.haskell
--                                      ^^^ support.type.prelude.haskell

    data Record =
--  ^^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^^^ entity.name.type.haskell
--              ^ keyword.operator.haskell
    Record {
--  ^^^^^^^ - meta.block
--         ^^ meta.block.haskell
--  ^^^^^^ entity.name.constant.haskell
--         ^ punctuation.section.block.begin.haskell
        recordInt :: Int
--      ^^^^^^^^^ variable.other.haskell
--                ^^ punctuation.separator.type.haskell
--                   ^^^ support.type.prelude.haskell
      , recordString :: String
--    ^ punctuation.separator.sequence.haskell
--      ^^^^^^^^^^^^ variable.other.haskell
--                   ^^ punctuation.separator.type.haskell
--                      ^^^^^^ support.type.prelude.haskell
      , recordDouble :: Double#
--    ^ punctuation.separator.sequence.haskell
--      ^^^^^^^^^^^^ variable.other.haskell
--                   ^^ punctuation.separator.type.haskell
--                      ^^^^^^^ support.type.unboxed.haskell
--                            ^ storage.modifier.unboxed.haskell
      , recordRational :: Rational
--    ^ punctuation.separator.sequence.haskell
--      ^^^^^^^^^^^^^^ variable.other.haskell
--                     ^^ punctuation.separator.type.haskell
--                        ^^^^^^^^ support.type.prelude.haskell
      } deriving (Eq, Ord, Generic)
--   ^^ meta.declaration.data.haskell meta.block.haskell
--     ^ meta.declaration.data.haskell
--      ^^^^^^^^^ meta.declaration.deriving.haskell - meta.sequence
--               ^^^^^^^^^^^^^^^^^^ meta.declaration.deriving.haskell meta.sequence.tuple.haskell
--                                 ^ - meta.declaration.deriving - meta.sequence
--      ^^^^^^^^ storage.modifier.haskell
--               ^ punctuation.section.sequence.begin.haskell
--                ^^ support.class.prelude.haskell
--                  ^ punctuation.separator.sequence.haskell
--                    ^^^ support.class.prelude.haskell
--                       ^ punctuation.separator.sequence.haskell
--                         ^^^^^^^ storage.type.haskell
--                                ^ punctuation.section.sequence.end.haskell
        deriving (Read, Show) via (Quiet Record)
--      ^^^^^^^^^ meta.declaration.deriving.haskell - meta.sequence
--               ^^^^^^^^^^^^ meta.declaration.deriving.haskell meta.sequence.tuple.haskell
--                           ^ - meta.declaration.deriving - meta.sequence
--                            ^^^^ meta.declaration.deriving.haskell - meta.sequence
--                                ^^^^^^^^^^^^^^ meta.declaration.deriving.haskell meta.sequence.tuple.haskell
--                                              ^ - meta.declaration.deriving - meta.sequence
--      ^^^^^^^^ storage.modifier.haskell
--               ^ punctuation.section.sequence.begin.haskell
--                ^^^^ support.class.prelude.haskell
--                    ^ punctuation.separator.sequence.haskell
--                      ^^^^ support.class.prelude.haskell
--                          ^ punctuation.section.sequence.end.haskell
--                            ^^^ storage.modifier.haskell
--                                ^ punctuation.section.sequence.begin.haskell
--                                 ^^^^^ storage.type.haskell
--                                      ^ - entity
--                                       ^^^^^^ storage.type.haskell
--                                             ^ punctuation.section.sequence.end.haskell

    data Outrageous =
--  ^^^^^^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^^^^^^^ entity.name.type.haskell
--                  ^ keyword.operator.haskell
        String !Record
--      ^^^^^^ entity.name.constant.haskell
--             ^ keyword.operator.haskell
--              ^^^^^^ storage.type.haskell
      | Constr (->)
--      ^^^^^^ entity.name.constant.haskell
--             ^^^^ meta.prefix.haskell
--             ^ punctuation.definition.prefix.begin.haskell
--              ^^ keyword.operator.haskell
--                ^ punctuation.definition.prefix.end.haskell
      | Int :! Int
--    ^ punctuation.separator.sequence.haskell
--      ^^^ support.type.prelude.haskell
--          ^^ keyword.operator.haskell
--             ^^^ support.type.prelude.haskell
      | Double :@ Double
--    ^ punctuation.separator.sequence.haskell
--      ^^^^^^ support.type.prelude.haskell
--             ^^ keyword.operator.haskell
--                ^^^^^^ support.type.prelude.haskell
      | Int `Quux` Double
--    ^ punctuation.separator.sequence.haskell
--      ^^^ support.type.prelude.haskell
--          ^ meta.infix.haskell punctuation.definition.infix.begin.haskell
--           ^^^^ meta.infix.haskell keyword.operator.function.infix.haskell
--               ^ meta.infix.haskell punctuation.definition.infix.end.haskell
--                 ^^^^^^ support.type.prelude.haskell
      | String :# !Record
--    ^ punctuation.separator.sequence.haskell
--      ^^^^^^ support.type.prelude.haskell
--             ^^ keyword.operator.haskell
--                ^ keyword.operator.haskell
--                 ^^^^^^ storage.type.haskell
      | Simple :$ Outrageous
--    ^ punctuation.separator.sequence.haskell
--      ^^^^^^ storage.type.haskell
--             ^^ keyword.operator.haskell
--                ^^^^^^^^^^ storage.type.haskell
      | DontDoThis { outrageousInt :: Int, outrageousString :: String }
--    ^ punctuation.separator.sequence.haskell
--      ^^^^^^^^^^ entity.name.constant.haskell
--                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.haskell
--                 ^ punctuation.section.block.begin.haskell
--                   ^^^^^^^^^^^^^ meta.block.haskell variable.other.haskell
--                                 ^^ punctuation.separator.type.haskell
--                                    ^^^ support.type.prelude.haskell
--                                       ^ punctuation.separator.sequence.haskell
--                                         ^^^^^^^^^^^^^^^^ meta.block.haskell variable.other.haskell
--                                                          ^^ punctuation.separator.type.haskell
--                                                             ^^^^^^ support.type.prelude.haskell
--                                                                    ^ punctuation.section.block.end.haskell
        deriving (Eq, Ord, Generic)
--      ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.deriving.haskell
        deriving (Read, Show) via (Quiet Outrageous)
--      ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.deriving.haskell
--                            ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.deriving.haskell

    data BuilderType = Builder
        { (>>=)  :: forall m a b. Unrestricted.Monad     m => m a -> (a -> m b) -> m b
--        ^^^^^ meta.block.haskell meta.prefix.haskell
--        ^ punctuation.definition.prefix.begin.haskell
--         ^^^ keyword.operator.haskell
--            ^ punctuation.definition.prefix.end.haskell
--               ^^ punctuation.separator.type.haskell
--                  ^^^^^^ keyword.control.forall.haskell
--                              ^ punctuation.separator.sequence.haskell
--                                ^^^^^^^^^^^^ variable.namespace.haskell
--                                            ^ punctuation.accessor.dot.haskell
--                                             ^^^^^ support.class.prelude.haskell
        , (>>)   :: forall m b  . Unrestricted.Monad     m => m() -> m b -> m b
--      ^ punctuation.separator.sequence.haskell
--        ^^^^ meta.block.haskell meta.prefix.haskell
--        ^ punctuation.definition.prefix.begin.haskell
--         ^^ keyword.operator.haskell
--           ^ punctuation.definition.prefix.end.haskell
--               ^^ punctuation.separator.type.haskell
--                  ^^^^^^ keyword.control.forall.haskell
--                              ^ punctuation.separator.sequence.haskell
--                                ^^^^^^^^^^^^ variable.namespace.haskell
--                                            ^ punctuation.accessor.dot.haskell
--                                             ^^^^^ support.class.prelude.haskell
        , fail   :: ∀ m a       . Unrestricted.MonadFail m => String -> m a
--      ^ punctuation.separator.sequence.haskell
--        ^^^^ support.function.prelude.haskell
--               ^^ punctuation.separator.type.haskell
--                  ^ keyword.control.forall.haskell
--                              ^ punctuation.separator.sequence.haskell
--                                ^^^^^^^^^^^^ variable.namespace.haskell
--                                            ^ punctuation.accessor.dot.haskell
--                                             ^^^^^^^^^ storage.type.haskell
        , return :: forall m a  . Unrestricted.Monad     m => a -> m a
--      ^ punctuation.separator.sequence.haskell
--        ^^^^^^ support.function.prelude.haskell
--               ^^ punctuation.separator.type.haskell
--                  ^^^^^^ keyword.control.forall.haskell
--                              ^ punctuation.separator.sequence.haskell
--                                ^^^^^^^^^^^^ variable.namespace.haskell
--                                            ^ punctuation.accessor.dot.haskell
--                                             ^^^^^ support.class.prelude.haskell
        }

    data Bool = True | False
--  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^ entity.name.type.haskell
--            ^ keyword.operator.haskell
--              ^^^^ entity.name.constant.haskell
--                   ^ punctuation.separator.sequence.haskell
--                     ^^^^^ entity.name.constant.haskell

    data Tree a = Tip | Node a (Tree a) (Tree a)
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^ entity.name.type.haskell
--            ^ variable.other.haskell
--              ^ keyword.operator.haskell
--                ^^^ entity.name.constant.haskell
--                    ^ punctuation.separator.sequence.haskell
--                      ^^^^ entity.name.constant.haskell
--                           ^ variable.other.haskell
--                             ^^^^^^^^ meta.group.haskell
--                             ^ punctuation.section.group.begin.haskell
--                              ^^^^ storage.type.haskell
--                                   ^ variable.other.haskell
--                                    ^ punctuation.section.group.end.haskell
--                                      ^^^^^^^^ meta.group.haskell
--                                      ^ punctuation.section.group.begin.haskell
--                                       ^^^^ storage.type.haskell
--                                            ^ variable.other.haskell
--                                             ^ punctuation.section.group.end.haskell

    -- make sure not to break following function definitions
    data Type a = Con Type1 !Type2 a
    func :: Type
--  ^^^^^^^^^^^^^ - meta.declaration.data
--  ^^^^^ meta.function.identifier.haskell
--  ^^^^ entity.name.function.haskell
--       ^^ punctuation.separator.type.haskell
--          ^^^^ support.type.prelude.haskell

    -- make sure not to break following function definitions
    data Type a = Con { var :: Type }
    func :: Type
--  ^^^^^^^^^^^^^ - meta.declaration.data
--  ^^^^^ meta.function.identifier.haskell
--  ^^^^ entity.name.function.haskell
--       ^^ punctuation.separator.type.haskell
--          ^^^^ support.type.prelude.haskell

    -- make sure not to break following function definitions
    data Type a = Type1 :$ Type2
    func :: Type
--  ^^^^^^^^^^^^^ - meta.declaration.data
--  ^^^^^ meta.function.identifier.haskell
--  ^^^^ entity.name.function.haskell
--       ^^ punctuation.separator.type.haskell
--          ^^^^ support.type.prelude.haskell

    -- make sure not to break following function definitions
    data Type a = Type1 :$ Type2
    func
         :: Type
--  ^^^^^^^^^^^^^ - meta.declaration.data
--       ^^ punctuation.separator.type.haskell
--          ^^^^ support.type.prelude.haskell

    -- make sure not to break following function definitions
    data Type a = Type1 :$ Type2
    foo, bar, baz :: Type
--  ^^^^^^^^^^^^^^^^^^^^^ - meta.declaration.data
--  ^^^^^^^^^^^^^^ meta.function.identifier.haskell
--  ^^^ entity.name.function.haskell
--     ^ punctuation.separator.sequence.haskell
--       ^^^ entity.name.function.haskell
--          ^ punctuation.separator.sequence.haskell
--            ^^^ entity.name.function.haskell
--                ^^ punctuation.separator.type.haskell
--                   ^^^^ support.type.prelude.haskell

    -- make sure not to break assignment expression
    data Type a = Con Type1 !Type2 a
    var = Con
--  ^^^^^^^^^ - meta.declaration.data
--  ^^^ variable.other.haskell
--      ^ keyword.operator.haskell
--        ^^^ storage.type.haskell

    -- make sure not to break assignment expression
    data Type a = Con { var :: Type }
    var = Con
--  ^^^^^^^^^ - meta.declaration.data
--  ^^^ variable.other.haskell
--      ^ keyword.operator.haskell
--        ^^^ storage.type.haskell

    -- make sure not to break assignment expression
    data Type a = Type1 :$ Type2
    var = Con
--  ^^^^^^^^^ - meta.declaration.data
--  ^^^ variable.other.haskell
--      ^ keyword.operator.haskell
--        ^^^ storage.type.haskell

    -- make sure not to break assignment expression
    data Type a = Type1 :$ Type2
    foo bar baz = Con
--  ^^^^^^^^^^^^^^^^^ - meta.declaration.data
--  ^^^ variable.other.haskell
--      ^^^ variable.other.haskell
--          ^^^ variable.other.haskell
--              ^ keyword.operator.haskell
--                ^^^ storage.type.haskell

    -- make sure not to break assignment expression
    data Type a = Type1 :$ Type2
    var <- True = Con
--  ^^^^^^^^^^^^^^^^^ - meta.declaration.data
--  ^^^ variable.other.haskell
--      ^^ keyword.operator.arrow.haskell
--              ^ keyword.operator.haskell
--                ^^^ storage.type.haskell

    -- make sure not to break assignment expression
    data Type a = Type1 :$ Type2
    foo bar baz <- True = Con
--  ^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.declaration.data
--  ^^^ variable.other.haskell
--      ^^^ variable.other.haskell
--          ^^^ variable.other.haskell
--              ^^ keyword.operator.arrow.haskell
--                 ^^^^ support.constant.prelude.haskell
--                      ^ keyword.operator.haskell
--                        ^^^ storage.type.haskell

    -- make sure not to break constructor by following function definition
    data Type
        = Foo                    -- comment
        | Bar Bool {- comment -} -- comment
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.data.haskell
--      ^ punctuation.separator.sequence.haskell
--        ^^^ entity.name.constant.haskell
--            ^^^^ support.type.prelude.haskell
--                 ^^^^^^^^^^^^^ comment.block.haskell
--                               ^^^^^^^^^^^ comment.line.double-dash.haskell
    foo, bar, baz :: Mode
--  ^^^^^^^^^^^^^^^^^^^^^ - meta.declaration.data
--  ^^^^^^^^^^^^^^ meta.function.identifier.haskell
--  ^^^ entity.name.function.haskell
--     ^ punctuation.separator.sequence.haskell
--       ^^^ entity.name.function.haskell
--          ^ punctuation.separator.sequence.haskell
--            ^^^ entity.name.function.haskell
--                ^^ punctuation.separator.type.haskell
--                   ^^^^ storage.type.haskell

    -- make sure not to break constructor by following assignment expression
    data Type
        = Foo                    -- comment
        | Bar Bool {- comment -} -- comment
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.data.haskell
--      ^ punctuation.separator.sequence.haskell
--        ^^^ entity.name.constant.haskell
--            ^^^^ support.type.prelude.haskell
--                 ^^^^^^^^^^^^^ comment.block.haskell
--                               ^^^^^^^^^^^ comment.line.double-dash.haskell
    foo bar baz <- True = Con
--  ^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.declaration.data
--  ^^^ variable.other.haskell
--      ^^^ variable.other.haskell
--          ^^^ variable.other.haskell
--              ^^ keyword.operator.arrow.haskell
--                 ^^^^ support.constant.prelude.haskell
--                      ^ keyword.operator.haskell
--                        ^^^ storage.type.haskell

-- [ DEFAULT DECLARATIONS ] ---------------------------------------------------

    default
--  ^^^^^^^^ meta.declaration.default.haskell
--  ^^^^^^^ storage.modifier.haskell

   'default
-- ^ keyword.operator.haskell
--  ^^^^^^^ storage.modifier.haskell

    default'
--  ^^^^^^^^ - keyword

    default ()
--  ^^^^^^^^ meta.declaration.default.haskell - meta.sequence
--          ^^ meta.declaration.default.haskell meta.sequence.tuple.haskell
--  ^^^^^^^ storage.modifier.haskell
--          ^ punctuation.section.sequence.begin.haskell
--           ^ punctuation.section.sequence.end.haskell

    default (TyCls, ModId.QTyCls)
--  ^^^^^^^^ meta.declaration.default.haskell - meta.sequence
--          ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.default.haskell meta.sequence.tuple.haskell
--  ^^^^^^^ storage.modifier.haskell
--          ^ punctuation.section.sequence.begin.haskell
--           ^^^^^ storage.type.haskell
--                ^ punctuation.separator.sequence.haskell
--                  ^^^^^ variable.namespace.haskell
--                       ^ punctuation.accessor.dot.haskell
--                        ^^^^^^ storage.type.haskell
--                              ^ punctuation.section.sequence.end.haskell


-- [ DERIVING DECLARATIONS ] --------------------------------------------------

    deriving
--  ^^^^^^^^^ meta.declaration.deriving.haskell
--  ^^^^^^^^ storage.modifier.haskell

   'deriving
-- ^ keyword.operator.haskell
--  ^^^^^^^^ storage.modifier.haskell

    deriving'
--  ^^^^^^^^^ - keyword

    deriving TyCls Const
--  ^^^^^^^^^^^^^^ meta.declaration.deriving.haskell
--                ^^^^^^ - meta.declaration
--  ^^^^^^^^ storage.modifier.haskell
--           ^^^^^ storage.type.haskell
--                 ^^^^^ storage.type.haskell

    deriving ModId.QTyCls ModId.Const
--  ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.deriving.haskell
--                       ^^^^^^^^^^^^ - meta.declaration
--  ^^^^^^^^ storage.modifier.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^^^^^ variable.namespace.haskell
--                             ^ punctuation.accessor.dot.haskell
--                              ^^^^^ storage.type.haskell

    deriving ()
--  ^^^^^^^^^ meta.declaration.deriving.haskell - meta.sequence
--           ^^ meta.declaration.deriving.haskell meta.sequence.tuple.haskell
--             ^ - meta.declaration
--  ^^^^^^^^ storage.modifier.haskell
--           ^ punctuation.section.sequence.begin.haskell
--            ^ punctuation.section.sequence.end.haskell

    deriving (TyCls, ModId.QTyCls)
--  ^^^^^^^^^ meta.declaration.deriving.haskell - meta.sequence
--           ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.deriving.haskell meta.sequence.tuple.haskell
--                                ^ - meta.declaration
--  ^^^^^^^^ storage.modifier.haskell
--           ^ punctuation.section.sequence.begin.haskell
--            ^^^^^ storage.type.haskell
--                 ^ punctuation.separator.sequence.haskell
--                   ^^^^^ variable.namespace.haskell
--                        ^ punctuation.accessor.dot.haskell
--                         ^^^^^^ storage.type.haskell
--                               ^ punctuation.section.sequence.end.haskell


-- [ INSTANCE DECLARATIONS ] --------------------------------------------------

    instance
--  ^^^^^^^^^ meta.declaration.instance.haskell
--  ^^^^^^^^ keyword.declaration.instance.haskell

    instance ModId.QTyCls
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell

    instance ModId.QTyCls []
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^^ meta.declaration.instance.haskell meta.sequence.list.empty.haskell
--                          ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ punctuation.section.sequence.begin.haskell
--                         ^ punctuation.section.sequence.end.haskell

    instance ModId.QTyCls ()
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^^ meta.declaration.instance.haskell meta.sequence.tuple.empty.haskell
--                          ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ punctuation.section.sequence.begin.haskell
--                         ^ punctuation.section.sequence.end.haskell

    instance ModId.QTyCls (,)
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^^^ meta.declaration.instance.haskell meta.sequence.tuple.haskell
--                           ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ punctuation.section.sequence.begin.haskell
--                         ^ punctuation.separator.sequence.haskell
--                          ^ punctuation.section.sequence.end.haskell

    instance ModId.QTyCls (->)
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.prefix
--                        ^^^^ meta.declaration.instance.haskell meta.prefix.haskell
--                            ^ meta.declaration.instance.haskell - meta.prefix
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ punctuation.definition.prefix.begin.haskell
--                         ^^ keyword.operator.haskell
--                           ^ punctuation.definition.prefix.end.haskell

    instance ModId.QTyCls a
--  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ variable.other.haskell

    instance ModId.QTyCls [a]
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^^^ meta.declaration.instance.haskell meta.sequence.list.haskell
--                           ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ punctuation.section.sequence.begin.haskell
--                         ^ variable.other.haskell
--                          ^ punctuation.section.sequence.end.haskell

    instance ModId.QTyCls (a, b)
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^^^^^^ meta.declaration.instance.haskell meta.sequence.tuple.haskell
--                              ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ punctuation.section.sequence.begin.haskell
--                         ^ variable.other.haskell
--                          ^ punctuation.separator.sequence.haskell
--                            ^ variable.other.haskell
--                             ^ punctuation.section.sequence.end.haskell

    instance ModId.QTyCls (a -> b)
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.group
--                        ^^^^^^^^ meta.declaration.instance.haskell meta.group.haskell
--                                ^ meta.declaration.instance.haskell - meta.group
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ punctuation.section.group.begin.haskell
--                         ^ variable.other.haskell
--                           ^^ keyword.operator.arrow.haskell
--                              ^ variable.other.haskell
--                               ^ punctuation.section.group.end.haskell

    instance ModId.QTyCls ([] a b)
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.group
--                        ^ meta.declaration.instance.haskell meta.group.haskell
--                         ^^ meta.declaration.instance.haskell meta.group.haskell meta.sequence.list.empty.haskell
--                           ^^^^^ meta.declaration.instance.haskell meta.group.haskell
--                                ^ meta.declaration.instance.haskell - meta.group
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ punctuation.section.group.begin.haskell
--                         ^ punctuation.section.sequence.begin.haskell
--                          ^ punctuation.section.sequence.end.haskell
--                            ^ variable.other.haskell
--                              ^ variable.other.haskell
--                               ^ punctuation.section.group.end.haskell

    instance ModId.QTyCls (() a b)
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.group
--                        ^ meta.declaration.instance.haskell meta.group.haskell
--                         ^^ meta.declaration.instance.haskell meta.group.haskell meta.sequence.tuple.empty.haskell
--                           ^^^^^ meta.declaration.instance.haskell meta.group.haskell
--                                ^ meta.declaration.instance.haskell - meta.group
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ punctuation.section.group.begin.haskell
--                         ^ punctuation.section.sequence.begin.haskell
--                          ^ punctuation.section.sequence.end.haskell
--                            ^ variable.other.haskell
--                              ^ variable.other.haskell
--                               ^ punctuation.section.group.end.haskell

    instance ModId.QTyCls ((,) a b)
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.group
--                        ^ meta.declaration.instance.haskell meta.group.haskell
--                         ^^^ meta.declaration.instance.haskell meta.group.haskell meta.sequence.tuple.haskell
--                            ^^^^^ meta.declaration.instance.haskell meta.group.haskell
--                                 ^ meta.declaration.instance.haskell - meta.group
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ punctuation.section.group.begin.haskell
--                         ^ punctuation.section.sequence.begin.haskell
--                          ^ punctuation.separator.sequence.haskell
--                           ^ punctuation.section.sequence.end.haskell
--                             ^ variable.other.haskell
--                               ^ variable.other.haskell
--                                ^ punctuation.section.group.end.haskell

    instance ModId.QTyCls ((->) a b)
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.group
--                        ^ meta.declaration.instance.haskell meta.group.haskell
--                         ^^^^ meta.declaration.instance.haskell meta.group.haskell meta.prefix.haskell
--                             ^^^^^ meta.declaration.instance.haskell meta.group.haskell
--                                  ^ meta.declaration.instance.haskell - meta.group
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ punctuation.section.group.begin.haskell
--                         ^ punctuation.definition.prefix.begin.haskell
--                          ^^ keyword.operator.haskell
--                            ^ punctuation.definition.prefix.end.haskell
--                              ^ variable.other.haskell
--                                ^ variable.other.haskell
--                                 ^ punctuation.section.group.end.haskell

    instance Num a => Bar [a] where ...
--  ^^^^^^^^ meta.declaration.instance.haskell
--          ^^^^^^^ meta.declaration.instance.context.haskell
--                 ^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^^^ meta.declaration.instance.haskell meta.sequence.list.haskell
--                           ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^ support.class.prelude.haskell
--               ^ variable.other.haskell
--                 ^^ punctuation.separator.type.context.haskell
--                    ^^^ storage.type.haskell
--                        ^ punctuation.section.sequence.begin.haskell
--                         ^ variable.other.haskell
--                          ^ punctuation.section.sequence.end.haskell
--                            ^^^^^ keyword.control.context.haskell

    instance (Eq a, Show a) => Foo [a] where ...
--  ^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--          ^ meta.declaration.instance.context.haskell - meta.sequence
--           ^^^^^^^^^^^^^^ meta.declaration.instance.context.haskell meta.sequence.tuple.haskell
--                         ^ meta.declaration.instance.context.haskell - meta.sequence
--                          ^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                                 ^^^ meta.declaration.instance.haskell meta.sequence.list.haskell
--                                    ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^ punctuation.section.sequence.begin.haskell
--            ^^ support.class.prelude.haskell
--               ^ variable.other.haskell
--                ^ punctuation.separator.sequence.haskell
--                  ^^^^ support.class.prelude.haskell
--                       ^ variable.other.haskell
--                        ^ punctuation.section.sequence.end.haskell
--                          ^^ punctuation.separator.type.context.haskell
--                             ^^^ storage.type.haskell
--                                 ^ punctuation.section.sequence.begin.haskell
--                                  ^ variable.other.haskell
--                                   ^ punctuation.section.sequence.end.haskell
--                                     ^^^^^ keyword.control.context.haskell

    {- illegal instance declarations -}

    instance C (a,a) where ...    -- a, a is not distinct
---               ^ invalid.illegal

    instance C (Int,a) where ...  -- no type allowed
---             ^^^ invalid.illegal

    instance C [[a]] where ...    -- no nested lists allowed
---             ^^^ invalid.illegal


-- [ NEWTYPE DECLARATIONS ] ---------------------------------------------------

    newtype
--  ^^^^^^^^ meta.declaration.newtype.haskell
--  ^^^^^^^ keyword.declaration.newtype.haskell

   'newtype
-- ^ - keyword.declaration
--  ^^^^^^^ keyword.declaration.newtype.haskell

    newtype'
--  ^^^^^^^^ - keyword

    newtype =
--  ^^^^^^^^ meta.declaration.newtype.haskell
--  ^^^^^^^ keyword.declaration.newtype.haskell
--          ^ keyword.operator.haskell

    newtype =>
--  ^^^^^^^ meta.declaration.newtype.haskell
--         ^ meta.declaration.newtype.context.haskell
--          ^^^ meta.declaration.newtype.haskell
--  ^^^^^^^ keyword.declaration.newtype.haskell
--          ^^ punctuation.separator.type.context.haskell

    newtype CtxCls tyVar =>
--  ^^^^^^^ meta.declaration.newtype.haskell
--         ^^^^^^^^^^^^^^ meta.declaration.newtype.context.haskell
--                       ^^^ meta.declaration.newtype.haskell
--  ^^^^^^^ keyword.declaration.newtype.haskell
--          ^^^^^^ storage.type.haskell
--                 ^^^^^ variable.other.haskell
--                       ^^ punctuation.separator.type.context.haskell

    newtype () => ModId.QTyCls tyVar1 tyVar2 deriving (Class1, QTyCls2)
--  ^^^^^^^ meta.declaration.newtype.haskell
--         ^^^^ meta.declaration.newtype.context.haskell
--             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.newtype.haskell
--                                           ^^^^^^^^^ meta.declaration.deriving.haskell - meta.sequence
--                                                    ^^^^^^^^^^^^^^^^^ meta.declaration.deriving.haskell meta.sequence.tuple.haskell
--                                                                     ^ - meta.declaration
--  ^^^^ keyword.declaration.newtype.haskell
--          ^^ meta.sequence.tuple.empty.haskell
--          ^ punctuation.section.sequence.begin.haskell
--           ^ punctuation.section.sequence.end.haskell
--             ^^ punctuation.separator.type.context.haskell
--                ^^^^^ variable.namespace.haskell
--                     ^ punctuation.accessor.dot.haskell
--                      ^^^^^^ entity.name.type.haskell
--                             ^^^^^^ variable.other.haskell
--                                    ^^^^^^ variable.other.haskell
--                                           ^^^^^^^^ storage.modifier.haskell
--                                                    ^ punctuation.section.sequence.begin.haskell
--                                                     ^^^^^^ storage.type.haskell
--                                                           ^ punctuation.separator.sequence.haskell
--                                                             ^^^^^^^ storage.type.haskell
--                                                                    ^ punctuation.section.sequence.end.haskell


-- [ TYPE DECLARATIONS ] ------------------------------------------------------

    type
--  ^^^^^ meta.declaration.type.haskell
--  ^^^^ keyword.declaration.type.haskell

   'type
-- ^ - keyword.declaration
--  ^^^^ keyword.declaration.type.haskell

    type'
--  ^^^^^ - keyword

    type QTyCls tyVar
--  ^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--  ^^^^ keyword.declaration.type.haskell
--       ^^^^^^ entity.name.type.haskell
--              ^^^^^ variable.other.haskell

    type ModId.QTyCls tyVar1 tyVar2
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--  ^^^^ keyword.declaration.type.haskell
--       ^^^^^ variable.namespace.haskell
--            ^ punctuation.accessor.dot.haskell
--             ^^^^^^ entity.name.type.haskell
--                    ^^^^^^ variable.other.haskell
--                           ^^^^^^ variable.other.haskell

    type ModId.QTyCls tyVar1 tyVar2 =
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--  ^^^^ keyword.declaration.type.haskell
--       ^^^^^ variable.namespace.haskell
--            ^ punctuation.accessor.dot.haskell
--             ^^^^^^ entity.name.type.haskell
--                    ^^^^^^ variable.other.haskell
--                           ^^^^^^ variable.other.haskell

    type ModId.QTyCls tyVar1 tyVar2 deriving (Class1, QTyCls2)
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--                                  ^^^^^^^^^ meta.declaration.deriving.haskell - meta.sequence
--                                           ^^^^^^^^^^^^^^^^^ meta.declaration.deriving.haskell meta.sequence.tuple.haskell
--                                                            ^ - meta.declaration
--  ^^^^ keyword.declaration.type.haskell
--       ^^^^^ variable.namespace.haskell
--            ^ punctuation.accessor.dot.haskell
--             ^^^^^^ entity.name.type.haskell
--                    ^^^^^^ variable.other.haskell
--                           ^^^^^^ variable.other.haskell
--                                  ^^^^^^^^ storage.modifier.haskell
--                                           ^ punctuation.section.sequence.begin.haskell
--                                            ^^^^^^ storage.type.haskell
--                                                  ^ punctuation.separator.sequence.haskell
--                                                    ^^^^^^^ storage.type.haskell
--                                                           ^ punctuation.section.sequence.end.haskell

    type ModId.CtxCls tyVar => ModId.QTyCls
--  ^^^^ meta.declaration.type.haskell
--      ^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.context.haskell
--                          ^^^^^^^^^^^^^^^^ meta.declaration.type
--  ^^^^ keyword.declaration.type.haskell
--       ^^^^^ variable.namespace.haskell
--            ^ punctuation.accessor.dot.haskell
--             ^^^^^^ storage.type.haskell
--                    ^^^^^ variable.other.haskell
--                          ^^ punctuation.separator.type.context.haskell
--                             ^^^^^ variable.namespace.haskell
--                                  ^ punctuation.accessor.dot.haskell
--                                   ^^^^^^ entity.name.type.haskell

    type (A <= b) ~ (B >= Q) => CtxCls
--  ^^^^ meta.declaration.type.haskell
--      ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.context.haskell
--       ^^^^^^^^ meta.group.haskell
--                  ^^^^^^^^ meta.group.haskell
--                           ^^^^^^^^^^ meta.declaration.type.haskell
--  ^^^^ keyword.declaration.type.haskell
--       ^ punctuation.section.group.begin.haskell
--        ^ storage.type.haskell
--          ^^ keyword.operator.haskell
--             ^ variable.other.haskell
--              ^ punctuation.section.group.end.haskell
--                ^ keyword.operator.haskell
--                  ^ punctuation.section.group.begin.haskell
--                   ^ storage.type.haskell
--                     ^^ keyword.operator.haskell
--                        ^ storage.type.haskell
--                         ^ punctuation.section.group.end.haskell
--                           ^^ punctuation.separator.type.context.haskell
--                              ^^^^^^ entity.name.type.haskell

    type Id a = a
--  ^^^^^^^^^^ meta.declaration.type.haskell
--            ^ keyword.operator.haskell
--              ^ variable.other.haskell

    type Const a b = a
--  ^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--                 ^ keyword.operator.haskell
--                   ^ variable.other.haskell

    type FunctionTo a b = b -> a
--  ^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--                      ^ keyword.operator.haskell
--                        ^ variable.other.haskell
--                          ^^ keyword.operator.arrow.haskell
--                             ^ variable.other.haskell

    type Indexed f g = forall i. f i -> g i
--  ^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--                   ^ keyword.operator.haskell
--                     ^^^^^^ keyword.control.forall.haskell
--                            ^ variable.other.haskell
--                             ^ punctuation.separator.sequence.haskell
--                               ^ variable.other.haskell
--                                 ^ variable.other.haskell
--                                   ^^ keyword.operator.arrow.haskell
--                                      ^ variable.other.haskell
--                                        ^ variable.other.haskell

    type ShowIndexed f g = forall i. (Show i) => f i -> g i
--  ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--                       ^ keyword.operator.haskell
--                         ^^^^^^ keyword.control.forall.haskell
--                                ^ variable.other.haskell
--                                 ^ punctuation.separator.sequence.haskell
--                                   ^^^^^^^^ meta.group.haskell
--                                   ^ punctuation.section.group.begin.haskell
--                                    ^^^^ support.class.prelude.haskell
--                                         ^ variable.other.haskell
--                                          ^ punctuation.section.group.end.haskell
--                                            ^^ punctuation.separator.type.context.haskell
--                                               ^ variable.other.haskell
--                                                 ^ variable.other.haskell
--                                                   ^^ keyword.operator.arrow.haskell
--                                                      ^ variable.other.haskell
--                                                        ^ variable.other.haskell

    type ShowConstrained f a = (Show a) => f a
--  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--                           ^ keyword.operator.haskell
--                             ^^^^^^^^ meta.group.haskell
--                             ^ punctuation.section.group.begin.haskell
--                              ^^^^ support.class.prelude.haskell
--                                   ^ variable.other.haskell
--                                    ^ punctuation.section.group.end.haskell
--                                      ^^ punctuation.separator.type.context.haskell
--                                         ^ variable.other.haskell
--                                           ^ variable.other.haskell

    type CmdRoute =
--  ^^^^^^^^^^^^^^ meta.declaration.type.haskell
--  ^^^^ keyword.declaration.type.haskell
--       ^^^^^^^^ entity.name.type.haskell
--                ^ keyword.operator.haskell
      ( ReqBody '[JSON] CmdDto :> PostCreated '[JSON] NoContent
--    ^^^^^^^^^^^ meta.group.haskell - meta.sequence
--               ^^^^^^ meta.group.haskell meta.sequence.list.haskell
--                     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.haskell - meta.sequence
--                                             ^^^^^^ meta.group.haskell meta.sequence.list.haskell
--                                                   ^^^^^^^^^^^ meta.group.haskell - meta.sequence
--    ^ punctuation.section.group.begin.haskell
--              ^ keyword.operator.haskell
--               ^ punctuation.section.sequence.begin.haskell
--                    ^ punctuation.section.sequence.end.haskell
--                             ^^ keyword.operator.haskell
--                                            ^ keyword.operator.haskell
--                                             ^ punctuation.section.sequence.begin.haskell
--                                                  ^ punctuation.section.sequence.end.haskell
        :<|> Capture "id" Text :> ReqBody '[JSON] CmdDto :> Put '[JSON] NoContent
--      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.haskell - meta.sequence
--                                         ^^^^^^ meta.group.haskell meta.sequence.list.haskell
--                                               ^^^^^^^^^^^^^^^^ meta.group.haskell - meta.sequence
--                                                               ^^^^^^ meta.group.haskell meta.sequence.list.haskell
--                                                                     ^^^^^^^^^^^ meta.group.haskell - meta.sequence
--      ^^^^ keyword.operator.haskell
--                             ^^ keyword.operator.haskell
--                                        ^ keyword.operator.haskell
--                                         ^ punctuation.section.sequence.begin.haskell
--                                              ^ punctuation.section.sequence.end.haskell
--                                                       ^^ keyword.operator.haskell
--                                                              ^ keyword.operator.haskell
--                                                               ^ punctuation.section.sequence.begin.haskell
--                                                                    ^ punctuation.section.sequence.end.haskell
      )
--    ^ meta.group.haskell punctuation.section.group.end.haskell

    type family TypeFamily
--  ^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--  ^^^^ keyword.declaration.type.haskell
--       ^^^^^^ storage.modifier.family.haskell
--              ^^^^^^^^^^ entity.name.type.haskell

    type family Elem c :: *
--  ^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--  ^^^^ keyword.declaration.type.haskell
--       ^^^^^^ storage.modifier.family.haskell
--              ^^^^ entity.name.type.haskell
--                   ^ variable.other.haskell
--                     ^^ punctuation.separator.type.haskell
--                        ^ keyword.operator.haskell

    type family F a b :: * -> *
--  ^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--  ^^^^ keyword.declaration.type.haskell
--       ^^^^^^ storage.modifier.family.haskell
--              ^ entity.name.type.haskell
--                ^ variable.other.haskell
--                  ^ variable.other.haskell
--                    ^^ punctuation.separator.type.haskell
--                       ^ keyword.operator.haskell
--                         ^^ keyword.operator.arrow.haskell
--                            ^ keyword.operator.haskell


-- [ FIXITY DECLARATIONS ] ----------------------------------------------------

    infix
--  ^^^^^ keyword.declaration.fixity.haskell

    infix'
--  ^^^^^^ variable.other.haskell

    infixl
--  ^^^^^^ keyword.declaration.fixity.haskell

    infixr
--  ^^^^^^ keyword.declaration.fixity.haskell

    infix 0 :$
--  ^^^^^ keyword.declaration.fixity.haskell
--        ^ constant.numeric.value.haskell
--          ^^ keyword.operator.haskell

    infix 1 `ConId`
--  ^^^^^ keyword.declaration.fixity.haskell
--        ^ constant.numeric.value.haskell
--          ^ meta.infix.haskell punctuation.definition.infix.begin.haskell
--           ^^^^^ meta.infix.haskell keyword.operator.function.infix.haskell
--                ^ meta.infix.haskell punctuation.definition.infix.end.haskell

    infixl 7  ⋆, /, `quot`
--  ^^^^^^ keyword.declaration.fixity.haskell
--         ^ constant.numeric.value.haskell
--            ^ keyword.operator.haskell
--             ^ punctuation.separator.sequence.haskell
--               ^ keyword.operator.haskell
--                ^ punctuation.separator.sequence.haskell
--                  ^ meta.infix.haskell punctuation.definition.infix.begin.haskell
--                   ^^^^ meta.infix.haskell keyword.operator.function.infix.haskell
--                       ^ meta.infix.haskell punctuation.definition.infix.end.haskell


-- [ FUNCTION DECLARATIONS ] --------------------------------------------------

    {- infix operator declaration -}
    (<:>)
--  ^^^^^ meta.function.identifier.haskell meta.prefix.haskell
--       ^ meta.function.identifier.haskell - meta.prefix
--  ^ punctuation.definition.prefix.begin.haskell
--   ^^^ keyword.operator.haskell
--      ^ punctuation.definition.prefix.end.haskell
        :: a -> Bool
--     ^ meta.function.identifier.haskell
--      ^^^^^^^^^^^^^ - meta.function
--      ^^ punctuation.separator.type.haskell
--         ^ variable.other.haskell
--           ^^ keyword.operator.arrow.haskell
--              ^^^^ support.type.prelude.haskell
    {- infix operator body -}
    (<:>) = do a <:> b
--  ^^^^^ meta.prefix.haskell
--  ^ punctuation.definition.prefix.begin.haskell
--   ^^^ keyword.operator.haskell
--      ^ punctuation.definition.prefix.end.haskell
--        ^ keyword.operator.haskell
--          ^^ keyword.control.context.haskell
--             ^ variable.other.haskell
--               ^^^ keyword.operator.haskell
--                   ^ variable.other.haskell

    {- function declaration list -}
    isNaN,, isInfinite
-- ^ - meta.function
--  ^^^^^^^^^^^^^^^^^^^ meta.function.identifier.haskell
--  ^^^^^ entity.name.function.haskell
--       ^^ punctuation.separator.sequence.haskell
--          ^^^^^^^^^^ entity.name.function.haskell
        :: a -> Bool
--     ^ meta.function.identifier.haskell
--      ^^^^^^^^^^^^^ - meta.function
--      ^^ punctuation.separator.type.haskell
--         ^ variable.other..haskell
--           ^^ keyword.operator.arrow.haskell
--              ^^^^ support.type.prelude.haskell

    {- function declaration with context and unicode operators -}
    sequenceA ∷ Applicative f ⇒ t (f a) → f (t a)
--  ^^^^^^^^^^ meta.function.identifier.haskell
--  ^^^^^^^^^ entity.name.function.haskell
--            ^ punctuation.separator.type.haskell
--              ^^^^^^^^^^^ support.class.prelude.haskell
--                          ^ variable.other.haskell
--                            ^ punctuation.separator.type.context.haskell
--                              ^ variable.other.haskell
--                                ^ punctuation.section.group.begin.haskell
--                                 ^ variable.other.haskell
--                                   ^ variable.other.haskell
--                                    ^ punctuation.section.group.end.haskell
--                                      ^ keyword.operator.arrow.haskell
--                                        ^ variable.other.haskell
--                                          ^ punctuation.section.group.begin.haskell
--                                           ^ variable.other.haskell
--                                             ^ variable.other.haskell
--                                              ^ punctuation.section.group.end.haskell
    {- function body -}
    sequenceA = traverse id
--  ^^^^^^^^^ support.function.prelude.haskell
--            ^ keyword.operator.haskell
--              ^^^^^^^^ support.function.prelude.haskell
--                       ^^ support.function.prelude.haskell

    {- function declaration with context and ascii operators -}
    traverse :: Applicative f =>
--  ^^^^^^^^^ meta.function.identifier.haskell
--           ^^^^^^^^^^^^^^^^^^^^ - meta.function
--  ^^^^^^^^ entity.name.function.haskell
--           ^^ punctuation.separator.type.haskell
--              ^^^^^^^^^^^ support.class.prelude.haskell
--                          ^ variable.other.haskell
--                            ^^ punctuation.separator.type.context.haskell
      (a -> f b)
--       ^^ keyword.operator.arrow.haskell
      -> t a
--    ^^ keyword.operator.arrow.haskell
      -> f (t b)
--    ^^ keyword.operator.arrow.haskell

    {- function body -}
    traverse f = sequenceA . fmap f
--  ^^^^^^^^ support.function.prelude.haskell
--           ^ variable.other.haskell
--             ^ keyword.operator.haskell
--               ^^^^^^^^^ support.function.prelude.haskell
--                         ^ keyword.operator.haskell
--                           ^^^^ support.function.prelude.haskell
--                                ^ variable.other.haskell

    {- guarded function declarations -}
    toAsciiChar :: Char -> Maybe Char
    toAsciiChar c | isAscii c = Just c
--  ^^^^^^^^^^^ variable.other.haskell
--              ^ variable.other.haskell
--                ^ punctuation.separator.sequence.haskell
--                  ^^^^^^^ variable.other.haskell
--                          ^ variable.other.haskell
--                            ^ keyword.operator.haskell
--                              ^^^^ support.constant.prelude.haskell
--                                   ^ variable.other.haskell
                  | otherwise = M.lookup c asciiMap
--                ^ punctuation.separator.sequence.haskell
--                  ^^^^^^^^^ variable.other.haskell
--                            ^ keyword.operator.haskell
--                              ^ variable.namespace.haskell
--                               ^ punctuation.accessor.dot.haskell
--                                ^^^^^^ support.function.prelude.haskell
--                                       ^ variable.other.haskell
--                                         ^^^^^^^^ variable.other.haskell

    fromEntities' :: Text -> String
--  ^^^^^^^^^^^^^ entity.name.function.haskell
    fromEntities' (T.uncons -> Just ('&', xs)) =
--  ^^^^^^^^^^^^^ variable.other.haskell
--                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.haskell
--                                             ^ keyword.operator.haskell
      case lookupEntity $ T.unpack ent' of
            Just c  -> c <> fromEntities' rest
            Nothing -> "&" <> fromEntities' xs
    fromEntities' t = case T.uncons t of
--  ^^^^^^^^^^^^^ variable.other.haskell
--                ^ variable.other.haskell
--                  ^ keyword.operator.haskell
      Just (x, xs) -> x : fromEntities' xs
      Nothing      -> ""

    {- Module Level Function Declarations -}
    module ModId.ModName (fun) where
    fun :: Bool -> Bool
--  ^^^^ meta.function.identifier.haskell
--  ^^^ entity.name.function.haskell
--      ^^ punctuation.separator.type.haskell
    fun = print "Hello"
--  ^^^ variable.other.haskell
--      ^ keyword.operator.haskell

    {- Module Level Function Declarations with Block Layout -}
    module ModId.ModName (fun1, fun2) where { fun1 :: Bool -> Bool ; fun1 = False ; fun2 :: }
--                       ^^^^^^^^^^^^ meta.declaration.module.haskell meta.sequence.tuple.haskell
--                       ^ punctuation.section.sequence.begin.haskell
--                        ^^^^ entity.name.export.haskell
--                            ^ punctuation.separator.sequence.haskell
--                              ^^^^ entity.name.export.haskell
--                                  ^ punctuation.section.sequence.end.haskell
--                                    ^^^^^ keyword.control.context.haskell
--                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.haskell
--                                          ^ punctuation.section.block.begin.haskell
--                                            ^^^^^ meta.function.identifier.haskell
--                                            ^^^^ entity.name.function.haskell
--                                                 ^^ punctuation.separator.type.haskell
--                                                    ^^^^ support.type.prelude.haskell
--                                                         ^^ keyword.operator.arrow.haskell
--                                                            ^^^^ support.type.prelude.haskell
--                                                                 ^ punctuation.terminator.statement.haskell
--                                                                   ^^^^ variable.other.haskell
--                                                                        ^ keyword.operator.haskell
--                                                                          ^^^^^ support.constant.prelude.haskell
--                                                                                ^ punctuation.terminator.statement.haskell
--                                                                                  ^^^^ entity.name.function.haskell
--                                                                                       ^^ punctuation.separator.type.haskell
--                                                                                          ^ punctuation.section.block.end.haskell

    {- Class Method Declarations -}
    class TyCls a where
      method0 :: a -> Bool
--    ^^^^^^^^ meta.function.identifier.haskell
--    ^^^^^^^ entity.name.function.haskell
--            ^^ punctuation.separator.type.haskell
--               ^ variable.other.haskell
--                 ^^ keyword.operator.arrow.haskell
--                    ^^^^ support.type.prelude.haskell

      {- maybe function or pattern binding -}
      method1 = True
--    ^^^^^^^ variable.other.haskell
--            ^ keyword.operator.haskell
--              ^^^^ support.constant.prelude.haskell

      method' ::
--    ^^^^^^^^ meta.function.identifier.haskell
--    ^^^^^^^ entity.name.function.haskell
        a -> Bool
--      ^ variable.other.haskell
--        ^^ keyword.operator.arrow.haskell
--           ^^^^ support.type.prelude.haskell

    {- Class Method Declarations with Block Layout -}
    class TyCls a where {
      method :: Bool -> Bool;
--    ^^^^^^^ meta.block.haskell meta.function.identifier.haskell
--           ^^^^^^^^^^^^^^^^^ meta.block.haskell - meta.function
--    ^^^^^^ entity.name.function.haskell
--           ^^ punctuation.separator.type.haskell
--              ^^^^ support.type.prelude.haskell
--                   ^^ keyword.operator.arrow.haskell
--                      ^^^^ support.type.prelude.haskell
--                          ^ punctuation.terminator.statement.haskell

      {- maybe function or pattern binding -}
      method = True;
--    ^^^^^^^^^^^^^^^ meta.block.haskell
--    ^^^^^^ variable.other.haskell
--           ^ keyword.operator.haskell
--             ^^^^ support.constant.prelude.haskell
--                 ^ punctuation.terminator.statement.haskell

     {- preceded by statement terminator -}
     ;method :: Bool -> Bool;
--   ^ meta.block.haskell - meta.function
--    ^^^^^^^ meta.block.haskell meta.function.identifier.haskell
--           ^^^^^^^^^^^^^^^^^ meta.block.haskell - meta.function
--   ^ punctuation.terminator.statement.haskell
--    ^^^^^^ entity.name.function.haskell
--           ^^ punctuation.separator.type.haskell
--              ^^^^ support.type.prelude.haskell
--                   ^^ keyword.operator.arrow.haskell
--                      ^^^^ support.type.prelude.haskell
--                          ^ punctuation.terminator.statement.haskell
    }

    {- Instance Method Declarations -}
    instance TyCls a where
      method0 :: a -> Bool
--    ^^^^^^^^ meta.function.identifier.haskell
--    ^^^^^^^ entity.name.function.haskell
--            ^^ punctuation.separator.type.haskell
--               ^ variable.other.haskell
--                 ^^ keyword.operator.arrow.haskell
--                    ^^^^ support.type.prelude.haskell

      {- maybe function or pattern binding -}
      method1 = True
--    ^^^^^^^ variable.other.haskell
--            ^ keyword.operator.haskell
--              ^^^^ support.constant.prelude.haskell

      method' ::
--    ^^^^^^^^ meta.function.identifier.haskell
--    ^^^^^^^ entity.name.function.haskell
        a -> Bool
--      ^ variable.other.haskell
--        ^^ keyword.operator.arrow.haskell
--           ^^^^ support.type.prelude.haskell

    {- Instance Method Declarations with Block Layout -}
    instance TyCls a where {
      method :: Bool -> Bool;
--    ^^^^^^^ meta.block.haskell meta.function.identifier.haskell
--           ^^^^^^^^^^^^^^^^^ meta.block.haskell - meta.function
--    ^^^^^^ entity.name.function.haskell
--           ^^ punctuation.separator.type.haskell
--              ^^^^ support.type.prelude.haskell
--                   ^^ keyword.operator.arrow.haskell
--                      ^^^^ support.type.prelude.haskell
--                          ^ punctuation.terminator.statement.haskell

      {- maybe function or pattern binding -}
      method = True;
--    ^^^^^^^^^^^^^^^ meta.block.haskell
--    ^^^^^^ variable.other.haskell
--           ^ keyword.operator.haskell
--             ^^^^ support.constant.prelude.haskell
--                 ^ punctuation.terminator.statement.haskell

     {- preceded by statement terminator -}
     ;method :: Bool -> Bool;
--   ^ meta.block.haskell - meta.function
--    ^^^^^^^ meta.block.haskell meta.function.identifier.haskell
--           ^^^^^^^^^^^^^^^^^ meta.block.haskell - meta.function
--   ^ punctuation.terminator.statement.haskell
--    ^^^^^^ entity.name.function.haskell
--           ^^ punctuation.separator.type.haskell
--              ^^^^ support.type.prelude.haskell
--                   ^^ keyword.operator.arrow.haskell
--                      ^^^^ support.type.prelude.haskell
--                          ^ punctuation.terminator.statement.haskell
    }


-- [ LET EXPRESSIONS ]---------------------------------------------------------

    let a
--  ^^^ keyword.declaration.variable.haskell
--      ^ variable.other.haskell

    let a = 5
--  ^^^ keyword.declaration.variable.haskell
--      ^ variable.other.haskell
--        ^ keyword.operator.haskell
--          ^ constant.numeric.value.haskell

    let (a, b) = split arg
--  ^^^ keyword.declaration.variable.haskell
--      ^ punctuation.section.sequence.begin.haskell
--       ^ variable.other.haskell
--        ^ punctuation.separator.sequence.haskell
--          ^ variable.other.haskell
--           ^ punctuation.section.sequence.end.haskell
--             ^ keyword.operator.haskell
--               ^^^^^ variable.other.haskell
--                     ^^^ variable.other.haskell

    let a = 2 in a * b where b = 1
--  ^^^ keyword.declaration.variable.haskell
--      ^ variable.other.haskell
--        ^ keyword.operator.haskell
--          ^ constant.numeric.value.haskell
--            ^^ keyword.control.context.haskell
--               ^ variable.other.haskell
--                 ^ keyword.operator.haskell
--                   ^ variable.other.haskell
--                     ^^^^^ keyword.control.context.haskell
--                           ^ variable.other.haskell
--                             ^ keyword.operator.haskell
--                               ^ constant.numeric.value.haskell

    let
--  ^^^ keyword.declaration.variable.haskell
        a = 2 ; d = 5
--      ^ variable.other.haskell
--        ^ keyword.operator.haskell
--          ^ constant.numeric.value.haskell
--            ^ punctuation.terminator.statement.haskell
--              ^ variable.other.haskell
--                ^ keyword.operator.haskell
--                  ^ constant.numeric.value.haskell
        b = 4
--      ^ variable.other.haskell
--        ^ keyword.operator.haskell
--          ^ constant.numeric.value.haskell
        in
--      ^^ keyword.control.context.haskell
            a * b + c
--          ^ variable.other.haskell
--            ^ keyword.operator.haskell
--              ^ variable.other.haskell
--                ^ keyword.operator.haskell
--                  ^ variable.other.haskell
        where
--      ^^^^^ keyword.control.context.haskell
            c = 4
--          ^ variable.other.haskell
--            ^ keyword.operator.haskell
--              ^ constant.numeric.value.haskell

    let { a = 2 ; b = 4 } in { a * b + c } where { c = 4 ; d = 5 }
--  ^^^ keyword.declaration.variable.haskell
--      ^ punctuation.section.block.begin.haskell
--        ^ variable.other.haskell
--          ^ keyword.operator.haskell
--            ^ constant.numeric.value.haskell
--              ^ punctuation.terminator.statement.haskell
--                ^ variable.other.haskell
--                  ^ keyword.operator.haskell
--                    ^ constant.numeric.value.haskell
--                      ^ punctuation.section.block.end.haskell
--                        ^^ keyword.control.context.haskell
--                           ^ punctuation.section.block.begin.haskell
--                             ^ variable.other.haskell
--                               ^ keyword.operator.haskell
--                                 ^ variable.other.haskell
--                                   ^ keyword.operator.haskell
--                                     ^ variable.other.haskell
--                                       ^ punctuation.section.block.end.haskell
--                                         ^^^^^ keyword.control.context.haskell
--                                               ^ punctuation.section.block.begin.haskell
--                                                 ^ variable.other.haskell
--                                                   ^ keyword.operator.haskell
--                                                     ^ constant.numeric.value.haskell
--                                                       ^ punctuation.terminator.statement.haskell
--                                                         ^ variable.other.haskell
--                                                           ^ keyword.operator.haskell
--                                                             ^ constant.numeric.value.haskell
--                                                               ^ punctuation.section.block.end.haskell

test =
-- <- variable.other.haskell
--   ^ keyword.operator.haskell
    let x = 2 in x * y
--  ^^^ keyword.declaration.variable.haskell
--      ^ variable.other.haskell
--        ^ keyword.operator.haskell
--          ^ constant.numeric.value.haskell
--            ^^ keyword.control.context.haskell
--               ^ variable.other.haskell
--                 ^ keyword.operator.haskell
--                   ^ variable.other.haskell
    where
--  ^^^^^ keyword.control.context.haskell
        y = 1
--      ^ variable.other.haskell
--        ^ keyword.operator.haskell
--          ^ constant.numeric.value.haskell

  let runIO' :: PandocIO a -> IO a
--^^^ keyword.declaration.variable.haskell
--    ^^^^^^^ meta.function.identifier.haskell
--    ^^^^^^ entity.name.function.haskell
--           ^^ punctuation.separator.type.haskell
      runIO' f = do
        let isWarning msg = messageVerbosity msg == WARNING
--      ^^^ keyword.declaration.variable.haskell
--          ^^^^^^^^^ variable.other.haskell
--                    ^^^ variable.other.haskell
--                        ^ keyword.operator.haskell
--                          ^^^^^^^^^^^^^^^^ variable.other.haskell
--                                           ^^^ variable.other.haskell
--                                               ^^ keyword.operator.haskell
--                                                  ^^^^^^^ storage.type.haskell
        when (optFailIfWarnings opts && any isWarning reports) $
            E.throwIO PandocFailOnWarningError
        return res


-- [ KEYWORDS ] ---------------------------------------------------------------

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
--  ^^^^^^ support.function.prelude.haskell


-- [ BLOCKS / GROUPS / LISTS / TUPLES ] ---------------------------------------

    {}
-- ^ - meta.block
--  ^^ meta.block.haskell
--    ^ - meta.block
--  ^ punctuation.section.block.begin.haskell
--   ^ punctuation.section.block.end.haskell

    {;}
-- ^ - meta.block
--  ^^^ meta.block.haskell
--     ^ - meta.block
--  ^ punctuation.section.block.begin.haskell
--   ^ punctuation.terminator.statement.haskell
--    ^ punctuation.section.block.end.haskell

    []
-- ^ - meta.sequence
--  ^^ meta.sequence.list.empty.haskell
--    ^ - meta.sequence
--  ^ punctuation.section.sequence.begin.haskell
--   ^ punctuation.section.sequence.end.haskell

    [,]
-- ^ - meta.sequence
--  ^^^ meta.sequence.list.haskell
--     ^ - meta.sequence
--  ^ punctuation.section.sequence.begin.haskell
--   ^ punctuation.separator.sequence.haskell
--    ^ punctuation.section.sequence.end.haskell

    [,,]
-- ^ - meta.sequence
--  ^^^^ meta.sequence.list.haskell
--      ^ - meta.sequence
--  ^ punctuation.section.sequence.begin.haskell
--   ^^ punctuation.separator.sequence.haskell
--     ^ punctuation.section.sequence.end.haskell

    [1,2,a,b','c',..]
-- ^ - meta.sequence
--  ^^^^^^^^^^^^^^^^^ meta.sequence.list.haskell
--                   ^ - meta.sequence
--  ^ punctuation.section.sequence.begin.haskell
--   ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--    ^ punctuation.separator.sequence.haskell
--     ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--      ^ punctuation.separator.sequence.haskell
--       ^ variable.other.haskell
--        ^ punctuation.separator.sequence.haskell
--         ^^ variable.other.haskell
--           ^ punctuation.separator.sequence.haskell
--            ^^^ meta.string.haskell string.quoted.single.haskell
--               ^ punctuation.separator.sequence.haskell
--                ^^ keyword.operator.haskell
--                  ^ punctuation.section.sequence.end.haskell
    [ x :: a
--  ^^^^^^^^^ meta.sequence.list.haskell
--  ^ punctuation.section.sequence.begin.haskell
--    ^ variable.other.haskell
--      ^^ punctuation.separator.type.haskell
--         ^ variable.other.haskell
     B c ]
--  ^^^^^^ meta.sequence.list.haskell
--        ^ - meta.sequence
--   ^ storage.type.haskell
--     ^ variable.other.haskell
--       ^ punctuation.section.sequence.end.haskell

--  List comprehension

    [ x | xs <- [ [(1,2),(3,4)], [(5,4),(3,2)] ], (3,x) <- xs ]
-- ^ - meta.sequence
--  ^^^^^^^^^^^^ meta.sequence.list.haskell - meta.sequence meta.sequence
--              ^^ meta.sequence.list.haskell meta.sequence.list.haskell - meta.sequence meta.sequence meta.sequence
--                ^ meta.sequence.list.haskell meta.sequence.list.haskell meta.sequence.list.haskell - meta.sequence meta.sequence meta.sequence meta.sequence
--                 ^^^^^ meta.sequence.list.haskell meta.sequence.list.haskell meta.sequence.list.haskell meta.sequence.tuple.haskell
--                      ^ meta.sequence.list.haskell meta.sequence.list.haskell meta.sequence.list.haskell - meta.sequence meta.sequence meta.sequence meta.sequence
--                       ^^^^^ meta.sequence.list.haskell meta.sequence.list.haskell meta.sequence.list.haskell meta.sequence.tuple.haskell
--                            ^ meta.sequence.list.haskell meta.sequence.list.haskell meta.sequence.list.haskell - meta.sequence meta.sequence meta.sequence meta.sequence
--                             ^^ meta.sequence.list.haskell meta.sequence.list.haskell - meta.sequence meta.sequence meta.sequence
--                               ^ meta.sequence.list.haskell meta.sequence.list.haskell meta.sequence.list.haskell - meta.sequence meta.sequence meta.sequence meta.sequence
--                                ^^^^^ meta.sequence.list.haskell meta.sequence.list.haskell meta.sequence.list.haskell meta.sequence.tuple.haskell
--                                     ^ meta.sequence.list.haskell meta.sequence.list.haskell meta.sequence.list.haskell - meta.sequence meta.sequence meta.sequence meta.sequence
--                                      ^^^^^ meta.sequence.list.haskell meta.sequence.list.haskell meta.sequence.list.haskell meta.sequence.tuple.haskell
--                                           ^ meta.sequence.list.haskell meta.sequence.list.haskell meta.sequence.list.haskell - meta.sequence meta.sequence meta.sequence meta.sequence
--                                            ^^ meta.sequence.list.haskell meta.sequence.list.haskell - meta.sequence meta.sequence meta.sequence
--                                              ^^ meta.sequence.list.haskell - meta.sequence meta.sequence
--                                                ^^^^^ meta.sequence.list.haskell meta.sequence.tuple.haskell
--                                                     ^^^^^^^^ meta.sequence.list.haskell - meta.sequence meta.sequence
--                                                             ^ - meta.sequence
--  ^ punctuation.section.sequence.begin.haskell
--    ^ variable.other.haskell
--      ^ punctuation.separator.sequence.haskell
--        ^^ variable.other.haskell
--           ^^ keyword.operator.arrow.haskell
--              ^ punctuation.section.sequence.begin.haskell
--                ^ punctuation.section.sequence.begin.haskell
--                 ^ punctuation.section.sequence.begin.haskell
--                  ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--                   ^ punctuation.separator.sequence.haskell
--                    ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--                     ^ punctuation.section.sequence.end.haskell
--                      ^ punctuation.separator.sequence.haskell
--                       ^ punctuation.section.sequence.begin.haskell
--                        ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--                         ^ punctuation.separator.sequence.haskell
--                          ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--                           ^^ punctuation.section.sequence.end.haskell
--                             ^ punctuation.separator.sequence.haskell
--                               ^ punctuation.section.sequence.begin.haskell
--                                ^ punctuation.section.sequence.begin.haskell
--                                 ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--                                  ^ punctuation.separator.sequence.haskell
--                                   ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--                                    ^ punctuation.section.sequence.end.haskell
--                                     ^ punctuation.separator.sequence.haskell
--                                      ^ punctuation.section.sequence.begin.haskell
--                                       ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--                                        ^ punctuation.separator.sequence.haskell
--                                         ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--                                          ^^ punctuation.section.sequence.end.haskell
--                                             ^ punctuation.section.sequence.end.haskell
--                                              ^ punctuation.separator.sequence.haskell
--                                                ^ punctuation.section.sequence.begin.haskell
--                                                 ^ constant.numeric.value.haskell
--                                                  ^ punctuation.separator.sequence.haskell
--                                                   ^ variable.other.haskell
--                                                    ^ punctuation.section.sequence.end.haskell
--                                                      ^^ keyword.operator.arrow.haskell
--                                                         ^^ variable.other.haskell
--                                                            ^ punctuation.section.sequence.end.haskell
--

    {- Generalised (SQL-like) List Comprehensions -}
    a = [ (the dept, sum salary)
--      ^^ meta.sequence.list.haskell
--        ^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.haskell meta.sequence.tuple.haskell
--                              ^ meta.sequence.list.haskell - meta.sequence meta.sequence
--      ^ punctuation.section.sequence.begin.haskell
--        ^ punctuation.section.sequence.begin.haskell
--         ^^^ variable.other.haskell
--             ^^^^ variable.other.haskell
--                 ^ punctuation.separator.sequence.haskell
--                   ^^^ support.function.prelude.haskell
--                       ^^^^^^ variable.other.haskell
--                             ^ punctuation.section.sequence.end.haskell
        | (name, dept, salary) <- employees
--      ^^ meta.sequence.list.haskell
--        ^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.haskell meta.sequence.tuple.haskell
--                            ^^^^^^^^^^^^^^ meta.sequence.list.haskell
--      ^ punctuation.separator.sequence.haskell
--        ^ punctuation.section.sequence.begin.haskell
--         ^^^^ variable.other.haskell
--             ^ punctuation.separator.sequence.haskell
--               ^^^^ variable.other.haskell
--                   ^ punctuation.separator.sequence.haskell
--                     ^^^^^^ variable.other.haskell
--                           ^ punctuation.section.sequence.end.haskell
--                             ^^ keyword.operator.arrow.haskell
--                                ^^^^^^^^^ variable.other.haskell
        , then group by dept using groupWith
--      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.haskell
--      ^ punctuation.separator.sequence.haskell
--        ^^^^ keyword.control.conditional.then.haskell
--             ^^^^^ keyword.control.list.haskell
--                   ^^ keyword.control.list.haskell
--                      ^^^^ variable.other.haskell
--                           ^^^^^ keyword.control.list.haskell
--                                 ^^^^^^^^^ variable.other.haskell
        , then sortWith by (sum salary)
--      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.list.haskell
--      ^ punctuation.separator.sequence.haskell
--        ^^^^ keyword.control.conditional.then.haskell
--             ^^^^^^^^ variable.other.haskell
--                      ^^ keyword.control.list.haskell
--                         ^ punctuation.section.group.begin.haskell
--                          ^^^ support.function.prelude.haskell
--                              ^^^^^^ variable.other.haskell
--                                    ^ punctuation.section.group.end.haskell
        , then take 5 ]
--      ^^^^^^^^^^^^^^^ meta.sequence.list.haskell
--                     ^ - meta.sequence
--      ^ punctuation.separator.sequence.haskell
--        ^^^^ keyword.control.conditional.then.haskell
--             ^^^^ support.function.prelude.haskell
--                  ^ constant.numeric.value.haskell
--                    ^ punctuation.section.sequence.end.haskell

    ()
-- ^ - meta.sequence
--  ^^ meta.sequence.tuple.empty.haskell
--    ^ - meta.sequence
--  ^ punctuation.section.sequence.begin.haskell
--   ^ punctuation.section.sequence.end.haskell

    (,)
-- ^ - meta.sequence
--  ^^^ meta.sequence.tuple.haskell
--     ^ - meta.sequence
--  ^ punctuation.section.sequence.begin.haskell
--    ^ punctuation.section.sequence.end.haskell

    (#,#)
-- ^ - meta.sequence
--  ^^^^^ meta.sequence.tuple.haskell
--       ^ - meta.sequence
--  ^ punctuation.section.sequence.begin.haskell
--   ^ storage.modifier.unboxed.haskell
--     ^ storage.modifier.unboxed.haskell
--      ^ punctuation.section.sequence.end.haskell

    ( , , )
-- ^ - meta.sequence
--  ^^^^^^^ meta.sequence.tuple.haskell
--         ^ - meta.sequence
--  ^ punctuation.section.sequence.begin.haskell
--        ^ punctuation.section.sequence.end.haskell

    (# , , #)
-- ^ - meta.sequence
--  ^^^^^^^^^ meta.sequence.tuple.haskell
--           ^ - meta.sequence
--  ^ punctuation.section.sequence.begin.haskell
--   ^ storage.modifier.unboxed.haskell
--         ^ storage.modifier.unboxed.haskell
--          ^ punctuation.section.sequence.end.haskell

    (group,)
--  ^^^^^^^^ meta.sequence.tuple.haskell
--  ^ punctuation.section.sequence.begin.haskell
--        ^ punctuation.separator.sequence.haskell
--         ^ punctuation.section.sequence.end.haskell

    (#group,#)
--  ^^^^^^^^^^ meta.sequence.tuple.haskell
--  ^ punctuation.section.sequence.begin.haskell
--   ^ storage.modifier.unboxed.haskell
--         ^ punctuation.separator.sequence.haskell
--          ^ storage.modifier.unboxed.haskell
--           ^ punctuation.section.sequence.end.haskell

    ('<':'b':'r':_)
--  ^^^^^^^^^^^^^^^ meta.sequence.tuple.haskell
--  ^ punctuation.section.sequence.begin.haskell
--   ^^^ string.quoted.single.haskell
--      ^ keyword.operator.haskell
--       ^^^ string.quoted.single.haskell
--          ^ keyword.operator.haskell
--           ^^^ string.quoted.single.haskell
--              ^ keyword.operator.haskell
--               ^ variable.language.anonymous.haskell
--                ^ punctuation.section.sequence.end.haskell

    (():(,):[]:[,]:{}:``)
--  ^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tuple.haskell
--  ^ punctuation.section.sequence.begin.haskell
--   ^^ - keyword
--     ^ keyword.operator.haskell
--      ^^^ - keyword
--         ^ keyword.operator.haskell
--          ^^ - keyword
--            ^ keyword.operator.haskell
--             ^^^ - keyword
--                ^ keyword.operator.haskell
--                 ^^ - keyword
--                   ^ keyword.operator.haskell
--                    ^^ meta.infix.haskell
--                      ^ punctuation.section.sequence.end.haskell

    (group)
--  ^^^^^^^ meta.group.haskell
--  ^ punctuation.section.group.begin.haskell
--        ^ punctuation.section.group.end.haskell

    (\arg opt ->
--  ^^^^^^^^^^^^^ meta.group.haskell
--  ^ punctuation.section.group.begin.haskell
        case arg of
          "auto" -> return opt{ optWrap = WrapAuto }
--       ^^^^^^^^^^^^^^^^^^^^^ meta.group.haskell - meta.block
--                            ^^^^^^^^^^^^^^^^^^^^^^ meta.group.haskell meta.block.haskell
          "none" -> return opt{ optWrap = WrapNone }
--       ^^^^^^^^^^^^^^^^^^^^^ meta.group.haskell - meta.block
--                            ^^^^^^^^^^^^^^^^^^^^^^ meta.group.haskell meta.block.haskell
          "preserve" -> return opt{ optWrap = WrapPreserve }
--       ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.haskell - meta.block
--                                ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.haskell meta.block.haskell
          _ -> E.throwIO $ PandocOptionError
               "--wrap must be auto, none, or preserve")
--             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.haskell meta.string.haskell string.quoted.double.haskell
--                                                     ^ meta.group.haskell punctuation.section.group.end.haskell
--                                                      ^ - meta.group


-- [ QUASI QUOTATIONS ]--------------------------------------------------------

    {- Custom Syntax -}
    [expr|$x + $y|]
--  ^^^^^^ meta.quoted.quasi.haskell - meta.string
--        ^^^^^^^ meta.quoted.quasi.haskell meta.string.haskell
--               ^^ meta.quoted.quasi.haskell - meta.string
--  ^ punctuation.section.quoted.begin.haskell
--   ^^^^ variable.function.quasi-quoter
--       ^ punctuation.section.quoted.haskell
--        ^^^^^^^ string.unquoted.haskell
--               ^^ punctuation.section.quoted.end.haskell

    {- Raw Strings -}
    [r|\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}|]
--  ^^^ meta.quoted.quasi.haskell - meta.string
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.quoted.quasi.haskell meta.string.haskell
--                                   ^^ meta.quoted.quasi.haskell - meta.string
--  ^ punctuation.section.quoted.begin.haskell
--   ^ variable.function.quasi-quoter
--    ^ punctuation.section.quoted.haskell
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.haskell
--                                   ^^ punctuation.section.quoted.end.haskell

    {- Custom QuasiQuoter -}
    [1|True|]
--  ^^^^^^^^^ meta.quoted.quasi.haskell - meta.quoted.quasi meta.quoted.quasi
--  ^ punctuation.section.quoted.begin.haskell
--   ^ variable.function.quasi-quoter.haskell
--    ^ punctuation.section.quoted.haskell
--     ^^^^ meta.string.haskell string.unquoted.haskell
--         ^^ punctuation.section.quoted.end.haskell

    {- List Comprehension -}
    [1|True]
--  ^^^^^^^^ meta.sequence.list.haskell
--  ^ punctuation.section.sequence.begin.haskell
--   ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--    ^ punctuation.separator.sequence.haskell
--     ^^^^ support.constant.prelude.haskell
--         ^ punctuation.section.sequence.end.haskell

    [1||]
--  ^^^^^ meta.sequence.list.haskell
--  ^ punctuation.section.sequence.begin.haskell
--   ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--    ^^ keyword.operator.haskell
--      ^ punctuation.section.sequence.end.haskell

    {- Overloaded Quotation -}
    [| putStrLn $(f) >> putStrLn $(g) |] :: (Quote m, Quasi m, MonadIO m) => m Exp
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.quoted.overloaded.haskell
--  ^^ punctuation.section.quoted.begin.haskell
--     ^^^^^^^^ support.function.prelude.haskell
--                                    ^^ punctuation.section.quoted.end.haskell

    generateLoop :: (MonadReader CodeMap m, Quote m) => String -> m Exp
    generateLoop name = [|
--                      ^^^ meta.quoted.overloaded.haskell
--                      ^^ punctuation.section.quoted.begin.haskell
      let loopyCode x =
--    ^^^^^^^^^^^^^^^^^^ meta.quoted.overloaded.haskell
--    ^^^ keyword.declaration.variable.haskell
        $(local (Map.insert name [|loopyCode|]) loopBody)
      in loopyCode ...
    |]
-- ^^^ meta.quoted.overloaded.haskell
--    ^ - meta.brackets
--  ^^ punctuation.section.quoted.end.haskell

    {- Typed Quotation -}
    i :: Quote m => Code m (Int -> Int)
    i = [|| \x -> x + 1 ||]
--      ^^^^^^^^^^^^^^^^^^^ meta.quoted.typed.haskell
--      ^^^ punctuation.section.quoted.begin.haskell
--                      ^^^ punctuation.section.quoted.end.haskell

    {- HSX Tests -}
    html = [hsx|
--         ^^^^^^ meta.quoted.quasi.haskell
--         ^ punctuation.section.quoted.begin.haskell
--          ^^^ variable.function.quasi-quoter.haskell
--             ^ punctuation.section.quoted.haskell
--              ^ text.html.embedded.haskell
        <html>
        <head>
        <style data-id={
--      ^^^^^^^^^^^^^^^^^ meta.quoted.quasi.haskell text.html.embedded.haskell
--      ^^^^^^^ meta.tag - meta.attribute-with-value
--             ^^^^^^^^ meta.tag meta.attribute-with-value.html - meta.string - meta.interpolation
--                     ^^ meta.tag meta.attribute-with-value.html meta.string.html meta.interpolation.haskell
--      ^ punctuation.definition.tag.begin.html
--       ^^^^^ entity.name.tag.style.html
--             ^^^^^^^ entity.other.attribute-name.html
--                    ^ punctuation.separator.key-value.html
--                     ^ punctuation.section.interpolation.begin.haskell
            -- This is Haskell
            show "my-id"
--      ^^^^^^^^^^^^^^^^^ meta.quoted.quasi.haskell text.html.embedded.haskell meta.tag meta.attribute-with-value.html meta.string.html meta.interpolation.haskell source.haskell.embedded.html
--          ^^^^ support.function.prelude.haskell
--               ^^^^^^^ meta.string.haskell string.quoted.double.haskell
        }>
--     ^^^ meta.quoted.quasi.haskell text.html.embedded.haskell meta.tag
--        ^ meta.quoted.quasi.haskell text.html.embedded.haskell - meta.tag
--     ^^ meta.attribute-with-value.html meta.string.html meta.interpolation.haskell
--      ^ punctuation.section.interpolation.end.haskell
--       ^ punctuation.definition.tag.end.html

            p {
--            ^^ source.css.embedded.html meta.property-list.css meta.block.css
--            ^ punctuation.section.block.begin.css
;               font-family: Helvetica;
--              ^^^^^^^^^^^ meta.property-name.css support.type.property-name.css
            }
--          ^ source.css.embedded.html meta.property-list.css meta.block.css punctuation.section.block.end.css
        </style>
--      ^^^^^^^^ meta.quoted.quasi.haskell text.html.embedded.haskell meta.tag

        <script data-id={
--      ^^^^^^^^^^^^^^^^^^ meta.quoted.quasi.haskell text.html.embedded.haskell
--      ^^^^^^^^ meta.tag - meta.attribute-with-value
--              ^^^^^^^^ meta.tag meta.attribute-with-value.html - meta.string - meta.interpolation
--                      ^^ meta.tag meta.attribute-with-value.html meta.string.html meta.interpolation.haskell
--      ^ punctuation.definition.tag.begin.html
--       ^^^^^^ entity.name.tag.script.html
--              ^^^^^^^ entity.other.attribute-name.html
--                     ^ punctuation.separator.key-value.html
--                      ^ punctuation.section.interpolation.begin.haskell
            -- This is Haskell
            show "my-id"
--      ^^^^^^^^^^^^^^^^^ meta.quoted.quasi.haskell text.html.embedded.haskell meta.tag meta.attribute-with-value.html meta.string.html meta.interpolation.haskell source.haskell.embedded.html
--          ^^^^ support.function.prelude.haskell
--               ^^^^^^^ meta.string.haskell string.quoted.double.haskell
        }>
            function test() { console.log("js"); }
--         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.quoted.quasi.haskell text.html.embedded.haskell source.js.embedded.html
--          ^^^^^^^^ keyword.declaration.function.js
--                   ^^^^ entity.name.function.js
--                          ^^^^^^^^^^^^^^^^^^^^^^ meta.function.js meta.block.js
--                          ^ punctuation.section.block.begin.js
--                                               ^ punctuation.section.block.end.js
        </script>
--      ^^^^^^^^^ meta.quoted.quasi.haskell text.html.embedded.haskell meta.tag

        <p><a href="{pathTo NewPostAction}">title</a></p>
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.quoted.quasi.haskell text.html.embedded.haskell
--                 ^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline meta.attribute-with-value.href.html meta.string.html
--                 ^ string.quoted.double.html punctuation.definition.string.begin.html
--                  ^ meta.interpolation.haskell punctuation.section.interpolation.begin.haskell
--                   ^^^^^^^^^^^^^^^^^^^^ meta.interpolation.haskell source.haskell.embedded.html
--                                       ^ meta.interpolation.haskell punctuation.section.interpolation.end.haskell
--                                        ^ string.quoted.double.html punctuation.definition.string.end.html

        <my-{tag} {attr}={value}/>
--      ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.other.html
--      ^ meta.tag.other.html punctuation.definition.tag.begin.html
--       ^^^ entity.name.tag.other.html - meta.interpolation
--          ^^^^^ entity.name.tag.other.html meta.interpolation.haskell
--          ^ punctuation.section.interpolation.begin.haskell
--           ^^^ variable.other.haskell
--              ^ punctuation.section.interpolation.end.haskell
--                ^^^^^^ meta.attribute-with-value.html entity.other.attribute-name.html meta.interpolation.haskell
--                ^ punctuation.section.interpolation.begin.haskell
--                 ^^^^ variable.other.haskell
--                     ^ punctuation.section.interpolation.end.haskell
--                      ^ meta.attribute-with-value.html punctuation.separator.key-value.html
--                       ^^^^^^^ meta.attribute-with-value.html meta.string.html meta.interpolation.haskell
--                       ^ punctuation.section.interpolation.begin.haskell
--                        ^^^^^ variable.other.haskell
--                             ^ punctuation.section.interpolation.end.haskell
--                              ^^ punctuation.definition.tag.end.html

        <{tag} {attr}={value}/>
--      ^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.other.html
--      ^ meta.tag.other.html punctuation.definition.tag.begin.html
--       ^^^^^ entity.name.tag.other.html meta.interpolation.haskell
--       ^ punctuation.section.interpolation.begin.haskell
--        ^^^ variable.other.haskell
--           ^ punctuation.section.interpolation.end.haskell
--             ^^^^^^ meta.attribute-with-value.html entity.other.attribute-name.html meta.interpolation.haskell
--             ^ punctuation.section.interpolation.begin.haskell
--              ^^^^ variable.other.haskell
--                  ^ punctuation.section.interpolation.end.haskell
--                   ^ meta.attribute-with-value.html punctuation.separator.key-value.html
--                    ^^^^^^^ meta.attribute-with-value.html meta.string.html meta.interpolation.haskell
--                    ^ punctuation.section.interpolation.begin.haskell
--                     ^^^^^ variable.other.haskell
--                          ^ punctuation.section.interpolation.end.haskell
--                           ^^ punctuation.definition.tag.end.html

    |]
-- ^ meta.quoted.quasi.haskell text.html.embedded.haskell
--  ^^ meta.quoted.quasi.haskell punctuation.section.quoted.end.haskell - text.html
--    ^ - meta.quote


-- [ IDENTS ] -----------------------------------------------------------------

    _
--  ^ variable.language.anonymous.haskell

    _#
--  ^ variable.language.anonymous.haskell
--   ^ keyword.operator.haskell

    _#_
--  ^ variable.language.anonymous.haskell
--   ^ keyword.operator.haskell
--    ^ variable.language.anonymous.haskell

    a
--  ^ variable.other.haskell

    _a
--  ^^ variable.other.haskell

    _'
--  ^ variable.language.anonymous.haskell
--   ^ keyword.operator.haskell

    a'
--  ^^ variable.other.haskell

    a#
--  ^ variable.other.haskell - storage.modifier
--   ^ variable.other.haskell storage.modifier.unboxed.haskell

    a'#
--  ^^ variable.other.haskell - storage.modifier
--    ^ variable.other.haskell storage.modifier.unboxed.haskell

    _a'b'c_D'0123456789'
--  ^^^^^^^^^^^^^^^^^^^^ variable.other.haskell

    genericIdent
--  ^^^^^^^^^^^^ variable.other.haskell

    ý ĳ ǚ ǣ
--  ^ variable.other.haskell
--   ^ - meta.name
--    ^ variable.other.haskell
--     ^ - meta.name
--      ^ variable.other.haskell
--       ^ - meta.name
--        ^ variable.other.haskell
--         ^ - meta.name

    T.a
--  ^ variable.namespace.haskell
--   ^ punctuation.accessor.dot.haskell
--    ^ variable.other.haskell

    T#.a#
--  ^ variable.namespace.haskell - storage.modifier
--   ^ variable.namespace.haskell storage.modifier.haskell
--    ^ punctuation.accessor.dot.haskell - variable
--     ^ variable.other.haskell - storage.modifier
--      ^ variable.other.haskell storage.modifier.unboxed.haskell

    T . a
--  ^ storage.type.haskell
--    ^ keyword.operator.haskell
--      ^ variable.other.haskell

    T# . a
--  ^ storage.type.haskell - storage.modifier
--   ^ storage.type.haskell storage.modifier.unboxed.haskell
--     ^ keyword.operator.haskell
--       ^ variable.other.haskell

    Just
--  ^^^^ support.constant.prelude.haskell

    Just#
--  ^^^^ storage.type.haskell - storage.modifier
--      ^ storage.type.haskell storage.modifier.unboxed.haskell

    Nothing
--  ^^^^^^^ support.constant.prelude.haskell

    False
--  ^^^^^ support.constant.prelude.haskell

    True
--  ^^^^ support.constant.prelude.haskell

    map (flip (/)) [1..]
--  ^^^ support.function.prelude.haskell
--       ^^^^ meta.group.haskell support.function.prelude.haskell


-- [ LITERAL NUMBERS ] --------------------------------------------------------

    {- Decimal integer literals -}

    0
--  ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    0#
--  ^^ meta.number.integer.decimal.haskell
--  ^ constant.numeric.value.haskell
--   ^ constant.numeric.suffix.haskell

    1234567890
--  ^^^^^^^^^^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    1_2_34__567890_
--  ^^^^^^^^^^^^^^^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    _1234
--  ^^^^^ - constant.numeric

    1234567890##
--  ^^^^^^^^^^^^ meta.number.integer.decimal.haskell
--  ^^^^^^^^^^ constant.numeric.value.haskell
--            ^^ constant.numeric.suffix.haskell

    1_234_567_890_##
--  ^^^^^^^^^^^^^^^^ meta.number.integer.decimal.haskell
--  ^^^^^^^^^^^^^^ constant.numeric.value.haskell
--                ^^ constant.numeric.suffix.haskell

    {- Octal integer literals -}

    0o1234567
--  ^^^^^^^^^ meta.number.integer.octal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^ constant.numeric.value.haskell

    0o_1234_567_
--  ^^^^^^^^^^^^ meta.number.integer.octal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^^^^ constant.numeric.value.haskell

    0o1234567#
--  ^^^^^^^^^^ meta.number.integer.octal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^ constant.numeric.value.haskell
--           ^ constant.numeric.suffix.haskell

    0o_1_234__567_#
--  ^^^^^^^^^^^^^^^ meta.number.integer.octal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^^^^^^ constant.numeric.value.haskell
--                ^ constant.numeric.suffix.haskell

    {- Decimal floating point literals -}

    1.
--  ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--   ^ keyword.operator.haskell

    1.#
--  ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--   ^^ keyword.operator.haskell

    .2
--  ^ keyword.operator.haskell
--   ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    .2#
--  ^ keyword.operator.haskell
--   ^^ meta.number.integer.decimal.haskell
--   ^ constant.numeric.value.haskell
--    ^ constant.numeric.suffix.haskell

    12.345
--  ^^^^^^ meta.number.float.decimal.haskell constant.numeric.value.haskell
--    ^ punctuation.separator.decimal

    12.345#
--  ^^^^^^^ meta.number.float.decimal.haskell
--  ^^^^^^ constant.numeric.value.haskell
--    ^ punctuation.separator.decimal
--        ^ constant.numeric.suffix.haskell

    1_2_._34___5_#
--  ^^^^^^^^^^^^^^ meta.number.float.decimal.haskell
--  ^^^^^^^^^^^^^ constant.numeric.value.haskell
--      ^ punctuation.separator.decimal
--               ^ constant.numeric.suffix.haskell

    1e10
--  ^^^^ meta.number.float.decimal.haskell constant.numeric.value.haskell

    0.5e+0
--  ^^^^^^ meta.number.float.decimal.haskell constant.numeric.value.haskell
--   ^ punctuation.separator.decimal.haskell

    0.5e+0#
--  ^^^^^^^ meta.number.float.decimal.haskell
--  ^^^^^^ constant.numeric.value.haskell
--   ^ punctuation.separator.decimal.haskell
--        ^ constant.numeric.suffix.haskell

    9e-1
--  ^^^^ meta.number.float.decimal.haskell constant.numeric.value.haskell

    {- Binary integer literals -}

    0b0
--  ^^^ meta.number.integer.binary.haskell
--  ^^ constant.numeric.base.haskell
--    ^ constant.numeric.value.haskell
    0b1
--  ^^^ meta.number.integer.binary.haskell
--  ^^ constant.numeric.base.haskell
--    ^ constant.numeric.value.haskell

    0b01010111101
--  ^^^^^^^^^^^^^ meta.number.integer.binary.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^^^^^ constant.numeric.value.haskell

    0b_10___1110_
--  ^^^^^^^^^^^^^ meta.number.integer.binary.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^^^^^ constant.numeric.value.haskell

    0b0#
--  ^^^^ meta.number.integer.binary.haskell
--  ^^ constant.numeric.base.haskell
--    ^ constant.numeric.value.haskell
--     ^ constant.numeric.suffix.haskell

    0b1#
--  ^^^^ meta.number.integer.binary.haskell
--  ^^ constant.numeric.base.haskell
--    ^ constant.numeric.value.haskell
--     ^ constant.numeric.suffix.haskell

    0b01010111101#
--  ^^^^^^^^^^^^^^ meta.number.integer.binary.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^^^^^ constant.numeric.value.haskell
--               ^ constant.numeric.suffix.haskell

    0b_10___1110_#
--  ^^^^^^^^^^^^^^ meta.number.integer.binary.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^^^^^ constant.numeric.value.haskell
--               ^ constant.numeric.suffix.haskell

    {- Hexadecimal integer literals -}

    0x0
--  ^^^ meta.number.integer.hexadecimal.haskell
--  ^^ constant.numeric.base.haskell

    0XdeafBEEF42
--  ^^^^^^^^^^^^ meta.number.integer.hexadecimal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^^^^ constant.numeric.value.haskell

    0x__af_EEF4_
--  ^^^^^^^^^^^^ meta.number.integer.hexadecimal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^^^^ constant.numeric.value.haskell

    0XdeafBEEF42##
--  ^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^^^^ constant.numeric.value.haskell
--              ^^ constant.numeric.suffix.haskell

    0Xd___BEEF4_##
--  ^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^^^^ constant.numeric.value.haskell
--              ^^ constant.numeric.suffix.haskell

    {- Hexadecimal floating point literals -}

    0x0.1      -- is the same as 1/16
--  ^^^^^ meta.number.float.hexadecimal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^ constant.numeric.value.haskell

    0x0.01     -- is the same as 1/256
--  ^^^^^^ meta.number.float.hexadecimal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^ constant.numeric.value.haskell

    0xF.FF     -- is the same as 15 + 15/16 + 15/256
--  ^^^^^^ meta.number.float.hexadecimal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^ constant.numeric.value.haskell

    0x0.1p4    -- is the same as 1
--  ^^^^^^^ meta.number.float.hexadecimal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^ constant.numeric.value.haskell

    0x0.1p-4   -- is the same as 1/256
--  ^^^^^^^^ meta.number.float.hexadecimal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^ constant.numeric.value.haskell

    0x0.1p12   -- is the same as 256
--  ^^^^^^^^ meta.number.float.hexadecimal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^ constant.numeric.value.haskell

    0xA_0._1_p12#
--  ^^^^^^^^^^^^^ meta.number.float.hexadecimal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^^^^ constant.numeric.value.haskell
--              ^ constant.numeric.suffix.haskell

    123identifier
--  ^^^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--     ^^^^^^^^^^ variable.other.haskell

-- [ LITERAL CHARACTERS ] -----------------------------------------------------

    ''.' '
--  ^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^ punctuation.definition.string.end.haskell
--    ^ keyword.operator.haskell
--     ^^^ meta.string.haskell string.quoted.single.haskell
--     ^ punctuation.definition.string.begin.haskell
--      ^ constant.character.literal.haskell
--       ^ punctuation.definition.string.end.haskell

    'a--'
--  ^^ meta.string.haskell string.quoted.single.haskell - comment
--  ^ punctuation.definition.string.begin.haskell
--   ^ constant.character.literal.haskell
--    ^^^^ comment.line.double-dash.haskell - string
--    ^^ punctuation.definition.comment.haskell

    'a'   -- literal character
--  ^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^ constant.character.literal.haskell
--    ^ punctuation.definition.string.end.haskell

    'a'#  -- unboxed literal character
--  ^^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^ constant.character.literal.haskell
--    ^ punctuation.definition.string.end.haskell
--     ^ storage.modifier.unboxed.haskell

    '5'   -- literal digit character
--  ^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^ constant.character.literal.haskell
--    ^ punctuation.definition.string.end.haskell

    '!'.'#'.'$'.'%'.'&'.'⋆'.'+'.'.'.'/'.'<' -- ascii symbols
--  ^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^ constant.character.literal.haskell
--    ^ punctuation.definition.string.end.haskell
--     ^ keyword.operator.haskell
--      ^^^ meta.string.haskell string.quoted.single.haskell
--      ^ punctuation.definition.string.begin.haskell
--       ^ constant.character.literal.haskell
--        ^ punctuation.definition.string.end.haskell
--         ^ keyword.operator.haskell
--          ^^^ meta.string.haskell string.quoted.single.haskell
--          ^ punctuation.definition.string.begin.haskell
--           ^ constant.character.literal.haskell
--            ^ punctuation.definition.string.end.haskell
--             ^ keyword.operator.haskell
--              ^^^ meta.string.haskell string.quoted.single.haskell
--              ^ punctuation.definition.string.begin.haskell
--               ^ constant.character.literal.haskell
--                ^ punctuation.definition.string.end.haskell
--                 ^ keyword.operator.haskell
--                  ^^^ meta.string.haskell string.quoted.single.haskell
--                  ^ punctuation.definition.string.begin.haskell
--                   ^ constant.character.literal.haskell
--                    ^ punctuation.definition.string.end.haskell
--                     ^ keyword.operator.haskell
--                      ^^^ meta.string.haskell string.quoted.single.haskell
--                      ^ punctuation.definition.string.begin.haskell
--                       ^ constant.character.literal.haskell
--                        ^ punctuation.definition.string.end.haskell
--                         ^ keyword.operator.haskell
--                          ^^^ meta.string.haskell string.quoted.single.haskell
--                          ^ punctuation.definition.string.begin.haskell
--                           ^ constant.character.literal.haskell
--                            ^ punctuation.definition.string.end.haskell
--                             ^ keyword.operator.haskell
--                              ^^^ meta.string.haskell string.quoted.single.haskell
--                              ^ punctuation.definition.string.begin.haskell
--                               ^ constant.character.literal.haskell
--                                ^ punctuation.definition.string.end.haskell
--                                 ^ keyword.operator.haskell
--                                  ^^^ meta.string.haskell string.quoted.single.haskell
--                                  ^ punctuation.definition.string.begin.haskell
--                                   ^ constant.character.literal.haskell
--                                    ^ punctuation.definition.string.end.haskell
--                                     ^ keyword.operator.haskell
--                                      ^^^ meta.string.haskell string.quoted.single.haskell
--                                      ^ punctuation.definition.string.begin.haskell
--                                       ^ constant.character.literal.haskell
--                                        ^ punctuation.definition.string.end.haskell

    '='.'>'.'?'.'@'.'^'.'|'.'-'.'~'.':' -- ascii symbols
--  ^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^ constant.character.literal.haskell
--    ^ punctuation.definition.string.end.haskell
--     ^ keyword.operator.haskell
--      ^^^ meta.string.haskell string.quoted.single.haskell
--      ^ punctuation.definition.string.begin.haskell
--       ^ constant.character.literal.haskell
--        ^ punctuation.definition.string.end.haskell
--         ^ keyword.operator.haskell
--          ^^^ meta.string.haskell string.quoted.single.haskell
--          ^ punctuation.definition.string.begin.haskell
--           ^ constant.character.literal.haskell
--            ^ punctuation.definition.string.end.haskell
--             ^ keyword.operator.haskell
--              ^^^ meta.string.haskell string.quoted.single.haskell
--              ^ punctuation.definition.string.begin.haskell
--               ^ constant.character.literal.haskell
--                ^ punctuation.definition.string.end.haskell
--                 ^ keyword.operator.haskell
--                  ^^^ meta.string.haskell string.quoted.single.haskell
--                  ^ punctuation.definition.string.begin.haskell
--                   ^ constant.character.literal.haskell
--                    ^ punctuation.definition.string.end.haskell
--                     ^ keyword.operator.haskell
--                      ^^^ meta.string.haskell string.quoted.single.haskell
--                      ^ punctuation.definition.string.begin.haskell
--                       ^ constant.character.literal.haskell
--                        ^ punctuation.definition.string.end.haskell
--                         ^ keyword.operator.haskell
--                          ^^^ meta.string.haskell string.quoted.single.haskell
--                          ^ punctuation.definition.string.begin.haskell
--                           ^ constant.character.literal.haskell
--                            ^ punctuation.definition.string.end.haskell
--                             ^ keyword.operator.haskell
--                              ^^^ meta.string.haskell string.quoted.single.haskell
--                              ^ punctuation.definition.string.begin.haskell
--                               ^ constant.character.literal.haskell
--                                ^ punctuation.definition.string.end.haskell
--                                 ^ keyword.operator.haskell
--                                  ^^^ meta.string.haskell string.quoted.single.haskell
--                                  ^ punctuation.definition.string.begin.haskell
--                                   ^ constant.character.literal.haskell
--                                    ^ punctuation.definition.string.end.haskell

    '('.')'.','.';'.'['.']'.'`'.'{'.'}' -- special symbols
--  ^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^ constant.character.literal.haskell
--    ^ punctuation.definition.string.end.haskell
--     ^ keyword.operator.haskell
--      ^^^ meta.string.haskell string.quoted.single.haskell
--      ^ punctuation.definition.string.begin.haskell
--       ^ constant.character.literal.haskell
--        ^ punctuation.definition.string.end.haskell
--         ^ keyword.operator.haskell
--          ^^^ meta.string.haskell string.quoted.single.haskell
--          ^ punctuation.definition.string.begin.haskell
--           ^ constant.character.literal.haskell
--            ^ punctuation.definition.string.end.haskell
--             ^ keyword.operator.haskell
--              ^^^ meta.string.haskell string.quoted.single.haskell
--              ^ punctuation.definition.string.begin.haskell
--               ^ constant.character.literal.haskell
--                ^ punctuation.definition.string.end.haskell
--                 ^ keyword.operator.haskell
--                  ^^^ meta.string.haskell string.quoted.single.haskell
--                  ^ punctuation.definition.string.begin.haskell
--                   ^ constant.character.literal.haskell
--                    ^ punctuation.definition.string.end.haskell
--                     ^ keyword.operator.haskell
--                      ^^^ meta.string.haskell string.quoted.single.haskell
--                      ^ punctuation.definition.string.begin.haskell
--                       ^ constant.character.literal.haskell
--                        ^ punctuation.definition.string.end.haskell
--                         ^ keyword.operator.haskell
--                          ^^^ meta.string.haskell string.quoted.single.haskell
--                          ^ punctuation.definition.string.begin.haskell
--                           ^ constant.character.literal.haskell
--                            ^ punctuation.definition.string.end.haskell
--                             ^ keyword.operator.haskell
--                              ^^^ meta.string.haskell string.quoted.single.haskell
--                              ^ punctuation.definition.string.begin.haskell
--                               ^ constant.character.literal.haskell
--                                ^ punctuation.definition.string.end.haskell
--                                 ^ keyword.operator.haskell
--                                  ^^^ meta.string.haskell string.quoted.single.haskell
--                                  ^ punctuation.definition.string.begin.haskell
--                                   ^ constant.character.literal.haskell
--                                    ^ punctuation.definition.string.end.haskell

    '‘'.'’'.'"'.'“'.'”'.'—'.'¯'.'˙'.'´'.'˝'
--  ^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^ constant.character.literal.haskell
--    ^ punctuation.definition.string.end.haskell
--     ^ keyword.operator.haskell
--      ^^^ meta.string.haskell string.quoted.single.haskell
--      ^ punctuation.definition.string.begin.haskell
--       ^ constant.character.literal.haskell
--        ^ punctuation.definition.string.end.haskell
--         ^ keyword.operator.haskell
--          ^^^ meta.string.haskell string.quoted.single.haskell
--          ^ punctuation.definition.string.begin.haskell
--           ^ constant.character.literal.haskell
--            ^ punctuation.definition.string.end.haskell
--             ^ keyword.operator.haskell
--              ^^^ meta.string.haskell string.quoted.single.haskell
--              ^ punctuation.definition.string.begin.haskell
--               ^ constant.character.literal.haskell
--                ^ punctuation.definition.string.end.haskell
--                 ^ keyword.operator.haskell
--                  ^^^ meta.string.haskell string.quoted.single.haskell
--                  ^ punctuation.definition.string.begin.haskell
--                   ^ constant.character.literal.haskell
--                    ^ punctuation.definition.string.end.haskell
--                     ^ keyword.operator.haskell
--                      ^^^ meta.string.haskell string.quoted.single.haskell
--                      ^ punctuation.definition.string.begin.haskell
--                       ^ constant.character.literal.haskell
--                        ^ punctuation.definition.string.end.haskell
--                         ^ keyword.operator.haskell
--                          ^^^ meta.string.haskell string.quoted.single.haskell
--                          ^ punctuation.definition.string.begin.haskell
--                           ^ constant.character.literal.haskell
--                            ^ punctuation.definition.string.end.haskell
--                             ^ keyword.operator.haskell
--                              ^^^ meta.string.haskell string.quoted.single.haskell
--                              ^ punctuation.definition.string.begin.haskell
--                               ^ constant.character.literal.haskell
--                                ^ punctuation.definition.string.end.haskell
--                                 ^ keyword.operator.haskell
--                                  ^^^ meta.string.haskell string.quoted.single.haskell
--                                  ^ punctuation.definition.string.begin.haskell
--                                   ^ constant.character.literal.haskell
--                                    ^ punctuation.definition.string.end.haskell
--                                     ^ keyword.operator.haskell
--                                      ^^^ meta.string.haskell string.quoted.single.haskell
--                                      ^ punctuation.definition.string.begin.haskell
--                                       ^ constant.character.literal.haskell
--                                        ^ punctuation.definition.string.end.haskell

    '←'.'→'.'↔'.'↓'.'↑'.'↕'.'⇐'.'⇒'.'⇔'.'⇓'.'⇑'.'⇕'
--  ^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^ constant.character.literal.haskell
--    ^ punctuation.definition.string.end.haskell
--     ^ keyword.operator.haskell
--      ^^^ meta.string.haskell string.quoted.single.haskell
--      ^ punctuation.definition.string.begin.haskell
--       ^ constant.character.literal.haskell
--        ^ punctuation.definition.string.end.haskell
--         ^ keyword.operator.haskell
--          ^^^ meta.string.haskell string.quoted.single.haskell
--          ^ punctuation.definition.string.begin.haskell
--           ^ constant.character.literal.haskell
--            ^ punctuation.definition.string.end.haskell
--             ^ keyword.operator.haskell
--              ^^^ meta.string.haskell string.quoted.single.haskell
--              ^ punctuation.definition.string.begin.haskell
--               ^ constant.character.literal.haskell
--                ^ punctuation.definition.string.end.haskell
--                 ^ keyword.operator.haskell
--                  ^^^ meta.string.haskell string.quoted.single.haskell
--                  ^ punctuation.definition.string.begin.haskell
--                   ^ constant.character.literal.haskell
--                    ^ punctuation.definition.string.end.haskell
--                     ^ keyword.operator.haskell
--                      ^^^ meta.string.haskell string.quoted.single.haskell
--                      ^ punctuation.definition.string.begin.haskell
--                       ^ constant.character.literal.haskell
--                        ^ punctuation.definition.string.end.haskell
--                         ^ keyword.operator.haskell
--                          ^^^ meta.string.haskell string.quoted.single.haskell
--                          ^ punctuation.definition.string.begin.haskell
--                           ^ constant.character.literal.haskell
--                            ^ punctuation.definition.string.end.haskell
--                             ^ keyword.operator.haskell
--                              ^^^ meta.string.haskell string.quoted.single.haskell
--                              ^ punctuation.definition.string.begin.haskell
--                               ^ constant.character.literal.haskell
--                                ^ punctuation.definition.string.end.haskell
--                                 ^ keyword.operator.haskell
--                                  ^^^ meta.string.haskell string.quoted.single.haskell
--                                  ^ punctuation.definition.string.begin.haskell
--                                   ^ constant.character.literal.haskell
--                                    ^ punctuation.definition.string.end.haskell
--                                     ^ keyword.operator.haskell
--                                      ^^^ meta.string.haskell string.quoted.single.haskell
--                                      ^ punctuation.definition.string.begin.haskell
--                                       ^ constant.character.literal.haskell
--                                        ^ punctuation.definition.string.end.haskell
--                                         ^ keyword.operator.haskell
--                                          ^^^ meta.string.haskell string.quoted.single.haskell
--                                          ^ punctuation.definition.string.begin.haskell
--                                           ^ constant.character.literal.haskell
--                                            ^ punctuation.definition.string.end.haskell
--                                             ^ keyword.operator.haskell
--                                              ^^^ meta.string.haskell string.quoted.single.haskell
--                                              ^ punctuation.definition.string.begin.haskell
--                                               ^ constant.character.literal.haskell
--                                                ^ punctuation.definition.string.end.haskell

    'α'.'β'.'γ'.'δ'.'ε'.'ζ'.'η'.'θ'.'ι'.'κ'.'λ'.'μ'
--  ^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^ constant.character.literal.haskell
--    ^ punctuation.definition.string.end.haskell
--     ^ keyword.operator.haskell
--      ^^^ meta.string.haskell string.quoted.single.haskell
--      ^ punctuation.definition.string.begin.haskell
--       ^ constant.character.literal.haskell
--        ^ punctuation.definition.string.end.haskell
--         ^ keyword.operator.haskell
--          ^^^ meta.string.haskell string.quoted.single.haskell
--          ^ punctuation.definition.string.begin.haskell
--           ^ constant.character.literal.haskell
--            ^ punctuation.definition.string.end.haskell
--             ^ keyword.operator.haskell
--              ^^^ meta.string.haskell string.quoted.single.haskell
--              ^ punctuation.definition.string.begin.haskell
--               ^ constant.character.literal.haskell
--                ^ punctuation.definition.string.end.haskell
--                 ^ keyword.operator.haskell
--                  ^^^ meta.string.haskell string.quoted.single.haskell
--                  ^ punctuation.definition.string.begin.haskell
--                   ^ constant.character.literal.haskell
--                    ^ punctuation.definition.string.end.haskell
--                     ^ keyword.operator.haskell
--                      ^^^ meta.string.haskell string.quoted.single.haskell
--                      ^ punctuation.definition.string.begin.haskell
--                       ^ constant.character.literal.haskell
--                        ^ punctuation.definition.string.end.haskell
--                         ^ keyword.operator.haskell
--                          ^^^ meta.string.haskell string.quoted.single.haskell
--                          ^ punctuation.definition.string.begin.haskell
--                           ^ constant.character.literal.haskell
--                            ^ punctuation.definition.string.end.haskell
--                             ^ keyword.operator.haskell
--                              ^^^ meta.string.haskell string.quoted.single.haskell
--                              ^ punctuation.definition.string.begin.haskell
--                               ^ constant.character.literal.haskell
--                                ^ punctuation.definition.string.end.haskell
--                                 ^ keyword.operator.haskell
--                                  ^^^ meta.string.haskell string.quoted.single.haskell
--                                  ^ punctuation.definition.string.begin.haskell
--                                   ^ constant.character.literal.haskell
--                                    ^ punctuation.definition.string.end.haskell
--                                     ^ keyword.operator.haskell
--                                      ^^^ meta.string.haskell string.quoted.single.haskell
--                                      ^ punctuation.definition.string.begin.haskell
--                                       ^ constant.character.literal.haskell
--                                        ^ punctuation.definition.string.end.haskell
--                                         ^ keyword.operator.haskell
--                                          ^^^ meta.string.haskell string.quoted.single.haskell
--                                          ^ punctuation.definition.string.begin.haskell
--                                           ^ constant.character.literal.haskell
--                                            ^ punctuation.definition.string.end.haskell
--                                             ^ keyword.operator.haskell
--                                              ^^^ meta.string.haskell string.quoted.single.haskell
--                                              ^ punctuation.definition.string.begin.haskell
--                                               ^ constant.character.literal.haskell
--                                                ^ punctuation.definition.string.end.haskell

    '\'' . '\"' . '\&' . '\\'  -- escape characters
--  ^^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^^ constant.character.escape.haskell
--     ^ punctuation.definition.string.end.haskell
--         ^^^^ meta.string.haskell string.quoted.single.haskell
--         ^ punctuation.definition.string.begin.haskell
--          ^^ constant.character.escape.haskell
--            ^ punctuation.definition.string.end.haskell
--                ^^^^ meta.string.haskell string.quoted.single.haskell
--                ^ punctuation.definition.string.begin.haskell
--                 ^^ constant.character.escape.haskell
--                   ^ punctuation.definition.string.end.haskell
--                       ^^^^ meta.string.haskell string.quoted.single.haskell
--                       ^ punctuation.definition.string.begin.haskell
--                        ^^ constant.character.escape.haskell
--                          ^ punctuation.definition.string.end.haskell

    '\a' . '\b' . '\n' . '\f' . '\t' . '\v'  -- escape characters
--  ^^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^^ constant.character.escape.haskell
--     ^ punctuation.definition.string.end.haskell
--      ^^^ - meta.string - string
--         ^^^^ meta.string.haskell string.quoted.single.haskell
--         ^ punctuation.definition.string.begin.haskell
--          ^^ constant.character.escape.haskell
--            ^ punctuation.definition.string.end.haskell
--             ^^^ - meta.string - string
--                ^^^^ meta.string.haskell string.quoted.single.haskell
--                ^ punctuation.definition.string.begin.haskell
--                 ^^ constant.character.escape.haskell
--                   ^ punctuation.definition.string.end.haskell
--                    ^^^ - meta.string - string
--                       ^^^^ meta.string.haskell string.quoted.single.haskell
--                       ^ punctuation.definition.string.begin.haskell
--                        ^^ constant.character.escape.haskell
--                          ^ punctuation.definition.string.end.haskell
--                           ^^^ - meta.string - string
--                              ^^^^ meta.string.haskell string.quoted.single.haskell
--                              ^ punctuation.definition.string.begin.haskell
--                               ^^ constant.character.escape.haskell
--                                 ^ punctuation.definition.string.end.haskell
--                                  ^^^ - meta.string - string
--                                     ^^^^ meta.string.haskell string.quoted.single.haskell
--                                     ^ punctuation.definition.string.begin.haskell
--                                      ^^ constant.character.escape.haskell
--                                        ^ punctuation.definition.string.end.haskell

    '\NUL' . '\SOH' . '\STX' . '\ETX' . '\EOT' . '\ENQ' . '\ACK'
--  ^^^^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^^^^ constant.character.escape.haskell
--       ^ punctuation.definition.string.end.haskell
--        ^^^ - meta.string - string
--           ^^^^^^ meta.string.haskell string.quoted.single.haskell
--           ^ punctuation.definition.string.begin.haskell
--            ^^^^ constant.character.escape.haskell
--                ^ punctuation.definition.string.end.haskell
--                 ^^^ - meta.string - string
--                    ^^^^^^ meta.string.haskell string.quoted.single.haskell
--                    ^ punctuation.definition.string.begin.haskell
--                     ^^^^ constant.character.escape.haskell
--                         ^ punctuation.definition.string.end.haskell
--                          ^^^ - meta.string - string
--                             ^^^^^^ meta.string.haskell string.quoted.single.haskell
--                             ^ punctuation.definition.string.begin.haskell
--                              ^^^^ constant.character.escape.haskell
--                                  ^ punctuation.definition.string.end.haskell
--                                   ^^^ - meta.string - string
--                                      ^^^^^^ meta.string.haskell string.quoted.single.haskell
--                                      ^ punctuation.definition.string.begin.haskell
--                                       ^^^^ constant.character.escape.haskell
--                                           ^ punctuation.definition.string.end.haskell
--                                            ^^^ - meta.string - string
--                                               ^^^^^^ meta.string.haskell string.quoted.single.haskell
--                                               ^ punctuation.definition.string.begin.haskell
--                                                ^^^^ constant.character.escape.haskell
--                                                    ^ punctuation.definition.string.end.haskell
--                                                     ^^^ - meta.string - string
--                                                        ^^^^^^ meta.string.haskell string.quoted.single.haskell
--                                                        ^ punctuation.definition.string.begin.haskell
--                                                         ^^^^ constant.character.escape.haskell
--                                                             ^ punctuation.definition.string.end.haskell
--                                                              ^ - meta.string - string

    '\0' '\1' '\2' '\3' '\4' '\5' '\6' '\7' '\8' '\9'
--  ^^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^^ constant.character.escape.decimal.haskell
--     ^ punctuation.definition.string.end.haskell
--      ^ - meta.string - string
--       ^^^^ meta.string.haskell string.quoted.single.haskell
--       ^ punctuation.definition.string.begin.haskell
--        ^^ constant.character.escape.decimal.haskell
--          ^ punctuation.definition.string.end.haskell
--           ^ - meta.string - string
--            ^^^^ meta.string.haskell string.quoted.single.haskell
--            ^ punctuation.definition.string.begin.haskell
--             ^^ constant.character.escape.decimal.haskell
--               ^ punctuation.definition.string.end.haskell
--                ^ - meta.string - string
--                 ^^^^ meta.string.haskell string.quoted.single.haskell
--                 ^ punctuation.definition.string.begin.haskell
--                  ^^ constant.character.escape.decimal.haskell
--                    ^ punctuation.definition.string.end.haskell
--                     ^ - meta.string - string
--                      ^^^^ meta.string.haskell string.quoted.single.haskell
--                      ^ punctuation.definition.string.begin.haskell
--                       ^^ constant.character.escape.decimal.haskell
--                         ^ punctuation.definition.string.end.haskell
--                          ^ - meta.string - string
--                           ^^^^ meta.string.haskell string.quoted.single.haskell
--                           ^ punctuation.definition.string.begin.haskell
--                            ^^ constant.character.escape.decimal.haskell
--                              ^ punctuation.definition.string.end.haskell
--                               ^ - meta.string - string
--                                ^^^^ meta.string.haskell string.quoted.single.haskell
--                                ^ punctuation.definition.string.begin.haskell
--                                 ^^ constant.character.escape.decimal.haskell
--                                   ^ punctuation.definition.string.end.haskell
--                                    ^ - meta.string - string
--                                     ^^^^ meta.string.haskell string.quoted.single.haskell
--                                     ^ punctuation.definition.string.begin.haskell
--                                      ^^ constant.character.escape.decimal.haskell
--                                        ^ punctuation.definition.string.end.haskell
--                                         ^ - meta.string - string
--                                          ^^^^ meta.string.haskell string.quoted.single.haskell
--                                          ^ punctuation.definition.string.begin.haskell
--                                           ^^ constant.character.escape.decimal.haskell
--                                             ^ punctuation.definition.string.end.haskell
--                                              ^ - meta.string - string
--                                               ^^^^ meta.string.haskell string.quoted.single.haskell
--                                               ^ punctuation.definition.string.begin.haskell
--                                                ^^ constant.character.escape.decimal.haskell
--                                                  ^ punctuation.definition.string.end.haskell
--                                                   ^ - meta.string - string

    '\o0' '\o1' '\o2' '\o3' '\o4' '\o5' '\o6' '\o7'
--  ^^^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^^^ constant.character.escape.octal.haskell
--      ^ punctuation.definition.string.end.haskell
--       ^ - meta.string - string
--        ^^^^^ meta.string.haskell string.quoted.single.haskell
--        ^ punctuation.definition.string.begin.haskell
--         ^^^ constant.character.escape.octal.haskell
--            ^ punctuation.definition.string.end.haskell
--             ^ - meta.string - string
--              ^^^^^ meta.string.haskell string.quoted.single.haskell
--              ^ punctuation.definition.string.begin.haskell
--               ^^^ constant.character.escape.octal.haskell
--                  ^ punctuation.definition.string.end.haskell
--                   ^ - meta.string - string
--                    ^^^^^ meta.string.haskell string.quoted.single.haskell
--                    ^ punctuation.definition.string.begin.haskell
--                     ^^^ constant.character.escape.octal.haskell
--                        ^ punctuation.definition.string.end.haskell
--                         ^ - meta.string - string
--                          ^^^^^ meta.string.haskell string.quoted.single.haskell
--                          ^ punctuation.definition.string.begin.haskell
--                           ^^^ constant.character.escape.octal.haskell
--                              ^ punctuation.definition.string.end.haskell
--                               ^ - meta.string - string
--                                ^^^^^ meta.string.haskell string.quoted.single.haskell
--                                ^ punctuation.definition.string.begin.haskell
--                                 ^^^ constant.character.escape.octal.haskell
--                                    ^ punctuation.definition.string.end.haskell
--                                     ^ - meta.string - string
--                                      ^^^^^ meta.string.haskell string.quoted.single.haskell
--                                      ^ punctuation.definition.string.begin.haskell
--                                       ^^^ constant.character.escape.octal.haskell
--                                          ^ punctuation.definition.string.end.haskell
--                                           ^ - meta.string - string
--                                            ^^^^^ meta.string.haskell string.quoted.single.haskell
--                                            ^ punctuation.definition.string.begin.haskell
--                                             ^^^ constant.character.escape.octal.haskell
--                                                ^ punctuation.definition.string.end.haskell
--                                                 ^ - meta.string - string

    '\x0' '\x1' '\x2' '\x3' '\x8' '\xA' '\xC' '\xF'
--  ^^^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^^^ constant.character.escape.hexadecimal.haskell
--      ^ punctuation.definition.string.end.haskell
--       ^ - meta.string - string
--        ^^^^^ meta.string.haskell string.quoted.single.haskell
--        ^ punctuation.definition.string.begin.haskell
--         ^^^ constant.character.escape.hexadecimal.haskell
--            ^ punctuation.definition.string.end.haskell
--             ^ - meta.string - string
--              ^^^^^ meta.string.haskell string.quoted.single.haskell
--              ^ punctuation.definition.string.begin.haskell
--               ^^^ constant.character.escape.hexadecimal.haskell
--                  ^ punctuation.definition.string.end.haskell
--                   ^ - meta.string - string
--                    ^^^^^ meta.string.haskell string.quoted.single.haskell
--                    ^ punctuation.definition.string.begin.haskell
--                     ^^^ constant.character.escape.hexadecimal.haskell
--                        ^ punctuation.definition.string.end.haskell
--                         ^ - meta.string - string
--                          ^^^^^ meta.string.haskell string.quoted.single.haskell
--                          ^ punctuation.definition.string.begin.haskell
--                           ^^^ constant.character.escape.hexadecimal.haskell
--                              ^ punctuation.definition.string.end.haskell
--                               ^ - meta.string - string
--                                ^^^^^ meta.string.haskell string.quoted.single.haskell
--                                ^ punctuation.definition.string.begin.haskell
--                                 ^^^ constant.character.escape.hexadecimal.haskell
--                                    ^ punctuation.definition.string.end.haskell
--                                     ^ - meta.string - string
--                                      ^^^^^ meta.string.haskell string.quoted.single.haskell
--                                      ^ punctuation.definition.string.begin.haskell
--                                       ^^^ constant.character.escape.hexadecimal.haskell
--                                          ^ punctuation.definition.string.end.haskell
--                                           ^ - meta.string - string
--                                            ^^^^^ meta.string.haskell string.quoted.single.haskell
--                                            ^ punctuation.definition.string.begin.haskell
--                                             ^^^ constant.character.escape.hexadecimal.haskell
--                                                ^ punctuation.definition.string.end.haskell
--                                                 ^ - meta.string - string

    '^A' . '^Z' . '^@' . '^[' . '^]' . '^\' . '^^' . '^_'
--  ^^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--   ^^ constant.character.escape.control.haskell
--     ^ punctuation.definition.string.end.haskell
--      ^^^ - meta.string - string
--         ^^^^ meta.string.haskell string.quoted.single.haskell
--         ^ punctuation.definition.string.begin.haskell
--          ^^ constant.character.escape.control.haskell
--            ^ punctuation.definition.string.end.haskell
--             ^^^ - meta.string - string
--                ^^^^ meta.string.haskell string.quoted.single.haskell
--                ^ punctuation.definition.string.begin.haskell
--                 ^^ constant.character.escape.control.haskell
--                   ^ punctuation.definition.string.end.haskell
--                    ^^^ - meta.string - string
--                       ^^^^ meta.string.haskell string.quoted.single.haskell
--                       ^ punctuation.definition.string.begin.haskell
--                        ^^ constant.character.escape.control.haskell
--                          ^ punctuation.definition.string.end.haskell
--                           ^^^ - meta.string - string
--                              ^^^^ meta.string.haskell string.quoted.single.haskell
--                              ^ punctuation.definition.string.begin.haskell
--                               ^^ constant.character.escape.control.haskell
--                                 ^ punctuation.definition.string.end.haskell
--                                  ^^^ - meta.string - string
--                                     ^^^^ meta.string.haskell string.quoted.single.haskell
--                                     ^ punctuation.definition.string.begin.haskell
--                                      ^^ constant.character.escape.control.haskell
--                                        ^ punctuation.definition.string.end.haskell
--                                         ^^^ - meta.string - string
--                                            ^^^^ meta.string.haskell string.quoted.single.haskell
--                                            ^ punctuation.definition.string.begin.haskell
--                                             ^^ constant.character.escape.control.haskell
--                                               ^ punctuation.definition.string.end.haskell
--                                                ^^^ - meta.string - string
--                                                   ^^^^ meta.string.haskell string.quoted.single.haskell
--                                                   ^ punctuation.definition.string.begin.haskell
--                                                    ^^ constant.character.escape.control.haskell
--                                                      ^ punctuation.definition.string.end.haskell


-- [ NO LITERAL CHARACTERS ]---------------------------------------------------

    '
--  ^ - meta.string - string
--  ^ keyword.operator.haskell

    'a
--  ^^ - meta.string - string
--  ^ keyword.operator.haskell
--   ^ variable.other.haskell

    'ab'
--  ^^^^ - meta.string - string
--  ^ keyword.operator.haskell
--   ^^^ variable.other.haskell

    A' = A'
--  ^^^^^^^ - meta.string - string
--  ^^ storage.type.haskell
--     ^ keyword.operator.haskell
--       ^^ storage.type.haskell

    a' = b'
--  ^^^^^^^ - meta.string - string
--  ^^ variable.other.haskell - string
--     ^ keyword.operator.haskell
--       ^^ variable.other.haskell - string

    '\c' . '\z'
--  ^^^^^^^^^^^ - meta.string - string
--  ^^ keyword.operator.haskell
--    ^^ variable.other.haskell
--       ^ keyword.operator.haskell
--         ^^ keyword.operator.haskell
--           ^^ variable.other.haskell

    '\?'
--  ^^^^ keyword.operator.haskell - string

    '\129x'
--  ^^^^^^^ - meta.string - string
--  ^^ keyword.operator.haskell

    '\o8' '\o9'
--  ^^^^^^^^^^^ - meta.string - string - constant.character
--  ^^ keyword.operator.haskell
--    ^^^ variable.other.haskell
--        ^^ keyword.operator.haskell
--          ^^^ variable.other.haskell

    '\xG' '\xh'
--  ^^^^^^^^^^^ - meta.string - string - constant.character
--  ^^ keyword.operator.haskell
--    ^^^ variable.other.haskell
--        ^^ keyword.operator.haskell
--          ^^^ variable.other.haskell

    '^a' '^)'
--  ^^^^^^^^^ - meta.string - string - constant.character
--  ^^ keyword.operator.haskell
--    ^^ variable.other.haskell
--       ^^ keyword.operator.haskell
--          ^ keyword.operator.haskell


-- [ LITERAL STRINGS ]---------------------------------------------------------

    "\o129x\NUL"
--  ^^^^^^^^^^^^ meta.string.haskell string.quoted.double.haskell
--   ^^^^ constant.character.escape.octal.haskell
--       ^ - constant
--             ^ punctuation.definition.string.end.haskell
--         ^^^^ constant.character.escape.haskell

    "ok\"()--"'b'
--  ^^^^^^^^^^ meta.string.haskell string.quoted.double.haskell - comment
--            ^^^ meta.string.haskell string.quoted.single.haskell
--  ^ punctuation.definition.string.begin.haskell
--     ^^ constant.character.escape.haskell
--         ^^ - punctuation

    "string"# -- unboxed literal string
--  ^^^^^^^^^ meta.string.haskell string.quoted.double.haskell
--  ^ punctuation.definition.string.begin.haskell
--         ^ punctuation.definition.string.end.haskell
--          ^ storage.modifier.unboxed.haskell

    "string" #
--  ^^^^^^^^ meta.string.haskell string.quoted.double.haskell
--          ^^^ - meta.string - string
--  ^ punctuation.definition.string.begin.haskell
--         ^ punctuation.definition.string.end.haskell
--           ^ keyword.operator.haskell

    "This is a\
--  ^^^^^^^^^^ meta.string.haskell string.quoted.double.haskell
--            ^^ meta.string.continuation.haskell - string
--            ^ punctuation.definition.continuation.begin.haskell
    "This is a\
    \multi-line string literal\
-- <- meta.string.continuation.haskell - string
-- ^^ meta.string.continuation.haskell - string
--  ^ punctuation.definition.continuation.end.haskell
--   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.haskell string.quoted.double.haskell
--                            ^^ meta.string.continuation.haskell - string
--                            ^ punctuation.definition.continuation.begin.haskell
    "This is a\
    \multi-line string literal\
    /example"
-- <- meta.string.continuation.haskell - string
-- ^^ meta.string.continuation.haskell - string
--  ^ invalid.illegal.expect-continuation-end.haskell
--   ^^^^^^^^ meta.string.haskell string.quoted.double.haskell
--          ^ punctuation.definition.string.end.haskell

    "This is a\
    "
-- <- meta.string.continuation.haskell - string
-- ^^ meta.string.continuation.haskell - string
--  ^ invalid.illegal.expect-continuation-end.haskell
--   ^ - meta.string - string - invalid

-- [ INFIX OPERATORS ] --------------------------------------------------------

    ! # $ % & ⋆ + . / < = > ? @ \ ^ | - ~ :  -- ascii symbols
-- ^ - keyword
--  ^ keyword.operator.haskell
--   ^ - keyword
--    ^ keyword.operator.haskell
--     ^ - keyword
--      ^ keyword.operator.haskell
--       ^ - keyword
--        ^ keyword.operator.haskell
--         ^ - keyword
--          ^ keyword.operator.haskell
--           ^ - keyword
--            ^ keyword.operator.haskell
--             ^ - keyword
--              ^ keyword.operator.haskell
--               ^ - keyword
--                ^ keyword.operator.haskell
--                 ^ - keyword
--                  ^ keyword.operator.haskell
--                   ^ - keyword
--                    ^ keyword.operator.haskell
--                     ^ - keyword
--                      ^ keyword.operator.haskell
--                       ^ - keyword
--                        ^ keyword.operator.haskell
--                         ^ - keyword
--                          ^ keyword.operator.haskell
--                           ^ - keyword
--                            ^ keyword.operator.haskell
--                             ^ - keyword
--                              ^ keyword.operator.haskell
--                               ^ - keyword
--                                ^ keyword.operator.haskell
--                                 ^ - keyword
--                                  ^ punctuation.separator.sequence.haskell
--                                   ^ - keyword
--                                    ^ keyword.operator.haskell
--                                     ^ - keyword
--                                      ^ keyword.operator.haskell
--                                       ^ - keyword
--                                        ^ keyword.operator.haskell
--                                         ^ - keyword

    .. : :: = \ <- | -> @ ~ =>  -- reserved operators
--  ^^ keyword.operator.haskell
--     ^ keyword.operator.haskell
--       ^^ punctuation.separator.type.haskell
--          ^ keyword.operator.haskell
--            ^ keyword.operator.haskell
--              ^^ keyword.operator.arrow.haskell
--                 ^ punctuation.separator.sequence.haskell
--                   ^^ keyword.operator.arrow.haskell
--                      ^ keyword.operator.haskell
--                        ^ keyword.operator.haskell
--                          ^^ punctuation.separator.type.context.haskell

    ( ) , ; [ ] ` { }  -- special symbols
--  ^^^^^^^^^^^^^^^^^ - keyword
--  ^ punctuation.section.group.begin.haskell
--    ^ punctuation.section.group.end.haskell
--      ^ punctuation.separator.sequence.haskell
--        ^ punctuation.terminator.statement.haskell
--          ^ punctuation.section.sequence.begin.haskell
--            ^ punctuation.section.sequence.end.haskell
--                ^ punctuation.section.block.begin.haskell
--                  ^ punctuation.section.block.end.haskell

    a a = a || b
--      ^ keyword.operator.haskell
--          ^^ keyword.operator.haskell

    a a = (+) a 2
--      ^ keyword.operator.haskell
--        ^^^ meta.prefix.haskell
--        ^ punctuation.definition.prefix.begin.haskell
--         ^ keyword.operator.haskell
--          ^ punctuation.definition.prefix.end.haskell
--              ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = ( + ) a 2
--      ^ keyword.operator.haskell
--        ^^^^^ meta.prefix.haskell
--        ^ punctuation.definition.prefix.begin.haskell
--         ^ - punctuation - keyword
--          ^ keyword.operator.haskell
--           ^ - punctuation - keyword
--            ^ punctuation.definition.prefix.end.haskell
--                ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = (-) a 2
--      ^ keyword.operator.haskell
--        ^^^ meta.prefix.haskell
--        ^ punctuation.definition.prefix.begin.haskell
--         ^ keyword.operator.haskell
--          ^ punctuation.definition.prefix.end.haskell
--              ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = ( - ) a 2
--      ^ keyword.operator.haskell
--        ^^^^^ meta.prefix.haskell
--        ^ punctuation.definition.prefix.begin.haskell
--         ^ - punctuation - keyword
--          ^ keyword.operator.haskell
--           ^ - punctuation - keyword
--            ^ punctuation.definition.prefix.end.haskell
--                ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = (*) a 2
--      ^ keyword.operator.haskell
--        ^^^ meta.prefix.haskell
--        ^ punctuation.definition.prefix.begin.haskell
--         ^ keyword.operator.haskell
--          ^ punctuation.definition.prefix.end.haskell
--              ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = ( * ) a 2
--      ^ keyword.operator.haskell
--        ^^^^^ meta.prefix.haskell
--        ^ punctuation.definition.prefix.begin.haskell
--         ^ - punctuation - keyword
--          ^ keyword.operator.haskell
--           ^ - punctuation - keyword
--            ^ punctuation.definition.prefix.end.haskell
--                ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = (/) a 2
--      ^ keyword.operator.haskell
--        ^^^ meta.prefix.haskell
--        ^ punctuation.definition.prefix.begin.haskell
--         ^ keyword.operator.haskell
--          ^ punctuation.definition.prefix.end.haskell
--              ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = ( / ) a 2
--      ^ keyword.operator.haskell
--        ^^^^^ meta.prefix.haskell
--        ^ punctuation.definition.prefix.begin.haskell
--         ^ - punctuation - keyword
--          ^ keyword.operator.haskell
--           ^ - punctuation - keyword
--            ^ punctuation.definition.prefix.end.haskell
--                ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = (--) a 2
--      ^ keyword.operator.haskell
--        ^^^^ - variable.function.infix
--        ^ punctuation.section.group.begin.haskell
--         ^^^^^^^^ comment.line.double-dash.haskell
          )
--        ^ punctuation.section.group.end.haskell

    a a = (---) a 2
--      ^ keyword.operator.haskell
--        ^^^^^ - variable.function.infix
--        ^ punctuation.section.group.begin.haskell
--         ^^^^^^^^^ comment.line.double-dash.haskell
          )
--        ^ punctuation.section.group.end.haskell

    {- unqualified infix variable operator id -}
    a `member` x
--    ^^^^^^^^ meta.infix.haskell
--    ^ punctuation.definition.infix.begin.haskell - keyword
--     ^^^^^^ keyword.operator.function.infix.haskell
--           ^ punctuation.definition.infix.end.haskell - keyword

    {- qualified infix variable operator id -}
    a `P.atan2` x
--    ^^^^^^^^^ meta.infix.haskell
--    ^ punctuation.definition.infix.begin.haskell - keyword
--     ^ variable.namespace.haskell
--      ^ punctuation.accessor.dot.haskell - keyword - variable
--       ^^^^^ keyword.operator.function.infix.haskell
--            ^ punctuation.definition.infix.end.haskell - keyword

    {- unqualified infix constructor operator id -}
    a `Quux` x
--    ^^^^^^ meta.infix.haskell
--    ^ punctuation.definition.infix.begin.haskell - keyword
--     ^^^^ keyword.operator.function.infix.haskell
--         ^ punctuation.definition.infix.end.haskell - keyword

    {- qualified infix constructor operator id -}
    a `Monad.Quux` x
--    ^^^^^^^^^^^^ meta.infix.haskell
--    ^ punctuation.definition.infix.begin.haskell - keyword
--     ^^^^^ variable.namespace.haskell
--          ^ punctuation.accessor.dot.haskell - keyword - variable
--           ^^^^ keyword.operator.function.infix.haskell
--               ^ punctuation.definition.infix.end.haskell - keyword

    5 `f `7`f`"3 'ab'"
--  ^ constant.numeric.value.haskell
--    ^^^^ meta.infix.haskell
--    ^ punctuation.definition.infix.begin.haskell - keyword
--     ^ keyword.operator.function.infix.haskell
--      ^ - keyword - punctuation
--       ^ punctuation.definition.infix.end.haskell - keyword
--        ^ constant.numeric.value.haskell
--         ^^^ meta.infix.haskell
--         ^ punctuation.definition.infix.begin.haskell - keyword
--          ^ keyword.operator.function.infix.haskell
--           ^ punctuation.definition.infix.end.haskell - keyword
--            ^^^^^^^^ meta.string.haskell string.quoted.double.haskell
--            ^ punctuation.definition.string.begin.haskell
--             ^^^^^^ - constant - punctuation
--                   ^ punctuation.definition.string.end.haskell

    a ` f` b
--    ^^^^ meta.infix.haskell
--    ^ punctuation.definition.infix.begin.haskell - keyword
--      ^ keyword.operator.function.infix.haskell
--       ^ punctuation.definition.infix.end.haskell - keyword

    a `--` b
--    ^ - illegal - keyword - operator - punctuation
--     ^^^^^^ comment.line.double-dash.haskell

    a `
--    ^ - illegal - keyword - operator - punctuation

    a `shiftL#` b
--    ^^^^^^^^^ meta.infix.haskell
--    ^ punctuation.definition.infix.begin.haskell - keyword
--     ^^^^^^^ keyword.operator.function.infix.haskell
--           ^ storage.modifier.unboxed.haskell
--            ^ punctuation.definition.infix.end.haskell - keyword

    a ` shiftL# ` b
--    ^^^^^^^^^^^ meta.infix.haskell
--    ^ punctuation.definition.infix.begin.haskell - keyword
--      ^^^^^^^ keyword.operator.function.infix.haskell
--            ^ storage.modifier.unboxed.haskell
--              ^ punctuation.definition.infix.end.haskell - keyword

    a `Ns.shiftL#` b
--    ^^^^^^^^^^^^ meta.infix.haskell
--    ^ punctuation.definition.infix.begin.haskell - keyword
--     ^^ variable.namespace.haskell
--       ^ punctuation.accessor.dot.haskell - keyword - variable
--        ^^^^^^^ keyword.operator.function.infix.haskell
--              ^ storage.modifier.unboxed.haskell
--               ^ punctuation.definition.infix.end.haskell - keyword

    a `ModId.Ns.shiftL#` b
--    ^^^^^^^^^^^^^^^^^^ meta.infix.haskell
--    ^ punctuation.definition.infix.begin.haskell - keyword
--     ^^^^^ variable.namespace.haskell
--          ^ punctuation.accessor.dot.haskell - variable
--           ^^ variable.namespace.haskell
--             ^ punctuation.accessor.dot.haskell - keyword - variable
--              ^^^^^^^ keyword.operator.function.infix.haskell
--                    ^ storage.modifier.unboxed.haskell
--                     ^ punctuation.definition.infix.end.haskell - keyword

    a `Unboxed#` b
--    ^^^^^^^^^^ meta.infix.haskell
--    ^ punctuation.definition.infix.begin.haskell - keyword
--     ^^^^^^^^ keyword.operator.function.infix.haskell
--            ^ storage.modifier.unboxed.haskell
--             ^ punctuation.definition.infix.end.haskell - keyword


-- [ INFIX OPERATORS IN CONTEXT ]----------------------------------------------

  genOutrageous :: Gen Outrageous
  genOutrageous =
    Gen.recursive Gen.choice [
        Flipper <$> genRecord
--              ^^^ keyword.operator.haskell
      , (:!) <$> genInt <*> genInt
--    ^ punctuation.separator.sequence.haskell
--      ^^^^ meta.sequence.list.haskell meta.prefix.haskell
--      ^ punctuation.definition.prefix.begin.haskell
--       ^^ keyword.operator.haskell
--         ^ punctuation.definition.prefix.end.haskell
--           ^^^ keyword.operator.haskell
--                      ^^^ keyword.operator.haskell
      , (:@) <$> genDouble <*> genDouble
--    ^ punctuation.separator.sequence.haskell
--      ^^^^ meta.sequence.list.haskell meta.prefix.haskell
--      ^ punctuation.definition.prefix.begin.haskell
--       ^^ keyword.operator.haskell
--         ^ punctuation.definition.prefix.end.haskell
--           ^^^ keyword.operator.haskell
--                         ^^^ keyword.operator.haskell
      , Quux <$> genInt <*> genDouble
--    ^ punctuation.separator.sequence.haskell
--      ^^^^ storage.type.haskell
--           ^^^ keyword.operator.haskell
--                      ^^^ keyword.operator.haskell
      , (:#) <$> genString <*> genRecord
--    ^ punctuation.separator.sequence.haskell
--      ^^^^ meta.sequence.list.haskell meta.prefix.haskell
--      ^ punctuation.definition.prefix.begin.haskell
--       ^^ keyword.operator.haskell
--         ^ punctuation.definition.prefix.end.haskell
--           ^^^ keyword.operator.haskell
--                         ^^^ keyword.operator.haskell
      , DontDoThis <$> genInt <*> genString
--    ^ punctuation.separator.sequence.haskell
--                 ^^^ keyword.operator.haskell
--                            ^^^ keyword.operator.haskell
      ] [
        Gen.subtermM genOutrageous (\x -> (:$) <$> genSimple <*> pure x)
      ]

myManageHook = composeAll
  [ isDialog                   --> doFullFloat
--                             ^^^ keyword.operator
  , return True                --> doShift "1"
--                             ^^^ keyword.operator
  ]


shiftL# :: Word# -> Int# -> Word#
a `shiftL#` b   | isTrue# (b >=# WORD_SIZE_IN_BITS#) = 0##
                | otherwise                          = a `uncheckedShiftL#` b
