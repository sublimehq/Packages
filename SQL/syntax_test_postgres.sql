-- SYNTAX TEST "Packages/SQL/PostgresSQL.sublime-syntax"

CREATE TABLE test1 (a character(4));
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create
-- ^^^^^^^^^ keyword.other.ddl
--           ^^^^^ meta.toc-list.full-identifier entity.name.function
--                 ^^^^^^^^^^^^^^^^ meta.group.table-columns
--                                 ^ punctuation.terminator.statement
--                 ^ punctuation.section.group.begin
--                  ^ meta.column-name
--                    ^^^^^^^^^^^^ storage.type
--                              ^ constant.numeric
--                                ^ punctuation.section.group.end

INSERT INTO test1 VALUES ('ok');
SELECT a, char_length(a) FROM test1;
-- ^^^ keyword.other.DML
--     ^ meta.column-name
--      ^ punctuation.separator.sequence
--        ^^^^^^^^^^^^^^ meta.function-call
--        ^^^^^^^^^^^ support.function
--                   ^ meta.group punctuation.section.parens.begin
--                    ^ meta.group meta.column-name
--                     ^ meta.group punctuation.section.parens.end
--                       ^^^^ keyword.other.DML - meta.group
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
--  ^^^ meta.column-name
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
--               ^^ keyword.operator.assignment.alias
CREATE TABLE person (
    name text,
    current_mood mood -- TODO: scope custom types
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
-- ^^^ keyword.other.DML
--     ^^^^ meta.column-name
--          ^^^^ keyword.other.DML
--               ^^^^^^^ meta.table-name
--                       ^^^^^ keyword.other.DML
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
-- ^^^ keyword.other.DML
--     ^^^^^^^^ meta.column-name
--             ^ punctuation.section.brackets.begin
--              ^ meta.number.integer.decimal constant.numeric.value
--               ^ keyword.operator.range
--                ^ meta.number.integer.decimal constant.numeric.value
--                 ^ punctuation.section.brackets.end
--                  ^ punctuation.section.brackets.begin
--                   ^ meta.number.integer.decimal constant.numeric.value
--                    ^ punctuation.section.brackets.end
--                      ^^^^ keyword.other.DML
--                           ^^^^^^^ meta.table-name
