// SYNTAX TEST "Packages/JavaScript/JavaScript.sublime-syntax"

import TheirClass from "./mypath";
// ^ keyword.control.import-export
//                  ^ keyword.control.import-export

import {identifier, otherIdentifier} from "somewhere";
// ^ keyword.control.import-export
//       ^ meta.import meta.block variable.other.readwrite

import thing, {identifier as otherIdentifier}, * as otherName from "otherplace";
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import
// ^ keyword.control.import-export
//      ^ variable.other.readwrite
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block
//                ^ variable.other.readwrite
//                        ^ keyword.control.import-export
//                                     ^ variable.other.readwrite
//                                             ^ constant.other.js
//                                                             ^ keyword.control.import-export

import 'module'
// ^^^^^^^^^^^^ meta.import

export { name1, name2 as name3 };
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//^ keyword.control.import-export
//     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block
//            ^ punctuation.separator.comma
//                    ^^ keyword.control.import-export

export let name1, name2;
//^^^^^^^^^^^^^^^^^^^^^ meta.export
//^ keyword.control.import-export
//     ^^^ storage.type
//              ^ punctuation.separator.comma

export var name3;
//^^^^^^^^^^^^^^ meta.export
//^ keyword.control.import-export
//     ^^^ storage.type

export const name1 = 5;
//^^^^^^^^^^^^^^^^^^^^ meta.export
//^ keyword.control.import-export
//     ^^^^^ storage.type
//                 ^ keyword.operator.assignment

export let foo = 123 // No semicolon
export function bar() {}
// <- keyword.control.import-export

export function foo() {}
//^^^^^^^^^^^^^^^^^^^^^^ meta.export
//^^^^ keyword.control.import-export
//     ^^^^^^^^^^^^^^  meta.function.declaration

[];
// <- meta.sequence

export function* foo() {}
//^^^^^^^^^^^^^^^^^^^^^^ meta.export
//^^^^ keyword.control.import-export
//     ^^^^^^^^^^^^^^^  meta.function.declaration

[];
// <- meta.sequence

export async function foo() {}
//^^^^^^^^^^^^^^^^^^^^^^ meta.export
//^^^^ keyword.control.import-export
//     ^^^^^^^^^^^^^^^^^^^^ meta.function.declaration

[];
// <- meta.sequence

export class Foo {}
//^^^^^^^^^^^^^^^^^ meta.export
//^^^^ keyword.control.import-export
//     ^^^^^^^^^^^^ meta.class

[];
// <- meta.sequence

export default expression;
//^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//^ keyword.control.import-export
//     ^ keyword.control.import-export

export default function (a) { }
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//^^^^ keyword.control.import-export
//     ^^^^^^^ keyword.control.import-export
//             ^^^^^^^^^^^^ meta.function.declaration.js
//                             ^ - meta.export

[];
// <- meta.sequence

export default function* (a) { }
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//^^^^ keyword.control.import-export
//     ^^^^^^^ keyword.control.import-export
//             ^^^^^^^^^^^^^ meta.function.declaration.js
//                              ^ - meta.export

[];
// <- meta.sequence

export default function name1(b) { }
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//^ keyword.control.import-export
//     ^ keyword.control.import-export
//             ^ storage.type
//                      ^ entity.name.function

export default class Foo {}
//^^^^^^^^^^^^^^^^^ meta.export
//^^^^ keyword.control.import-export
//     ^^^^^^^ keyword.control.import-export
//             ^^^^^^^^^^^^ meta.class

[];
// <- meta.sequence

export default +function (a) { }
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//^^^^ keyword.control.import-export
//     ^^^^^^^ keyword.control.import-export
//              ^^^^^^^^^^^^ meta.function.declaration.js

[];
// <- meta.export
// <- meta.brackets

export { name1 as default };
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//^ keyword.control.import-export
//     ^^^^^^^^^^^^^^^^^^^^ meta.block
//             ^ keyword.control.import-export
//                ^ keyword.control.import-export

export * from "./othermod";
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//^ keyword.control.import-export
//     ^ constant.other
//       ^ keyword.control.import-export

export { name1, name2 } from "./othermod";
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//^ keyword.control.import-export
//     ^^^^^^^^^^^^^^^^ meta.block
//                      ^ keyword.control.import-export

export { import1 as name1, import2 as name2, nameN } from "./othermod";
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.export
//^ keyword.control.import-export
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block
//               ^ keyword.control.import-export
//                                 ^ keyword.control.import-export
//                                                   ^ keyword.control.import-export

import * as
    alias from "module";
// ^^^^^^^^^^^^^^^^^^^^ meta.import.js

import { member as
    alias } from "module";
// ^^^^^^^^^^^^^^^^^^^^^^ meta.import.js

import { * as
    alias } from "module";
// ^^^^^^^^^^^^^^^^^^^^^^ meta.import.js

export { member as
    alias } from "module";
// ^^^^^^^^^^^^^^^^^^^^^^ meta.export.js

