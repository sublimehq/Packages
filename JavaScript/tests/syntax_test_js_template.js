/* SYNTAX TEST "Packages/JavaScript/JavaScript.sublime-syntax" */

/*
 * HTML Templates
 */

var html = /* html */ ` <p>${content}</p> `
/*                    ^^^^^^^^^^^^^^^^^^^^^ meta.string.template.js */
/*                    ^ string.quoted.other.js punctuation.definition.string.begin.js - text.html.embedded */
/*                     ^^^^^^^^^^^^^^^^^^^ text.html.embedded.js - string */
/*                                        ^ string.quoted.other.js punctuation.definition.string.end.js - text.html.embedded */

var html = html` <p>${content}</p> `
/*             ^^^^^^^^^^^^^^^^^^^^^ meta.string.template.js */
/*             ^ string.quoted.other.js punctuation.definition.string.begin.js - text.html.embedded */
/*              ^^^^^^^^^^^^^^^^^^^ text.html.embedded.js - string */
/*                                 ^ string.quoted.other.js punctuation.definition.string.end.js - text.html.embedded */

var html = html`
/*         ^^^^ variable.function.tagged-template */
/*             ^^ meta.string.template.js string.quoted.other.js */
/*             ^ punctuation.definition.string.begin.js */
/*              ^ - text.html.embedded */

    <script type="text/javascript">
        var ${name} = "Value ${interpol}"
    /*      ^^^^^^^ meta.interpolation.js */
    /*                ^^^^^^^ source.js.embedded.html meta.string.js string.quoted.double.js */
    /*                       ^^^^^^^^^^^ source.js.embedded.html meta.string.js meta.interpolation.js */
    /*                                  ^ source.js.embedded.html meta.string.js string.quoted.double.js */
    </script>

    <script type="text/json">
        {
    /*  ^ source.json.embedded.html meta.mapping.json punctuation.section.mapping.begin.json */

            "key1": "val${ue}",
    /*      ^^^^^^ source.json.embedded.html meta.mapping.key.json string.quoted.double.json */
    /*            ^ source.json.embedded.html meta.mapping.json punctuation.separator.key-value.json */
    /*              ^^^^ source.json.embedded.html meta.mapping.value.json meta.string.json string.quoted.double.json */
    /*                  ^^^^^ source.json.embedded.html meta.mapping.value.json meta.string.json meta.interpolation.js */
    /*                       ^ source.json.embedded.html meta.mapping.value.json meta.string.json string.quoted.double.json */
    /*                        ^ source.json.embedded.html meta.mapping.json punctuation.separator.sequence.json */

            ${key}: ${value},
    /*      ^^^^^^ source.json.embedded.html meta.mapping.json meta.interpolation.js */
    /*            ^ source.json.embedded.html meta.mapping.json punctuation.separator.key-value.json */
    /*              ^^^^^^^^ source.json.embedded.html meta.mapping.value.json meta.interpolation.js */
    /*                      ^ source.json.embedded.html meta.mapping.json punctuation.separator.sequence.json */

            "key2": [${val1}, "val${no}"],
    /*      ^^^^^^ source.json.embedded.html meta.mapping.key.json string.quoted.double.json */
    /*            ^ source.json.embedded.html meta.mapping.json punctuation.separator.key-value.json */
    /*              ^^^^^^^^^^^^^^^^^^^^^ source.json.embedded.html meta.mapping.value.json meta.sequence.json */
    /*              ^ punctuation.section.sequence.begin.json */
    /*               ^^^^^^^ meta.interpolation.js */
    /*                      ^ punctuation.separator.sequence.json */
    /*                        ^^^^ meta.string.json string.quoted.double.json */
    /*                            ^^^^^ meta.string.json meta.interpolation.js */
    /*                                 ^ meta.string.json string.quoted.double.json */
    /*                                  ^ punctuation.section.sequence.end.json */
    /*                                   ^ punctuation.separator.sequence.json */
        }
    /*  ^ source.json.embedded.html meta.mapping.json punctuation.section.mapping.end.json */
    </script>

    <style type="text/css">
        tr, .${sel} {
    /*  ^^^^^^^^^^^^ source.css.embedded.html meta.selector.css */
    /*  ^^ source.css.embedded.html entity.name.tag.html.css */
    /*    ^ source.css.embedded.html punctuation.separator.sequence.css */
    /*      ^ source.css.embedded.html entity.other.attribute-name.class.css punctuation.definition.entity.css */
    /*       ^^^^^^ source.css.embedded.html entity.other.attribute-name.class.css meta.interpolation.js */
    /*              ^ source.css.embedded.html meta.block.css punctuation.section.block.begin.css */

            background-${attr}: ${value};
    /*      ^^^^^^^^^^^^^^^^^^ source.css.embedded.html meta.property-name.css support.type.property-name.css */
    /*                 ^^^^^^^ source.css.embedded.html meta.interpolation.js */
    /*                        ^ source.css.embedded.html punctuation.separator.key-value.css */
    /*                          ^^^^^^^^ source.css.embedded.html meta.property-value.css meta.interpolation.js */
        }
    /*  ^ source.css.embedded.html meta.block.css punctuation.section.block.end.css */
    </style>

    <p style="width: ${width}%" class="${class_name}" onclick="${click}">${content}</p>
/*  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.template.js text.html.embedded.js meta.tag.block.any.html */
/*     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.style.html */
/*                   ^^^^^^^^ source.css.embedded.html meta.property-value.css meta.interpolation.js */
/*                              ^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.class.html */
/*                                     ^^^^^^^^^^^^^ meta.class-name.html meta.string.html meta.interpolation.js */
/*                                                    ^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.event.html */
/*                                                             ^^^^^^^^ source.js.embedded.html meta.interpolation.js */
/*                                                                       ^^^^^^^^^^ meta.string.template.js text.html.embedded.js meta.interpolation.js */
/*                                                                                 ^^^^ meta.string.template.js text.html.embedded.js meta.tag.block.any.html */
    `
