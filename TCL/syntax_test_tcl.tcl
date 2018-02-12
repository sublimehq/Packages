# SYNTAX TEST "Packages/TCL/Tcl.sublime-syntax"

# ----------------- #
# Line continuation
# ----------------- #

set MyDict [list\
    Key1 {Key Value 1}\
#                     ^ punctuation.separator.continuation
]

pg_select $database \
"SELECT abc, def FROM xyz"
# <- string

pg_select $database \
"SELECT abc, def FROM xyz" \
data
# <- - variable.function

becs::wizFrame -info [becs_infobody "interface.jpg" \
    "Specify VID parameters<br><br><strong>VID groups</strong> can be used to build ranges that is added to the VID range field."] \
    -title "$ifacename VID parameters"
# ^ - meta.substitution

if {[catch {becs::objectCreate -class interface \
        -flags "statistics,interfaceautoprobe" \
        -name $aggrname -role $extra_role \
                        -parameters [array get params] \
        -opaque [list "becs.editor" "ifrole.tcl"] \
        -parentoid $aggr_attach_oid} err]} {
return "Creating aggregator interface $aggrname under element/management element-module OID $aggr_attach_oid: $err"
}
#^ - meta.block
#^ - meta.substitution

# -------------------------------------------------------------------------- #
# Issue 134: https://github.com/SublimeTextIssues/DefaultPackages/issues/134
# -------------------------------------------------------------------------- #

regsub -all {\/} $line {\\} line;
# <- keyword.other
#            ^ string.regexp
#                       ^ constant.character.escape

foreach {one_arg_opt_pattern} [list {-first\S*} {-second\S*} {-group\S*}] {
    regsub -- "${one_arg_opt_pattern}\\s+\\S+" $args {} args
#             ^ string.quoted.double
}

regsub -all {\\\\} $line {\\} line;
# <- keyword.other
#            ^ string.regexp constant.character.escape
#                         ^ constant.character.escape
puts "Not Highlighting"
# <- keyword.other
#     ^ string.quoted.double

namespace eval A {
#^^^^^^^^^^^^^^^^^ meta.namespace
#              ^ entity.name.namespace
    namespace eval B {
#   ^^^^^^^^^^^^^^^^^^ meta.namespace meta.namespace
#                  ^ entity.name.namespace
        proc C  {
#       ^^^^^^^^^^^ meta.function
#            ^ entity.name.function
            puts hi
        }
    }
}

set dirname "${v_seagull_cfg_root}/seagull-[format "%02d" [expr $ctrlport - $v_seagull_ctrl_port]]"
#                                           ^^^^^^ keyword.other
#                                                          ^^^^ keyword.other

set a [list]
#      ^^^^ keyword.other

set res "[join [lrange [split $res ","] 0 end-1] ","] ..."
#         ^^^^ keyword.other
#               ^^^^^^ keyword.other
#                       ^^^^^ keyword.other

regexp {instance="?([^" \t]+)"?} $counter matchedstring instance; # comment
#       ^^^^^^^^^^^^^^^^^^^^^^^ string.regexp

set check1 [regexp {^'(.){0,32}'$} $param]
#                   ^^^^^^^^^^^^^ string.regexp