export { member as
    default } from "module";
// ^^^^^^^^^^^^^^^^^^^^^^^^ meta.export.js

let from;
//  ^^^^ variable.other.readwrite.js

import from from "./othermod";
//     ^^^^ variable.other.readwrite.js

import { from } from "./othermod";
//       ^^^^ variable.other.readwrite.js

export from from "./othermod";
//     ^^^^ variable.other.readwrite.js

export { from } from "./othermod";
//       ^^^^ variable.other.readwrite.js

// This object literal is technically broken since foo() does not have a
// method body, but we include it here to ensure that highlighting is not
// broken as the user is typing
let a = { otherIdentifier, foo(), baz: 1 }
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.object-literal
//        ^^^^^^^^^^^^^^^ variable.other.readwrite
//                         ^^^ entity.name.function
//                                ^^^ meta.object-literal.key

someFunction({
    prop1, prop2, prop3
//  ^ variable.other.readwrite
//         ^ variable.other.readwrite
//                ^ variable.other.readwrite
});

function foo() {
// <- meta.function.declaration
 // <- meta.function.declaration
  // <- meta.function.declaration
// ^^^^^^^^^^^ meta.function.declaration - meta.function.declaration meta.function.declaration
// ^ storage.type.function
//        ^ entity.name.function
//             ^ - meta.function.declaration
}
// <- meta.block

var bar = function() {
//  ^^^^^^^^^^^^^^^^ meta.function.declaration
// <- storage.type
//   ^ variable.other.readwrite entity.name.function
//         ^ storage.type.function
}

baz = function*()
// <- meta.function.declaration
 // <- meta.function.declaration
  // <- meta.function.declaration
// ^^^^^^^^^^^^^^ meta.function.declaration
// <- variable.other.readwrite entity.name.function
//     ^ storage.type.function
//            ^ keyword.generator.asterisk
{

}

if (true)
// <- keyword.control.conditional
{
    bar()
}

// This is a comment function() { }
// <- punctuation.definition.comment
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash

/**
// <- comment.block.documentation punctuation.definition.comment
*/

/*
// <- comment.block punctuation.definition.comment
*/

x --> y;
//^^ keyword.operator.arithmetic.js
//  ^ keyword.operator.relational.js

#! /usr/bin/env node
// <- comment.line.shebang punctuation.definition.comment

 #! /usr/bin/env node
//^^^^^^^^^^^^^^^^^^^ - comment.line.shebang

/*@if /*/
//     ^^ punctuation.definition.comment.js

// /*
not_a_comment;
// <- -comment

/* // */
not_a_comment;
// <- -comment

/* /* */
not_a_comment;
// <- -comment

'// /* not a comment';
// ^^^^^^^^^^^^^^^^^^^ -comment

"// /* not a comment";
// ^^^^^^^^^^^^^^^^^^^ -comment

`// /* not a comment`;
// ^^^^^^^^^^^^^^^^^^^ -comment

({
    '// /* not a comment': x => x,
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -comment

    "// /* not a comment": x => x,
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -comment

    '// /* not a comment'() {},
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ -comment() {}

    "// /* not a comment"() {},
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ -comment() {}
//                       ^ - meta.function.declaration meta.function.declaration
});

var str = '\':';
var str2 = NaN;
// <- storage.type
//   ^ variable.other.readwrite
//       ^ keyword.operator.assignment
//         ^^^ constant.language.nan

tag`Hello ${ a + b } world\nanother ${expression}.`;
// <- variable.function.tagged-template.js
// ^ punctuation.definition.string.template.begin.js
//   ^ string.template.js
//        ^ punctuation.definition.template-expression.begin.js
//           ^ variable.other.readwrite.js
//             ^ keyword.operator.arithmetic.js
//               ^ meta.template.expression.js source.js.embedded.expression
//                 ^ punctuation.definition.template-expression.end.js
//                        ^ constant.character.escape.js
//                                                ^ punctuation.definition.string.template.end.js

mylabel:
// ^ entity.name.label
//     ^ punctuation.separator

// Ensure a ternary identifier isn't recognized as a label
true ? str : str2
//      ^ - entity.name.label

a = test ? a + b : c;
//         ^ variable.other.readwrite
//             ^ variable.other.readwrite

{{foo}}
// ^ meta.block meta.block variable.other.readwrite

