-- SYNTAX TEST "Packages/Lua/Lua.sublime-syntax"

    _G;
--  ^^ support.constant.builtin

    _ENV;
--  ^^^^ support.constant.builtin

    _VERSION;
--  ^^^^^^^^ support.constant.builtin

    assert();
--  ^^^^^^ support.function.builtin

    collectgarbage();
--  ^^^^^^^^^^^^^^ support.function.builtin

    dofile();
--  ^^^^^^ support.function.builtin

    error();
--  ^^^^^ support.function.builtin

    warn();
--  ^^^^ support.function.builtin

    getfenv();
--  ^^^^^^^ support.function.builtin

    getmetatable();
--  ^^^^^^^^^^^^ support.function.builtin

    ipairs();
--  ^^^^^^ support.function.builtin

    load();
--  ^^^^ support.function.builtin

    loadfile();
--  ^^^^^^^^ support.function.builtin

    module();
--  ^^^^^^ support.function.builtin

    next();
--  ^^^^ support.function.builtin

    pairs();
--  ^^^^^ support.function.builtin

    pcall();
--  ^^^^^ support.function.builtin

    print();
--  ^^^^^ support.function.builtin

    rawequal();
--  ^^^^^^^^ support.function.builtin

    rawget();
--  ^^^^^^ support.function.builtin

    rawlen();
--  ^^^^^^ support.function.builtin

    rawset();
--  ^^^^^^ support.function.builtin

    select();
--  ^^^^^^ support.function.builtin

    setfenv();
--  ^^^^^^^ support.function.builtin

    setmetatable();
--  ^^^^^^^^^^^^ support.function.builtin

    tonumber();
--  ^^^^^^^^ support.function.builtin

    tostring();
--  ^^^^^^^^ support.function.builtin

    type();
--  ^^^^ support.function.builtin

    unpack();
--  ^^^^^^ support.function.builtin

    xpcall();
--  ^^^^^^ support.function.builtin

    require();
--  ^^^^^^^ support.function.builtin

    coroutine;
--  ^^^^^^^^^ support.constant.builtin

    coroutine.create();
--  ^^^^^^^^^ support.constant.builtin
--           ^ punctuation.accessor
--            ^^^^^^ meta.property support.function.builtin

    coroutine.isyieldable();
--  ^^^^^^^^^ support.constant.builtin
--           ^ punctuation.accessor
--            ^^^^^^^^^^^ meta.property support.function.builtin

    coroutine.resume();
--  ^^^^^^^^^ support.constant.builtin
--           ^ punctuation.accessor
--            ^^^^^^ meta.property support.function.builtin

    coroutine.running();
--  ^^^^^^^^^ support.constant.builtin
--           ^ punctuation.accessor
--            ^^^^^^^ meta.property support.function.builtin

    coroutine.status();
--  ^^^^^^^^^ support.constant.builtin
--           ^ punctuation.accessor
--            ^^^^^^ meta.property support.function.builtin

    coroutine.wrap();
--  ^^^^^^^^^ support.constant.builtin
--           ^ punctuation.accessor
--            ^^^^ meta.property support.function.builtin

    coroutine.yield();
--  ^^^^^^^^^ support.constant.builtin
--           ^ punctuation.accessor
--            ^^^^^ meta.property support.function.builtin

    coroutine.close();
--  ^^^^^^^^^ support.constant.builtin
--           ^ punctuation.accessor
--            ^^^^^ meta.property support.function.builtin

    package;
--  ^^^^^^^ support.constant.builtin

    package.config;
--  ^^^^^^^ support.constant.builtin
--         ^ punctuation.accessor
--          ^^^^^^ meta.property support.constant.builtin

    package.cpath;
--  ^^^^^^^ support.constant.builtin
--         ^ punctuation.accessor
--          ^^^^^ meta.property support.constant.builtin

    package.loaded;
--  ^^^^^^^ support.constant.builtin
--         ^ punctuation.accessor
--          ^^^^^^ meta.property support.constant.builtin

    package.loaders;
--  ^^^^^^^ support.constant.builtin
--         ^ punctuation.accessor
--          ^^^^^^^ meta.property support.constant.builtin

    package.path;
--  ^^^^^^^ support.constant.builtin
--         ^ punctuation.accessor
--          ^^^^ meta.property support.constant.builtin

    package.preload;
