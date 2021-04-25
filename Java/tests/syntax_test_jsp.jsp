// SYNTAX TEST "Packages/Java/HTML (JSP).sublime-syntax"
// <- text.html.jsp - source.java.embedded.jsp
<!DOCTYPE html>
<html>
<head>
    <title></title>
//  ^^^^^^^^^^^^^^^ meta.tag

    <style type="text/css">
//  ^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.style.begin.html

        @media <% print(myMedia) %> {
//      ^^^^^^ meta.at-rule.media.css keyword.control.directive.css
//             ^^^^^^^^^^^^^^^^^^^^ meta.at-rule.media.css meta.embedded.scriptlet.jsp
//                                  ^ meta.at-rule.media.css meta.block.css punctuation.section.block.begin.css
        }

        tr.<% print(myClass); %> {
//      ^^^ meta.selector.css - meta.embedded
//         ^^^^^^^^^^^^^^^^^^^^^ meta.selector.css meta.embedded.scriptlet.jsp
//                               ^ - meta.selector - meta.embedded
//         ^^ punctuation.section.embedded.begin.jsp
//                            ^^ punctuation.section.embedded.end.jsp
            color: <% print("<\%foo%\>"); %>;
//          ^^^^^ support.type.property-name.css
//               ^ punctuation.separator.key-value.css
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.property-value.css meta.embedded.scriptlet.jsp
//                                          ^ - meta.embedded
//                 ^^ punctuation.section.embedded.begin.jsp
//                    ^^^^^ variable.function.java
//                           ^^^ constant.character.escape.jsp
//                                 ^^^ constant.character.escape.jsp
//                                        ^^ punctuation.section.embedded.end.jsp
        }
    </style>
//  ^^^^^^^^ meta.tag.style.end.html

    <script type="text/javascript">
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.script.begin.html
        <% if (true) { %>
//      ^^^^^^^^^^^^^^^^^ meta.embedded.scriptlet.jsp
//      ^^ punctuation.section.embedded.begin.jsp - source.java.embedded.jsp
//        ^^^^^^^^^^^^^ source.java.embedded.jsp
//                     ^^ punctuation.section.embedded.end.jsp - source.java.embedded.jsp

            if (true) { <% print ("hello%\>") %> }
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.js.embedded.html meta.conditional.js
//                      ^^^^^^^^^^^^^^^^^^^^^^^^ meta.embedded.scriptlet.jsp
//                      ^^ punctuation.section.embedded.begin.jsp - source.java.embedded.jsp
//                        ^^^^^^^^^^^^^^^^^^^^ source.java.embedded.jsp
//                                      ^^^ constant.character.escape.jsp
//                                            ^^ punctuation.section.embedded.end.jsp - source.java.embedded.jsp

        <% } else { %>
//      ^^^^^^^^^^^^^^ meta.embedded.scriptlet.jsp
//      ^^ punctuation.section.embedded.begin.jsp - source.java.embedded.jsp
//        ^^^^^^^^^^ source.java.embedded.jsp
//                  ^^ punctuation.section.embedded.end.jsp - source.java.embedded.jsp

            console.write("yep");
        <% } %>
//      ^^^^^^^ meta.embedded.scriptlet.jsp
//      ^^ punctuation.section.embedded.begin.jsp - source.java.embedded.jsp
//        ^^^ source.java.embedded.jsp
//           ^^ punctuation.section.embedded.end.jsp - source.java.embedded.jsp

    </script>
//  ^^^^^^^^^ meta.tag.script.end.html
</head>
<body>

    <%-- This is a comment --%>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.jsp


    <!--
    ---------------------------------------------------------------------------
    -- DIRECTIVE TESTS
    ---------------------------------------------------------------------------
    -->

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


    <!--
    ---------------------------------------------------------------------------
    -- DECLARATION TESTS
    ---------------------------------------------------------------------------
    -->

    <%! int i = 0; %>
// ^ - meta
//  ^^^ meta.embedded.declaration.jsp - source.java.embedded.jsp
//     ^^^^^^^^^^^^ meta.embedded.declaration.jsp source.java.embedded.jsp - source.java source.java
//                 ^^ meta.embedded.declaration.jsp - source.java.embedded.jsp
//                   ^ - meta
//  ^^^ punctuation.section.embedded.begin.jsp
//      ^^^ storage.type.primitive.java
//                 ^^ punctuation.section.embedded.end.jsp


    <!--
    ---------------------------------------------------------------------------
    -- EXPRESSION TESTS
    ---------------------------------------------------------------------------
    -->

    The map file has <font color="<%=color.blue()%>"><%= map.size() %></font> entries.