var obj = {
//        ^ meta.object-literal - meta.block
    key: bar,
    // <- meta.object-literal.key
    $key2: "string value",
    // ^ meta.object-literal.key
    //   ^ - constant.other
    //        ^ string.quoted.double
    $key3: 0,
    // <- meta.object-literal.key.dollar punctuation.dollar
     // <- meta.object-literal.key.dollar - punctuation.dollar
    $keyFunc: function() {
//  ^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // <- meta.object-literal.key.dollar entity.name.function punctuation.dollar
     // <- meta.object-literal.key.dollar entity.name.function - punctuation.dollar
    },

    [true==false ? 'one' : 'two']: false,
//  ^ punctuation.section.brackets
//   ^^^^ constant.language
//         ^^^^ constant.language
//               ^ keyword.operator
//                       ^ keyword.operator
//                              ^ punctuation.section.brackets
//                               ^ punctuation.separator.key-value

    "": true,
    // <- meta.object-literal.key

    "key4": true,
//  ^^^^^^ meta.object-literal.key string.quoted.double
//        ^ punctuation.separator.key-value - string
    'key5': false,
//  ^^^^^^meta.object-literal.key string.quoted.single
//        ^ punctuation.separator.key-value - string
//          ^^^^^ constant.language.boolean.false

    objKey: new function() {
//              ^^^^^^^^ storage.type.function
        this.foo = baz;
//      ^^^^ variable.language.this
//          ^ punctuation.accessor
//           ^^^ meta.property
    }(),

    objKey: new class Foo {
//              ^^^^^ storage.type.class
        get baz() {}
//      ^^^ storage.type.accessor
//          ^^^ entity.name.function
    }(),

    funcKey: function() {
//  ^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ meta.object-literal.key entity.name.function
    },

    func2Key: function func2Key() {
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ meta.object-literal.key entity.name.function
    },

    funcKeyArrow: () => {
//  ^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ meta.object-literal.key entity.name.function
    },

    "funcStringKey": function funcStringKey()
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ meta.object-literal.key string.quoted.double entity.name.function
    { },

    'funcStringKey': function() {
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ meta.object-literal.key string.quoted.single entity.name.function
    },

    'funcStringKeyArrow': () => {
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ meta.object-literal.key string.quoted.single entity.name.function
    },

    "func\\String2KeyArrow": (foo) => {
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ meta.object-literal.key string.quoted.double entity.name.function
    //    ^ constant.character.escape
    },

    key: 'str' + (true ? 'true' : 'false'),
//                ^^^^ constant.language.boolean.true

    qux()
//  ^^^^^ meta.function.declaration
    // <- entity.name.function
    {},

    'funcStringMethod'() {
//  ^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ entity.name.function
    },

    'funcStringMethodWithSameLineColon'() { var foo = { name: 'jeff' }; },
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ entity.name.function

    "key (": true,
    // <- meta.object-literal.key

    "key \"(": true,
    // <- meta.object-literal.key

    "key '(": true,
    // <- meta.object-literal.key

    static,
//  ^^^^^^ variable.other.readwrite

    *baz(){
//  ^^^^^^ meta.function.declaration
    // <- keyword.generator.asterisk
    // ^ entity.name.function
    }
}
// <- meta.object-literal - meta.block

+{
// <- keyword.operator
  '': +{1:} / undefined
//^^ string.quoted
//  ^ punctuation.separator.key-value
//    ^ keyword.operator
//      ^ constant.numeric
//          ^ keyword.operator
//            ^ constant.language
};

({
 // <- meta.object-literal
  0.: {0.e+0: 0}
//^^ meta.object-literal.key constant.numeric
//  ^ punctuation.separator.key-value
//     ^^^^^ meta.object-literal.key constant.numeric
//            ^ constant.numeric
});

[ a, b, c ];
// <- meta.sequence punctuation.section.brackets
// ^ meta.sequence punctuation.separator.comma
// ^^^^^^^^ meta.sequence
//        ^ meta.sequence punctuation.section.brackets

function x() {}
[ a, b, c ];
// <- meta.sequence.js

+
function x() {}
[ a, b, c ];
// <- meta.brackets.js

var $ = function(baz) {
//  ^^^^^^^^^^^^^^^^^ meta.function.declaration
//  ^ variable.other.dollar.only punctuation.dollar entity.name.function
}

$()
// <- variable.other.dollar.only punctuation.dollar

$foo = null;
// <- variable.other.dollar punctuation.dollar
// ^ variable.other.dollar - punctuation.dollar
//     ^^^^ constant.language.null

baz = "";
// <- variable.other.readwrite
//     ^ string.quoted.double

var qux = 100;
// <- storage.type
//   ^ variable.other.readwrite
//         ^ constant.numeric

if (Infinity > qux) {
// ^^^^^^^^^^^^^^^ meta.conditional
//  ^^^^^^^^ constant.language.infinity
    a;
//  ^ meta.conditional meta.block
}
// <- meta.conditional meta.block

if (foo bar)
    baz = "test"

do {
// <- meta.do-while
// ^ meta.block
    qux += 1
//  ^^^^^^^^ meta.do-while meta.block
} while(qux < 20);
// <- meta.block
// ^^^^^^^^^^^^^^ meta.do-while - meta.block
// ^^^^ keyword.control.loop
//      ^^^^^^^^ meta.group

