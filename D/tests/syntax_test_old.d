// SYNTAX TEST "Packages/D/D.sublime-syntax"

module test;

import std.stdio;

shared static this()
// ^ storage.modifier
//      ^ storage.modifier
//             ^ entity.name
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
//      ^^ constant.numeric.base
//        ^ constant.numeric.value
int d = 0x0_00;
//          ^ constant.numeric.value
float e = .0_0;
//           ^ constant.numeric.value

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
        // ^ support.type.builtin-alias.d
    }
    else
        enum test = false;
}

@safe pure nothrow @nogc unittest {}
// ^ storage.modifier
//     ^ storage.modifier
//            ^ storage.modifier
//                  ^ storage.modifier

auto takeByRef(ref int h)
// ^ storage.modifier
//              ^ storage.modifier
//                 ^ storage.type
{
    synchronized
    // ^ keyword.other
    {
        h += 1;
    }
}

void main(char[][] args)
//    ^ entity.name.function
{
// <- meta.block
    foreach(argc, argv; args)
    {
    // <- meta.block meta.block
        auto cl = new CmdLin(argc, argv);
        //         ^ keyword.operator.word
        //              ^ meta.block - keyword.type
        writefln("%s%s arg: %s", cl.argnum, cl.suffix, cl.argv);
        delete cl;
        // ^ keyword.operator.word
    }

    struct specs
    {
        int count, allocated;
    }

    specs argspecs(char[][] args)
    in {
    // ^ meta.block meta.block
        assert (args.length > 0);
    }
    out (result) {
        assert(result.count == CmdLin.total);
        //                       ^ meta.block - keyword.type
        assert(result.allocated > 0);
    }
    body {
    // ^ meta.block keyword.other
    //   ^ meta.block meta.block
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
// <- meta.block
    private {
        //  ^ meta.block meta.block
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
    //      ^ meta.block.d keyword.other.d
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
// <- keyword.declaration.class
}

string sA = r"$";
//             ^ punctuation.definition.string.end

void func()
in {
    assert(true);
}
do {
// <- keyword.other
}
