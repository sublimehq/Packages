// SYNTAX TEST "Packages/Java/syntaxes/Java.sublime-syntax"

public class SyntaxTest {
    public static void main(String... args) {
        String[] strings = new String[5];
//                         ^ keyword.control.new.java
        printList(Arrays.stream(args)
            .collect(Collectors.toCollection(ArrayList::new)));
//                                                      ^ meta.method.body.java - keyword.control.new.java
        anotherMethod();
    }

    private static void printList(List<String> args) {
        args.stream().forEach(System.out::println);
    }

    private static void anotherMethod() {

    }
}