for (var i = 0; i < 10; i++) {
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for
//   ^^^^^^^^^^^^^^^^^^^^^^ meta.group
//   ^^^ storage.type.js
//                           ^ meta.block
    i += 1;
//  ^^^^^^^ meta.for meta.block
}
// <- meta.block

    for (const x of list) {}
//  ^^^ keyword.control.loop

    for await (const x of list) {}
//  ^^^ keyword.control.loop
//      ^^^^^ keyword.control.loop

while (true)
// ^^^^^^^^^ meta.while
//     ^^^^ meta.group
{
// <- meta.block
    x = yield;
//      ^^^^^ keyword.control.flow

    x = yield * 42;
//      ^^^^^ keyword.control.flow
//            ^ keyword.generator.asterisk

    x = yield
    function f() {}
    [];
//  ^^ meta.sequence - meta.brackets


    x = yield*
    function f() {}
    [];
//  ^^ meta.brackets - meta.sequence

    y = await 42;
//      ^^^^^ keyword.control.flow

    y = yield await 42;
//      ^^^^^ keyword.control.flow
//            ^^^^^ keyword.control.flow

    break;
//  ^^^^^^ meta.while meta.block
}
// <- meta.block

with (undefined) {
// <- keyword.control.with
//^^^^^^^^^^ meta.with
//    ^^^^^^^^^ constant.language.undefined
    return;
}

switch ($foo) {
// ^^^^^^^^^^^^ meta.switch
//      ^^^^ meta.group
//            ^ meta.block
    case foo:
    // ^ meta.switch meta.block keyword.control.switch
    //      ^ - punctuation.separator.key-value
        qux = 1;
        break;
        // ^ keyword.control.loop
    case "baz":
    // ^ keyword.control.switch
    //        ^ - punctuation.separator.key-value string
        qux = 2;
        break;
        // ^ keyword.control.loop
    default:
    // ^ meta.switch meta.block keyword.control.switch
    //     ^ - punctuation.separator.key-value
        qux = 3;
}
// <- meta.block

try {
// <- meta.try keyword.control.trycatch
// ^^ meta.try
//  ^ meta.block
    foobar = qux.bar();
//  ^^^^^^^^^^^^^^^^^^^ meta.try meta.block
} catch (e) {
// <- meta.block
// ^^^^^^^ meta.catch
//       ^ meta.group
//          ^ meta.block
    foobar = 0
//  ^^^^^^^^^^ meta.catch meta.block
} finally {
// <- meta.block
// ^^^^^^^^ meta.finally
//        ^ meta.block
    foobar += 1
//  ^^^^^^^^^^^ meta.finally meta.block
}
// <- meta.block

class MyClass extends TheirClass {
// <- storage.type.class
//    ^^^^^^^ entity.name.class
//            ^^^^^^^ storage.modifier.extends
//                               ^ meta.block

    x = 42;
//  ^ variable.other.readwrite
//    ^ keyword.operator.assignment
//      ^^ constant.numeric

    'y' = 42;
//  ^^^ string.quoted.single
//   ^ variable.other.readwrite
//      ^ keyword.operator.assignment
//        ^^ constant.numeric

    "z" = 42;
//  ^^^ string.quoted.double
//   ^ variable.other.readwrite
//      ^ keyword.operator.assignment
//        ^^ constant.numeric

    [w] = 42;
//  ^ punctuation.section.brackets.begin
//   ^ variable.other.readwrite
//    ^ punctuation.section.brackets.end
//      ^ keyword.operator.assignment
//        ^^ constant.numeric

    #v = 42;
//  ^ punctuation.definition.variable
//   ^ variable.other.readwrite
//     ^ keyword.operator.assignment
//       ^^ constant.numeric

    static x = 42;
//  ^^^^^^ storage.modifier.js
//         ^ variable.other.readwrite
//           ^ keyword.operator.assignment
//             ^^ constant.numeric

    static 'y' = 42;
//  ^^^^^^ storage.modifier.js
//         ^^^ string.quoted.single
//          ^ variable.other.readwrite
//             ^ keyword.operator.assignment
//               ^^ constant.numeric

    static "z" = 42;
//  ^^^^^^ storage.modifier.js
//         ^^^ string.quoted.double
//          ^ variable.other.readwrite
//             ^ keyword.operator.assignment
//               ^^ constant.numeric

    static [w] = 42;
//  ^^^^^^ storage.modifier.js
//         ^ punctuation.section.brackets.begin
//          ^ variable.other.readwrite
//           ^ punctuation.section.brackets.end
//             ^ keyword.operator.assignment
//               ^^ constant.numeric

    static #v = 42;
//         ^ punctuation.definition.variable
//          ^ variable.other.readwrite
//            ^ keyword.operator.assignment
//              ^^ constant.numeric

    a, 'b' = 50, "c", [d] = 100, #e;
//  ^ variable.other.readwrite
//      ^ variable.other.readwrite
//                ^ variable.other.readwrite
//                     ^ variable.other.readwrite
//                                ^ variable.other.readwrite

