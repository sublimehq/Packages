// SYNTAX TEST "Packages/ActionScript/ActionScript.sublime-syntax"
// <- source.actionscript



///[ COMMENTS ]////////////////////////////////////////////////////////////////



    // this is a comment
//  ^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash
//  ^^ comment.line.double-slash punctuation.definition.comment

    // // this is a comment, not a comment within a comment
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash
//  ^^ comment.line.double-slash punctuation.definition.comment
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - comment comment

    // /* this is a comment, not a comment within a comment */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash
//  ^^ comment.line.double-slash punctuation.definition.comment
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - comment comment

    /* comment block */
//  ^^^^^^^^^^^^^^^^^^^ comment.block
//  ^^ comment.block punctuation.definition.comment.begin
//                   ^^ comment.block punctuation.definition.comment.end


    /* // comment block */
//  ^^^^^^^^^^^^^^^^^^^^^^ comment.block
//  ^^ comment.block punctuation.definition.comment.begin
//     ^^^^^^^^^^^^^^^^^^^ - comment comment
//                      ^^ comment.block punctuation.definition.comment.end

    /**
     *
//   ^ comment.block punctuation.definition.comment
     */


///[ PREPROCESSOR ]////////////////////////////////////////////////////////////


#initclip
#endinitclip

#include "relative_path.as"


///[ STRINGS ]/////////////////////////////////////////////////////////////////


    var strDouble = "...\"...";
//                  ^^^^^^^^^^ meta.string string.quoted.double
//                      ^^ constant.character.escape

    var strSingle = '...\'...';
//                  ^^^^^^^^^^ meta.string string.quoted.single
//                      ^^ constant.character.escape


///[ TYPES ]///////////////////////////////////////////////////////////////////


    var typeBoolean:Boolean = true;
//                  ^^^^^^^ storage.type

    var typeNumber:Number = 0;
//                 ^^^^^^ storage.type

    var typeString:String = "some text";
//                 ^^^^^^ storage.type

    var typeVoid:Void;
//               ^^^^ storage.type

    var typeArray:Array = [1, 2, 3];
//                ^^^^^ storage.type

    var typeObject:Object = { one: 1, two: 2 };
//                 ^^^^^^ storage.type


///[ CONSTANTS ]///////////////////////////////////////////////////////////////


    var isFalse:Boolean = false;
//                        ^^^^^ constant.language.boolean

    var isTrue:Boolean = true;
//                       ^^^^ constant.language.boolean

    var isUndefined = undefined;
//                    ^^^^^^^^^ constant.language.undefined

    var isNull = null;
//               ^^^^ constant.language.null

    var isNan = NaN;
//              ^^^ constant.language.nan

    var isInfinity = Infinity;
//                   ^^^^^^^^ meta.number.float.decimal
//                   ^^^^^^^^ constant.language.infinity

    var isNegInfinity = -Infinity;
//                      ^^^^^^^^^ meta.number.float.decimal
//                      ^ constant.numeric.sign
//                       ^^^^^^^^ constant.language.infinity

    var isPosInfinity = +Infinity;
//                      ^^^^^^^^^ meta.number.float.decimal
//                      ^ invalid.illegal.constant-numeric-sign
//                       ^^^^^^^^ constant.language.infinity


///[ NUMBERS ]/////////////////////////////////////////////////////////////////


    var intZero:Number = 0;
//                       ^ meta.number constant.numeric
    var intNine:Number = 9;
//                       ^ meta.number constant.numeric

    var intNegZero:Number = -0;
//                           ^ meta.number constant.numeric
    var intNegNine:Number = -9;
//                           ^ meta.number constant.numeric

    var floatZero:Number = 0.0;
//                         ^^^ meta.number constant.numeric
    var floatNine:Number = 9.0;
//                         ^^^ meta.number constant.numeric

    var floatNegZero:Number = -0.0;
//                             ^^^ meta.number constant.numeric
    var floatNegNine:Number = -9.0;
