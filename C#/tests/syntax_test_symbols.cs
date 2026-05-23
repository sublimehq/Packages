/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

/**
 * Unions
 */

union MyUnion(Type1, Type2);
///   @@@@@@@ definition

union MyUnion(Type1, Type2) {
///   @@@@@@@ definition

    union MyUnion(Type1, Type2)
///       @@@@@@@ definition

    int method(type arg) { return 0; }
///     @@@@@@ local-definition "  method"
///     @@@@@@ global-definition

}