--  ^^^^^^^ support.constant.builtin
--         ^ punctuation.accessor
--          ^^^^^^^ meta.property support.constant.builtin

    package.searchers;
--  ^^^^^^^ support.constant.builtin
--         ^ punctuation.accessor
--          ^^^^^^^^^ meta.property support.constant.builtin

    package.loadlib();
--  ^^^^^^^ support.constant.builtin
--         ^ punctuation.accessor
--          ^^^^^^^ meta.property support.function.builtin

    package.searchpath();
--  ^^^^^^^ support.constant.builtin
--         ^ punctuation.accessor
--          ^^^^^^^^^^ meta.property support.function.builtin

    package.seeall();
--  ^^^^^^^ support.constant.builtin
--         ^ punctuation.accessor
--          ^^^^^^ meta.property support.function.builtin

    string;
--  ^^^^^^ support.constant.builtin

    string.byte();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^^ meta.property support.function.builtin

    string.char();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^^ meta.property support.function.builtin

    string.dump();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^^ meta.property support.function.builtin

    string.find();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^^ meta.property support.function.builtin

    string.format();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^^^^ meta.property support.function.builtin

    string.gmatch();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^^^^ meta.property support.function.builtin

    string.gsub();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^^ meta.property support.function.builtin

    string.len();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^ meta.property support.function.builtin

    string.lower();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^^^ meta.property support.function.builtin

    string.match();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^^^ meta.property support.function.builtin

    string.pack();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^^ meta.property support.function.builtin

    string.packsize();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^^^^^^ meta.property support.function.builtin

    string.rep();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^ meta.property support.function.builtin

    string.reverse();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^^^^^ meta.property support.function.builtin

    string.sub();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^ meta.property support.function.builtin

    string.unpack();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^^^^ meta.property support.function.builtin

    string.upper();
--  ^^^^^^ support.constant.builtin
--        ^ punctuation.accessor
--         ^^^^^ meta.property support.function.builtin

    utf8;
--  ^^^^ support.constant.builtin

    utf8.charpattern;
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^^^^^^^^ meta.property support.constant.builtin

    utf8.char();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^ meta.property support.function.builtin

    utf8.codes();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^^ meta.property support.function.builtin

    utf8.codepoint();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^^^^^^ meta.property support.function.builtin

    utf8.len();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^ meta.property support.function.builtin

    utf8.offset();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^^^ meta.property support.function.builtin

    table;
--  ^^^^^ support.constant.builtin

    table.concat();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^ meta.property support.function.builtin

    table.insert();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^ meta.property support.function.builtin

    table.maxn();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^ meta.property support.function.builtin

    table.move();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^ meta.property support.function.builtin

    table.pack();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^ meta.property support.function.builtin

    table.remove();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^ meta.property support.function.builtin

    table.sort();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^ meta.property support.function.builtin

    table.unpack();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^ meta.property support.function.builtin

    math;
--  ^^^^ support.constant.builtin

    math.huge;
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^ meta.property support.constant.builtin

    math.maxinteger;
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^^^^^^^ meta.property support.constant.builtin

    math.mininteger;
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^^^^^^^ meta.property support.constant.builtin

    math.pi;
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^ meta.property support.constant.builtin

    math.abs();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^ meta.property support.function.builtin

    math.acos();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^ meta.property support.function.builtin

    math.asin();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^ meta.property support.function.builtin

    math.atan();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^ meta.property support.function.builtin

    math.atan2();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^^ meta.property support.function.builtin

    math.ceil();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^ meta.property support.function.builtin

    math.cos();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^ meta.property support.function.builtin

    math.cosh();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^ meta.property support.function.builtin

    math.deg();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^ meta.property support.function.builtin

    math.exp();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^ meta.property support.function.builtin

    math.floor();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^^ meta.property support.function.builtin

    math.fmod();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^ meta.property support.function.builtin

    math.frexp();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^^ meta.property support.function.builtin

    math.ldexp();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^^ meta.property support.function.builtin

    math.log();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^ meta.property support.function.builtin

    math.log10();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^^ meta.property support.function.builtin

    math.max();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^ meta.property support.function.builtin

    math.min();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^ meta.property support.function.builtin

    math.modf();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^ meta.property support.function.builtin

    math.pow();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^ meta.property support.function.builtin

    math.rad();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^ meta.property support.function.builtin

    math.random();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^^^ meta.property support.function.builtin

    math.randomseed();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^^^^^^^ meta.property support.function.builtin

    math.sin();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^ meta.property support.function.builtin

    math.sinh();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^ meta.property support.function.builtin

    math.sqrt();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^ meta.property support.function.builtin

    math.tan();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^ meta.property support.function.builtin

    math.tanh();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^ meta.property support.function.builtin

    math.tointeger();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^^^^^^ meta.property support.function.builtin

    math.type();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^^ meta.property support.function.builtin

    math.ult();