/* <- meta.string.template.js string.quoted.other.js - text.html.embedded */
/*^^^ meta.string.template.js string.quoted.other.js - text.html.embedded */
/*  ^ punctuation.definition.string.end.js */
/*   ^ - meta.string */

/*
 * JSON Templates
 */

var json = /* json */ ` { "key": "value" } `
/*                    ^^^^^^^^^^^^^^^^^^^^^^ meta.string.template.js */
/*                    ^ string.quoted.other.js punctuation.definition.string.begin.js - source.json.embedded */
/*                     ^^^^^^^^^^^^^^^^^^^^ source.json.embedded.js */
/*                                         ^ string.quoted.other.js punctuation.definition.string.end.js - source.json.embedded */

var json = json` { "key": "value" } `
/*             ^^^^^^^^^^^^^^^^^^^^^^ meta.string.template.js */
/*             ^ string.quoted.other.js punctuation.definition.string.begin.js - source.json.embedded */
/*              ^^^^^^^^^^^^^^^^^^^^ source.json.embedded.js */
/*                                  ^ string.quoted.other.js punctuation.definition.string.end.js - source.json.embedded */

var json = json`
/*         ^^^^ variable.function.tagged-template */
/*             ^^ meta.string.template.js string.quoted.other.js */
/*             ^ punctuation.definition.string.begin.js */
/*              ^ - source.json.embedded */
    {
/*  ^ meta.string.template.js source.json.embedded.js meta.mapping.json punctuation.section.mapping.begin.json */

        "key1": "val${ue}",
/*      ^^^^^^ meta.string.template.js source.json.embedded.js meta.mapping.key.json string.quoted.double.json */
/*            ^ meta.string.template.js source.json.embedded.js meta.mapping.json punctuation.separator.key-value.json */
/*              ^^^^ meta.string.template.js source.json.embedded.js meta.mapping.value.json meta.string.json string.quoted.double.json */
/*                  ^^^^^ meta.string.template.js source.json.embedded.js meta.mapping.value.json meta.string.json meta.interpolation.js */
/*                       ^ meta.string.template.js source.json.embedded.js meta.mapping.value.json meta.string.json string.quoted.double.json */
/*                        ^ meta.string.template.js source.json.embedded.js meta.mapping.json punctuation.separator.sequence.json */

        ${key}: ${value},
/*      ^^^^^^ meta.string.template.js source.json.embedded.js meta.mapping.json meta.interpolation.js */
/*            ^ meta.string.template.js source.json.embedded.js meta.mapping.json punctuation.separator.key-value.json */
/*              ^^^^^^^^ meta.string.template.js source.json.embedded.js meta.mapping.value.json meta.interpolation.js */
/*                      ^ meta.string.template.js source.json.embedded.js meta.mapping.json punctuation.separator.sequence.json */

        "key2": [${val1}, "val${no}"],
/*      ^^^^^^ meta.string.template.js source.json.embedded.js meta.mapping.key.json string.quoted.double.json */
/*            ^ meta.string.template.js source.json.embedded.js meta.mapping.json punctuation.separator.key-value.json */
/*              ^^^^^^^^^^^^^^^^^^^^^ meta.string.template.js source.json.embedded.js meta.mapping.value.json meta.sequence.json */
/*              ^ punctuation.section.sequence.begin.json */
/*               ^^^^^^^ meta.interpolation.js */
/*                      ^ punctuation.separator.sequence.json */
/*                        ^^^^ meta.string.json string.quoted.double.json */
/*                            ^^^^^ meta.string.json meta.interpolation.js */
/*                                 ^ meta.string.json string.quoted.double.json */
/*                                  ^ punctuation.section.sequence.end.json */
/*                                   ^ punctuation.separator.sequence.json */
    }
/*  ^ meta.string.template.js source.json.embedded.js meta.mapping.json punctuation.section.mapping.end.json */
    `