set check2 [regexp {[*\?\|"<>:/\]+} $param]
#                   ^^^^^^^^^^^^^^ string.regexp

set stepquote [regsub -all {"} $line {""} ]
#                             ^ - string

set copy [[$root selectNodes //*\[@ID="$idref"\]] cloneNode -deep]
#                               ^^ constant.character.escape
#                                             ^^ constant.character.escape

set v "String with $var and [command substitution] in it. Also, \n escapes."
#                  ^^^^ variable.other
#                           ^^^^^^^^^^^^^^^^^^^^^^ meta.substitution
#                            ^^^^^^^ variable.function
#                                                               ^^ constant.character.escape

proc a {} {
    return "this is [proc c {p1 p2 p3} { puts 42 }; set b 42;] here, \[here it's $b\], highlighted too"
#                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.substitution
#                         ^ entity.name.function
#                           ^^^^^^^^^^ meta.block meta.substitution meta.function.parameters
#                                                 ^ punctuation.terminator
#                                                   ^ keyword.other
#                                                         ^^ constant.numeric
#                                                                     ^^^^^^^^^^^^^^^ - meta.substitution
#                                                                    ^^ constant.character.escape
#                                                                      ^^^^ - variable.function
#                                                                                  ^^ constant.character.escape
}

expr 5 + 4
#    ^ constant.numeric
#        ^ constant.numeric

proc D {a {b "default"} args} {
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
#    ^ entity.name.function
#      ^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters meta.block
#       ^ variable.parameter
#         ^^^^^^^^^^^^^ meta.block meta.block
#          ^ variable.parameter
#            ^^^^^^^^^ string.quoted.double
#                       ^^^^ variable.parameter

}
# <- meta.function
 # <- - meta.function

proc ${ns}::suffix {} {}
#    ^^^^^^^^^^^^^ entity.name.function

# -------------------------------------------------------------------------- #
# Issue 131: https://github.com/SublimeTextIssues/DefaultPackages/issues/131
# -------------------------------------------------------------------------- #
set ok1 {["]"]}
#       ^^^^^^^ meta.block
#         ^^^ string.quoted.double
set ok2 {["][]"]}
#       ^^^^^^^^^ meta.block
#         ^^^^^ string.quoted.double
set not_ok {["]["]}
#          ^^^^^^^^ meta.block
#            ^^^^ string.quoted.double
puts $ok1            ;# ["]"]
# ^ keyword.other
#    ^^^^ variable.other
#    ^ punctuation.definition.variable
#                     ^ comment.line
puts $ok2            ;# ["][]"]
# ^ keyword.other
#    ^^^^ variable.other
#    ^ punctuation.definition.variable
#                     ^ comment.line
puts $not_ok         ;# ["]["]
# ^ keyword.other
#    ^^^^^^^ variable.other
#    ^ punctuation.definition.variable
#                     ^ comment.line

my-command param1 $param2
# <- variable.function

${ns}::command 1 2
#^^^^^^^^^^^^^ variable.function

array 1 2 3
#^^^^ keyword.other

[ list foo baz]
# ^ keyword.other
#^^^^^^^^^^^^^^ meta.substitution

if {$var == true} {
# <- keyword.control
#  ^^^^^^^^^^^^^^ meta.block
#        ^^ keyword.operator
#                 ^ meta.block

} elseif {$foo < $bar} {
# ^^^^^^ keyword.control
#        ^^^^^^^^^^^^^ meta.block
#              ^ keyword.operator

} else {
# ^^^^ keyword.control

}

# Ensure else doesn't work outside of if command
else {}
# <- - keyword.control

set y {1 2 3}a
#            ^ invalid.illegal

# -------------------------------------------------#
# https://github.com/sublimehq/Packages/issues/779
# ------------------------------------------------ #
regexp -inline -all -- {%[a-zA-Z_]*%} "whatever"
#      ^^^^^^^^^^^^^^^^^ - string

regexp -all -inline {%[a-zA-Z_]*%} "whatever"
#      ^^^^^^^^^^^^^^ - string

# -------------------------------------------------#
# https://github.com/sublimehq/Packages/issues/783
# https://github.com/sublimehq/Packages/issues/784
# ------------------------------------------------ #
set objRegExp {(^[a-zA-Z]{2}[a-zA-Z0-9-]{2,12}$)}
#             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block - invalid
#                                                ^ - meta.block
set objRegExp {(.{0,200})}
#             ^^^^^^^^^^^^ meta.block - invalid
#                         ^ - meta.block

proc test {} {

    set saoid [svcmap_saoid sm]
#   ^^^ keyword.other
    # Syntax highligting works inside an if statement:
    if {[defvar cpe_uplink_ifoid 0] == 0} {
        array set cpe_param [objectGetField -oid $cpeoid -fieldname parameters]
#       ^^^^^ keyword.other
#                            ^^^^^^^^^^^^^^ variable.function
        if {[info exists cpe_param(model)]} {
            set cpe_model $cpe_param(model)
        } else {
            error "ERROR: Model not set"
#           ^^^^^ keyword.other
#                 ^ string.quoted.double
        }
    }

    # but not within for example a foreach loop:
    foreach cpe_ifoid [objectTreeFind -oid $cpeoid -walkdown 0 -classmask interface] {
#   ^^^^^^^ keyword.control
#                      ^^^^^^^^^^^^^^ variable.function
        set cpe_if_role [objectGetField -oid $cpe_ifoid -fieldname role]
#       ^^^ keyword.other
        if {[string match "uplink.running" $cpe_if_role]} {
#       ^^ keyword.control
#            ^^^^^^ keyword.other
            set cpe_uplink_ifoid $cpe_ifoid
            set cpe_uplink_name [objectGetField -oid $cpe_uplink_ifoid -fieldname name]
            break
        }
    }

    switch -- $parclass {
#   ^^^^^^ keyword.control
        "element-attach" {
#       ^^^^^^^^^^^^^^^^ string.quoted.double
            # CPE SA
#           ^^^^^^^^^ comment
            return [svcmap_hook_return sm]
#           ^^^^^^ keyword.control
#                   ^^^^^^^^^^^^^^^^^^ variable.function
        }

        "interface" {
#       ^^^^^^^^^^^ string.quoted.double
            set ifoid $paroid
            set eaoid [elm_oid_by_iface $ifoid]
            set earole [objectGetField -oid $eaoid -fieldname role]
		}
	}
}
