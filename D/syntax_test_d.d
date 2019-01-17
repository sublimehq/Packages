// SYNTAX TEST "Packages/D/D.sublime-syntax"

module test;
// <- meta.module.d keyword.control.module.d
 // <- meta.module.d keyword.control.module.d
//^^^^ meta.module.d keyword.control.module.d
    // ^^^^ meta.module.d entity.name.namespace.d
  module foo.a.b1_3;
//^^^^^^^^^^^^^^^^^^ meta.module.d
//^^^^^^ keyword.control.module.d
//       ^^^^^^^^^^ entity.name.namespace.d

import std.stdio;

  /+
//^^ comment.block.nested.d punctuation.definition.comment.d
  /+
//^^ comment.block.nested.d comment.block.nested.d punctuation.definition.comment.d
  +/
//^^ comment.block.nested.d comment.block.nested.d punctuation.definition.comment.d
  +/
//^^ comment.block.nested.d punctuation.definition.comment.d

auto wysiwyg = r"foo \n\";
//             ^^ punctuation.definition.string.begin.d
//             ^^^^^^^^^^ string.quoted.double.raw.d
//                      ^ punctuation.definition.string.end.d
auto wysiwygAlt = `foo\n\`;
//                ^ punctuation.definition.string.begin.d
//                ^^^^^^^^ string.quoted.double.raw.backtick.d
//                       ^ punctuation.definition.string.end.d
auto doubleQuoted = "c:\'\"\?\\\0\a\b\f\n\r\t\v\x0B\2\12\762\u0feb\Uabcdef98\&quot;";
//                  ^ punctuation.definition.string.begin.d
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.d
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.character.escape.d
//                                                                                 ^ punctuation.definition.string.end.d
auto invalidEscape = "\p";
//                    ^^ string.quoted.double.d invalid.illegal.unknown-escape.d
auto hexString = x"00 ba
//               ^^ punctuation.definition.string.begin.d
//               ^^^^^^^^ string.quoted.double.raw.d
    5 5 b";
// ^^^^^^^ string.quoted.double.raw.d
//  ^^^ string.quoted.double.raw.d constant.character.escape.d
//      ^ string.quoted.double.raw.d invalid.illegal.unknown-escape.d
//       ^ string.quoted.double.raw.d punctuation.definition.string.end.d
auto deliminated = q"SQL_1
//                 ^^^^^^^ string.quoted.double.raw.d punctuation.definition.string.begin.d
    select foo \n
//  ^^^^^^^^^^^^^^ string.quoted.double.raw.d
SQL_1";
// <- string.quoted.double.raw.d punctuation.definition.string.end.d
// ^^^ string.quoted.double.raw.d punctuation.definition.string.end.d
auto deliminatedBad = q"SQL\
//                         ^ string.quoted.double.raw.d punctuation.definition.string.begin.d invalid.illegal.d
SQL"
auto deliminatedNested = q"(f("))" + q"{f{"}}" + q"[f["]]" + q"<f<">>";
//                       ^^^ punctuation.definition.string.begin.d
//                       ^^^^^^^^^ string.quoted.double.raw.d
//                              ^^ punctuation.definition.string.end.d
//                                   ^^^ punctuation.definition.string.begin.d
//                                   ^^^^^^^^^ string.quoted.double.raw.d
//                                          ^^ punctuation.definition.string.end.d
//                                               ^^^ punctuation.definition.string.begin.d
//                                               ^^^^^^^^^ string.quoted.double.raw.d
//                                                      ^^ punctuation.definition.string.end.d
//                                                           ^^^ punctuation.definition.string.begin.d
//                                                           ^^^^^^^^^ string.quoted.double.raw.d
//                                                                  ^^ punctuation.definition.string.end.d
auto deliminatedAny = q"/foo(xxx)/";
//                    ^^^ punctuation.definition.string.begin.d
//                    ^^^^^^^^^^^^^ string.quoted.double.raw.d
//                               ^^ punctuation.definition.string.end.d
auto stringPostfix = ``c + ""w + q"//"d;
//                     ^ string.quoted.double.raw.backtick.d storage.type.string.d
//                           ^ string.quoted.double.d storage.type.string.d
//                                    ^ string.quoted.double.raw.d storage.type.string.d
auto tokenString = q{
//                 ^^ string.unquoted.embedded.d.d punctuation.definition.string.begin.d
    this is
//  ^^^^ string.unquoted.embedded.d.d source.d variable.language.d
//       ^^ string.unquoted.embedded.d.d source.d keyword.other.d
    /*}*/
    __TIME__
//  ^^^^^^^^ string.unquoted.embedded.d.d source.d constant.language.d
};
// <- string.unquoted.embedded.d.d punctuation.definition.string.end.d


auto c = 'a';
//       ^^^ string.quoted.single.d
c = 'Ó';
//  ^^^ string.quoted.single.d
c = '\n';
//  ^^^^ string.quoted.single.d
//   ^^ constant.character.escape.d
c = '\x';
//  ^^^^ invalid.illegal.d
c = 'aa';
//  ^^^^ invalid.illegal.d
c = '\';
//  ^^^ invalid.illegal.d
c = '';
//  ^^ invalid.illegal.d
c = ''';
//  ^^ invalid.illegal.d

auto dec = 2_0_000;
//         ^^^^^^^ constant.numeric.d
dec = 1L;
//    ^ constant.numeric.d
//     ^ storage.type.integer.d
dec = 1u;
//    ^ constant.numeric.d
//     ^ storage.type.integer.d
dec = 1U;
//    ^ constant.numeric.d
//     ^ storage.type.integer.d
dec = 1Lu;
//    ^ constant.numeric.d
//     ^^ storage.type.integer.d
dec = 1LU;
//    ^ constant.numeric.d
//     ^^ storage.type.integer.d
dec = 1uL;
//    ^ constant.numeric.d
//     ^^ storage.type.integer.d
dec = 1UL;
//    ^ constant.numeric.d
//     ^^ storage.type.integer.d
auto bin = 0b1;
//         ^^^ constant.numeric.d
bin = 0b10_1;
//    ^^^^^^ constant.numeric.d
bin = 0B1;
//    ^^^ constant.numeric.d
auto hex = 0xF;
//         ^^^ constant.numeric.d
hex = 0x012_3;
//    ^^^^^^^ constant.numeric.d
hex = 0X1;
//    ^^^ constant.numeric.d

  @foo:
//^ punctuation.definition.annotation.begin.d
// ^^^ variable.other.constant.d
//    ^ punctuation.section.d
  @(void)@safer@Foo(2, 4)@property
//^^ punctuation.definition.annotation.begin.d
//  ^^^^ storage.type.d
//       ^ punctuation.definition.annotation.begin.d
//        ^^^^^ variable.other.constant.d
//             ^ punctuation.definition.annotation.begin.d
//              ^^^ variable.function.d
//                 ^ punctuation.definition.annotation.begin.d
//                  ^ constant.numeric.d
//                     ^ constant.numeric.d
//                      ^ punctuation.definition.annotation.end.d
//                       ^ punctuation.definition.annotation.begin.d
//                        ^^^^^^^^ storage.attribute.d
  static shared const immutable auto final synchronized __gshared nothrow pure ref
//^^^^^^ storage.modifier.d
//       ^^^^^^ storage.modifier.d
//              ^^^^^ storage.modifier.d
//                    ^^^^^^^^^ storage.modifier.d
//                              ^^^^ storage.modifier.d
//                                   ^^^^^ storage.modifier.d
//                                         ^^^^^^^^^^^^ storage.modifier.d
//                                                      ^^^^^^^^^ storage.modifier.d
//                                                                ^^^^^^^ storage.modifier.d
//                                                                        ^^^^ storage.modifier.d
//                                                                             ^^^ storage.modifier.d
  extern(C) extern (C++, foo.a)
//^^^^^^ keyword.other.external.d
//      ^ punctuation.definition.annotation.begin.d
//       ^ string.other.d
//        ^ punctuation.definition.annotation.end.d
//          ^^^^^^ keyword.other.external.d
//                 ^ punctuation.definition.annotation.begin.d
//                  ^^^ string.other.d
//                     ^ punctuation.separator.sequence.d
//                       ^^^^^ string.other.d
//                            ^ punctuation.definition.annotation.end.d
extern(1)
//     ^ invalid.illegal.d
  align(1) align(foo * 2)
//^^^^^ keyword.other.alignment.d
//     ^ punctuation.definition.annotation.begin.d
//      ^ constant.numeric.d
//       ^ punctuation.definition.annotation.end.d
//         ^^^^^ keyword.other.alignment.d
//              ^ punctuation.definition.annotation.begin.d
//                   ^ keyword.operator.arithmetic.d
//                     ^ constant.numeric.d
//                      ^ punctuation.definition.annotation.end.d
  deprecated
//^^^^^^^^^^ keyword.other.deprecated.d
  deprecated("message") deprecated(q{void})
//^^^^^^^^^^ keyword.other.deprecated.d
//          ^ punctuation.definition.annotation.begin.d
//           ^^^^^^^^^ string.quoted.double.d
//                    ^ punctuation.definition.annotation.end.d
//                      ^^^^^^^^^^ keyword.other.deprecated.d
//                                ^ punctuation.definition.annotation.begin.d
//                                   ^^^^ string.unquoted.embedded.d.d source.d storage.type.d
//                                        ^ punctuation.definition.annotation.end.d
  private protected public export package
//^^^^^^^ storage.modifier.access-control.d
//        ^^^^^^^^^ storage.modifier.access-control.d
//                  ^^^^^^ storage.modifier.access-control.d
//                         ^^^^^^ storage.modifier.access-control.d
//                                ^^^^^^^ storage.modifier.access-control.d
  package(foo.bar.)
//^^^^^^^ storage.modifier.access-control.d
//       ^ punctuation.definition.annotation.begin.d
//        ^^^^^^^ variable.other.constant.d
//               ^ invalid.illegal.d
//                ^ punctuation.definition.annotation.end.d
  pragma(f) pragma(test, void)
//^^^^^^ keyword.other.pragma.d
//      ^ punctuation.definition.annotation.begin.d
//       ^ variable.function.d
//        ^ punctuation.definition.annotation.end.d
//          ^^^^^^ keyword.other.pragma.d
//                ^ punctuation.definition.annotation.begin.d
//                 ^^^^ variable.function.d
//                       ^^^^ storage.type.d
//                           ^ punctuation.definition.annotation.end.d


shared static this()
// ^ storage.modifier
//      ^ storage.modifier
             ^ entity.name
{
}

__gshared int a = 5_000;
// ^ storage.modifier
//         ^ storage.type
//                 ^ constant.numeric
shared int b = 5000;
// ^ storage.modifier
//      ^ storage.type
//              ^ constant.numeric

int c = 0x0;
//       ^ constant.numeric
int d = 0x0_00;
//          ^ constant.numeric
float e = .0_0;
//           ^ constant.numeric

template testTemplate(X)
{
    static if (is(X))
    // ^ storage.modifier
    //      ^ keyword.control
    {
        enum test = true;
        immutable int f = 0;
        // ^ storage.modifier
        //         ^ storage.type
    }
    else static if (!is(X))
    // ^ keyword.control
    //    ^ storage.modifier
    //          ^ keyword.control
    {
        enum test = true;
        string g = "test";
        // ^ storage.type
    }
    else
        enum test = false;
}

@safe pure nothrow @nogc unittest {}
// ^ storage.attribute
//     ^ storage.modifier
//            ^ storage.modifier
//                  ^ storage.attribute

auto takeByRef(ref int h)
 ^ storage.type
//              ^ storage.modifier
                 ^ storage.type
{
    synchronized
    // ^ storage.modifier
    {
        h += 1;
    }
}

void main(char[][] args)
//    ^ meta.function entity.name.function
{
// <- meta.function meta.block
    foreach(argc, argv; args)
    {
    // <- meta.function meta.block meta.block
        auto cl = new CmdLin(argc, argv);
        //         ^ keyword.other
        //              ^ meta.block - keyword.type
        writefln("%s%s arg: %s", cl.argnum, cl.suffix, cl.argv);
        delete cl;
        // ^ keyword.other
    }

    struct specs
    {
        int count, allocated;
    }

    specs argspecs(char[][] args)
    in {
    // ^ meta.function meta.block meta.function meta.block
        assert (args.length > 0);
    }
    out (result) {
        assert(result.count == CmdLin.total);
        //                       ^ meta.block - keyword.type
        assert(result.allocated > 0);
    }
    body {
    // ^ meta.function meta.block meta.function keyword.control.statement
    //   ^ meta.function meta.block meta.function meta.block
        specs* s = new specs;
         s.count = args.length;
         s.allocated = typeof(args).sizeof;
         foreach(argv; args)
            s.allocated += argv.length * typeof(argv[0]).sizeof;
        return *s;
    }

    char[] argcmsg  = "argc = %d".dup;
    char[] allocmsg = "allocated = %d".dup;
    writefln(argcmsg ~ ", " ~ allocmsg,
         argspecs(args).count,argspecs(args).allocated);
}
// ^ source.d

class CmdLin
{
// <- meta.class meta.block
    private {
        //  ^ meta.class meta.block meta.block
        int _argc;
        char[] _argv;
        static uint _totalc;
    }

  public:
    this(int argc, char[] argv)
    {
        _argc = argc + 1;
        _argv = argv;
        _totalc++;
    }

    ~this()
    // ^ entity.name
    {
    }

    int argnum()
    {
        struct Foo {
        }
        return _argc;
    }

    char[] argv()
    {
        return _argv;
    }

    wchar[] suffix()
    // ^ storage.type
    //          ^ entity.name
    {
        wchar[] suffix;
        switch(_argc)
        {
        case 1:
            suffix = "st"w.dup;
            break;
        case 2:
            suffix = "nd"w.dup;
            break;
        case 3:
            suffix = "rd"w.dup;
            break;
        default:
             suffix = "th"w.dup;
        }
        return suffix;
    }

    static typeof(_totalc) total()
    // ^ storage.modifier
    //      ^ storage.type
    //                      ^ entity.name
    {
        return _totalc;
    }

    invariant
    {
        assert(_argc > 0);
        assert(_totalc >= _argc);
    }
}
 // <- - meta.class

extern(C):
struct the_c_struct;

class MyClass {
// <- storage.type
}

string sA = r"$";
//             ^ punctuation.definition.string.end

void func()
in {
    assert(true);
}
do {
// <- meta.function keyword.control
}
