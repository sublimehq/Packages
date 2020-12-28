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


-- [ PREPROCESSOR ] -----------------------------------------------------------

    {-# MINIMAL traverse | sequenceA LANGUAGE #-}
--  ^^^^^^^^^^^ meta.preprocessor.pragma.directive.haskell
--             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.value.other.haskell
--                                            ^^^ meta.preprocessor.pragma.value.haskell
--                                               ^ - meta.preprocessor.haskell
--  ^^^ punctuation.section.preprocessor.begin.haskell
--      ^^^^^^^ keyword.directive.builtin.haskell
--              ^^^^^^^^ constant.other.pragma.haskell
--                       ^ punctuation.separator.sequence.haskell
--                         ^^^^^^^^^ constant.other.pragma.haskell
--                                   ^^^^^^^^ constant.other.pragma.haskell
--                                   ^^^^^^^^ - keyword.directive
--                                            ^^^ punctuation.section.preprocessor.end.haskell

    {-# OPTIONS_GHC -Drelease #-}
--  ^^^^^^^^^^^^^^^ meta.preprocessor.pragma.directive.haskell
--                 ^^^^^^^^^^^ meta.preprocessor.pragma.value.other.haskell
--                            ^^^ meta.preprocessor.pragma.value.haskell
--                               ^ - meta.preprocessor.haskell
--  ^^^ punctuation.section.preprocessor.begin.haskell
--      ^^^^^^^^^^^ keyword.directive.builtin.haskell
--                  ^^^^^^^^^ constant.other.pragma.haskell
--                  ^ punctuation.definition.constant.haskell
--                            ^^^ punctuation.section.preprocessor.end.haskell

    {-# OPTIONS_HADDOCK not-home #-}
--  ^^^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.directive.haskell
--                     ^^^^^^^^^^ meta.preprocessor.pragma.value.other.haskell
--                               ^^^ meta.preprocessor.pragma.value.haskell
--                                  ^ - meta.preprocessor.haskell
--  ^^^ punctuation.section.preprocessor.begin.haskell
--      ^^^^^^^^^^^^^^^ keyword.directive.builtin.haskell
--                      ^^^^^^^^ constant.other.pragma.haskell
--                               ^^^ punctuation.section.preprocessor.end.haskell

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
    #-}
--  ^^^ meta.preprocessor.pragma.value.haskell punctuation.section.preprocessor.end.haskell

    {-# WARNING "Not supported" #-}
--  ^^^^^^^^^^^ meta.preprocessor.pragma.directive.haskell
--             ^^^^^^^^^^^^^^^^^ meta.preprocessor.pragma.value.other.haskell
--                              ^^^ meta.preprocessor.pragma.value.haskell
--                                 ^ - meta.preprocessor.haskell
--  ^^^ punctuation.section.preprocessor.begin.haskell
--      ^^^^^^^ keyword.directive.builtin.haskell
--              ^^^^^^^^^^^^^^^ meta.string.haskell string.quoted.double.haskell
--                              ^^^ punctuation.section.preprocessor.end.haskell

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
--                ^^^^^^^ - meta.declaration.module
--  ^^^^^^ keyword.declaration.namespace.haskell
--         ^^^^ entity.name.namespace.haskell
--              ^ punctuation.section.sequence.begin.haskell
--               ^ punctuation.section.sequence.end.haskell
--                 ^^^^^ keyword.control.context.haskell

    module Ns.Name (sym1, sym2) where { import Ns.Other; import Ns.Other2 }
--  ^^^^^^^^^^^^^^^ meta.declaration.module.haskell - meta.sequence
--                 ^^^^^^^^^^^^ meta.declaration.module.haskell meta.sequence.tuple.haskell
--                             ^^^^^^ - meta.declaration.module - meta.block - meta.sequence
--                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.haskell - meta.declaration.module
--                                                                         ^ - meta.block
--  ^^^^^^ keyword.declaration.namespace.haskell
--         ^^ variable.namespace.haskell
--           ^ punctuation.accessor.dot.haskell
--            ^^^^ entity.name.namespace.haskell
--                 ^ punctuation.section.sequence.begin.haskell
--                  ^^^^ variable.function.haskell
--                      ^ punctuation.separator.sequence.haskell
--                        ^^^^ variable.function.haskell
--                            ^ punctuation.section.sequence.end.haskell
--                              ^^^^^ keyword.control.context.haskell
--                                    ^ punctuation.section.block.begin.haskell
--                                      ^^^^^^ keyword.declaration.import.haskell
--                                             ^^ variable.namespace.haskell
--                                               ^ punctuation.accessor.dot.haskell
--                                                ^^^^^ entity.name.namespace.haskell
--                                                     ^ punctuation.terminator.statement.haskell
--                                                       ^^^^^^ keyword.declaration.import.haskell
--                                                              ^^ variable.namespace.haskell
--                                                                ^ punctuation.accessor.dot.haskell
--                                                                 ^^^^^^ entity.name.namespace.haskell
--                                                                        ^ punctuation.section.block.end.haskell

    module Name (module Other.Module) where { import Other.Module }
--  ^^^^^^^^^^^^ meta.declaration.module.haskell - meta.sequence
--              ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.module.haskell meta.sequence.tuple.haskell
--                                   ^^^^^^^ - meta.declaration - meta.block - meta.sequence
--                                          ^^ meta.block.haskell - meta.import
--                                            ^^^^^^^^^^^^^^^^^^^^ meta.block.haskell meta.import.haskell
--                                                                ^ meta.block.haskell - meta.import
--                                                                 ^ - meta.declaration - meta.block
--  ^^^^^^ keyword.declaration.namespace.haskell
--         ^^^^ entity.name.namespace.haskell
--              ^ punctuation.section.sequence.begin.haskell
--               ^^^^^^ keyword.declaration.namespace.haskell
--                      ^^^^^ variable.namespace.haskell
--                           ^ punctuation.accessor.dot.haskell
--                            ^^^^^^ storage.type.haskell
--                                  ^ punctuation.section.sequence.end.haskell
--                                    ^^^^^ keyword.control.context.haskell
--                                          ^ punctuation.section.block.begin.haskell
--                                            ^^^^^^ keyword.declaration.import.haskell
--                                                   ^^^^^ variable.namespace.haskell
--                                                        ^ punctuation.accessor.dot.haskell
--                                                         ^^^^^^ entity.name.namespace.haskell
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
--                   ^^^^^^^ - meta.declaration.signature
--  ^^^^^^^^^ keyword.declaration.namespace.haskell
--            ^^^^ entity.name.namespace.haskell
--                 ^ punctuation.section.sequence.begin.haskell
--                  ^ punctuation.section.sequence.end.haskell
--                    ^^^^^ keyword.control.context.haskell

    signature Ns.Name (sym1, sym2) where { import Ns.Other; import Ns.Other2 }
--  ^^^^^^^^^^^^^^^^^^ meta.declaration.signature.haskell - meta.sequence
--                    ^^^^^^^^^^^^ meta.declaration.signature.haskell meta.sequence.tuple.haskell
--                                ^^^^^^ - meta.declaration.signature - meta.block - meta.sequence
--                                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.haskell - meta.declaration.signature
--                                                                            ^ - meta.block
--  ^^^^^^^^^ keyword.declaration.namespace.haskell
--            ^^ variable.namespace.haskell
--              ^ punctuation.accessor.dot.haskell
--               ^^^^ entity.name.namespace.haskell
--                    ^ punctuation.section.sequence.begin.haskell
--                     ^^^^ variable.function.haskell
--                         ^ punctuation.separator.sequence.haskell
--                           ^^^^ variable.function.haskell
--                               ^ punctuation.section.sequence.end.haskell
--                                 ^^^^^ keyword.control.context.haskell
--                                       ^ punctuation.section.block.begin.haskell
--                                         ^^^^^^ keyword.declaration.import.haskell
--                                                ^^ variable.namespace.haskell
--                                                  ^ punctuation.accessor.dot.haskell
--                                                   ^^^^^ entity.name.namespace.haskell
--                                                        ^ punctuation.terminator.statement.haskell
--                                                          ^^^^^^ keyword.declaration.import.haskell
--                                                                 ^^ variable.namespace.haskell
--                                                                   ^ punctuation.accessor.dot.haskell
--                                                                    ^^^^^^ entity.name.namespace.haskell
--                                                                           ^ punctuation.section.block.end.haskell

    signature Name (module Other.Module) where { import Other.Module }
--  ^^^^^^^^^^^^^^^ meta.declaration.signature.haskell - meta.sequence
--                 ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.signature.haskell meta.sequence.tuple.haskell
--                                      ^^^^^^^ - meta.declaration - meta.block - meta.sequence
--                                             ^^ meta.block.haskell - meta.import
--                                               ^^^^^^^^^^^^^^^^^^^^ meta.block.haskell meta.import.haskell
--                                                                   ^ meta.block.haskell - meta.import
--                                                                    ^ - meta.declaration - meta.block
--  ^^^^^^^^^ keyword.declaration.namespace.haskell
--            ^^^^ entity.name.namespace.haskell
--                 ^ punctuation.section.sequence.begin.haskell
--                  ^^^^^^ keyword.declaration.namespace.haskell
--                         ^^^^^ variable.namespace.haskell
--                              ^ punctuation.accessor.dot.haskell
--                               ^^^^^^ storage.type.haskell
--                                     ^ punctuation.section.sequence.end.haskell
--                                       ^^^^^ keyword.control.context.haskell
--                                             ^ punctuation.section.block.begin.haskell
--                                               ^^^^^^ keyword.declaration.import.haskell
--                                                      ^^^^^ variable.namespace.haskell
--                                                           ^ punctuation.accessor.dot.haskell
--                                                            ^^^^^^ entity.name.namespace.haskell
--                                                                   ^ punctuation.section.block.end.haskell

-- [ IMPORT DECLARATIONS ] ----------------------------------------------------

    'import
--  ^ keyword.operator.haskell
--   ^^^^^^ keyword.declaration.import.haskell

    import'
--  ^^^^^^^ - keyword

    import import
-- ^ - meta.import
--  ^^^^^^^^^^^^^^ meta.import.haskell
--  ^^^^^^  keyword.declaration.import.haskell
--         ^^^^^^ keyword.declaration.import.haskell

    import ; import
--  ^^^^^^^ meta.import.haskell
--         ^^ - meta.import
--           ^^^^^^^ meta.import.haskell
--  ^^^^^^ keyword.declaration.import.haskell
--         ^ punctuation.terminator.statement.haskell
--           ^^^^^^ meta.import.haskell keyword.declaration.import.haskell

    import qualified Data.Vector.Mutable as MutableVector
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^^^^^^ storage.modifier.import.haskell
--                   ^^^^ variable.namespace.haskell - punctuation
--                       ^ punctuation.accessor.dot.haskell - variable
--                        ^^^^^^ variable.namespace.haskell - punctuation
--                              ^ punctuation.accessor.dot.haskell - variable
--                               ^^^^^^^ variable.namespace.haskell - punctuation
--                                       ^^ storage.modifier.import.haskell
--                                          ^^^^^^^^^^^^^ entity.name.namespace.haskell

    import
--  ^^^^^^^ meta.import.haskell
--  ^^^^^^ keyword.declaration.import.haskell
    qualified
--  ^^^^^^^^^^ meta.import.haskell
--  ^^^^^^^^^ storage.modifier.import.haskell
    Data.Vector.Mutable
--  ^^^^^^^^^^^^^^^^^^^^ meta.import.haskell
--  ^^^^ variable.namespace.haskell - punctuation
--      ^ punctuation.accessor.dot.haskell - variable
--       ^^^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^^^^ entity.name.namespace.haskell - punctuation
    as
--  ^^^ meta.import.haskell
--  ^^ storage.modifier.import.haskell
    MutableVector
--  ^^^^^^^^^^^^^^ meta.import.haskell
--  ^^^^^^^^^^^^^ entity.name.namespace.haskell

    import Mod1.Mod2.Module (funcName)
--  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell - meta.sequence
--                          ^^^^^^^^^^ meta.import.haskell meta.sequence.tuple.haskell
--                                    ^ - meta.import
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^^^^^^^^^^ meta.sequence.tuple.haskell
--                          ^ punctuation.section.sequence.begin.haskell
--                           ^^^^^^^^ variable.function.haskell
--                                   ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module (ClassName(..))
--  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell - meta.sequence
--                          ^^^^^^^^^^ meta.import.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                    ^^^^ meta.import.haskell meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--                                        ^ meta.import.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                         ^ - meta.import
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^ punctuation.section.sequence.begin.haskell
--                           ^^^^^^^^^ storage.type.haskell
--                                    ^ punctuation.section.sequence.begin.haskell
--                                     ^^ keyword.operator.range.haskell
--                                       ^^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module (ClassName (SubClass), funcName)
--  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell - meta.sequence
--                          ^^^^^^^^^^^ meta.import.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                     ^^^^^^^^^^ meta.import.haskell meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--                                               ^^^^^^^^^^^ meta.import.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                                          ^ - meta.import
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^ punctuation.section.sequence.begin.haskell
--                           ^^^^^^^^^ storage.type.haskell
--                                     ^ punctuation.section.sequence.begin.haskell
--                                      ^^^^^^^^ storage.type.haskell
--                                              ^ punctuation.section.sequence.end.haskell
--                                               ^ punctuation.separator.sequence.haskell
--                                                 ^^^^^^^^ variable.function.haskell
--                                                         ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module (ClassName (memberName), funcName)
--  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell - meta.sequence
--                          ^^^^^^^^^^^ meta.import.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                     ^^^^^^^^^^^^ meta.import.haskell meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--                                                 ^^^^^^^^^^^ meta.import.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                                            ^ - meta.import
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^ punctuation.section.sequence.begin.haskell
--                           ^^^^^^^^^ storage.type.haskell
--                                     ^ punctuation.section.sequence.begin.haskell
--                                      ^^^^^^^^^^ variable.function.haskell
--                                                ^ punctuation.section.sequence.end.haskell
--                                                 ^ punctuation.separator.sequence.haskell
--                                                   ^^^^^^^^ variable.function.haskell
--                                                           ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module (ClassName (SubClass, memberName), funcName)
--  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell - meta.sequence
--                          ^^^^^^^^^^^ meta.import.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                     ^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--                                                           ^^^^^^^^^^^ meta.import.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                                                                      ^ - meta.import
--  ^^^^^^ keyword.declaration.import.haskell
--         ^^^^ variable.namespace.haskell - punctuation
--             ^ punctuation.accessor.dot.haskell - variable
--              ^^^^ variable.namespace.haskell - punctuation
--                  ^ punctuation.accessor.dot.haskell - variable
--                   ^^^^^^ variable.namespace.haskell - punctuation
--                          ^ punctuation.section.sequence.begin.haskell
--                           ^^^^^^^^^ storage.type.haskell
--                                     ^ punctuation.section.sequence.begin.haskell
--                                      ^^^^^^^^ storage.type.haskell
--                                              ^ punctuation.separator.sequence.haskell
--                                                ^^^^^^^^^^ variable.function.haskell
--                                                          ^ punctuation.section.sequence.end.haskell
--                                                           ^ punctuation.separator.sequence.haskell
--                                                             ^^^^^^^^ variable.function.haskell
--                                                                     ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module ((</>), (<.>), fun1, fun2,
--  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell - meta.sequence
--                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                          ^ punctuation.section.sequence.begin.haskell
--                           ^^^^^ variable.function.infix.haskell
--                                ^ punctuation.separator.sequence.haskell
--                                  ^^^^^ variable.function.infix.haskell
--                                       ^ punctuation.separator.sequence.haskell
--                                         ^^^^ variable.function.haskell
--                                             ^ punctuation.separator.sequence.haskell
--                                               ^^^^ variable.function.haskell
--                                                   ^ punctuation.separator.sequence.haskell
                             fun3, fun4)
--                           ^^^^^^^^^^^ meta.import.haskell meta.sequence.tuple.haskell
--                                      ^ - meta.import
--                           ^^^^ variable.function.haskell
--                               ^ punctuation.separator.sequence.haskell
--                                 ^^^^ variable.function.haskell
--                                     ^ punctuation.section.sequence.end.haskell

    import Mod1.Mod2.Module (())
--  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell - meta.sequence
--                          ^ meta.import.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                           ^^ meta.import.haskell meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--                             ^ meta.import.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
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
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell
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
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell
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
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell
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
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell
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
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.haskell
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


-- [ CLASS DECLARATIONS ] -----------------------------------------------------

   'class
-- ^ keyword.operator.haskell
--  ^^^^^ keyword.declaration.class.haskell

    class'
--  ^^^^^^ - keyword

    class
--  ^^^^^ meta.declaration.class.haskell
--       ^ meta.declaration.class.signature.haskell
--  ^^^^^ keyword.declaration.class.haskell

    class =>
--  ^^^^^ meta.declaration.class.haskell
--       ^ meta.declaration.class.context.haskell
--        ^^ meta.declaration.class.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^ keyword.operator.big-arrow.haskell

    class QTyCls tyVar
--  ^^^^^ meta.declaration.class.haskell
--       ^^^^^^^^^^^^^^ meta.declaration.class.signature.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^^^^^ storage.type.haskell
--               ^^^^^ variable.other.haskell

    class ModId.QTyCls tyVar1 tyVar2, ident
--  ^^^^^ meta.declaration.class.haskell
--       ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.signature.haskell
--                                  ^^^^^^^ - meta.declaration
--  ^^^^^ keyword.declaration.class.haskell
--        ^^^^^ variable.namespace.haskell
--             ^ punctuation.accessor.dot.haskell
--              ^^^^^^ storage.type.haskell
--                     ^^^^^^ variable.other.haskell
--                            ^^^^^^ variable.other.haskell
--                                  ^ punctuation.separator.sequence.haskell
--                                    ^^^^^ variable.other.haskell

    class ModId.QTyCls tyVar1 tyVar2 =>
--  ^^^^^ meta.declaration.class.haskell
--       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.context.haskell
--                                   ^^ meta.declaration.class.haskell
--                                     ^ meta.declaration.class.signature.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^^^^ variable.namespace.haskell
--             ^ punctuation.accessor.dot.haskell
--              ^^^^^^ storage.type.haskell
--                     ^^^^^^ variable.other.haskell
--                            ^^^^^^ variable.other.haskell
--                                   ^^ keyword.operator.big-arrow.haskell

    class ModId.QTyCls (tyVar1 tyVar2) =>
--  ^^^^^ meta.declaration.class.haskell
--       ^^^^^^^^^^^^^^ meta.declaration.class.context.haskell
--                     ^^^^^^^^^^^^^^^ meta.declaration.class.context.haskell meta.sequence.tuple.haskell
--                                    ^ meta.declaration.class.context.haskell - meta.sequence
--                                     ^^ meta.declaration.class.haskell
--                                       ^ meta.declaration.class.signature.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^^^^ variable.namespace.haskell
--             ^ punctuation.accessor.dot.haskell
--              ^^^^^^ storage.type.haskell
--                     ^ punctuation.section.sequence.begin.haskell
--                      ^^^^^^ variable.other.haskell
--                             ^^^^^^ variable.other.haskell
--                                   ^ punctuation.section.sequence.end.haskell
--                                     ^^ keyword.operator.big-arrow.haskell

    class ModId.QTyCls (tyVar1 tyVar2  =>
--  ^^^^^ meta.declaration.class.haskell
--       ^^^^^^^^^^^^^^ meta.declaration.class.context.haskell
--                     ^^^^^^^^^^^^^^^^ meta.declaration.class.context.haskell meta.sequence.tuple.haskell
--                                     ^^ meta.declaration.class.haskell
--                                       ^ meta.declaration.class.signature.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^^^^ variable.namespace.haskell
--             ^ punctuation.accessor.dot.haskell
--              ^^^^^^ storage.type.haskell
--                     ^ punctuation.section.sequence.begin.haskell
--                      ^^^^^^ variable.other.haskell
--                             ^^^^^^ variable.other.haskell
--                                     ^^ keyword.operator.big-arrow.haskell

    class ModId.QTyCls tyVar1 tyVar2 => Traversable t
--  ^^^^^ meta.declaration.class.haskell
--       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.context.haskell
--                                   ^^ meta.declaration.class.haskell
--                                     ^^^^^^^^^^^^^^^ meta.declaration.class.signature.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^^^^ variable.namespace.haskell
--             ^ punctuation.accessor.dot.haskell
--              ^^^^^^ storage.type.haskell
--                     ^^^^^^ variable.other.haskell
--                            ^^^^^^ variable.other.haskell
--                                   ^^ keyword.operator.big-arrow.haskell
--                                      ^^^^^^^^^^^ support.class.prelude.haskell
--                                                  ^ variable.other.haskell

    class () =>
--  ^^^^^ meta.declaration.class.haskell
--       ^ meta.declaration.class.context.haskell - meta.sequence
--        ^^ meta.declaration.class.context.haskell meta.sequence.tuple.haskell
--          ^ meta.declaration.class.context.haskell - meta.sequence
--           ^^ meta.declaration.class.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^ meta.sequence.tuple.haskell
--        ^ punctuation.section.sequence.begin.haskell
--         ^ punctuation.section.sequence.end.haskell
--           ^^ keyword.operator.big-arrow.haskell

    class (Functor t, Foldable t) => Traversable t where
--  ^^^^^ meta.declaration.class.haskell
--       ^ meta.declaration.class.context.haskell - meta.sequence
--        ^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.context.haskell meta.sequence.tuple.haskell
--                               ^ meta.declaration.class.context.haskell - meta.sequence
--                                ^^ meta.declaration.class.haskell
--                                  ^^^^^^^^^^^^^^^ meta.declaration.class.signature.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^ punctuation.section.sequence.begin.haskell
--         ^^^^^^^ support.class.prelude.haskell
--                 ^ variable.other.haskell
--                  ^ punctuation.separator.sequence.haskell
--                    ^^^^^^^^ storage.type.haskell
--                             ^ variable.other.haskell
--                              ^ punctuation.section.sequence.end.haskell
--                                ^^ keyword.operator.big-arrow.haskell
--                                   ^^^^^^^^^^^ support.class.prelude.haskell
--                                               ^ variable.other.haskell
--                                                 ^^^^^ keyword.control.context.haskell

--  A class declaration with no where part may be useful for combining
--  a collection of classes into a larger one that inherits all of the class
--  methods in the original ones.

    class Eq a => a -> a
--  ^^^^^ meta.declaration.class.haskell
--       ^^^^^^ meta.declaration.class.context.haskell
--             ^^ meta.declaration.class.haskell
--               ^^^^^^^^ meta.declaration.class.signature.haskell
--  ^^^^^ keyword.declaration.class.haskell
--        ^^ support.class.prelude.haskell
--           ^ variable.other.haskell
--             ^^ keyword.operator.big-arrow.haskell
--                ^ variable.other.haskell
--                  ^^ keyword.operator.arrow.haskell
--                     ^ variable.other.haskell

    class (Eq a, Show a, Eq b) => [a] -> [b] -> String
--  ^^^^^ meta.declaration.class.haskell
--       ^ meta.declaration.class.context.haskell - meta.sequence
--        ^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.context.haskell meta.sequence.tuple.haskell
--                            ^ meta.declaration.class.context.haskell - meta.sequence
--                             ^^ meta.declaration.class.haskell
--                               ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.signature.haskell
--  ^^^^^ keyword.declaration.class.haskell
--         ^^ support.class.prelude.haskell
--            ^ variable.other.haskell
--                             ^^ keyword.operator.big-arrow.haskell
--                                 ^ variable.other.haskell
--                                    ^^ keyword.operator.arrow.haskell
--                                        ^ variable.other.haskell
--                                           ^^ keyword.operator.arrow.haskell
--                                              ^^^^^^ storage.type.haskell

    class (Eq (f a), Functor f) => (a -> b) -> f a -> f b -> Bool
--  ^^^^^ meta.declaration.class.haskell
--       ^ meta.declaration.class.context.haskell - meta.sequence
--        ^^^^ meta.declaration.class.context.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--            ^^^^^ meta.declaration.class.context.haskell meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--                 ^^^^^^^^^^^^ meta.declaration.class.context.haskell meta.sequence.tuple.haskell - meta.sequence meta.sequence
--                             ^ meta.declaration.class.context.haskell - meta.sequence
--                              ^^ meta.declaration.class.haskell
--                                ^ meta.declaration.class.signature.haskell - meta.group
--                                 ^^^^^^^^ meta.declaration.class.signature.haskell meta.sequence.tuple.haskell
--                                         ^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.class.signature.haskell - meta.group
--  ^^^^^ keyword.declaration.class.haskell
--         ^^ support.class.prelude.haskell
--            ^ punctuation.section.sequence.begin.haskell
--             ^ variable.other.haskell
--               ^ variable.other.haskell
--                ^ punctuation.section.sequence.end.haskell
--                 ^ punctuation.separator.sequence.haskell
--                   ^^^^^^^ support.class.prelude.haskell
--                           ^ variable.other.haskell
--                            ^ punctuation.section.sequence.end.haskell
--                              ^^ keyword.operator.big-arrow.haskell
--                                 ^ punctuation.section.sequence.begin.haskell
--                                  ^ variable.other.haskell
--                                    ^^ keyword.operator.arrow.haskell
--                                       ^ variable.other.haskell
--                                        ^ punctuation.section.sequence.end.haskell
--                                          ^^ keyword.operator.arrow.haskell
--                                             ^ variable.other.haskell
--                                               ^ variable.other.haskell
--                                                 ^^ keyword.operator.arrow.haskell
--                                                    ^ variable.other.haskell
--                                                      ^ variable.other.haskell
--                                                        ^^ keyword.operator.arrow.haskell
--                                                           ^^^^ storage.type.haskell


-- [ DATA DECLARATIONS ] ------------------------------------------------------

    data
--  ^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell

    data'
--  ^^^^^ variable.other.haskell

    data TyCls
--  ^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^^ storage.type.haskell

    data ModId.QTyCls
--  ^^^^^^^^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^^ variable.namespace.haskell
--            ^ punctuation.accessor.dot.haskell
--             ^^^^^^ storage.type.haskell

    data =
--  ^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^ keyword.operator.haskell

    data Record =
--  ^^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^^^ storage.type.haskell
--              ^ keyword.operator.haskell
    Record {
--  ^^^^^^^ - meta.record
--         ^^ meta.record.haskell meta.block.haskell
--  ^^^^^^ storage.type.haskell
--         ^ punctuation.section.block.begin.haskell
        recordInt :: Int
--      ^^^^^^^^^ variable.other.haskell
--                ^^ keyword.operator.double-colon.haskell
--                   ^^^ storage.type.haskell
      , recordString :: String
--    ^ punctuation.separator.sequence.haskell
--      ^^^^^^^^^^^^ variable.other.haskell
--                   ^^ keyword.operator.double-colon.haskell
--                      ^^^^^^ storage.type.haskell
      , recordDouble :: Double
--    ^ punctuation.separator.sequence.haskell
--      ^^^^^^^^^^^^ variable.other.haskell
--                   ^^ keyword.operator.double-colon.haskell
--                      ^^^^^^ storage.type.haskell
      , recordRational :: Rational
--    ^ punctuation.separator.sequence.haskell
--      ^^^^^^^^^^^^^^ variable.other.haskell
--                     ^^ keyword.operator.double-colon.haskell
--                        ^^^^^^^^ support.class.prelude.haskell
      } deriving (Eq, Ord, Generic)
--   ^^ meta.record.haskell meta.block.haskell
--     ^ - meta
--      ^^^^^^^^^ meta.declaration.deriving.haskell - meta.sequence
--               ^^^^^^^^^^^^^^^^^^ meta.declaration.deriving.haskell meta.sequence.tuple.haskell
--                                 ^ - meta.declaration.deriving - meta.sequence
--      ^^^^^^^^ storage.modifier.haskell
--               ^ punctuation.section.sequence.begin.haskell
--                ^^ support.class.prelude.haskell
--                  ^ punctuation.separator.sequence.haskell
--                    ^^^ support.class.prelude.haskell
--                       ^ punctuation.separator.sequence.haskell
--                         ^^^^^^^ entity.other.inherited-class.haskell
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
--                                 ^^^^^ entity.other.inherited-class.haskell
--                                      ^ - entity
--                                       ^^^^^^ entity.other.inherited-class.haskell
--                                             ^ punctuation.section.sequence.end.haskell

    data Outrageous =
--  ^^^^^^^^^^^^^^^^ meta.declaration.data.haskell
--  ^^^^ keyword.declaration.data.haskell
--       ^^^^^^^^^^ storage.type.haskell
--                  ^ keyword.operator.haskell
        Flipper !Record
--      ^^^^^^^ storage.type.haskell
--              ^ keyword.operator.haskell
--               ^^^^^^ storage.type.haskell
      | Int :! Int
--    ^ punctuation.separator.sequence.haskell
--      ^^^ storage.type.haskell
--          ^^ keyword.operator.haskell
--             ^^^ storage.type.haskell
      | Double :@ Double
--    ^ punctuation.separator.sequence.haskell
--      ^^^^^^ storage.type.haskell
--             ^^ keyword.operator.haskell
--                ^^^^^^ storage.type.haskell
      | Int `Quux` Double
--    ^ punctuation.separator.sequence.haskell
--      ^^^ storage.type.haskell
--          ^^^^^^ keyword.operator.function.infix.haskell
--                 ^^^^^^ storage.type.haskell
      | String :# Record
--    ^ punctuation.separator.sequence.haskell
--      ^^^^^^ storage.type.haskell
--             ^^ keyword.operator.haskell
--                ^^^^^^ storage.type.haskell
      | Simple :$ Outrageous
--    ^ punctuation.separator.sequence.haskell
--      ^^^^^^ storage.type.haskell
--             ^^ keyword.operator.haskell
--                ^^^^^^^^^^ storage.type.haskell
      | DontDoThis { outrageousInt :: Int, outrageousString :: String }
--    ^ punctuation.separator.sequence.haskell
--      ^^^^^^^^^^ storage.type.haskell
--                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.haskell
--                 ^ punctuation.section.block.begin.haskell
--                   ^^^^^^^^^^^^^ meta.block.haskell variable.other.haskell
--                                 ^^ keyword.operator.double-colon.haskell
--                                    ^^^ storage.type.haskell
--                                       ^ punctuation.separator.sequence.haskell
--                                         ^^^^^^^^^^^^^^^^ meta.block.haskell variable.other.haskell
--                                                          ^^ keyword.operator.double-colon.haskell
--                                                             ^^^^^^ storage.type.haskell
--                                                                    ^ punctuation.section.block.end.haskell
        deriving (Eq, Ord, Generic)
--      ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.deriving.haskell
        deriving (Read, Show) via (Quiet Outrageous)
--      ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.deriving.haskell
--                            ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.deriving.haskell

    data BuilderType = Builder
        { (>>=)  :: forall m a b. Unrestricted.Monad     m => m a -> (a -> m b) -> m b
--        ^^^^^ variable.function.infix.haskell
--               ^^ keyword.operator.double-colon.haskell
--                  ^^^^^^ keyword.control.forall.haskell
--                              ^ keyword.operator.haskell
--                                ^^^^^^^^^^^^ variable.namespace.haskell
--                                            ^ punctuation.accessor.dot.haskell
--                                             ^^^^^ support.class.prelude.haskell
        , (>>)   :: forall m b  . Unrestricted.Monad     m => m() -> m b -> m b
--      ^ punctuation.separator.sequence.haskell
--        ^^^^ variable.function.infix.haskell
--               ^^ keyword.operator.double-colon.haskell
--                  ^^^^^^ keyword.control.forall.haskell
--                              ^ keyword.operator.haskell
--                                ^^^^^^^^^^^^ variable.namespace.haskell
--                                            ^ punctuation.accessor.dot.haskell
--                                             ^^^^^ support.class.prelude.haskell
        , fail   :: ∀ m a       . Unrestricted.MonadFail m => String -> m a
--      ^ punctuation.separator.sequence.haskell
--        ^^^^ support.function.prelude.haskell
--               ^^ keyword.operator.double-colon.haskell
--                  ^ keyword.operator.forall.haskell
--                              ^ keyword.operator.haskell
--                                ^^^^^^^^^^^^ variable.namespace.haskell
--                                            ^ punctuation.accessor.dot.haskell
--                                             ^^^^^^^^^ storage.type.haskell
        , return :: forall m a  . Unrestricted.Monad     m => a -> m a
--      ^ punctuation.separator.sequence.haskell
--        ^^^^^^ keyword.control.flow.return.haskell
--               ^^ keyword.operator.double-colon.haskell
--                  ^^^^^^ keyword.control.forall.haskell
--                              ^ keyword.operator.haskell
--                                ^^^^^^^^^^^^ variable.namespace.haskell
--                                            ^ punctuation.accessor.dot.haskell
--                                             ^^^^^ support.class.prelude.haskell
        }

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
--           ^^^^^ entity.other.inherited-class.haskell
--                 ^^^^^ storage.type.haskell

    deriving ModId.QTyCls ModId.Const
--  ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.deriving.haskell
--                       ^^^^^^^^^^^^ - meta.declaration
--  ^^^^^^^^ storage.modifier.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ entity.other.inherited-class.haskell
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
--            ^^^^^ entity.other.inherited-class.haskell
--                 ^ punctuation.separator.sequence.haskell
--                   ^^^^^ variable.namespace.haskell
--                        ^ punctuation.accessor.dot.haskell
--                         ^^^^^^ entity.other.inherited-class.haskell
--                               ^ punctuation.section.sequence.end.haskell


-- [ INSTANCE DECLARATIONS ] --------------------------------------------------

    instance
--  ^^^^^^^^^ meta.declaration.instance.haskell
--  ^^^^^^^^ keyword.declaration.instance.haskell

    instance ModId.QTyCls
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell

    instance ModId.QTyCls []
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^^ meta.declaration.instance.haskell meta.sequence.list.haskell
--                          ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ punctuation.section.sequence.begin.haskell
--                         ^ punctuation.section.sequence.end.haskell

    instance ModId.QTyCls ()
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^^ meta.declaration.instance.haskell meta.sequence.tuple.haskell
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
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^^^^ meta.declaration.instance.haskell meta.sequence.tuple.haskell
--                            ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ punctuation.section.sequence.begin.haskell
--                         ^^ keyword.operator.arrow.haskell
--                           ^ punctuation.section.sequence.end.haskell

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
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^^^^^^^^ meta.declaration.instance.haskell meta.sequence.tuple.haskell
--                                ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^ punctuation.section.sequence.begin.haskell
--                         ^ variable.other.haskell
--                           ^^ keyword.operator.arrow.haskell
--                              ^ variable.other.haskell
--                               ^ punctuation.section.sequence.end.haskell

    instance ModId.QTyCls ([] a b)
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^ meta.declaration.instance.haskell meta.sequence.tuple.haskell
--                         ^^ meta.declaration.instance.haskell meta.sequence.tuple.haskell meta.sequence.list.haskell
--                           ^^^^^ meta.declaration.instance.haskell meta.sequence.tuple.haskell
--                                ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^^ punctuation.section.sequence.begin.haskell
--                          ^ punctuation.section.sequence.end.haskell
--                            ^ variable.other.haskell
--                              ^ variable.other.haskell
--                               ^ punctuation.section.sequence.end.haskell

    instance ModId.QTyCls (() a b)
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^ meta.declaration.instance.haskell meta.sequence.tuple.haskell
--                         ^^ meta.declaration.instance.haskell meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--                           ^^^^^ meta.declaration.instance.haskell meta.sequence.tuple.haskell
--                                ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^^ punctuation.section.sequence.begin.haskell
--                          ^ punctuation.section.sequence.end.haskell
--                            ^ variable.other.haskell
--                              ^ variable.other.haskell
--                               ^ punctuation.section.sequence.end.haskell

    instance ModId.QTyCls ((,) a b)
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^ meta.declaration.instance.haskell meta.sequence.tuple.haskell
--                         ^^^ meta.declaration.instance.haskell meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--                            ^^^^^ meta.declaration.instance.haskell meta.sequence.tuple.haskell
--                                 ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^^ punctuation.section.sequence.begin.haskell
--                          ^ punctuation.separator.sequence.haskell
--                           ^ punctuation.section.sequence.end.haskell
--                             ^ variable.other.haskell
--                               ^ variable.other.haskell
--                                ^ punctuation.section.sequence.end.haskell

    instance ModId.QTyCls ((->) a b)
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^ meta.declaration.instance.haskell meta.sequence.tuple.haskell
--                         ^^^^ meta.declaration.instance.haskell meta.sequence.tuple.haskell meta.sequence.tuple.haskell
--                             ^^^^^ meta.declaration.instance.haskell meta.sequence.tuple.haskell
--                                  ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^^^ variable.namespace.haskell
--                ^ punctuation.accessor.dot.haskell
--                 ^^^^^^ storage.type.haskell
--                        ^^ punctuation.section.sequence.begin.haskell
--                          ^^ keyword.operator.arrow.haskell
--                            ^ punctuation.section.sequence.end.haskell
--                              ^ variable.other.haskell
--                                ^ variable.other.haskell
--                                 ^ punctuation.section.sequence.end.haskell

    instance Num a => Bar [a] where ...
--  ^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--                        ^^^ meta.declaration.instance.haskell meta.sequence.list.haskell
--                           ^ meta.declaration.instance.haskell - meta.sequence
--  ^^^^^^^^ keyword.declaration.instance.haskell
--           ^^^ support.class.prelude.haskell
--               ^ variable.other.haskell
--                 ^^ keyword.operator.big-arrow.haskell
--                    ^^^ storage.type.haskell
--                        ^ punctuation.section.sequence.begin.haskell
--                         ^ variable.other.haskell
--                          ^ punctuation.section.sequence.end.haskell
--                            ^^^^^ keyword.control.context.haskell

    instance (Eq a, Show a) => Foo [a] where ...
--  ^^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
--           ^^^^^^^^^^^^^^ meta.declaration.instance.haskell meta.sequence.tuple.haskell
--                         ^^^^^^^^ meta.declaration.instance.haskell - meta.sequence
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
--                          ^^ keyword.operator.big-arrow.haskell
--                             ^^^ storage.type.haskell
--                                 ^ punctuation.section.sequence.begin.haskell
--                                  ^ variable.other.haskell
--                                   ^ punctuation.section.sequence.end.haskell
--                                     ^^^^^ keyword.control.context.haskell

    {- illegal instance declarations -}

    instance C (a,a) where ...    -- a, a is not distict
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
-- ^ keyword.operator.haskell
--  ^^^^^^^ keyword.declaration.newtype.haskell

    newtype'
--  ^^^^^^^^ - keyword

    newtype =
--  ^^^^^^^^ meta.declaration.newtype.haskell
--  ^^^^^^^ keyword.declaration.newtype.haskell
--          ^ keyword.operator.haskell

    newtype =>
--  ^^^^^^^^^^^ meta.declaration.newtype.haskell
--  ^^^^^^^ keyword.declaration.newtype.haskell
--          ^^ keyword.operator.big-arrow.haskell

    newtype TypCls tyVar =>
--  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.newtype.haskell
--  ^^^^^^^ keyword.declaration.newtype.haskell
--          ^^^^^^ storage.type.haskell
--                 ^^^^^ variable.other.haskell
--                       ^^ keyword.operator.big-arrow.haskell

    newtype () => ModId.QTyCls tyVar1 tyVar2 deriving (Class1, QTyCls2)
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.newtype.haskell
--                                           ^^^^^^^^^ meta.declaration.deriving.haskell - meta.sequence
--                                                    ^^^^^^^^^^^^^^^^^ meta.declaration.deriving.haskell meta.sequence.tuple.haskell
--                                                                     ^ - meta.declaration
--  ^^^^ keyword.declaration.newtype.haskell
--          ^^ meta.sequence.tuple.haskell
--          ^ punctuation.section.sequence.begin.haskell
--           ^ punctuation.section.sequence.end.haskell
--             ^^ keyword.operator.big-arrow.haskell
--                ^^^^^ variable.namespace.haskell
--                     ^ punctuation.accessor.dot.haskell
--                      ^^^^^^ storage.type.haskell
--                             ^^^^^^ variable.other.haskell
--                                    ^^^^^^ variable.other.haskell
--                                           ^^^^^^^^ storage.modifier.haskell
--                                                    ^ punctuation.section.sequence.begin.haskell
--                                                     ^^^^^^ entity.other.inherited-class.haskell
--                                                           ^ punctuation.separator.sequence.haskell
--                                                             ^^^^^^^ entity.other.inherited-class.haskell
--                                                                    ^ punctuation.section.sequence.end.haskell


-- [ TYPE DECLARATIONS ] ------------------------------------------------------

    type
--  ^^^^^ meta.declaration.type.haskell
--  ^^^^ keyword.declaration.type.haskell

   'type
-- ^ keyword.operator.haskell
--  ^^^^ keyword.declaration.type.haskell

    type'
--  ^^^^^ - keyword

    type QTyCls tyVar
--  ^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--  ^^^^ keyword.declaration.type.haskell
--       ^^^^^^ storage.type.haskell
--              ^^^^^ variable.other.haskell

    type ModId.QTyCls tyVar1 tyVar2
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--  ^^^^ keyword.declaration.type.haskell
--       ^^^^^ variable.namespace.haskell
--            ^ punctuation.accessor.dot.haskell
--             ^^^^^^ storage.type.haskell
--                    ^^^^^^ variable.other.haskell
--                           ^^^^^^ variable.other.haskell

    type ModId.QTyCls tyVar1 tyVar2 =
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--  ^^^^ keyword.declaration.type.haskell
--       ^^^^^ variable.namespace.haskell
--            ^ punctuation.accessor.dot.haskell
--             ^^^^^^ storage.type.haskell
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
--             ^^^^^^ storage.type.haskell
--                    ^^^^^^ variable.other.haskell
--                           ^^^^^^ variable.other.haskell
--                                  ^^^^^^^^ storage.modifier.haskell
--                                           ^ punctuation.section.sequence.begin.haskell
--                                            ^^^^^^ entity.other.inherited-class.haskell
--                                                  ^ punctuation.separator.sequence.haskell
--                                                    ^^^^^^^ entity.other.inherited-class.haskell
--                                                           ^ punctuation.section.sequence.end.haskell

    type Id a = a
--  ^^^^^^^^^^^^^^ meta.declaration.type.haskell
--            ^ keyword.operator.haskell
--              ^ variable.other.haskell

    type Const a b = a
--  ^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--                 ^ keyword.operator.haskell
--                   ^ variable.other.haskell

    type FunctionTo a b = b -> a
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--                      ^ keyword.operator.haskell
--                        ^ variable.other.haskell
--                          ^^ keyword.operator.arrow.haskell
--                             ^ variable.other.haskell

    type Indexed f g = forall i. f i -> g i
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--                   ^ keyword.operator.haskell
--                     ^^^^^^ keyword.control.forall.haskell
--                            ^ variable.other.haskell
--                             ^ keyword.operator.haskell
--                               ^ variable.other.haskell
--                                 ^ variable.other.haskell
--                                   ^^ keyword.operator.arrow.haskell
--                                      ^ variable.other.haskell
--                                        ^ variable.other.haskell

    type ShowIndexed f g = forall i. (Show i) => f i -> g i
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--                       ^ keyword.operator.haskell
--                         ^^^^^^ keyword.control.forall.haskell
--                                ^ variable.other.haskell
--                                 ^ keyword.operator.haskell
--                                   ^^^^^^^^ meta.sequence.tuple.haskell
--                                   ^ punctuation.section.sequence.begin.haskell
--                                    ^^^^ support.class.prelude.haskell
--                                         ^ variable.other.haskell
--                                          ^ punctuation.section.sequence.end.haskell
--                                            ^^ keyword.operator.big-arrow.haskell
--                                               ^ variable.other.haskell
--                                                 ^ variable.other.haskell
--                                                   ^^ keyword.operator.arrow.haskell
--                                                      ^ variable.other.haskell
--                                                        ^ variable.other.haskell

    type ShowConstrained f a = (Show a) => f a
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.type.haskell
--                           ^ keyword.operator.haskell
--                             ^^^^^^^^ meta.sequence.tuple.haskell
--                             ^ punctuation.section.sequence.begin.haskell
--                              ^^^^ support.class.prelude.haskell
--                                   ^ variable.other.haskell
--                                    ^ punctuation.section.sequence.end.haskell
--                                      ^^ keyword.operator.big-arrow.haskell
--                                         ^ variable.other.haskell
--                                           ^ variable.other.haskell

    type CmdRoute =
--  ^^^^^^^^^^^^^^ meta.declaration.type.haskell
--  ^^^^ keyword.declaration.type.haskell
--       ^^^^^^^^ storage.type.haskell
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


-- [ DECLARATIONS ] -----------------------------------------------------------

   traverse :: Applicative f =>
-- ^^^^^^^^ entity.name.function.haskell
--          ^^ keyword.operator.double-colon.haskell
--             ^^^^^^^^^^^ support.class.prelude.haskell
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
--                           ^^ keyword.operator.big-arrow.haskell
    (a -> f b)
-- ^^^^^^^^^^^^ meta.function.type-declaration.haskell
--     ^^ keyword.operator.arrow.haskell
    -> t a
-- ^^^^^^^^ meta.function.type-declaration.haskell
--  ^^ keyword.operator.arrow.haskell
    -> f (t b)
-- ^^^^^^^^^^^^ meta.function.type-declaration.haskell
--  ^^ keyword.operator.arrow.haskell
   traverse f = sequenceA . fmap f
--            ^ keyword.operator.haskell
--                        ^ keyword.operator.haskell

-- | Evaluate each action in the structure from
-- left to right, and collect the results.
-- For a version that ignores the results see
-- 'Data.Foldable.sequenceA_'.
   sequenceA ∷ Applicative f ⇒ t (f a) → f (t a)
-- ^^^^^^^^^ entity.name.function.haskell
--           ^ keyword.operator.double-colon.haskell
--             ^^^^^^^^^^^ support.class.prelude.haskell
--                           ^ keyword.operator.big-arrow.haskell
--                                     ^ keyword.operator.arrow.haskell
   sequenceA = traverse id
--           ^ keyword.operator.haskell

   if'
-- ^^^ - keyword

-- Tests for #1320, #1880.

   class TooMany a where
     tooMany :: a -> Bool
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
     tooManyToo ::
-- ^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
       a -> Bool
-- ^^^^^^^^^^^^^ meta.function.type-declaration.haskell

   instance TooMany Int where
-- ^^^^^^^^^^^^^^^^^^^^^ meta.declaration.instance.haskell
--                      ^^^^^ - meta.declaration.instance
-- ^^^^^^^^ keyword.declaration.instance.haskell
--                      ^^^^^ keyword.control.context.haskell
     tooMany n = n > 42

   foldBoolGuard :: a -> a -> Bool -> a
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.type-declaration.haskell
   foldBoolGuard x y z
-- ^^^^^^^^^^^^^^^^^^^ source.haskell
     | z         = y
--   ^ punctuation.separator.sequence.haskell
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


-- [ KEYWORDS ] ---------------------------------------------------------------

test =
--   ^ keyword.operator.haskell
    let x = 2 in x * y
--  ^^^ keyword.declaration.variable.haskell
--            ^^ keyword.control.context.haskell
    where
--  ^^^^^ keyword.control.context.haskell
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
--  ^^ meta.sequence.list.haskell
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
--           ^^ keyword.operator.haskell
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
--                                                      ^^ keyword.operator.haskell
--                                                         ^^ variable.other.haskell
--                                                            ^ punctuation.section.sequence.end.haskell
--

    ()
-- ^ - meta.sequence
--  ^^ meta.sequence.tuple.haskell
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
--   ^ keyword.operator.haskell
--     ^ keyword.operator.haskell
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
--   ^ keyword.operator.haskell
--         ^ keyword.operator.haskell
--          ^ punctuation.section.sequence.end.haskell

    (group,)
--  ^^^^^^^^ meta.sequence.tuple.haskell
--  ^ punctuation.section.sequence.begin.haskell
--        ^ punctuation.separator.sequence.haskell
--         ^ punctuation.section.sequence.end.haskell

    (#group,#)
--  ^^^^^^^^^^ meta.sequence.tuple.haskell
--  ^ punctuation.section.sequence.begin.haskell
--   ^ keyword.operator.haskell
--         ^ punctuation.separator.sequence.haskell
--          ^ keyword.operator.haskell
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
--                    ^^ - keyword
--                      ^ punctuation.section.sequence.end.haskell

    (group)
--  ^^^^^^^ meta.group.haskell
--  ^ punctuation.section.group.begin.haskell
--        ^ punctuation.section.group.end.haskell


-- [ IDENTS ] -----------------------------------------------------------------

    _
--  ^ variable.language.anonymous.haskell

    a
--  ^ variable.other.haskell

    _a
--  ^^ variable.other.haskell

    _'
--  ^^ variable.other.haskell

    a'
--  ^^ variable.other.haskell

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

    T . a
--  ^ storage.type.haskell
--    ^ keyword.operator.haskell
--      ^ variable.other.haskell

    Just
--  ^^^^ constant.language.haskell

    Nothing
--  ^^^^^^^ constant.language.haskell

    False
--  ^^^^^ constant.language.haskell

    True
--  ^^^^ constant.language.haskell

    map (flip (/)) [1..]
--  ^^^ support.function.prelude.haskell
--       ^^^^ meta.group.haskell support.function.prelude.haskell


-- [ LITERAL NUMBERS ] --------------------------------------------------------

    0
--  ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    1234567890
--  ^^^^^^^^^^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    0o1234567
--  ^^^^^^^^^ meta.number.integer.octal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^ constant.numeric.value.haskell

    1.
--  ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell
--   ^ keyword.operator.haskell

    .2
--  ^ keyword.operator.haskell
--   ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    12.345
--  ^^^^^^ meta.number.float.decimal.haskell constant.numeric.value.haskell
--    ^ punctuation.separator.decimal

    1e10
--  ^^^^ meta.number.float.decimal.haskell constant.numeric.value.haskell

    0.5e+0
--  ^^^^^^ meta.number.float.decimal.haskell constant.numeric.value.haskell
--   ^ punctuation.separator.decimal.haskell

    9e-1
--  ^^^^ meta.number.float.decimal.haskell constant.numeric.value.haskell

    0x0
--  ^^^ meta.number.integer.hexadecimal.haskell
--  ^^ constant.numeric.base.haskell

    0XdeafBEEF42
--  ^^^^^^^^^^^^ meta.number.integer.hexadecimal.haskell
--  ^^ constant.numeric.base.haskell
--    ^^^^^^^^^^ constant.numeric.value.haskell


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


-- [ NO LITEARL CHARACTERS ]---------------------------------------------------

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
--       ^^ keyword.operator.double-colon.haskell
--          ^ keyword.operator.haskell
--            ^ keyword.operator.haskell
--              ^^ keyword.operator.haskell
--                 ^ punctuation.separator.sequence.haskell
--                   ^^ keyword.operator.haskell
--                      ^ keyword.operator.haskell
--                        ^ keyword.operator.haskell
--                          ^^ keyword.operator.haskell

    ( ) , ; [ ] ` { }  -- special symbols
--  ^^^^^^^^^^^^^^^^^ - keyword
--  ^ punctuation.section.sequence.begin.haskell
--    ^ punctuation.section.sequence.end.haskell
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
--        ^^^ variable.function.infix.haskell
--         ^ keyword.operator.haskell
--              ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = ( + ) a 2
--      ^ keyword.operator.haskell
--        ^^^^^ variable.function.infix.haskell
--          ^ keyword.operator.haskell
--                ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = (-) a 2
--      ^ keyword.operator.haskell
--        ^^^ variable.function.infix.haskell
--              ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = ( - ) a 2
--      ^ keyword.operator.haskell
--        ^^^^^ variable.function.infix.haskell
--                ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = (*) a 2
--      ^ keyword.operator.haskell
--        ^^^ variable.function.infix.haskell
--              ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = ( * ) a 2
--      ^ keyword.operator.haskell
--        ^^^^^ variable.function.infix.haskell
--                ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = (/) a 2
--      ^ keyword.operator.haskell
--        ^^^ variable.function.infix.haskell
--              ^ meta.number.integer.decimal.haskell constant.numeric.value.haskell

    a a = ( / ) a 2
--      ^ keyword.operator.haskell
--        ^^^^^ variable.function.infix.haskell
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

    a `member` x
--    ^^^^^^^^ keyword.operator.function.infix.haskell
--    ^ punctuation.definition.function.begin.haskell
--           ^ punctuation.definition.function.end.haskell

    a `P.atan2` x
--    ^^^^^^^^^ keyword.operator.function.infix.haskell
--    ^ punctuation.definition.function.begin.haskell
--            ^ punctuation.definition.function.end.haskell

    5 `f `7`f`"3 'ab'"
--  ^ constant.numeric.value.haskell
--    ^^^^ keyword.operator.function.infix.haskell
--    ^ punctuation.definition.function.begin.haskell
--       ^ punctuation.definition.function.end.haskell
--        ^ constant.numeric.value.haskell
--         ^^^ keyword.operator.function.infix.haskell
--         ^ punctuation.definition.function.begin.haskell
--           ^ punctuation.definition.function.end.haskell
--            ^^^^^^^^ meta.string.haskell string.quoted.double.haskell
--            ^ punctuation.definition.string.begin.haskell
--             ^^^^^^ - constant - punctuation
--                   ^ punctuation.definition.string.end.haskell

    a ` f` b
--    ^^^^ keyword.operator.function.infix.haskell
--    ^ punctuation.definition.function.begin.haskell
--       ^ punctuation.definition.function.end.haskell

    a `--` b
--    ^ - illegal - keyword - operator - punctuation
--     ^^^^^^ comment.line.double-dash.haskell

    a `
--    ^ - illegal - keyword - operator - punctuation


-- [ INFIX OPERATORS IN CONTEXT ]----------------------------------------------

  genOutrageous :: Gen Outrageous
  genOutrageous =
    Gen.recursive Gen.choice [
        Flipper <$> genRecord
      , (:!) <$> genInt <*> genInt
      , (:@) <$> genDouble <*> genDouble
--       ^^ variable.function.infix.haskell keyword.operator.haskell
      , Quux <$> genInt <*> genDouble
      , (:#) <$> genString <*> genRecord
--       ^^ variable.function.infix.haskell keyword.operator.haskell
      , DontDoThis <$> genInt <*> genString
      ] [
        Gen.subtermM genOutrageous (\x -> (:$) <$> genSimple <*> pure x)
      ]

myManageHook = composeAll
  [ isDialog                   --> doFullFloat
--                             ^^^ keyword.operator
  , return True                --> doShift "1"
--                             ^^^ keyword.operator
  ]