--  ^^^^ support.constant.builtin
--      ^ punctuation.accessor
--       ^^^ meta.property support.function.builtin

    io;
--  ^^ support.constant.builtin

    io.stderr;
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--      ^^^^^ meta.property support.constant.builtin

    io.stdin;
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--      ^^^^ meta.property support.constant.builtin

    io.stdout;
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--      ^^^^^ meta.property support.constant.builtin

    io.close();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^ meta.property support.function.builtin

    io.flush();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^ meta.property support.function.builtin

    io.input();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^ meta.property support.function.builtin

    io.lines();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^ meta.property support.function.builtin

    io.open();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^ meta.property support.function.builtin

    io.output();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^^ meta.property support.function.builtin

    io.popen();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^ meta.property support.function.builtin

    io.read();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^ meta.property support.function.builtin

    io.tmpfile();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^^^ meta.property support.function.builtin

    io.type();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^ meta.property support.function.builtin

    io.write();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^ meta.property support.function.builtin

    os;
--  ^^ support.constant.builtin

    os.clock();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^ meta.property support.function.builtin

    os.date();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^ meta.property support.function.builtin

    os.difftime();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^^^^ meta.property support.function.builtin

    os.execute();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^^^ meta.property support.function.builtin

    os.exit();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^ meta.property support.function.builtin

    os.getenv();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^^ meta.property support.function.builtin

    os.remove();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^^ meta.property support.function.builtin

    os.rename();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^^ meta.property support.function.builtin

    os.setlocale();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^^^^^ meta.property support.function.builtin

    os.time();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^ meta.property support.function.builtin

    os.tmpname();
--  ^^ support.constant.builtin
--    ^ punctuation.accessor
--     ^^^^^^^ meta.property support.function.builtin

    debug;
--  ^^^^^ support.constant.builtin

    debug.debug();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^ meta.property support.function.builtin

    debug.getfenv();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^ meta.property support.function.builtin

    debug.gethook();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^ meta.property support.function.builtin

    debug.getinfo();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^ meta.property support.function.builtin

    debug.getlocal();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^^ meta.property support.function.builtin

    debug.getmetatable();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^^^^^^ meta.property support.function.builtin

    debug.getregistry();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^^^^^ meta.property support.function.builtin

    debug.getupvalue();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^^^^ meta.property support.function.builtin

    debug.getuservalue();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^^^^^^ meta.property support.function.builtin

    debug.setfenv();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^ meta.property support.function.builtin

    debug.sethook();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^ meta.property support.function.builtin

    debug.setlocal();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^^ meta.property support.function.builtin

    debug.setmetatable();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^^^^^^ meta.property support.function.builtin

    debug.setupvalue();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^^^^ meta.property support.function.builtin

    debug.setuservalue();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^^^^^^ meta.property support.function.builtin

    debug.traceback();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^^^ meta.property support.function.builtin

    debug.upvalueid();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^^^ meta.property support.function.builtin

    debug.upvaluejoin();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^^^^^ meta.property support.function.builtin

    bit32;
--  ^^^^^ support.constant.builtin

    bit32.arshift();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^ meta.property support.function.builtin

    bit32.band();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^ meta.property support.function.builtin

    bit32.bnot();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^ meta.property support.function.builtin

    bit32.bor();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^ meta.property support.function.builtin

    bit32.btest();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^ meta.property support.function.builtin

    bit32.bxor();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^ meta.property support.function.builtin

    bit32.extract();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^ meta.property support.function.builtin

    bit32.lrotate();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^ meta.property support.function.builtin

    bit32.lshift();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^ meta.property support.function.builtin

    bit32.replace();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^ meta.property support.function.builtin

    bit32.rrotate();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^^ meta.property support.function.builtin

    bit32.rshift();
--  ^^^^^ support.constant.builtin
--       ^ punctuation.accessor
--        ^^^^^^ meta.property support.function.builtin
