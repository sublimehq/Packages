# SYNTAX TEST "Perl.sublime-syntax"

# Variable
$foo = 'bar'
# <- variable.other.readwrite.global.perl punctuation.definition.variable.perl
#^^^ variable.other.readwrite.global.perl

$_foo = 'bar'
# <- variable.other.readwrite.global.perl punctuation.definition.variable.perl
#^^^ variable.other.readwrite.global.perl

@foo = 'bar'
# <- variable.other.readwrite.global.perl punctuation.definition.variable.perl
#^^^ variable.other.readwrite.global.perl

@_foo = 'bar'
# <- variable.other.readwrite.global.perl punctuation.definition.variable.perl
#^^^ variable.other.readwrite.global.perl

%foo = 'bar'
# <- variable.other.readwrite.global.perl punctuation.definition.variable.perl
#^^^ variable.other.readwrite.global.perl

%_foo = 'bar'
# <- variable.other.readwrite.global.perl punctuation.definition.variable.perl
#^^^ variable.other.readwrite.global.perl

${%_foobar} = ''
# ^ variable.other.readwrite.global.perl punctuation.definition.variable.perl
#  ^^^^^^^ variable.other.readwrite.global.perl

###################
# Regexp Handling #

my @config_info = split / /, get_configuration( "//foo/config", $file_handler );
#                 ^^^^^ support.function.perl
#                       ^ string.regexp.find.perl punctuation.definition.string.perl
#                        ^ string.regexp.find.perl
#                         ^ string.regexp.find.perl punctuation.definition.string.perl
#                                                ^^^^^^^^^^^^ string.quoted.double.perl
#                                                               ^ variable.other.readwrite.global.perl punctuation.definition.variable.perl
#                                                                ^^^^^^^^^^^^ variable.other.readwrite.global.perl

$rex = qr/my.STRING/is;
#      ^^ string.regexp.compile.simple-delimiter.perl punctuation.definition.string.perl support.function.perl
#        ^ string.regexp.compile.simple-delimiter.perl punctuation.definition.string.perl
#                  ^ string.regexp.compile.simple-delimiter.perl punctuation.definition.string.perl
#                   ^^ string.regexp.compile.perl punctuation.definition.string.perl keyword.control.regexp-option.perl

$i //= '08';
#      ^ string.quoted.single.perl punctuation.definition.string.begin.perl
#       ^^ string.quoted.single.perl

$foo =~ m/fee|fie|foe|fum/

my @string = split /foo\/bar/, $string;
#                   ^^^^^^^^ string.regexp.find.perl

my @string = split /[:,\s\/]+/, $string;
#                   ^^^^^^^^^ string.regexp.find.perl

if(/ foo/) {
#   ^^^^ string.regexp.find.perl
}
if($str =~/ foo/) {
#         ^ string.regexp.find.perl punctuation.definition.string.perl
#          ^^^^ string.regexp.find.perl
    some($code);
}

$home =  $ENV{HOME}
  // $ENV{LOGDIR}
#         ^^^^^^ constant.other.bareword.perl
  // (getpwuid($<))[7]
#     ^^^^^^^^ support.function.perl
  // die "You're homeless!\n";
#    ^^^ keyword.control.perl
#        ^ string.quoted.double.perl punctuation.definition.string.begin.perl


$regex =~ s/bar/foo/gr;
#         ^ string.regexp punctuation.definition.string.perl support.function.perl
#                   ^^ string.regexp.replace.perl punctuation.definition.string.perl keyword.control.regexp-option.perl
$regex =~ qr/sdf/x;
#         ^^ string.regexp.compile.simple-delimiter.perl punctuation.definition.string.perl support.function.perl
#           ^ string.regexp.compile.simple-delimiter.perl punctuation.definition.string.perl
#            ^^^ string.regexp.compile.simple-delimiter.perl
#               ^ string.regexp.compile.simple-delimiter.perl punctuation.definition.string.perl
#                ^ string.regexp.compile.perl punctuation.definition.string.perl keyword.control.regexp-option.perl
$regex =~ /sdf/g;
#              ^ string.regexp.find.perl keyword.control.regexp-option.perl
#       ^ -punctuation.definition.string.perl
$regex =~ s/sdf/bar/p
#         ^ string.regexp punctuation.definition.string.perl support.function.perl
#                   ^ string.regexp.replace.perl punctuation.definition.string.perl keyword.control.regexp-option.perl
$regex =~ s/sdf/bar/xx;
#         ^ string.regexp punctuation.definition.string.perl support.function.perl
#                   ^^ string.regexp.replace.perl punctuation.definition.string.perl keyword.control.regexp-option.perl
$regex =~ s/sdf/bar/r;
#                   ^ string.regexp.replace.perl punctuation.definition.string.perl keyword.control.regexp-option.perl

my $sentence_rx = qr{
#                   ^ string.regexp.compile.nested_braces.perl punctuation.definition.string.perl
        (?: (?<= ^ ) | (?<= \s ) )  # after start-of-string or
                                                                # whitespace
        \p{Lu}                      # capital letter
        .*?                         # a bunch of anything
        (?<= \S )                   # that ends in non-
                                                                # whitespace
        (?<! \b [DMS]r  )           # but isn't a common abbr.
        (?<! \b Mrs )
        (?<! \b Sra )
        (?<! \b St  )
        [.?!]                       # followed by a sentence
                                                                # ender
        (?= $ | \s )                # in front of end-of-string
                                                                # or whitespace
  }sx;
# ^ string.regexp.compile.nested_braces.perl punctuation.definition.string.perl
#  ^^ string.regexp.compile.perl punctuation.definition.string.perl keyword.control.regexp-option.perl


#############
# Functions #

sub get_configuration {
# <- meta.function.perl storage.type.sub.perl
#   ^^^^^^^^^^^^^^^^^ meta.function.perl entity.name.function.perl
    my $param1 = shift;
#                ^^^^^ support.function.perl
    return "configuration";
#   ^^^^^^ keyword.control.perl
#          ^ string.quoted.double.perl punctuation.definition.string.begin.perl
#           ^^^^^^^^^^^^^ string.quoted.double.perl
#                        ^ string.quoted.double.perl punctuation.definition.string.end.perl
}