/* <- meta.string.template.js string.quoted.other.js - source.json.embedded */
/*^^^ meta.string.template.js string.quoted.other.js - source.json.embedded */
/*  ^ punctuation.definition.string.end.js */
/*   ^ - meta.string */

/*
 * JavaScript Templates
 */

var script = /* js */ ` var = 0 `
/*                    ^^^^^^^^^^^ meta.string.template.js */
/*                    ^ string.quoted.other.js punctuation.definition.string.begin.js - source.js.embedded */
/*                     ^^^^^^^^^ source.js.embedded.js */
/*                              ^ string.quoted.other.js punctuation.definition.string.end.js - source.js.embedded */

var script = js` var = 0 `
/*             ^^^^^^^^^^^ meta.string.template.js */
/*             ^ string.quoted.other.js punctuation.definition.string.begin.js - source.js.embedded */
/*              ^^^^^^^^^ source.js.embedded.js */
/*                       ^ string.quoted.other.js punctuation.definition.string.end.js - source.js.embedded */

var script = js`
/*           ^^ variable.function.tagged-template */
/*             ^^ meta.string.template.js string.quoted.other.js */
/*             ^ punctuation.definition.string.begin.js */
/*              ^ - source.js.embedded */

    var ${name} = "Value ${interpol}"
/*      ^^^^^^^ meta.interpolation.js */
/*                ^^^^^^^ meta.string.template.js source.js.embedded.js meta.string.js string.quoted.double.js */
/*                       ^^^^^^^^^^^ meta.string.template.js source.js.embedded.js meta.string.js meta.interpolation.js */
/*                                  ^ meta.string.template.js source.js.embedded.js meta.string.js string.quoted.double.js */
    `
/* <- meta.string.template.js string.quoted.other.js - source.js.embedded */
/*^^^ meta.string.template.js string.quoted.other.js - source.js.embedded */
/*  ^ punctuation.definition.string.end.js */
/*   ^ - meta.string */

/*
 * CSS Templates
 */

var style = /* css */ ` tr {  } `
/*                    ^^^^^^^^^^^ meta.string.template.js */
/*                    ^ string.quoted.other.js punctuation.definition.string.begin.js - source.css.embedded */
/*                     ^^^^^^^^^ source.css.embedded.js */
/*                              ^ string.quoted.other.js punctuation.definition.string.end.js - source.css.embedded */