    static a, 'b' = 50, "c", [d] = 100, #e;
//  ^^^^^^ storage.modifier.js
//         ^ variable.other.readwrite
//             ^ variable.other.readwrite
//                       ^ variable.other.readwrite
//                            ^ variable.other.readwrite
//                                       ^ variable.other.readwrite

    foo // You thought I was a field...
    () { return '...but was a method all along!'; }
//  ^^^ meta.class.js meta.block.js meta.function.declaration.js

    someMethod() {
        return #e * 2;
//             ^ punctuation.definition.variable
//              ^ variable.other.readwrite
//                ^ keyword.operator.arithmetic
    }

    constructor(el)
//  ^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ entity.name.function.constructor
    {
//  ^ meta.class meta.block meta.block punctuation.section.block
        $.foo = "";
        super(el);
    }
//  ^ meta.class meta.block meta.block punctuation.section.block

    get foo()
//  ^^^^^^^^^ meta.function.declaration
    // <- storage.type.accessor
    //   ^ entity.name.function
    {
        return this._foo;
    }

    static foo(baz) {
//  ^^^^^^ storage.modifier
//         ^^^^^^^^ meta.function.declaration
    //     ^^^ entity.name.function

    }

    qux()
//  ^^^^^ meta.function.declaration
    { }
//  ^ meta.class meta.block meta.block punctuation.section.block

    get bar () {
//  ^^^^^^^^^^ meta.function.declaration
//             ^ meta.class meta.block meta.block punctuation.section.block
    // <- storage.type.accessor
    //   ^ entity.name.function
        return false;
    }

    baz() { return null }
//  ^^^^^ meta.function.declaration
    // <- entity.name.function

    get() { return "foobar"; }
//  ^^^^^ meta.function.declaration.js
//  ^^^ entity.name.function.js - storage.type.accessor

    set (value) { return value; }
//  ^^^^^^^^^^^ meta.function.declaration.js
//       ^^^^^ variable.parameter.function.js
//  ^^^ entity.name.function.js - storage.type.accessor

    set  abc(value1, value2) { return value1 + value2; }
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration.js
//  ^^^ storage.type.accessor - entity.name.function.js
//       ^^^ entity.name.function.js
//           ^^^^^^ variable.parameter.function.js
//                 ^ punctuation.separator.parameter.function.js
//                   ^^^^^^ variable.parameter.function.js
}
// <- meta.block

class Foo extends React.Component {
//                      ^ entity.other.inherited-class
    constructor()
    {}

    [foo.bar](arg) {
//   ^^^ variable.other
//       ^^^ meta.property
//            ^^^ variable.parameter
        return this.a;
    }
}

class Foo extends
//        ^^^^^^^ storage.modifier.extends
Bar {}

class Foo extends getSomeClass() {}
//                ^^^^^^^^^^^^ meta.function-call variable.function - entity.other.inherited-class

() => {}
// <- meta.function.declaration punctuation.section.group
 // <- meta.function.declaration punctuation.section.group
//^^^ meta.function.declaration
//    ^^ meta.block punctuation.section.block

const test = ({a, b, c=()=>({active:false}) }) => {};
//    ^ entity.name.function
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block
//            ^ punctuation.section.block.begin
//             ^ variable.parameter
//                ^ variable.parameter
//                   ^ variable.parameter
//                     ^^^^ meta.function.declaration meta.function.declaration
//                     ^^ punctuation.section.group
//                         ^^^^^^^^^^^^^^^^ meta.group
//                                   ^ constant.language
//                                          ^ punctuation.section.block.end

// We can't currently detect this properly, but we need to consume => properly
([a,
  b]) => { return x; }
//    ^^ storage.type.function.arrow
//         ^^^^^^ meta.block keyword.control.flow

MyClass.foo = function() {}
// ^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
// ^ support.class
//       ^ entity.name.function

MyClass.foo = () => {}
// ^^^^^^^^^^^^^^^^ meta.function.declaration
// ^ support.class
//       ^ entity.name.function

xhr.onload = function() {}
// ^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
// <- support.class.js
//  ^ entity.name.function

xhr.onload = () => {}
// ^^^^^^^^^^^^^^^ meta.function.declaration
// <- support.class.js
//  ^ entity.name.function

var simpleArrow = foo => bar;
//  ^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
//   ^ entity.name.function
//                 ^ variable.parameter.function
//                    ^ storage.type.function.arrow

var Proto = () => {
//  ^^^^^^^^^^^^^ meta.function.declaration
//   ^ entity.name.function
//             ^ storage.type.function.arrow
    this._var = 1;
}

Proto.prototype.getVar = () => this._var;
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
// ^ support.class
//     ^ support.constant.prototype
//                ^ entity.name.function
//                           ^ storage.type.function.arrow

Class3.prototype = function() {
// ^^^^^^^^^^^^^ meta.prototype.declaration
// ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
// ^ support.class
//       ^ support.constant.prototype
}

