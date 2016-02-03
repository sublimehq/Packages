/// SYNTAX TEST "Packages/User/csharpSyntax/csharp.sublime-syntax"

List<int> l;
/// <- variable.other.type
///   ^ support.type
///       ^ entity.name.variable
List<List<int>> ll;
/// <- variable.other.type
///   ^ variable.other.type
///         ^ support.type
///             ^ entity.name.variable
List<List<List<int>>> lll;
/// <- variable.other.type
///   ^ variable.other.type
///         ^ variable.other.type
///             ^ support.type
///                    ^ entity.name.variable
     x = 1;
///  ^ variable.other.cs
     int x = 1;
///  ^ support.type
///      ^ entity.name.variable
     int x1 = 1, x2 = 2;
///  ^ support.type
///      ^ entity.name.variable
///               ^ entity.name.variable

     foo<int>(a);
///   ^ variable.function
///       ^ support.type

Foo.List<a> l;
///         ^ entity.name.variable
Foo.l + 1;
/// ^ variable.other
Foo<a>.List l;
///     ^ variable.other.type
///         ^ entity.name.variable
