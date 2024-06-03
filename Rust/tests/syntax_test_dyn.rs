// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

// dyn trait
fn f(x: dyn T, y: Box<dyn T + 'static>, z: &dyn T,
//      ^^^ meta.function.parameters storage.type.trait
//                    ^^^ meta.function.parameters meta.generic storage.type.trait
//                                          ^^^ meta.function.parameters storage.type.trait
     f: &dyn Fn(CrateNum) -> bool) -> dyn T {
//       ^^^ meta.function.parameters storage.type.trait
//                                    ^^^ meta.function.return-type storage.type.trait
    let x: &(dyn 'static + Display) = &BYTE;
//           ^^^ meta.group storage.type.trait
    let y: Box<dyn Display + 'static> = Box::new(BYTE);
//             ^^^ meta.generic storage.type.trait
    let _: &dyn (Display) = &BYTE;
//          ^^^ storage.type.trait
    let _: &dyn (::std::fmt::Display) = &BYTE;
//          ^^^ storage.type.trait
    const DT: &'static dyn C = &V;
//                     ^^^ storage.type.trait
    struct S {
        f: dyn T
//         ^^^ meta.struct storage.type.trait
    }
    type D4 = dyn (::module::Trait);
//            ^^^ storage.type.trait
}

// dyn is not a keyword in all situations (a "weak" keyword).
type A0 = dyn;
//        ^^^ -storage.type.trait
type A1 = dyn::dyn;
//        ^^^^^ meta.path -storage.type.trait
//             ^^^ -storage.type.trait
type A2 = dyn<dyn, dyn>;
//        ^^^ -storage.type.trait
//            ^^^ meta.generic -storage.type.trait
//                 ^^^ meta.generic -storage.type.trait
// This is incorrect.  `identifier` should not match on the keyword `as`.
// However, avoiding keywords is a little complicated and slow.
type A3 = dyn<<dyn as dyn>::dyn>;
//        ^^^ -storage.type.trait
//           ^^^^^^^^^^^^^^^^^^^ meta.generic
//            ^^^^^^^^^^^^ meta.generic meta.generic
//             ^^^ storage.type.trait
//                    ^^^ -storage.type.trait
//                          ^^^ -storage.type.trait