//  ^^^^^^^^^^^^^^^^^ - meta
//                   ^^^^^^ meta.tag.inline.any.html - meta.attribute-with-value.html
//                         ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.inline.any.html meta.attribute-with-value.html
//                               ^ meta.string.html - meta.interpolation
//                                ^^^^^^^^^^^^^^^^^ meta.string.html meta.interpolation.html
//                                                 ^ meta.string.html - meta.interpolation
//                                ^^^ meta.embedded.expression.jsp punctuation.section.embedded.begin.jsp - source.java
//                                   ^^^^^^^^^^^^ meta.embedded.expression.jsp source.java.embedded.jsp - source.java source.java
//                                               ^^ meta.embedded.expression.jsp punctuation.section.embedded.end.jsp - source.java
//                                                  ^ meta.tag.inline.any.html - meta.attribute-with-value.html
//                                                   ^^^ meta.embedded.expression.jsp punctuation.section.embedded.begin.jsp - source.java
//                                                      ^^^^^^^^^^^^ meta.embedded.expression.jsp source.java.embedded.jsp
//                                                                  ^^ meta.embedded.expression.jsp punctuation.section.embedded.end.jsp - source.java
//                                                                    ^^^^^^^ meta.tag.inline.any.html
//                                                                           ^^^^^^^^^ - meta


    <!--
    ---------------------------------------------------------------------------
    -- SCRIPTLET TESTS
    ---------------------------------------------------------------------------
    -->

    <%
//  ^^ punctuation.section.embedded.begin.jsp - source.java.embedded.jsp
//    ^ source.java.embedded.jsp - source.java source.java
    if (!foo && !bar) {
//  ^^ keyword.control.conditional.if.java
//      ^ keyword.operator.logical.java
//           ^^ keyword.operator.logical.java
    %><div style="width: <%=with%>"></div><%
//  ^^ punctuation.section.embedded.end.jsp - source.java.embedded.jsp
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
//                          ^^^^ source.java.embedded.jsp
//                              ^^ punctuation.section.embedded.end.jsp - source.java.embedded
//                                ^ string.quoted.double punctuation.definition.string.end.html
//                                 ^ punctuation.definition.tag.end.html
//                                        ^^ punctuation.section.embedded.begin.jsp - source.java.embedded.jsp
        if (foot.shouldBe()) {
//      ^^ keyword.control.conditional.if.java
            boolean test = false;
//          ^^^^^^^ storage.type
//                         ^^^^^ constant
            %>
//          ^^ punctuation.section.embedded.end.jsp - source.java.embedded.jsp
//            ^ text.html.jsp - source.java.embedded.jsp

            <%-- This is a comment --%>
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.jsp
            <% int aNumber = 0; // this scriptlet should close %>
//                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.java
//                                                             ^^ punctuation.section.embedded.end.jsp

            <div style="width: 90%"></div>
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
            <%
//          ^^ punctuation.section.embedded.begin.jsp - source.java.embedded.jsp
        }
//      ^ - invalid.illegal.stray-brace-end
    }
//  ^ - invalid.illegal.stray-brace-end
    %>
//  ^^ punctuation.section.embedded.end.jsp - source.java.embedded.jsp
//    ^ text.html.jsp - source.java.embedded.jsp


    <!--
    ---------------------------------------------------------------------------
    -- JSP DIRECTIVE TAG TESTS
    ---------------------------------------------------------------------------
    -->

    <!-- Note: Stray closing tags are highlighted normally. -->
    </jsp:directive>