var style = css` tr {  } `
/*             ^^^^^^^^^^^ meta.string.template.js */
/*             ^ string.quoted.other.js punctuation.definition.string.begin.js - source.css.embedded */
/*              ^^^^^^^^^ source.css.embedded.js */
/*                       ^ string.quoted.other.js punctuation.definition.string.end.js - source.css.embedded */

var style = css`
/*          ^^^ variable.function.tagged-template */
/*             ^^ meta.string.template.js string.quoted.other.js */
/*             ^ punctuation.definition.string.begin.js */
/*              ^ - source.css.embedded */

    @media screen {}
/*  ^^^^^^^^^^^^^ meta.at-rule.media.css */
/*         ^^^^^^ support.constant.media.css */

    tr, .${sel} {
/*  ^^^^^^^^^^^^ meta.selector.css */
/*  ^^ entity.name.tag.html.css */
/*    ^ punctuation.separator.sequence.css */
/*      ^ entity.other.attribute-name.class.css punctuation.definition.entity.css */
/*       ^^^^^^ entity.other.attribute-name.class.css meta.interpolation.js */
/*              ^ meta.block.css punctuation.section.block.begin.css */

        background-${attr}: ${value};
/*      ^^^^^^^^^^^^^^^^^^ meta.property-name.css support.type.property-name.css */
/*                 ^^^^^^^ meta.interpolation.js */
/*                        ^ punctuation.separator.key-value.css */
/*                          ^^^^^^^^ meta.property-value.css meta.interpolation.js */
    }
/*  ^ meta.block.css punctuation.section.block.end.css */

    background: var(--color);
/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.template.js source.css.embedded.js */
/*  ^^^^^^^^^^ meta.property-name.css support.type.property-name.css */
/*            ^ punctuation.separator.key-value.css */
/*              ^^^^^^^^^^^^ meta.property-value.css */
/*              ^^^ meta.function-call.identifier.css support.function.var.css */
/*                 ^^^^^^^^^ meta.function-call.arguments.css meta.group.css */
/*                 ^ punctuation.section.group.begin.css */
/*                  ^^^^^^^ variable.other.custom-property.css */
/*                         ^ punctuation.section.group.end.css */
/*                          ^ punctuation.terminator.rule.css */

    ${tag}, .${cls} { ${prop}: ${value} }
/*  ^^^^^^ meta.selector.css meta.interpolation.js */
/*        ^^^ meta.selector.css - meta.interpolation */
/*           ^^^^^^ meta.selector.css meta.interpolation.js */
/*                 ^ meta.selector.css - meta.interpolation */
/*                  ^^ meta.property-list.css meta.block.css */
/*                    ^^^^^^^ meta.property-list.css meta.block.css meta.property-name.css support.type.property-name.css meta.interpolation.js */
/*                           ^^ meta.property-list.css meta.block.css - meta.interpolation */
/*                             ^^^^^^^^ meta.property-list.css meta.block.css meta.property-value.css meta.interpolation.js */
/*                                     ^^ meta.property-list.css meta.block.css - meta.interpolation */
/*  ^^ punctuation.section.interpolation.begin.js */
/*    ^^^ variable.other.readwrite.js */
/*       ^ punctuation.section.interpolation.end.js */
/*        ^ punctuation.separator.sequence.css */
/*          ^^^^^^^ entity.other.attribute-name.class.css */
/*          ^ punctuation.definition.entity.css */
/*           ^^ punctuation.section.interpolation.begin.js */
/*             ^^^ variable.other.readwrite.js */
/*                ^ punctuation.section.interpolation.end.js */
/*                  ^ punctuation.section.block.begin.css */
/*                    ^^ punctuation.section.interpolation.begin.js */
/*                      ^^^^ variable.other.readwrite.js */
/*                          ^ punctuation.section.interpolation.end.js */
/*                           ^ punctuation.separator.key-value.css */
/*                             ^^ punctuation.section.interpolation.begin.js */
/*                               ^^^^^ variable.other.readwrite.js */
/*                                    ^ punctuation.section.interpolation.end.js */
/*                                      ^ punctuation.section.block.end.css */
    `
