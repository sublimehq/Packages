// SYNTAX TEST "Packages/Java/Java.sublime-syntax"

package apple;
// <- source.java meta.package.java keyword.other.package.java
//      ^ meta.package.java support.other.package.java
//           ^ meta.package.java punctuation.terminator.java

import a.b.Class;
// <- meta.import.java keyword.other.import.java
//     ^ meta.import.java support.class.import.java
//              ^ meta.import.java punctuation.terminator.java

import static a.b.Class.fooMethod;
// <- meta.import.java keyword.other.import.java
//     ^  meta.import.java storage.modifier.static.java
//            ^ meta.import.java support.function.import.java
//                               ^ meta.import.java punctuation.terminator.java

public class SyntaxTest {
    private String memberString = "Hello";
    private String memberString2 = new String("Hello");
    private String memberString3 = String.valueOf("Hello");
//                                ^ meta.assignment.rhs.java
//                                                 ^ string.quoted.double.java
    private int memberLpos = memberString3.indexOf("l");
//                                                     ^ punctuation.terminator.java

    public static void main(String... args) {
        String[] strings = new String[5];
//                        ^ meta.assignment.rhs.java
//                         ^ keyword.control.new.java
        printList(Arrays.stream(args)
            .collect(Collectors.toCollection(ArrayList::new)));
//                                                      ^ meta.method.body.java - keyword.control.new.java
        anotherMethod();
        try (Stream<String> lines = Files.lines(path)) {
//                                 ^ meta.assignment.rhs.java
//                                                   ^ meta.method.body.java - meta.assignment.rhs.java
            lines.forEach(System.out::println);
        }
        for (int i = 0; i < 10; i+= 2) {
            System.out.println(i);
        }
    }

    private static void printList(List<String> args) {
        args.stream().forEach(System.out::println);
    }

    private static void anotherMethod() throws MyException {
//                                      ^ storage.modifier
        throw new MyException
                ("hello (world)");
//                              ^ - string
    }
}

class AnyClass {
    int bar; // this comment() is recognized as code
    //       ^ comment.line

    public void anyMethod(String finality){
        //                        ^ variable.parameter - storage.modifier
        System.out.println("Printed: " + finality);
    }
}

public enum FooBaz {
    // This is a test
//  ^ comment.line
    UPLOAD("foo bar"), /* This a comment */
//  ^ constant.other.enum
//                     ^ comment.block
    DELETE("baz"),
//  ^ constant.other.enum
    // Comment here
//  ^ comment.line
}
