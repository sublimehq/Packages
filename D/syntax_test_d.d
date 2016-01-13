// SYNTAX TEST "D.sublime-syntax"

module test;

import std.stdio;

shared static this()
// ^ storage.modifier
//      ^ storage.modifier
//             ^ entity.name
{
}

void main(char[][] args)
//    ^ meta.function entity.name.function
{
// <- meta.function meta.block
    foreach(argc, argv; args)
    {
    // <- meta.function meta.block meta.block
        auto cl = new CmdLin(argc, argv);
        writefln(cl.argnum, cl.suffix, " arg: %s", cl.argv);
        delete cl;
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
 
    char[] argcmsg  = "argc = %d";
    char[] allocmsg = "allocated = %d";
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
            suffix = "st";
            break;
        case 2:
            suffix = "nd";
            break;
        case 3:
            suffix = "rd";
            break;
        default:
             suffix = "th";
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