//  ^^^^^^^^^^^^^^^^ meta.tag.jsp.directive.end.html - meta.tag.jsp meta.tag.jsp
//  ^^ punctuation.definition.tag.begin.html
//    ^^^ entity.name.tag.namespace.html
//       ^ punctuation.separator.namespace.html
//        ^^^^^^^^^ entity.name.tag.localname.html
//                 ^ punctuation.definition.tag.end.html

    <jsp:directive.include file="foo.bar" />
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.jsp.directive.begin.html - meta.tag.jsp meta.tag.jsp
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

    <jsp:directive.include file="foo.bar"></jsp:directive>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.tag.jsp meta.tag.jsp
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.jsp.directive.begin.html
//                                        ^^^^^^^^^^^^^^^^ meta.tag.jsp.directive.end.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ entity.name.tag.html punctuation.separator.namespace.html
//       ^^^^^^^^^ entity.name.tag.localname.html
//                ^ punctuation.accessor.dot.jsp
//                 ^^^^^^^ keyword.control.directive.jsp
//                         ^^^^ meta.attribute-with-value.html entity.other.attribute-name.html
//                             ^ meta.attribute-with-value.html punctuation.separator.key-value.html
//                              ^^^^^^^^^ meta.attribute-with-value.html string.quoted.double.html
//                                       ^ punctuation.definition.tag.end.html
//                                        ^^ punctuation.definition.tag.begin.html
//                                          ^^^ entity.name.tag.namespace.html
//                                             ^ entity.name.tag.html punctuation.separator.namespace.html
//                                              ^^^^^^^^^ entity.name.tag.localname.html
//                                                       ^ punctuation.definition.tag.end.html


    <!--
    ---------------------------------------------------------------------------
    -- JSP DECLARATION TAG TESTS
    ---------------------------------------------------------------------------
    -->

    <!-- Note: Stray closing tags are highlighted normally. -->
    </jsp:declaration>
//  ^^^^^^^^^^^^^^^^^^ meta.tag.jsp.declaration.end.html - meta.tag.jsp meta.tag.jsp
//  ^^ punctuation.definition.tag.begin.html
//    ^^^ entity.name.tag.namespace.html
//       ^ punctuation.separator.namespace.html
//        ^^^^^^^^^^^ entity.name.tag.localname.html
//                   ^ punctuation.definition.tag.end.html

    <!-- Note: Don't push into Java Syntax after self closing tags. -->
    <jsp:declaration/>int i = 0;</jsp:declaration>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.tag.jsp meta.tag.jsp
//  ^^^^^^^^^^^^^^^^^^ meta.tag.jsp.declaration.begin.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ entity.name.tag.html punctuation.separator.namespace.html
//       ^^^^^^^^^^^ entity.name.tag.localname.html
//                  ^^ punctuation.definition.tag.end.html
//                    ^^^^^^^^^^ - source.java.embedded
//                              ^^^^^^^^^^^^^^^^^^ meta.tag.jsp.declaration.end.html
//                              ^^ punctuation.definition.tag.begin.html
//                                ^^^ entity.name.tag.namespace.html
//                                   ^ entity.name.tag.html punctuation.separator.namespace.html
//                                    ^^^^^^^^^^^ entity.name.tag.localname.html
//                                               ^ punctuation.definition.tag.end.html

    <jsp:declaration>int i = 0;</jsp:declaration>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.tag.jsp meta.tag.jsp
//  ^^^^^^^^^^^^^^^^^ meta.tag.jsp.declaration.begin.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ entity.name.tag.html punctuation.separator.namespace.html
//       ^^^^^^^^^^^ entity.name.tag.localname.html
//                  ^ punctuation.definition.tag.end.html
//                   ^^^^^^^^^^ source.java.embedded.html - source.java source.java
//                   ^^^ storage.type.primitive.java
//                             ^^^^^^^^^^^^^^^^^^ meta.tag.jsp.declaration.end.html
//                             ^^ punctuation.definition.tag.begin.html
//                               ^^^ entity.name.tag.namespace.html
//                                  ^ entity.name.tag.html punctuation.separator.namespace.html
//                                   ^^^^^^^^^^^ entity.name.tag.localname.html
//                                              ^ punctuation.definition.tag.end.html


    <!--
    ---------------------------------------------------------------------------
    -- JSP EXPRESSION TAG TESTS
    ---------------------------------------------------------------------------
    -->

    <jsp:expression>variable</jsp:expression>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.tag.jsp meta.tag.jsp