Proto.prototype.attr
// ^^^^^^^^^^^^ meta.prototype.access
// ^ support.class
//     ^ support.constant.prototype
//               ^ meta.property.object

Proto.prototype = {
    funcName: function() {
//  ^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
//  ^^^^^^^^ entity.name.function
//          ^ punctuation.separator.key-value
    }
}

sources.DOM.status()
sources.DOM
// <- variable.other.object
    .status()
    // ^ meta.function-call.method variable.function

return new Promise(resolve => preferenceObject.set({value}, resolve));
//                                                                  ^ meta.function-call.constructor punctuation.section.group

var anotherSingle = function(){a = param => param; return param2 => param2 * a}
//                                 ^ meta.function.declaration variable.parameter.function
//                                          ^ meta.block meta.block variable.other.readwrite
//                                               ^ meta.block punctuation.terminator.statement
//                                                        ^ meta.function.declaration variable.parameter.function
//                                                                           ^ meta.block meta.block variable.other.readwrite
//                                                                            ^ meta.block punctuation.section.block

baz(foo(x => x('bar')))
//                   ^ meta.function-call meta.function-call punctuation.section.group
//                    ^ meta.function-call punctuation.section.group

func(a, b)
// ^ variable.function
//  ^ meta.group punctuation.section.group
//   ^ meta.group variable.other.readwrite
//       ^ meta.group punctuation.section.group

var instance = new Constructor(param1, param2)
//                 ^ variable.type
//                            ^ meta.group punctuation.section.group
//                             ^ meta.group variable.other.readwrite
//                                           ^ meta.group punctuation.section.group

var obj = new function() {}();
//            ^^^^^^^^ storage.type

var obj2 = new class Foo{}();
//             ^^^^^ storage.type.class

this.func()
// <- variable.language.this
self.func()
// <- variable.language.self
arguments;
// <- variable.language.arguments
super.func();
// <- variable.language.super
foo.constructor;
//  ^^^^^^^^^^^ variable.language.constructor
foo.__proto__
//  ^^^^^^^^^ variable.language.proto

var Constructor = function() {
    this._var = 1;
    // ^ variable.language.this
    this._method = function() {}
    // ^ variable.language.this
    //    ^ entity.name.function
}

// Tests to ensure the new keyword is highlighted properly even when the
// following element is not an identifier
var abc = new ABC(
//         ^ meta.instance.constructor keyword.operator.word.new
//               ^ meta.instance.constructor meta.function-call.constructor
//               ^ - meta.instance.constructor meta.instance.constructor
    'my-name-is-abc',
    new (function () {
//  ^ meta.instance.constructor meta.function-call.constructor meta.instance.constructor keyword.operator.word.new
//      ^ meta.instance.constructor meta.function-call.constructor meta.instance.constructor meta.function-call.constructor meta.group
        var foo = 1;
//      ^ meta.instance.constructor meta.function-call.constructor meta.instance.constructor meta.function-call.constructor meta.group meta.block
    })
);

new Date().getTime()
// ^^^^^^^ meta.instance.constructor
//  ^^^^^^ meta.function-call.constructor
//  ^^^^ support.class.builtin
//        ^^^^^^^^^^ - meta.instance.constructor

new $();
//  ^ variable.type.dollar.only punctuation.dollar

new $Dollar();
//  ^ variable.type.dollar punctuation.dollar

void {
    'test1': [],
    'test2': new SomeObjectHash["default"],
//               ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.constructor
//                             ^ meta.brackets
    'test3': "asdf"
}
// <- meta.object-literal punctuation.section.block

// This tests parsing semi-broken object literals, which should help while a
// user is in the middle of typing code
void {
    key1: true
//  ^^^^ meta.object-literal.key.js
    key2: 0
//  ^^^^ meta.object-literal.key.js
    key3: function()
//  ^^^^ meta.object-literal.key.js entity.name.function
    {

    }
}

a = b.c
d = e.f
// <- variable.other.readwrite

foo.bar().baz
// ^ punctuation.accessor
//       ^ punctuation.accessor

width/2 + lineStart * Math.sin(i * 30 * π/180)
//   ^ keyword.operator.arithmetic
//                  ^ keyword.operator.arithmetic
//                         ^^^^^^^^^^^^^^^^^^^ meta.function-call.method

var reg = /a+/gimy.exec('aabb')
//        ^^^^^^^^ string.regexp
//            ^^^^ keyword.other
//                ^ punctuation.accessor

'aabbcc'.replace(/b+/, 'd');
//               ^^^^ string.regexp
//                 ^ keyword.operator.quantifier.regexp

/a+(?:bc)/;
// <- string.regexp
//  ^^ punctuation.definition.group.no-capture.regexp

/test// 1;
// <- string.regexp.js
//    ^ keyword.operator.arithmetic.js

/test/* 1;
// <- string.regexp.js
//    ^ keyword.operator.arithmetic.js
// */

/test/** 1;
// <- string.regexp.js
//    ^^ keyword.operator.arithmetic.js
// */

