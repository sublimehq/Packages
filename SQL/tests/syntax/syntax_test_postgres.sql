-- SYNTAX TEST "Packages/SQL/PostgresSQL.sublime-syntax"

CREATE TABLE test1 (a character(4));
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create
-- ^^^^^^^^^ keyword.other.ddl
--           ^^^^^ meta.toc-list.full-identifier entity.name.function
--                 ^^^^^^^^^^^^^^^^ meta.group.table-columns
--                                 ^ punctuation.terminator.statement
--                 ^ punctuation.section.group.begin
--                  ^ meta.column-name variable.other.member.declaration
--                    ^^^^^^^^^^^^ storage.type
--                              ^ constant.numeric
--                                ^ punctuation.section.group.end

INSERT INTO test1 VALUES ('ok');
SELECT a, char_length(a) FROM test1;
-- ^^^ keyword.other.dml
--     ^ meta.column-name - variable.other.member.declaration
--      ^ punctuation.separator.sequence
--        ^^^^^^^^^^^^^^ meta.function-call
--        ^^^^^^^^^^^ support.function
--                   ^ meta.group punctuation.section.parens.begin
--                    ^ meta.group meta.column-name - variable.other.member.declaration
--                     ^ meta.group punctuation.section.parens.end
--                       ^^^^ keyword.other.dml - meta.group
--                            ^^^^^ meta.table-name
--                                 ^ punctuation.terminator.statement

CREATE TABLE test2 (b varchar(5));
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create
-- ^^^^^^^^^ keyword.other.ddl
--           ^^^^^ meta.toc-list.full-identifier entity.name.function
--                 ^^^^^^^^^^^^^^ meta.group.table-columns
--                               ^ punctuation.terminator.statement
--                 ^ punctuation.section.group.begin
--                  ^ meta.column-name
--                    ^^^^^^^^^^ storage.type
--                            ^ constant.numeric
--                              ^ punctuation.section.group.end
INSERT INTO test2 VALUES ('ok');
INSERT INTO test2 VALUES ('good      ');
INSERT INTO test2 VALUES ('too long');
#ERROR:  value too long for type character varying(5)
INSERT INTO test2 VALUES ('too long'::varchar(5)); -- explicit truncation
--                        ^^^^^^^^^^ string.quoted.single
--                                  ^^ keyword.operator.cast
--                                    ^^^^^^^^^^ storage.type
SELECT b, char_length(b) FROM test2;

CREATE TABLE IF NOT EXISTS public.dropzone_details
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create
-- ^^^^^^^^^ keyword.other.ddl
--           ^^ keyword.control.flow
--              ^^^ keyword.operator.logical
--                  ^^^^^^ keyword.operator.logical
--                         ^^^^^^^^^^^^^^^^^^^^^^^ meta.toc-list.full-identifier entity.name.function
--                               ^ punctuation.accessor.dot
(
-- <- meta.create meta.group.table-columns punctuation.section.group.begin
    id uuid NOT NULL DEFAULT uuid_generate_v4(),
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create meta.group.table-columns
--  ^^ meta.column-name
--     ^^^^ storage.type
--          ^^^ keyword.operator.logical
--              ^^^^ constant.language.null
--                   ^^^^^^^ storage.modifier
--                           ^^^^^^^^^^^^^^^^ meta.function-call support.function
--                                           ^ meta.function-call meta.group punctuation.section.parens.begin
--                                            ^ meta.function-call meta.group punctuation.section.parens.end
--                                             ^ punctuation.separator.sequence
    name text COLLATE pg_catalog."default",
    doc jsonb,
--  ^^^ meta.column-name variable.other.member.declaration
--      ^^^^^ storage.type
--           ^ punctuation.separator.sequence
    poc json,
--  ^^^ meta.column-name
--      ^^^^ storage.type
--          ^ punctuation.separator.sequence
    size integer,
--  ^^^^ meta.column-name
--       ^^^^^^^ storage.type
--              ^ punctuation.separator.sequence
    CONSTRAINT id_name_uix UNIQUE (id, name)
--  ^^^^^^^^^^ storage.modifier
--             ^^^^^^^^^^^ meta.constraint-name
--                         ^^^^^^ keyword.other
--                                ^ punctuation.section.group.begin
--                                 ^^ meta.column-name - variable.other.member.declaration
--                                   ^ punctuation.separator.sequence
--                                     ^^^^ meta.column-name
--                                         ^ punctuation.section.group.end
)

SELECT '\xDEADBEEF';
SET bytea_output = 'escape';