//  ^^^^^^^^^^^^^^^^ meta.tag.jsp.expression.begin.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ entity.name.tag.html punctuation.separator.namespace.html
//       ^^^^^^^^^^ entity.name.tag.localname.html
//                 ^ punctuation.definition.tag.end.html
//                  ^^^^^^^^ source.java.embedded.html variable.other.java - source.java source.java
//                          ^^^^^^^^^^^^^^^^^ meta.tag.jsp.expression.end.html
//                          ^^ punctuation.definition.tag.begin.html
//                            ^^^ entity.name.tag.namespace.html
//                               ^ entity.name.tag.html punctuation.separator.namespace.html
//                                ^^^^^^^^^^ entity.name.tag.localname.html
//                                          ^ punctuation.definition.tag.end.html

    Good guess, but nope. Try<b><jsp:expression>numguess.getHint()</jsp:expression></b>.
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ - meta
//                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.tag.jsp meta.tag.jsp
//                           ^^^ meta.tag.inline.any.html
//                              ^^^^^^^^^^^^^^^^ meta.tag.jsp.expression.begin.html
//                              ^ punctuation.definition.tag.begin.html
//                               ^^^ entity.name.tag.namespace.html
//                                  ^ entity.name.tag.html punctuation.separator.namespace.html
//                                   ^^^^^^^^^^ entity.name.tag.localname.html
//                                             ^ punctuation.definition.tag.end.html
//                                              ^^^^^^^^^^^^^^^^^^ source.java.embedded.html - source.java source.java
//                                                                ^^^^^^^^^^^^^^^^^ meta.tag.jsp.expression.end.html
//                                                                ^^ punctuation.definition.tag.begin.html
//                                                                  ^^^ entity.name.tag.namespace.html
//                                                                     ^ entity.name.tag.html punctuation.separator.namespace.html
//                                                                      ^^^^^^^^^^ entity.name.tag.localname.html
//                                                                                ^ punctuation.definition.tag.end.html
//                                                                                 ^^^^ meta.tag.inline.any.html

    Good guess, but nope. Try<b><jsp:expression/>numguess.getHint()</jsp:expression></b>.
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ - meta
//                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.tag.jsp meta.tag.jsp
//                           ^^^ meta.tag.inline.any.html
//                              ^^^^^^^^^^^^^^^^ meta.tag.jsp.expression.begin.html
//                              ^ punctuation.definition.tag.begin.html
//                               ^^^ entity.name.tag.namespace.html
//                                  ^ entity.name.tag.html punctuation.separator.namespace.html
//                                   ^^^^^^^^^^ entity.name.tag.localname.html
//                                             ^^ punctuation.definition.tag.end.html
//                                               ^^^^^^^^^^^^^^^^^^ - source.java.embedded
//                                                                 ^^^^^^^^^^^^^^^^^ meta.tag.jsp.expression.end.html
//                                                                 ^^ punctuation.definition.tag.begin.html
//                                                                   ^^^ entity.name.tag.namespace.html
//                                                                      ^ entity.name.tag.html punctuation.separator.namespace.html
//                                                                       ^^^^^^^^^^ entity.name.tag.localname.html
//                                                                                 ^ punctuation.definition.tag.end.html
//                                                                                  ^^^^ meta.tag.inline.any.html


    <!--
    ---------------------------------------------------------------------------
    -- JSP SCRIPTLET TAG TESTS
    ---------------------------------------------------------------------------
    -->

    <!-- Note: Stray closing tags are highlighted normally. -->
    </jsp:scriptlet>
//  ^^^^^^^^^^^^^^^^ meta.tag.jsp.scriptlet.end.html
//  ^^ punctuation.definition.tag.begin.html
//    ^^^ entity.name.tag.namespace.html
//       ^ punctuation.separator.namespace.html
//        ^^^^^^^^^ entity.name.tag.localname.html
//                 ^ punctuation.definition.tag.end.html

    <!-- Note: Don't push into Java Syntax after self closing tags. -->
    <jsp:scriptlet/>int i;</jsp:scriptlet>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.tag.jsp meta.tag.jsp
//  ^^^^^^^^^^^^^^^^ meta.tag.jsp.scriptlet.begin.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ punctuation.separator.namespace.html
//       ^^^^^^^^^ entity.name.tag.localname.html
//                ^^ punctuation.definition.tag.end.html
//                  ^^^^^^ - source
//                        ^^^^^^^^^^^^^^^^ meta.tag.jsp.scriptlet.end.html
//                        ^^ punctuation.definition.tag.begin.html
//                          ^^^ entity.name.tag.namespace.html
//                             ^ punctuation.separator.namespace.html
//                              ^^^^^^^^^ entity.name.tag.localname.html
//                                       ^ punctuation.definition.tag.end.html

    <!--Note: Illegal unescaped less then symbol is not is not handled here. -->
    <jsp:scriptlet>int i = (1 &gt;< 5);</jsp:scriptlet>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.tag.jsp meta.tag.jsp
