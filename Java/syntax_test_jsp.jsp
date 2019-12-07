// SYNTAX TEST "Packages/Java/Java Server Pages (JSP).sublime-syntax"
// <- text.html.jsp - source.java.embedded.html
<!DOCTYPE html>
<html>
<head>
    <title></title>
//  ^^^^^^^^^^^^^^^ meta.tag
</head>
<body>

    <%-- This is a comment --%>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.jsp

    <!-- ROOT TESTS -->

    <jsp:root
//  ^^^^^^^^^^ meta.tag.jsp.other.begin.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ entity.name.tag.html punctuation.separator.namespace.html
//       ^^^^ entity.name.tag.localname.html
        xmlns:jsp="http://java.sun.com/JSP/Page"
        xmlns:public="http://www.jspcentral.com/tags"
        version="1.2"
// ^^^^^^^^^^^^^^^^^^^ meta.tag.jsp.other.begin.html
//      ^^^^^^^^^^^^^ meta.attribute-with-value.html
//      ^^^^^^^ entity.other.attribute-name.html
//             ^ punctuation.separator.key-value.html
//              ^^^^^ string.quoted.double.html
    >
//  ^ meta.tag.jsp.other.begin.html punctuation.definition.tag.end.html

    </jsp:root>
//  ^^^^^^^^^^^ meta.tag.jsp.other.end.html
//  ^^ punctuation.definition.tag.begin.html
//    ^^^ entity.name.tag.namespace.html
//       ^ punctuation.separator.namespace.html
//        ^^^^ entity.name.tag.localname.html
//            ^ punctuation.definition.tag.end.html

    <!-- DIRECTIVE TESTS -->

    <jsp:directive.include file="foo.bar" />
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.jsp.directive.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ entity.name.tag.html punctuation.separator.namespace.html
//       ^^^^^^^^^ entity.name.tag.localname.html
//                ^ punctuation.accessor.dot.jsp
//                 ^^^^^^^ keyword.control.directive.jsp
//                         ^^^^ meta.attribute-with-value.html entity.other.attribute-name.html
//                             ^ meta.attribute-with-value.html punctuation.separator.key-value.html
//                              ^^^^^^^^^ meta.attribute-with-value.html string.quoted.double.html
//                                        ^^ punctuation.definition.tag.end.html

    <%@ include file="foo.bar" %>
// ^ - meta
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.embedded.directive.jsp
//                               ^ - meta
//  ^^^ punctuation.section.embedded.begin.jsp
//      ^^^^^^^ keyword.control.directive.jsp
//              ^^^^ entity.other.attribute-name.jsp
//                  ^ punctuation.separator.key-value.jsp
//                   ^^^^^^^^^ string.quoted.double.jsp
//                             ^^ punctuation.section.embedded.end.jsp

    <!-- DECLARATION TESTS -->

    <jsp:declaration>int i = 0;</jsp:declaration>
//  ^^^^^^^^^^^^^^^^^ meta.tag.jsp.declaration.begin.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ entity.name.tag.html punctuation.separator.namespace.html
//       ^^^^^^^^^^^ entity.name.tag.localname.html
//                  ^ punctuation.definition.tag.end.html
//                   ^^^^^^^^^^ source.java.embedded.html
//                   ^^^ storage.type.primitive.java
//                             ^^^^^^^^^^^^^^^^^^ meta.tag.jsp.declaration.end.html
//                             ^^ punctuation.definition.tag.begin.html
//                               ^^^ entity.name.tag.namespace.html
//                                  ^ entity.name.tag.html punctuation.separator.namespace.html
//                                   ^^^^^^^^^^^ entity.name.tag.localname.html
//                                              ^ punctuation.definition.tag.end.html

    <%! int i = 0; %>
// ^ - meta
//  ^^^ meta.embedded.declaration.jsp - source.java.embedded.html
//     ^^^^^^^^^^^^ meta.embedded.declaration.jsp source.java.embedded.html
//                 ^^ meta.embedded.declaration.jsp - source.java.embedded.html
//                   ^ - meta
//  ^^^ punctuation.section.embedded.begin.jsp
//      ^^^ storage.type.primitive.java
//                 ^^ punctuation.section.embedded.end.jsp

    <!-- EXPRESSIONS TESTS -->

    The map file has <font color="<%=color.blue()%>"><%= map.size() %></font> entries.