//                             ^^^ meta.number constant.numeric


///[ KEYWORDS ]////////////////////////////////////////////////////////////////


    case
//  ^^^^ keyword.control.conditional.case
    default
//  ^^^^^^^ keyword.control.conditional.default
    else if
//  ^^^^^^^ keyword.control.conditional.elseif
    else
//  ^^^^ keyword.control.conditional.else
    if
//  ^^ keyword.control.conditional.if
    switch
//  ^^^^^^ keyword.control.conditional.switch

    try
//  ^^^ keyword.control.exception.try
    catch
//  ^^^^^ keyword.control.exception.catch
    finally
//  ^^^^^^^ keyword.control.exception.finally

    break
//  ^^^^^ keyword.control.flow.break
    throw
//  ^^^^^ keyword.control.flow.throw
    return
//  ^^^^^^ keyword.control.flow.return

    import
//  ^^^^^^ keyword.control.import

    do
//  ^^ keyword.control.loop.do-while
    for
//  ^^^ keyword.control.loop.for
    while
//  ^^^^^ keyword.control.loop.while

    continue
//  ^^^^^^^^ keyword.control
    delete
//  ^^^^^^ keyword.control
    dynamic
//  ^^^^^^^ keyword.control
    extends
//  ^^^^^^^ keyword.control
    get
//  ^^^ keyword.control
    implements
//  ^^^^^^^^^^ keyword.control
    in
//  ^^ keyword.control
    interface
//  ^^^^^^^^^ keyword.control
    intrinsic
//  ^^^^^^^^^ keyword.control
    new
//  ^^^ keyword.control
    private
//  ^^^^^^^ keyword.control
    public
//  ^^^^^^ keyword.control
    set
//  ^^^ keyword.control
    static
//  ^^^^^^ keyword.control
    super
//  ^^^^^ keyword.control
    var
//  ^^^ keyword.control
    with
//  ^^^^ keyword.control

///[ OPERATORS ]///////////////////////////////////////////////////////////////

///[ OPERATORS / INVALID OPERATORS ]///////////////////////////////////////////



    <>
//  ^^ invalid.deprecated.keyword-operator-inequality


    and
//  ^^^ invalid.deprecated.keyword-operator-logical
    not
//  ^^^ invalid.deprecated.keyword-operator-logical
    or
//  ^^ invalid.deprecated.keyword-operator-logical

    le
//  ^^ invalid.deprecated.keyword-operator-relational
    lt
//  ^^ invalid.deprecated.keyword-operator-relational
    ge
//  ^^ invalid.deprecated.keyword-operator-relational
    gt
//  ^^ invalid.deprecated.keyword-operator-relational


    eq
//  ^^ invalid.deprecated.keyword-operator-comparison
    ne
//  ^^ invalid.deprecated.keyword-operator-comparison


    add
//  ^^^ invalid.deprecated.keyword-operator-arithmetic



///[ OPERATORS / VALID OPERATORS ]/////////////////////////////////////////////



    <<<=
//  ^^^^ keyword.operator.assignment.augmented.bitwise.shift.left.unsigned
    <<=
//  ^^^ keyword.operator.assignment.augmented.bitwise.shift.left.signed
    >>>=
//  ^^^^ keyword.operator.assignment.augmented.bitwise.shift.right.unsigned
    >>=
//  ^^^ keyword.operator.assignment.augmented.bitwise.shift.right.signed


    <<<
//  ^^^ keyword.operator.bitwise.shift.left.unsigned
    <<
//  ^^ keyword.operator.bitwise.shift.left.signed
    >>>
//  ^^^ keyword.operator.bitwise.shift.right.unsigned
    >>
//  ^^ keyword.operator.bitwise.shift.right.signed


    <=
//  ^^ keyword.operator.relational.less-equal
    >=
//  ^^ keyword.operator.relational.greater-equal
    <
//  ^ keyword.operator.relational.less
    >
//  ^ keyword.operator.relational.greater


    ++