//  ^^^^^^^^^^^^^^^ meta.tag.jsp.scriptlet.begin.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ punctuation.separator.namespace.html
//       ^^^^^^^^^ entity.name.tag.localname.html
//                ^ punctuation.definition.tag.end.html
//                 ^^^^^^^^^^^^^^^^^^^^ source.java.embedded.html
//                            ^^^^ constant.character.entity.named.html
//                                     ^^^^^^^^^^^^^^^^ meta.tag.jsp.scriptlet.end.html
//                                     ^^ punctuation.definition.tag.begin.html
//                                       ^^^ entity.name.tag.namespace.html
//                                          ^ punctuation.separator.namespace.html
//                                           ^^^^^^^^^ entity.name.tag.localname.html
//                                                    ^ punctuation.definition.tag.end.html

    <!-- Note: HTML doesn't decode entities within CDATA, but it is matched anyway. -->
    <jsp:scriptlet><![CDATA[int i = (1 &gt;< 5);]]></jsp:scriptlet>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.tag.jsp meta.tag.jsp
//  ^^^^^^^^^^^^^^^ meta.tag.jsp.scriptlet.begin.html
//                 ^^^^^^^^^ meta.tag.sgml.cdata.html
//                                              ^^^ meta.tag.sgml.cdata.html
//                                                 ^^^^^^^^^^^^^^^^ meta.tag.jsp.scriptlet.end.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ punctuation.separator.namespace.html
//       ^^^^^^^^^ entity.name.tag.localname.html
//                ^ punctuation.definition.tag.end.html
//                 ^^^ punctuation.definition.tag.begin.html
//                    ^^^^^ keyword.declaration.cdata.html
//                         ^ punctuation.definition.tag.begin.html
//                          ^^^^^^^^^^^^^^^^^^^^ source.java.embedded.html
//                                     ^^^^ constant.character.entity.named.html
//                                              ^^^ punctuation.definition.tag.end.html
//                                                 ^^ punctuation.definition.tag.begin.html
//                                                   ^^^ entity.name.tag.namespace.html
//                                                      ^ punctuation.separator.namespace.html
//                                                       ^^^^^^^^^ entity.name.tag.localname.html
//                                                                ^ punctuation.definition.tag.end.html

    <!--Note: CDATA tags may appear everywhere in the Java code. -->
    <jsp:scriptlet
//  ^^^^^^^^^^^^^^^ meta.tag.jsp.scriptlet.begin.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ punctuation.separator.namespace.html
//       ^^^^^^^^^ entity.name.tag.localname.html
        id="myloop"
//      ^^^^^^^^^^^ meta.attribute-with-value.id.html
//      ^^ entity.other.attribute-name.id.html
//        ^ punctuation.separator.key-value.html
//         ^^^^^^^^ string.quoted.double.html
    >
//^^^ meta.tag.jsp.scriptlet.begin.html
//  ^ punctuation.definition.tag.end.html
//   ^ source.java.embedded.html - meta.tag
        out.println("Starting");
//      ^^^^^^^^^^^^^^^^^^^^^^^^ source.java.embedded.html
        // Note we need to declare CDATA because we don't escape the less than symbol
        <![CDATA[
//      ^^^^^^^^^ source.java.embedded.html meta.tag.sgml.cdata.html
//      ^^^ punctuation.definition.tag.begin.html
//         ^^^^^ keyword.declaration.cdata.html
//              ^ punctuation.definition.tag.begin.html
          for (int i = 1; i<=10; i++) {}
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.java.embedded.html meta.statement.loop.for.java
        ]]>
//      ^^^ source.java.embedded.html meta.tag.sgml.cdata.html punctuation.definition.tag.end.html
        out.println("Done!");
//      ^^^^^^^^^^^^^^^^^^^^^ source.java.embedded.html
    </jsp:scriptlet
//  ^^^^^^^^^^^^^^^ meta.tag.jsp.scriptlet.end.html
//  ^^ punctuation.definition.tag.begin.html
//    ^^^ entity.name.tag.namespace.html
//       ^ punctuation.separator.namespace.html
//        ^^^^^^^^^ entity.name.tag.localname.html
    >