SELECT 'abc \153\154\155 \052\251\124'::bytea;
--                                    ^^ keyword.operator.cast
--                                      ^^^^^ storage.type
--                                           ^ punctuation.terminator.statement

CREATE TYPE mood AS ENUM ('sad', 'ok', 'happy');
-- ^^^ meta.create keyword.other.ddl
--     ^^^^ meta.create keyword.other
--          ^^^^ meta.create meta.toc-list.full-identifier entity.name.function
--               ^^ keyword.context.block
CREATE TABLE person (
    name text,
--  ^^^^ meta.column-name variable.other.member.declaration
--       ^^^^ storage.type
--           ^ punctuation.separator.sequence
    current_mood mood
--  ^^^^^^^^^^^^ meta.column-name variable.other.member.declaration
--               ^^^^ support.type
);
INSERT INTO person VALUES ('Moe', 'happy');
SELECT * FROM person WHERE current_mood = 'happy';

CREATE TABLE test (a BIT(3), b BIT VARYING(5));
INSERT INTO test VALUES (B'101', B'00');
INSERT INTO test VALUES (B'10', B'101');
INSERT INTO test VALUES (B'10'::bit(3), B'101');

CREATE TABLE sal_emp (
    name            text,
    pay_by_quarter  integer[],
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create meta.group.table-columns
--  ^^^^^^^^^^^^^^ meta.column-name
--                  ^^^^^^^ storage.type
--                         ^ punctuation.section.brackets.begin
--                          ^ punctuation.section.brackets.end
--                           ^ punctuation.separator.sequence - storage
    schedule        text[][]
--  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create meta.group.table-columns
--  ^^^^^^^^ meta.column-name
--                  ^^^^ storage.type
--                      ^ punctuation.section.brackets.begin
--                       ^ punctuation.section.brackets.end
--                        ^ punctuation.section.brackets.begin
--                         ^ punctuation.section.brackets.end
);

INSERT INTO sal_emp
    VALUES ('Bill',
    '{10000, 10000, 10000, 10000}',
    '{{"meeting", "lunch"}, {"training", "presentation"}}');

INSERT INTO sal_emp
    VALUES ('Carol',
    '{20000, 25000, 25000, 25000}',
    '{{"breakfast", "consulting"}, {"meeting", "lunch"}}');

INSERT INTO sal_emp
    VALUES ('Bill',
    ARRAY[10000, 10000, 10000, 10000],
--  ^^^^^ keyword.declaration
--       ^ punctuation.section.brackets.begin
--        ^^^^^ meta.number.integer.decimal constant.numeric.value
--             ^ punctuation.separator.sequence
--                                  ^ punctuation.section.brackets.end
--                                   ^ punctuation.separator.sequence
    ARRAY[['meeting', 'lunch'], ['training', 'presentation']]);
--  ^^^^^ keyword.declaration
--       ^^ punctuation.section.brackets.begin
--         ^^^^^^^^^ string.quoted.single
--                  ^ punctuation.separator.sequence - string

INSERT INTO sal_emp
    VALUES ('Carol',
    ARRAY[20000, 25000, 25000, 25000],
    ARRAY[['breakfast', 'consulting'], ['meeting', 'lunch']]);

SELECT name FROM sal_emp WHERE pay_by_quarter[1] <> pay_by_quarter[2];
-- ^^^ keyword.other.dml
--     ^^^^ meta.column-name
--          ^^^^ keyword.other.dml
--               ^^^^^^^ meta.table-name
--                       ^^^^^ keyword.other.dml
--                             ^^^^^^^^^^^^^^ meta.column-name
--                                           ^ punctuation.section.brackets.begin
--                                            ^ meta.number.integer.decimal constant.numeric.value
--                                             ^ punctuation.section.brackets.end
--                                               ^^ keyword.operator.comparison
--                                                  ^^^^^^^^^^^^^^ meta.column-name
--                                                                ^ punctuation.section.brackets.begin
--                                                                 ^ meta.number.integer.decimal constant.numeric.value
--                                                                  ^ punctuation.section.brackets.end
--                                                                   ^ punctuation.terminator.statement

SELECT schedule[1:2][2] FROM sal_emp WHERE name = 'Bill';
-- ^^^ keyword.other.dml
--     ^^^^^^^^ meta.column-name
--             ^ punctuation.section.brackets.begin
--              ^ meta.number.integer.decimal constant.numeric.value
--               ^ keyword.operator.range
--                ^ meta.number.integer.decimal constant.numeric.value
--                 ^ punctuation.section.brackets.end
--                  ^ punctuation.section.brackets.begin
--                   ^ meta.number.integer.decimal constant.numeric.value
--                    ^ punctuation.section.brackets.end
--                      ^^^^ keyword.other.dml
--                           ^^^^^^^ meta.table-name