/* <- meta.string.template.js string.quoted.other.js - source.css.embedded */
/*^^^ meta.string.template.js string.quoted.other.js - source.css.embedded */
/*  ^ punctuation.definition.string.end.js */
/*   ^ - meta.string */

var style = css`color:${color}`;
/*          ^^^ variable.function.tagged-template.js */
/*             ^^^^^^^^^^^^^^^^ meta.string.template.js */
/*             ^ string.quoted.other.js punctuation.definition.string.begin.js */
/*              ^^^^^ meta.property-name.css support.type.property-name.css */
/*                   ^ punctuation.separator.key-value.css */
/*                    ^^ meta.property-value.css meta.interpolation.js punctuation.section.interpolation.begin.js */
/*                      ^^^^^ meta.property-value.css meta.interpolation.js source.js.embedded variable.other.readwrite.js */
/*                           ^ meta.property-value.css meta.interpolation.js punctuation.section.interpolation.end.js */
/*                            ^ string.quoted.other.js punctuation.definition.string.end.js */
/*                             ^ punctuation.terminator.statement.js - meta.string */


/*
 * SQL Templates
 */

var sql = /* sql */ `SELECT * FROM "foo";`
/*                  ^^^^^^^^^^^^^^^^^^^^^^ meta.string.template.js */
/*                  ^ string.quoted.other.js punctuation.definition.string.begin.js - source.sql.embedded */
/*                   ^^^^^^^^^^^^^^^^^^^^ source.sql.embedded.js */
/*                                       ^ string.quoted.other.js punctuation.definition.string.end.js - source.sql.embedded */

var sql = sql`SELECT * FROM "foo";`
/*           ^^^^^^^^^^^^^^^^^^^^^^ meta.string.template.js */
/*           ^ string.quoted.other.js punctuation.definition.string.begin.js - source.sql.embedded */
/*            ^^^^^^^^^^^^^^^^^^^^ source.sql.embedded.js */
/*                                ^ string.quoted.other.js punctuation.definition.string.end.js - source.sql.embedded */

var sql = SQL`SELECT * FROM "foo";`
/*           ^^^^^^^^^^^^^^^^^^^^^^ meta.string.template.js */
/*           ^ string.quoted.other.js punctuation.definition.string.begin.js - source.sql.embedded */
/*            ^^^^^^^^^^^^^^^^^^^^ source.sql.embedded.js */
/*                                ^ string.quoted.other.js punctuation.definition.string.end.js - source.sql.embedded */

var sql = sql`
/*        ^^^ variable.function.tagged-template */
/*           ^^ meta.string.template.js string.quoted.other.js */
/*           ^ punctuation.definition.string.begin.js */
/*            ^ - source.sql.embedded */

SELECT  *,
/* ^^^ keyword.other.dml.sql */
/*      ^ constant.other.wildcard.asterisk.sql */
        f.id AS database_id
/*           ^^ keyword.operator.assignment.alias.sql */
FROM    foo
WHERE   f.a IS NULL
/* ^^ keyword.other.dml.sql */
/*          ^^ keyword.operator.logical.sql */
/*             ^^^^ constant.language.null.sql */
        AND f.b IS NOT NULL
/*      ^^^ keyword.operator.logical.sql */
/*              ^^ keyword.operator.logical.sql */
/*                 ^^^ keyword.operator.logical.sql */
/*                     ^^^^ constant.language.null.sql */

    `
/* <- meta.string.template.js string.quoted.other.js - source.sql.embedded */
/*^^^ meta.string.template.js string.quoted.other.js - source.sql.embedded */
/*  ^ punctuation.definition.string.end.js */
/*   ^ - meta.string */