//^^^ meta.tag.jsp.scriptlet.end.html
//   ^ - meta.tag
//  ^ punctuation.definition.tag.end.html


    <!--
    ---------------------------------------------------------------------------
    -- JSP OTHER TAG TESTS
    ---------------------------------------------------------------------------
    -->

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

    <jsp:forward page="/servlet/login" />
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.jsp.other.begin.html - meta.tag.jsp meta.tag.jsp
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ punctuation.separator.namespace.html
//       ^^^^^^^ entity.name.tag.localname.html
//                                     ^^ punctuation.definition.tag.end.html

    <jsp:forward page="/servlet/login">
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.jsp.other.begin.html - meta.tag.jsp meta.tag.jsp
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ punctuation.separator.namespace.html
//       ^^^^^^^ entity.name.tag.localname.html
//                                    ^ punctuation.definition.tag.end.html

        <jsp:param name="username" value="jsmith" />
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.jsp.other.begin.html - meta.tag.jsp meta.tag.jsp
//      ^ punctuation.definition.tag.begin.html
//       ^^^ entity.name.tag.namespace.html
//          ^ punctuation.separator.namespace.html
//           ^^^^^ entity.name.tag.localname.html
//                                                ^^ punctuation.definition.tag.end.html

    </jsp:forward>
//  ^^^^^^^^^^^^^^ meta.tag.jsp.other.end.html - meta.tag.jsp meta.tag.jsp
//  ^^ punctuation.definition.tag.begin.html
//    ^^^ entity.name.tag.namespace.html
//       ^ punctuation.separator.namespace.html
//        ^^^^^^^ entity.name.tag.localname.html
//               ^ punctuation.definition.tag.end.html

    </jsp:root>
//  ^^^^^^^^^^^ meta.tag.jsp.other.end.html - meta.tag.jsp meta.tag.jsp
//  ^^ punctuation.definition.tag.begin.html
//    ^^^ entity.name.tag.namespace.html
//       ^ punctuation.separator.namespace.html
//        ^^^^ entity.name.tag.localname.html
//            ^ punctuation.definition.tag.end.html

    <!--
    ---------------------------------------------------------------------------
    -- JSP TEXT TAG TESTS
    ---------------------------------------------------------------------------
    -->

    Plain text
//  ^^^^^^^^^^ text.html.jsp - meta

    <jsp:text/>Plain<b>text</b></jsp:text>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.tag.jsp meta.tag.jsp
//  ^^^^^^^^^^^ meta.tag.jsp.other.begin.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ punctuation.separator.namespace.html
//       ^^^^ entity.name.tag.localname.html
//           ^^ punctuation.definition.tag.end.html
//                  ^^^ meta.tag.inline.any.html
//                         ^^^^ meta.tag.inline.any.html
//                             ^^^^^^^^^^^ meta.tag.jsp.other.end.html
//                             ^^ punctuation.definition.tag.begin.html
//                               ^^^ entity.name.tag.namespace.html
//                                  ^ punctuation.separator.namespace.html
//                                   ^^^^ entity.name.tag.localname.html
//                                       ^ punctuation.definition.tag.end.html

    <jsp:text>Plain<b>text</b></jsp:text>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.tag.jsp meta.tag.jsp
//  ^^^^^^^^^^ meta.tag.jsp.other.begin.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ punctuation.separator.namespace.html
//       ^^^^ entity.name.tag.localname.html
//           ^ punctuation.definition.tag.end.html
//                 ^^^ meta.tag.inline.any.html
//                        ^^^^ meta.tag.inline.any.html
//                            ^^^^^^^^^^^ meta.tag.jsp.other.end.html
//                            ^^ punctuation.definition.tag.begin.html
//                              ^^^ entity.name.tag.namespace.html
//                                 ^ punctuation.separator.namespace.html
//                                  ^^^^ entity.name.tag.localname.html
//                                      ^ punctuation.definition.tag.end.html

    <jsp:text>Plain&lt;b&gt;text</b></jsp:other><b>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.tag.jsp meta.tag.jsp
//  ^^^^^^^^^^ meta.tag.jsp.other.begin.html
//  ^ punctuation.definition.tag.begin.html
//   ^^^ entity.name.tag.namespace.html
//      ^ punctuation.separator.namespace.html
//       ^^^^ entity.name.tag.localname.html
//           ^ punctuation.definition.tag.end.html
//                 ^^^^ constant.character.entity.named.html
//                      ^^^^ constant.character.entity.named.html
//                              ^^^^ meta.tag.inline.any.html
//                                  ^^^^^^^^^^^^ meta.tag.jsp.other.end.html
//                                  ^^ punctuation.definition.tag.begin.html
//                                    ^^^ entity.name.tag.namespace.html
//                                       ^ punctuation.separator.namespace.html
//                                        ^^^^^ entity.name.tag.localname.html
//                                             ^ punctuation.definition.tag.end.html
//                                              ^^^ meta.tag.inline.any.html
</body>
</html>
