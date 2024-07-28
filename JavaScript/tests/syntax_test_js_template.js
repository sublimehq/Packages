/* SYNTAX TEST "Packages/JavaScript/JavaScript.sublime-syntax" */

/*
 * HTML Templates
 */

var html = html`
/*         ^^^^^^ meta.string.js */
/*         ^^^^ constant.other.language-name.js */
/*             ^ punctuation.definition.string.begin.js */

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
/*  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.js text.html.embedded.js meta.tag.block.any.html */
/*     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.style.html */
/*                   ^^^^^^^^ source.css.embedded.html meta.property-value.css meta.interpolation.js */
/*                              ^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.class.html */
/*                                     ^^^^^^^^^^^^^ meta.class-name.html meta.string.html meta.interpolation.js */
/*                                                    ^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.event.html */
/*                                                             ^^^^^^^^ source.js.embedded.html meta.interpolation.js */
/*                                                                       ^^^^^^^^^^ meta.string.js text.html.embedded.js meta.interpolation.js */
/*                                                                                 ^^^^ meta.string.js text.html.embedded.js meta.tag.block.any.html */
    `
/* <- meta.string.js text.html.embedded.js */
/*^^ meta.string.js text.html.embedded.js */
/*  ^ meta.string.js string.quoted.other.js punctuation.definition.string.end.js - text.html.embedded */
/*   ^ - meta.string */

/*
 * JSON Templates
 */

var json = json`
/*         ^^^^^^ meta.string.js */
/*         ^^^^ constant.other.language-name.js */
/*             ^ punctuation.definition.string.begin.js */
    {
/*  ^ meta.string.js source.json.embedded.js meta.mapping.json punctuation.section.mapping.begin.json */

        "key1": "val${ue}",
/*      ^^^^^^ meta.string.js source.json.embedded.js meta.mapping.key.json string.quoted.double.json */
/*            ^ meta.string.js source.json.embedded.js meta.mapping.json punctuation.separator.key-value.json */
/*              ^^^^ meta.string.js source.json.embedded.js meta.mapping.value.json meta.string.json string.quoted.double.json */
/*                  ^^^^^ meta.string.js source.json.embedded.js meta.mapping.value.json meta.string.json meta.interpolation.js */
/*                       ^ meta.string.js source.json.embedded.js meta.mapping.value.json meta.string.json string.quoted.double.json */
/*                        ^ meta.string.js source.json.embedded.js meta.mapping.json punctuation.separator.sequence.json */

        ${key}: ${value},
/*      ^^^^^^ meta.string.js source.json.embedded.js meta.mapping.json meta.interpolation.js */
/*            ^ meta.string.js source.json.embedded.js meta.mapping.json punctuation.separator.key-value.json */
/*              ^^^^^^^^ meta.string.js source.json.embedded.js meta.mapping.value.json meta.interpolation.js */
/*                      ^ meta.string.js source.json.embedded.js meta.mapping.json punctuation.separator.sequence.json */

        "key2": [${val1}, "val${no}"],
/*      ^^^^^^ meta.string.js source.json.embedded.js meta.mapping.key.json string.quoted.double.json */
/*            ^ meta.string.js source.json.embedded.js meta.mapping.json punctuation.separator.key-value.json */
/*              ^^^^^^^^^^^^^^^^^^^^^ meta.string.js source.json.embedded.js meta.mapping.value.json meta.sequence.json */
/*              ^ punctuation.section.sequence.begin.json */
/*               ^^^^^^^ meta.interpolation.js */
/*                      ^ punctuation.separator.sequence.json */
/*                        ^^^^ meta.string.json string.quoted.double.json */
/*                            ^^^^^ meta.string.json meta.interpolation.js */
/*                                 ^ meta.string.json string.quoted.double.json */
/*                                  ^ punctuation.section.sequence.end.json */
/*                                   ^ punctuation.separator.sequence.json */
    }
/*  ^ meta.string.js source.json.embedded.js meta.mapping.json punctuation.section.mapping.end.json */
    `
/* <- meta.string.js source.json.embedded.js */
/*^^ meta.string.js source.json.embedded.js */
/*  ^ meta.string.js string.quoted.other.js punctuation.definition.string.end.js - source.json.embedded */
/*   ^ - meta.string */

/*
 * JavaScript Templates
 */

var script = js`
/*           ^^^^ meta.string.js */
/*           ^^ constant.other.language-name.js */
/*             ^ punctuation.definition.string.begin.js */

    var ${name} = "Value ${interpol}"
/*      ^^^^^^^ meta.interpolation.js */
/*                ^^^^^^^ meta.string.js source.js.embedded.js meta.string.js string.quoted.double.js */
/*                       ^^^^^^^^^^^ meta.string.js source.js.embedded.js meta.string.js meta.interpolation.js */
/*                                  ^ meta.string.js source.js.embedded.js meta.string.js string.quoted.double.js */
    `
/* <- meta.string.js source.js.embedded.js */
/*^^ meta.string.js source.js.embedded.js */
/*  ^ meta.string.js string.quoted.other.js punctuation.definition.string.end.js - source.js.embedded */
/*   ^ - meta.string */

/*
 * CSS Templates
 */

var style = css`
/*          ^^^^^ meta.string.js */
/*          ^^^ constant.other.language-name.js */
/*             ^ punctuation.definition.string.begin.js */
/*              ^ source.css.embedded.js */

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
    `
/* <- meta.string.js source.css.embedded.js */
/*^^ meta.string.js source.css.embedded.js */
/*  ^ meta.string.js string.quoted.other.js punctuation.definition.string.end.js - source.css */
/*   ^ - meta.string */

/*
 * Unknown Template
 */

var other = other`
/*          ^^^^^^^ meta.string.js */
/*          ^^^^^ constant.other.language-name.js */
/*               ^ punctuation.definition.string.begin.js */
/*                ^ string.quoted.other.js */
    Any content ${type}.
/* ^^^^^^^^^^^^^ meta.string.js string.quoted.other.js */
/*              ^^^^^^^ meta.string.js meta.interpolation.js - string */
/*                     ^^ meta.string.js string.quoted.other.js */
    `
/* <- meta.string.js string.quoted.other.js */
/*^^^ meta.string.js string.quoted.other.js */
/*  ^ punctuation.definition.string.end.js */
/*   ^ - meta.string */

var other = `
/*          ^^ meta.string.js */
/*          ^ punctuation.definition.string.begin.js */
/*           ^ string.quoted.other.js */
    Any content ${type}.
/* ^^^^^^^^^^^^^ meta.string.js string.quoted.other.js */
/*              ^^^^^^^ meta.string.js meta.interpolation.js - string */
/*                     ^^ meta.string.js string.quoted.other.js */
    `
/* <- meta.string.js string.quoted.other.js */
/*^^^ meta.string.js string.quoted.other.js */
/*  ^ punctuation.definition.string.end.js */
/*   ^ - meta.string */