var sql = sql`SELECT * FROM ${users};`
/*            ^^^^^^^^^^^^^^ meta.string.template.js source.sql.embedded.js - meta.interpolation.js */
/*                          ^^^^^^^^ meta.string.template.js source.sql.embedded.js meta.interpolation.js */
/*                          ^^ punctuation.section.interpolation.begin.js */
/*                            ^^^^^ source.js.embedded variable.other.readwrite.js */
/*                                 ^ punctuation.section.interpolation.end.js */
/*                                  ^ punctuation.terminator.statement.sql - meta.interpolation.js */
/*                                   ^ string.quoted.other.js punctuation.definition.string.end.js */

/*
 * Unknown Template
 */

var other = /* any */ `tagged`
/*          ^^^^^^^^^ comment.block.js */
/*          ^^ punctuation.definition.comment.begin.js */
/*                 ^^ punctuation.definition.comment.end.js */
/*                    ^^^^^^^^ meta.string.template.js string.quoted.other.js */
/*                    ^ punctuation.definition.string.begin.js */
/*                           ^ punctuation.definition.string.end.js */

var other = other`
/*          ^^^^^ variable.function.tagged-template */
/*               ^ meta.string.template.js punctuation.definition.string.begin.js */
    Any content ${type}.
/* ^^^^^^^^^^^^^ meta.string.template.js string.quoted.other.js */
/*              ^^^^^^^ meta.string.template.js meta.interpolation.js - string */
/*                     ^^ meta.string.template.js string.quoted.other.js */
    `
/* <- meta.string.template.js string.quoted.other.js */
/*^^^ meta.string.template.js string.quoted.other.js */
/*  ^ punctuation.definition.string.end.js */
/*   ^ - meta.string */

var other = `
/*          ^^ meta.string.template.js */
/*          ^ punctuation.definition.string.begin.js */
/*           ^ string.quoted.other.js */
    Any content ${type}.
/* ^^^^^^^^^^^^^ meta.string.template.js string.quoted.other.js */
/*              ^^^^^^^ meta.string.template.js meta.interpolation.js - string */
/*                     ^^ meta.string.template.js string.quoted.other.js */
    `
/* <- meta.string.template.js string.quoted.other.js */
/*^^^ meta.string.template.js string.quoted.other.js */
/*  ^ punctuation.definition.string.end.js */
/*   ^ - meta.string */

/*
 * Nested tagged template strings
 */

var raw = `
/*        ^ meta.string.template.js string.quoted.other.js punctuation.definition.string.begin.js */
    var raw = \`
/*^^^^^^^^^^^^^^ meta.string.template.js string.quoted.other.js */
/*            ^^ constant.character.escape.js */
        var raw = \`
/*^^^^^^^^^^^^^^^^^^ meta.string.template.js string.quoted.other.js */
/*                ^^ constant.character.escape.js */
                any${thing}
/*^^^^^^^^^^^^^^^^^ meta.string.template.js string.quoted.other.js */
/*                 ^^^^^^^^ meta.string.template.js meta.interpolation.js */
/*                 ^^ punctuation.section.interpolation.begin.js */
/*                   ^^^^^ source.js.embedded variable.other.readwrite.js */
/*                        ^ punctuation.section.interpolation.end.js */
            \`;
/*^^^^^^^^^^^^^ meta.string.template.js string.quoted.other.js */
/*          ^^ constant.character.escape.js */
        \`;
/*^^^^^^^^^ meta.string.template.js string.quoted.other.js */
/*      ^^ constant.character.escape.js */
    `;
/*^^^ meta.string.template.js string.quoted.other.js */
/*  ^ punctuation.definition.string.end.js */
/*   ^ punctuation.terminator.statement.js */

