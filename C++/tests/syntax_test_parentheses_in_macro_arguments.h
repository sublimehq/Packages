// SYNTAX TEST "Packages/C++/C++.sublime-syntax"

// Test: macros with nested parentheses (e.g. Unreal Engine USTRUCT)
// should not break highlighting of subsequent struct members.

struct MyPlainStruct
{
public:
// <- storage.modifier.c++
};

USTRUCT(meta = (Abstract))
// <- meta.assumed-macro.c variable.function.assumed-macro.c
struct MyUStruct
// <- keyword.declaration.struct.type.c++
//     ^ meta.struct.c++ entity.name.struct.c++
{
public:
// <- storage.modifier.c++
};
