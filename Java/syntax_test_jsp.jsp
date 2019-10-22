// SYNTAX TEST "Packages/Java/Java Server Pages (JSP).sublime-syntax"
// <- text.html.jsp - source.java.embedded.html
<!DOCTYPE html>
<html>
<head>
    <title></title>
//  ^^^^^^^^^^^^^^^ meta.tag
</head>
<body>
    <%@ include file="foo.bar" %>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.directive
//  ^^^ punctuation.section.directive
//                             ^^ punctuation.section.directive

    Plain text
//  ^^^^^^^^^^ text.html.jsp - meta

    <%-- This is a comment --%>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.jsp
    <%
//  ^^ punctuation.section.embedded.begin.jsp - source.java.embedded.html
//    ^ source.java.embedded.html
    if (!foo && !bar) {
//  ^^ keyword.control.conditional.if.java
//      ^ keyword.operator.logical.java
//           ^^ keyword.operator.logical.java
    %><div style="width: 90%"></div><%
//  ^^ punctuation.section.embedded.end.jsp - source.java.embedded.html
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//                                  ^^ punctuation.section.embedded.begin.jsp - source.java.embedded.html
        if (foot.shouldBe()) {
//      ^^ keyword.control.conditional.if.java
            boolean test = false;
//          ^^^^^^^ storage.type
//                         ^^^^^ constant
            %>
//          ^^ punctuation.section.embedded.end.jsp - source.java.embedded.html
//            ^ text.html.jsp - source.java.embedded.html

            <%-- This is a comment --%>
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.jsp
            <% int aNumber = 0; // this scriptlet should close %>
//                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.java
//                                                             ^^ punctuation.section.embedded.end.jsp


            <div style="width: 90%"></div>
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
            <%
//          ^^ punctuation.section.embedded.begin.jsp - source.java.embedded.html
        }
//      ^ - invalid.illegal.stray-brace-end
    }
//  ^ - invalid.illegal.stray-brace-end
    %>
//  ^^ punctuation.section.embedded.end.jsp - source.java.embedded.html
//    ^ text.html.jsp - source.java.embedded.html
</body>
</html>
