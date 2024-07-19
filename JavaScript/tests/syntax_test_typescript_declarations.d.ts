// SYNTAX TEST "Packages/JavaScript/TypeScript.sublime-syntax"

    export as namespace O;
//  ^^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^ storage.modifier
//            ^^^^^^^^^ keyword.declaration
//                      ^ entity.name.namespace
//                       ^ punctuation.terminator.statement - punctuation.terminator.statement.empty

    export const x: any;
//  ^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^ keyword.declaration
//               ^ meta.binding.name variable.other.readwrite
//                ^ punctuation.separator.type
//                  ^^^ meta.type support.type.any
//                     ^ punctuation.terminator.statement - punctuation.terminator.statement.empty

    export let y: any;
//  ^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^ keyword.declaration
//             ^ meta.binding.name variable.other.readwrite
//              ^ punctuation.separator.type
//                ^^^ meta.type support.type.any
//                   ^ punctuation.terminator.statement - punctuation.terminator.statement.empty

    export var z: any;
//  ^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^ keyword.declaration
//             ^ meta.binding.name variable.other.readwrite
//              ^ punctuation.separator.type
//                ^^^ meta.type support.type.any
//                   ^ punctuation.terminator.statement - punctuation.terminator.statement.empty

    export function f(x: any): any;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//         ^^^^^^^^ keyword.declaration.function
//                  ^ entity.name.function
//                   ^^^^^^^^ meta.function.parameters
//                   ^ punctuation.section.group.begin
//                    ^ meta.binding.name variable.parameter.function
//                     ^ punctuation.separator.type
//                       ^^^ meta.type support.type.any
//                          ^ punctuation.section.group.end
//                           ^ punctuation.separator.type
//                             ^^^ meta.type support.type.any
//                                ^ punctuation.terminator.statement - punctuation.terminator.statement.empty

    export class C {
//  ^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^^^ meta.class
//         ^^^^^ keyword.declaration.class
//               ^ entity.name.class
//                 ^ meta.block punctuation.section.block.begin
        
        x: any;
//      ^ variable.other.readwrite
//       ^ punctuation.separator.type
//        ^^^^ meta.type
//         ^^^ support.type.any
//            ^ punctuation.terminator.statement - punctuation.terminator.statement.empty

        f(x: any): any;
//      ^^^^^^^^^^^^^^ meta.function
//      ^ entity.name.function
//       ^^^^^^^^ meta.function.parameters
//       ^ punctuation.section.group.begin
//        ^ meta.binding.name
//        ^ variable.parameter.function
//         ^ punctuation.separator.type
//          ^^^^ meta.type
//           ^^^ support.type.any
//              ^ punctuation.section.group.end
//               ^ punctuation.separator.type
//                ^^^^ meta.type
//                 ^^^ support.type.any
//                    ^ punctuation.terminator.statement - punctuation.terminator.statement.empty
    }
//  ^ punctuation.section.block.end

    export interface I {}
//  ^^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^^^^^^^^ meta.interface
//         ^^^^^^^^^ keyword.declaration
//                   ^ entity.name.interface
//                     ^^ meta.block
//                     ^ punctuation.section.block.begin
//                      ^ punctuation.section.block.end


    export namespace N {
//  ^^^^^^^^^^^^^^^^^^^^ meta.export
//  ^^^^^^ keyword.control.import-export
//         ^^^^^^^^^^^^^ meta.namespace
//         ^^^^^^^^^ keyword.declaration
//                   ^ entity.name.namespace
//                     ^ meta.block punctuation.section.block.begin

        const x: any;
//      ^^^^^ keyword.declaration
//            ^ meta.binding.name
//            ^ variable.other.readwrite
//             ^ punctuation.separator.type
//              ^^^^ meta.type
//               ^^^ support.type.any
//                  ^ punctuation.terminator.statement - punctuation.terminator.statement.empty

    }
//  ^ punctuation.section.block.end

    declare const a: any;
//  ^^^^^^^ storage.modifier
//          ^^^^^ keyword.declaration
//                ^ meta.binding.name variable.other.readwrite
//                 ^ punctuation.separator.type
//                  ^^^^ meta.type
//                   ^^^ support.type.any
//                      ^ punctuation.terminator.statement - punctuation.terminator.statement.empty

    declare let b: any;
//  ^^^^^^^ storage.modifier
//          ^^^ keyword.declaration
//              ^ meta.binding.name variable.other.readwrite
//               ^ punctuation.separator.type
//                ^^^^ meta.type
//                 ^^^ support.type.any
//                    ^ punctuation.terminator.statement - punctuation.terminator.statement.empty

    declare var c: any;
//  ^^^^^^^ storage.modifier
//          ^^^ keyword.declaration
//              ^ meta.binding.name variable.other.readwrite
//               ^ punctuation.separator.type
//                ^^^^ meta.type
//                 ^^^ support.type.any
//                    ^ punctuation.terminator.statement - punctuation.terminator.statement.empty

    declare function g(x: any): any;
//  ^^^^^^^ storage.modifier
//          ^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//          ^^^^^^^^ keyword.declaration.function
//                   ^ entity.name.function
//                    ^^^^^^^^ meta.function.parameters
//                    ^ punctuation.section.group.begin
//                     ^ meta.binding.name variable.parameter.function
//                      ^ punctuation.separator.type
//                       ^^^^ meta.type
//                        ^^^ support.type.any
//                           ^ punctuation.section.group.end
//                            ^ punctuation.separator.type
//                             ^^^^ meta.type
//                              ^^^ support.type.any
//                                 ^ punctuation.terminator.statement - punctuation.terminator.statement.empty

    declare class D {}
//  ^^^^^^^ storage.modifier
//          ^^^^^^^^^^ meta.class
//          ^^^^^ keyword.declaration.class
//                ^ entity.name.class
//                  ^^ meta.block
//                  ^ punctuation.section.block.begin
//                   ^ punctuation.section.block.end

    declare namespace M {}
//  ^^^^^^^ storage.modifier
//          ^^^^^^^^^^^^^^ meta.namespace
//          ^^^^^^^^^ keyword.declaration
//                    ^ entity.name.namespace
//                      ^^ meta.block
//                      ^ punctuation.section.block.begin
//                       ^ punctuation.section.block.end

    declare module module {}
//  ^^^^^^^ storage.modifier
//          ^^^^^^^^^^^^^^^^ meta.module
//          ^^^^^^ keyword.declaration.module
//                 ^^^^^^ entity.name.module.js
//                        ^^ meta.block

    declare module 'module' {}
//  ^^^^^^^ storage.modifier
//          ^^^^^^^^^^^^^^^^^^ meta.module
//          ^^^^^^ keyword.declaration.module
//                 ^^^^^^^^ entity.name.module.js
//                 ^ punctuation.definition.quoted.begin.js
//                        ^ punctuation.definition.quoted.end.js
//                          ^^ meta.block

    declare module "module" {}
//  ^^^^^^^ storage.modifier
//          ^^^^^^^^^^^^^^^^^^ meta.module
//          ^^^^^^ keyword.declaration.module
//                 ^^^^^^^^ entity.name.module.js
//                 ^ punctuation.definition.quoted.begin.js
//                        ^ punctuation.definition.quoted.end.js
//                          ^^ meta.block