var html = html`
    <style>
        div { color: ${color}; }
/*      ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.template.js text.html.embedded.js source.css.embedded.html */
/*      ^^^^ meta.selector.css */
/*      ^^^ entity.name.tag.html.css */
/*          ^^^^^^^^^^^^^^^^^^^^ meta.property-list.css meta.block.css */
/*          ^ punctuation.section.block.begin.css */
/*            ^^^^^ meta.property-name.css support.type.property-name.css */
/*                 ^ punctuation.separator.key-value.css */
/*                  ^ meta.property-value.css - meta.interpolation */
/*                   ^^^^^^^^ meta.property-value.css meta.interpolation.js */
/*                   ^^ punctuation.section.interpolation.begin.js */
/*                     ^^^^^ source.js.embedded variable.other.readwrite.js */
/*                          ^ punctuation.section.interpolation.end.js */
/*                           ^ punctuation.terminator.rule.css */
/*                             ^ punctuation.section.block.end.css */
    </style>
    <script>
        let html = html\`
/*^^^^^^^^^^^^^^^^^^^^^^^ meta.string.template.js text.html.embedded.js source.js.embedded.html */
/*      ^^^ keyword.declaration */
/*          ^^^^ variable.other */
/*               ^ keyword.operator.assignment */
/*                 ^^^^ variable.function.tagged-template */
/*                     ^^ meta.string.template string.quoted.other punctuation.definition.string.begin */
            no more ${html} highlighting
/*         ^^^^^^^^^ meta.string.template text.html.embedded source.js.embedded.html meta.string.template string.quoted.other */
/*                  ^^^^^^^ meta.string.template.js text.html.embedded.js source.js.embedded.html meta.string.template.js meta.interpolation.js */
/*                         ^^^^^^^^^^^^^^ meta.string.template text.html.embedded source.js.embedded.html meta.string.template string.quoted.other */
            \`;
/*^^^^^^^^^^^^ meta.string.template text.html.embedded source.js.embedded.html meta.string.template string.quoted.other */
/*            ^ meta.string.template text.html.embedded source.js.embedded.html punctuation.terminator.statement */
/*          ^^ punctuation.definition.string.end */
/*            ^ punctuation.terminator.statement */
        let css = css\`
            no more ${css} highlighting
/*         ^^^^^^^^^ meta.string.template text.html.embedded source.js.embedded.html meta.string.template string.quoted.other */
/*                  ^^^^^^ meta.string.template.js text.html.embedded.js source.js.embedded.html meta.string.template.js meta.interpolation.js */
/*                        ^^^^^^^^^^^^^^ meta.string.template text.html.embedded source.js.embedded.html meta.string.template string.quoted.other */
            \`;
/*^^^^^^^^^^^^ meta.string.template text.html.embedded source.js.embedded.html meta.string.template string.quoted.other */
/*            ^ meta.string.template text.html.embedded source.js.embedded.html punctuation.terminator.statement */
/*          ^^ punctuation.definition.string.end */
/*            ^ punctuation.terminator.statement */
        let js = js\`
            no more ${js} highlighting
/*         ^^^^^^^^^ meta.string.template text.html.embedded source.js.embedded.html meta.string.template string.quoted.other */
/*                  ^^^^^ meta.string.template.js text.html.embedded.js source.js.embedded.html meta.string.template.js meta.interpolation.js */
/*                       ^^^^^^^^^^^^^^ meta.string.template text.html.embedded source.js.embedded.html meta.string.template string.quoted.other */
            \`;
/*^^^^^^^^^^^^ meta.string.template text.html.embedded source.js.embedded.html meta.string.template string.quoted.other */
/*            ^ meta.string.template text.html.embedded source.js.embedded.html punctuation.terminator.statement */
/*          ^^ punctuation.definition.string.end */
/*            ^ punctuation.terminator.statement */
    </script>
    `

var js = js`
    var js = js\`
        var = "no more ${js}";
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.template.js source.js.embedded.js meta.string.template.js */
/*^^^^^^^^^^^^^^^^^^^^^ string.quoted.other.js */
/*                     ^^^^^ meta.interpolation.js */
/*                          ^^ string.quoted.other.js */
        \`;
/*^^^^^^^^^ meta.string.template.js source.js.embedded.js */
/*^^^^^^^^ meta.string.template.js string.quoted.other.js */
/*      ^^ punctuation.definition.string.end.js */
/*        ^ punctuation.terminator.statement.js */
    `;
/*^^^ meta.string.template.js string.quoted.other.js */
/*  ^ punctuation.definition.string.end.js */
/*   ^ punctuation.terminator.statement.js */