'str'.match(/[" ]+/g);
//          ^^^^^^^^ string.regexp.js

myvar = myvar.replace(/RTP\/SAVPF .*/, 'RTP/SAVPF ' + suffix);
//                    ^^^^^^^^^^^^^^^ string.regexp.js

'foo'.bar() / baz
//            ^ variable.other.readwrite

var g = 50

g / 20 + 30 /g
//^ keyword.operator.arithmetic
//          ^ keyword.operator.arithmetic

var h = foo() / 20 + 30 /g
//            ^ keyword.operator.arithmetic
//                      ^ keyword.operator.arithmetic

foo['bar']/ 20 + 30 /g
//        ^ keyword.operator.arithmetic
//                  ^ keyword.operator.arithmetic

foo.bar/ 20 + 30 /g
//     ^ keyword.operator.arithmetic
//               ^ keyword.operator.arithmetic

var result = 200 / 400 + 500 /
//               ^ keyword.operator.arithmetic
//                           ^ keyword.operator.arithmetic
100;

var re = /
[a-z]
/g
// <- string.regexp.js punctuation.definition.string.end
 // <- keyword.other

const a = 1 / /This is regex./ / 'This should be a string, not a regex.';
//          ^ keyword.operator
//            ^ string.regexp
//                           ^ string.regexp
//                             ^ keyword.operator
//                               ^ string.quoted

a = /\//u + 0;
//  ^^^^ string.regexp
//      ^ keyword.other
//        ^ keyword.operator
//          ^ constant.numeric

1 /**/ / 2 / /**/ 3;
//     ^ keyword.operator
//       ^ constant.numeric
//         ^ keyword.operator

var π = 3.141592653
//  ^ variable.other.readwrite

var angle = 2*π / count // angle between circles
//              ^ keyword.operator.arithmetic

var angle = 2*π / count /* angle between circles */
//              ^ keyword.operator.arithmetic

undefined / (8 * 5) / "1"
//        ^ keyword.operator.arithmetic
//                  ^ keyword.operator.arithmetic

'5' / 8 / '1'
//  ^ keyword.operator.arithmetic
//      ^ keyword.operator.arithmetic

"5" / 8 / "1"
//  ^ keyword.operator.arithmetic
//      ^ keyword.operator.arithmetic

`5` / 8 / `1`
//  ^ keyword.operator.arithmetic
//      ^ keyword.operator.arithmetic

a = /foo\/bar/g // Ensure handling of escape / in regex detection
//    ^ string.regexp
//       ^ constant.character.escape

var re = /^\/[^/]+/
//             ^ constant.other.character-class.set.regexp
//               ^ keyword.operator.quantifier

(y - 1) / ((x - 1) / -2)
//      ^ keyword.operator.arithmetic
//        ^ punctuation.section.group
(y - 1) / ((x - 1) /  2)
//    ^ punctuation.section.group
//      ^ keyword.operator.arithmetic
 y      / ((x - 1) / -2)

define(['common'], function(common) {
//                 ^ meta.function.declaration
    var namedFunc = function() {
//        ^ meta.function.declaration
    }
});

new FooBar(function(){
//          ^ meta.function.declaration
    var namedFunc2 = function() {
//        ^ meta.function.declaration
    }
})

['foo'].bar = function() {
//      ^ meta.property.object entity.name.function
}

['foo'].$ = function() {
//      ^ meta.property.object.dollar.only entity.name.function
}

['foo'].$bar = function() {
//      ^ meta.property.object.dollar entity.name.function
}

{
// <- meta.block punctuation.section.block
    let foo = 1;
//  ^^^ meta.block storage.type
//      ^^^ variable.other.readwrite
}
// <- meta.block punctuation.section.block

var test =
{a: 1}
// <- meta.object-literal punctuation.section.block

var arrowFuncBraceNextLine = () => /* comments! */
//  ^ entity.name.function
//                              ^^ storage.type.function
//                                 ^^^^^^^^^^^^^^^ comment
{
    foo.bar();
//  ^ - entity.name.function
}

// Handle multi-line "concise" arrow function bodies
var conciseFunc = () =>
  foo
//^^^ meta.block variable.other.readwrite
  .bar();
//^^^^^^ meta.block

// Handle an arrow function in a parenthetical group
(myFunc = (a) => a*2)
// <- meta.group punctuation.section.group
// ^^^^ entity.name.function
//                  ^ meta.group punctuation.section.group - meta.block

var o = { a: i => i * 2, b: i => i * 3 }
//        ^ entity.name.function
//                     ^ - meta.block
//                       ^ entity.name.function

function test() {
    return {a: 1};
//         ^^^^^^ meta.object-literal
//          ^ meta.object-literal.key
//             ^ constant.numeric
}

$.each({})
// <- variable.other.object.dollar.only punctuation.dollar
//     ^ meta.object-literal

$varname.method()
// <- variable.other.object.dollar punctuation.dollar - variable.other.object.dollar.only
// ^ variable.other.object.dollar

$.fn.new_plugin = function() {}
// <- support.class.dollar.only punctuation.dollar

$var.fn.name = () => {}
// <- support.class.dollar punctuation.dollar - support.class.dollar.only
// ^ support.class.dollar - punctuation.dollar

someFunction(() => [() => 'X']);
//                           ^ punctuation.section.brackets

string = 'invalid
//               ^ invalid.illegal.newline

hex = 0xFA.5;
//    ^^^^^^ invalid.illegal.numeric.hex

octal = 079.0;
//      ^^^^^ invalid.illegal.numeric.octal

strayBracket = ());
//               ^ invalid.illegal.stray-bracket-end

strayBracket = []];
//               ^ invalid.illegal.stray-bracket-end