//  ^^^^^^^^^^^^^^^^^ - meta
//                   ^^^^^^ meta.tag.inline.any.html - meta.attribute-with-value.html
//                         ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.any.html meta.attribute-with-value.html
//                                ^^^ meta.embedded.expression.jsp punctuation.section.embedded.begin.jsp - source.java
//                                   ^^^^^^^^^^^^ meta.embedded.expression.jsp source.java.embedded.html
//                                               ^^ meta.embedded.expression.jsp punctuation.section.embedded.end.jsp - source.java
//                                                  ^ meta.tag.inline.any.html - meta.attribute-with-value.html
//                                                   ^^^ meta.embedded.expression.jsp punctuation.section.embedded.begin.jsp - source.java
//                                                      ^^^^^^^^^^^^ meta.embedded.expression.jsp source.java.embedded.html
//                                                                  ^^ meta.embedded.expression.jsp punctuation.section.embedded.end.jsp - source.java
//                                                                    ^^^^^^^ meta.tag.inline.any.html
//                                                                           ^^^^^^^^^ - meta

    Good guess, but nope. Try<b><jsp:expression>numguess.getHint()</jsp:expression></b>.
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ - meta
//                           ^^^ meta.tag.inline.any.html
//                              ^^^^^^^^^^^^^^^^ meta.tag.jsp.expression.begin.html
//                              ^ punctuation.definition.tag.begin.html
//                               ^^^ entity.name.tag.namespace.html
//                                  ^ entity.name.tag.html punctuation.separator.namespace.html
//                                   ^^^^^^^^^^ entity.name.tag.localname.html
//                                             ^ punctuation.definition.tag.end.html
//                                              ^^^^^^^^^^^^^^^^^^ source.java.embedded.html
//                                                                ^^^^^^^^^^^^^^^^^ meta.tag.jsp.expression.end.html
//                                                                ^^ punctuation.definition.tag.begin.html
//                                                                  ^^^ entity.name.tag.namespace.html
//                                                                     ^ entity.name.tag.html punctuation.separator.namespace.html
//                                                                      ^^^^^^^^^^ entity.name.tag.localname.html
//                                                                                ^ punctuation.definition.tag.end.html
//                                                                                 ^^^^ meta.tag.inline.any.html

    <!-- FORWARD TESTS -->

    <jsp:forward page="/servlet/login" />
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.jsp.other.begin.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ punctuation.separator.namespace.html
//       ^^^^^^^ entity.name.tag.localname.html
//                                     ^^ punctuation.definition.tag.end.html

    <jsp:forward page="/servlet/login">
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.jsp.other.begin.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ punctuation.separator.namespace.html
//       ^^^^^^^ entity.name.tag.localname.html
//                                    ^ punctuation.definition.tag.end.html

        <jsp:param name="username" value="jsmith" />
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.jsp.other.begin.html
//      ^ punctuation.definition.tag.begin.html
//       ^^^ entity.name.tag.namespace.html
//          ^ punctuation.separator.namespace.html
//           ^^^^^ entity.name.tag.localname.html
//                                                ^^ punctuation.definition.tag.end.html

    </jsp:forward>
//  ^^^^^^^^^^^^^^ meta.tag.jsp.other.end.html
//  ^^ punctuation.definition.tag.begin.html
//    ^^^ entity.name.tag.namespace.html
//       ^ punctuation.separator.namespace.html
//        ^^^^^^^ entity.name.tag.localname.html
//               ^ punctuation.definition.tag.end.html

    <!-- SCRIPTLET TESTS -->

    <%
//  ^^ punctuation.section.embedded.begin.jsp - source.java.embedded.html
//    ^ source.java.embedded.html
    if (!foo && !bar) {
//  ^^ keyword.control.conditional.if.java
//      ^ keyword.operator.logical.java
//           ^^ keyword.operator.logical.java
    %><div style="width: <%=with%>"></div><%
//  ^^ punctuation.section.embedded.end.jsp - source.java.embedded.html
//    ^^^^^ meta.tag.block.any.html - meta.attribute-with-value
//         ^^^^^^^ meta.tag.block.any.html meta.attribute-with-value.style.html - source.css
//                ^^^^^^^ meta.tag.block.any.html meta.attribute-with-value.style.html source.css - meta.expression
//                       ^^^^^^^^^ meta.tag.block.any.html meta.attribute-with-value.style.html source.css meta.embedded.expression.jsp
//                                ^ meta.tag.block.any.html meta.attribute-with-value.style.html - source.css
//                                 ^^^^^^^ meta.tag.block.any.html - meta.attribute-with-value.style.html - source.css
//    ^ punctuation.definition.tag.begin.html
//     ^^^ entity.name.tag.block.any.html
//         ^^^^^ entity.other.attribute-name.style.html
//              ^ punctuation.separator.key-value.html
//               ^ string.quoted.double punctuation.definition.string.begin.html
//                ^^^^^ meta.property-name.css support.type.property-name.css
//                     ^ punctuation.separator.key-value.css
//                       ^^^ punctuation.section.embedded.begin.jsp - source.java.embedded
//                          ^^^^ source.java.embedded.html
//                              ^^ punctuation.section.embedded.end.jsp - source.java.embedded
//                                ^ string.quoted.double punctuation.definition.string.end.html
//                                 ^ punctuation.definition.tag.end.html
//                                        ^^ punctuation.section.embedded.begin.jsp - source.java.embedded.html
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


    Plain text
//  ^^^^^^^^^^ text.html.jsp - meta

    <jsp:text>Plain text</jsp:text>
//  ^^^^^^^^^^ meta.tag.jsp.text.begin.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ punctuation.separator.namespace.html
//       ^^^^ entity.name.tag.localname.html
//           ^ punctuation.definition.tag.end.html
//                      ^^^^^^^^^^^ meta.tag.jsp.text.end.html
//                      ^^ punctuation.definition.tag.begin.html
//                        ^^^ entity.name.tag.namespace.html
//                           ^ punctuation.separator.namespace.html
//                            ^^^^ entity.name.tag.localname.html
//                                ^ punctuation.definition.tag.end.html

</body>
</html>