//  ^^ keyword.operator.arithmetic.increment
    --
//  ^^ keyword.operator.arithmetic.decrement


    %
//  ^ keyword.operator.arithmetic
    *
//  ^ keyword.operator.arithmetic
    +
//  ^ keyword.operator.arithmetic
    /
//  ^ keyword.operator.arithmetic
    -
//  ^ keyword.operator.arithmetic


    &&
//  ^^ keyword.operator.logical.and
    ||
//  ^^ keyword.operator.logical.or
    !
//  ^ keyword.operator.logical.not


    ~=
//  ^^ keyword.operator.assignment.augmented.bitwise.not
    ^=
//  ^^ keyword.operator.assignment.augmented.bitwise.xor
    &=
//  ^^ keyword.operator.assignment.augmented.bitwise.and
    |=
//  ^^ keyword.operator.assignment.augmented.bitwise.or


    ~
//  ^ keyword.operator.bitwise.not
    ^
//  ^ keyword.operator.bitwise.xor
    &
//  ^ keyword.operator.bitwise.and
    |
//  ^ keyword.operator.bitwise.or


    ===
//  ^^^ keyword.operator.comparison.equal.value.strict
    ==
//  ^^ keyword.operator.comparison.equal.value
    !==
//  ^^^ keyword.operator.comparison.not-equal.value.strict
    !=
//  ^^ keyword.operator.comparison.not-equal.value


    %=
//  ^^ keyword.operator.assignment.augmented
    *=
//  ^^ keyword.operator.assignment.augmented
    +=
//  ^^ keyword.operator.assignment.augmented
    /=
//  ^^ keyword.operator.assignment.augmented
    -=
//  ^^ keyword.operator.assignment.augmented


    =
//  ^ keyword.operator.assignment


    instanceof
//  ^^^^^^^^^^ keyword.operator



///[ CLASSES ]/////////////////////////////////////////////////////////////////



    class com.example.Greeter extends MovieClip
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//  ^^^^^ meta.class keyword.declaration.class
//        ^^^^^^^^^^^^^^^^^^^ meta.class entity.name.type
//                            ^^^^^^^ meta.class storage.modifier.extends
//                                    ^^^^^^^^^ meta.class entity.other.inherited-class
    {
        public function Greeter()
//      ^^^^^^ keyword.control
//             ^^^^^^^^^^^^^^^^^^ meta.function
//             ^^^^^^^^ meta.function keyword.declaration.function
//                      ^^^^^^^ meta.function entity.name.function
//                             ^ meta.function punctuation.definition.parameters.begin
//                              ^ meta.function punctuation.definition.parameters.end
        {
            var txtHello: TextField = this.createTextField("txtHello", 0, 0, 0, 100, 100);
//          ^^^ keyword.control
//                        ^^^^^^^^^ support.class
//                                  ^ keyword.operator.assignment
//                                    ^^^^ support.function
//                                         ^^^^^^^^^^^^^^^ support.function
//                                                         ^^^^^^^^^^ string.quoted.double
//                                                         ^ string.quoted.double punctuation.definition.string.begin
//                                                                  ^ string.quoted.double punctuation.definition.string.end
//                                                                     ^ constant.numeric
            txtHello.text = "Hello, world";
        }
    }



///[ FUNCTIONS ]///////////////////////////////////////////////////////////////



    private function getFunctionName(e:Error):String {
//                                   ^^^^^^^ meta.function variable.parameter
//                                            ^^^^^^ storage.type
        var stackTrace:String = e.getStackTrace();                              // entire stack trace
        var startIndex:int = stackTrace.indexOf("at ");                         // start of first line
        var endIndex:int = stackTrace.indexOf("()");                            // end of function name

        return stackTrace.substring(startIndex + 3, endIndex);
//      ^^^^^^ keyword.control
    }

    private function on_applicationComplete(event:FlexEvent):void {
        trace(getFunctionName(new Error());
//                            ^^^ keyword.control
    }