strayBracket = {}};
//               ^ invalid.illegal.stray-bracket-end

(a +) + c;
//   ^^^^ - meta.group

(a =>) + c;
//    ^^^^ - meta.group

function optionalParam(b=0) {};
//                    ^ punctuation.section.group.begin
//                      ^^ meta.parameter.optional
//                        ^ punctuation.section.group.end

var path = require('path');
//  ^^^^ support.module.node

foo = path.join(__dirname, bar);
//              ^^^^^^^^^ support.type.object.node

nodeClass = new Buffer();
//              ^^^^^^ support.class.node

var CONST;
//  ^^^^^ variable.other.constant

err = new Error();
//        ^^^^^ support.class.error

return;
{a: 1};
// ^ meta.block - meta.object-literal

return
{a: 1};
// ^ meta.block - meta.object-literal

const abc = new Set
console.log('abc');
// ^^^^ support.type.object.console

const abc = new Set
if (true) console.log('abc');
// <- keyword.control.conditional

var o = {
    a,
    b,
    c // comment
//  ^ variable.other.readwrite - entity.name.function
//    ^^ comment
}

var query = {
    type: type==undefined ? null : {$in: type.split(',')}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.object-literal
//              ^^^^^^^^^ constant.language.undefined
//                        ^ keyword.operator.ternary
//                          ^^^^ constant.language.null
//                               ^ keyword.operator.ternary
//                                 ^ punctuation.section.block.js
//                                   ^^ meta.object-literal.key.dollar.js
//                                     ^ punctuation.separator.key-value.js
//                                                      ^ punctuation.section.block
};

var str = `Hello, ${name}!`;
//        ^^^^^^^^ string.template
//                ^^^^^^^ meta.template.expression - string
//                       ^^ string.template
//                ^^ punctuation.definition.template-expression.begin
//                  ^^^^ source.js.embedded.expression variable.other.readwrite
//                      ^ punctuation.definition.template-expression.end

let str = navigator.userAgent.toLowerCase();
//        ^^^^^^^^^ support.type.object

function yy (a, b) {
// ^^^^^^^^^^^^^^^ meta.function.declaration
//       ^^ entity.name.function
//          ^ punctuation.section.group.begin
//           ^ variable.parameter.function
//            ^ punctuation.separator.parameter.function
//              ^ variable.parameter.function
//               ^ punctuation.section.group.end
//                 ^ meta.block punctuation.section.block - meta.function
}

// Integers

    123_456_789_0n;
//  ^^^^^^^^^^^^^^ constant.numeric.decimal
//               ^ storage.type.numeric.bigint

    0;
//  ^ constant.numeric.decimal

    0123456789;
//  ^^^^^^^^^^ constant.numeric.octal invalid.deprecated.octal

    0b0110_1001_1001_0110n;
//  ^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.binary
//  ^^ punctuation.definition.numeric.binary
//                       ^ storage.type.numeric.bigint

    0o0123_4567n;
//  ^^^^^^^^^^^^ constant.numeric.octal
//  ^^ punctuation.definition.numeric.octal
//             ^ storage.type.numeric.bigint

    0x01_23_45_67_89_ab_CD_efn;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.hexadecimal
//  ^^ punctuation.definition.numeric.hexadecimal
//                           ^ storage.type.numeric.bigint

    0B0; 0O0; 0X0;
//  ^^^ constant.numeric.binary
//       ^^^ constant.numeric.octal
//            ^^^ constant.numeric.hexadecimal

// Floats

    1_234_567_890.123_456_789_0;
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.decimal

    .123_456_789_0;
//  ^^^^^^^^^^^^^^ constant.numeric.decimal

    0123.45;
//  ^^^^^^^ invalid.illegal.numeric.octal

    12345e6_7_8;
//  ^^^^^^^^^^^ constant.numeric.decimal
    
    123.456e+789;
//  ^^^^^^^^^^^^ constant.numeric.decimal

    .123E-7_8_9;
//  ^^^^^^^^^^^ constant.numeric.decimal

debugger;
// <- keyword.other.debugger

debugger
[]
// <- meta.sequence