CREATE EXTENSION hstore SCHEMA addons; -- TODO: scope schema correctly
-- ^^^ meta.create keyword.other.ddl
--     ^^^^^^^^^ meta.create keyword.other
--               ^^^^^^ meta.create meta.toc-list.full-identifier entity.name.function

CREATE TABLE example_table (
     first_name VARCHAR(100)
         CONSTRAINT check_first_name
--       ^^^^^^^^^^ storage.modifier
--                  ^^^^^^^^^^^^^^^^ meta.constraint-name
         ( first_name ~* '^[a-z]+$')
--       ^ punctuation.section.group.begin
--         ^^^^^^^^^^ meta.column-name
--                    ^^ keyword.operator.comparison
--                       ^^^^^^^^^^ meta.string.regexp
--                        ^^^^^^^^ source.regexp
--                       ^ punctuation.definition.string.begin
--                                ^ punctuation.definition.string.end
--                                 ^ punctuation.section.group.end - meta.string
);

ALTER TABLE mytable ADD CONSTRAINT verif_code CHECK (code IN ('A', 'AG', 'AL', 'AS', 'B', 'C', 'D', 'DA')); -- TODO: scope CHECK correctly
-- ^^^^^^^^ keyword.other.ddl
--          ^^^^^^^ meta.table-name
--                  ^^^^^^^^^^^^^^ keyword.other
--                                 ^^^^^^^^^^ meta.constraint-name


CREATE TABLE test1 (
    name                     varchar(500)  NOT NULL PRIMARY KEY,
    description              varchar       NOT NULL DEFAULT '',
    authors                  varchar[],
);

CREATE TABLE test2 (
    test1name               varchar(500)  NOT NULL REFERENCES test1(name) ON DELETE CASCADE ON UPDATE CASCADE,
--  ^^^^^^^^^ meta.column-name
--                          ^^^^^^^^^^^^ storage.type
--                                        ^^^ keyword.operator.logical
--                                            ^^^^ constant.language.null
--                                                 ^^^^^^^^^^ storage.modifier
--                                                            ^^^^^ meta.table-name
--                                                                 ^ punctuation.section.group.begin
--                                                                  ^^^^ meta.column-name
--                                                                      ^ punctuation.section.group.end
--                                                                        ^^^^^^^^^^^^^^^^^ storage.modifier
--                                                                                          ^^^^^^^^^^^^^^^^^ storage.modifier
--                                                                                                           ^ punctuation.separator.sequence
    PRIMARY KEY(test1name)
);

ALTER TABLE test2 ADD something varchar[];
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.alter
-- ^^^^^^^^ keyword.other.ddl
--          ^^^^^ meta.table-name
--                ^^^ keyword.other.ddl
--                    ^^^^^^^^^ meta.column-name
--                              ^^^^^^^ storage.type
--                                     ^ punctuation.section.brackets.begin
--                                      ^ punctuation.section.brackets.end
--                                       ^ punctuation.terminator.statement


CREATE TRIGGER blah AFTER INSERT OR UPDATE
-- ^^^ keyword.other.ddl
--     ^^^^^^^ keyword.other
--             ^^^^ meta.toc-list.full-identifier entity.name.function
--                  ^^^^^^^^^^^^^^^^^^^^^^ keyword.other
    ON some_table FOR EACH ROW EXECUTE PROCEDURE some_procedure(); -- TODO:
--  ^^ keyword.other
--     ^^^^^^^^^^ meta.table-name


CREATE FUNCTION highlight_result_array(vals varchar[], something tsquery, something_else boolean) RETURNS varchar[] AS $$
DECLARE
-- ^^^^ keyword.declaration.variable
    output varchar[];
--  ^^^^^^ variable.other
--         ^^^^^^^ storage.type
--                ^ punctuation.section.brackets.begin
--                 ^ punctuation.section.brackets.end
--                  ^ punctuation.terminator.statement
BEGIN
-- ^^ keyword.other.LUW
    FOR I IN array_lower(vals, 1)..array_upper(vals, 1) LOOP
        output[I] := compute_result(vals[I], something, something_else);
    END LOOP;
    RETURN output;
--  ^^^^^^ keyword.control.flow.return
END;
$$ LANGUAGE plpgsql STABLE;

DROP TRIGGER blah ON some_table;
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.drop
-- ^ keyword.other.ddl
--   ^^^^^^^ keyword.other
--                ^^ keyword.other
--                   ^^^^^^^^^^ meta.table-name
--                             ^ punctuation.terminator.statement
