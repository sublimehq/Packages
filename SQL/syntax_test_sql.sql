-- SYNTAX TEST "Packages/SQL/SQL.sublime-syntax"

SELECT 'Foo '' Bar';
--           ^ constant.character.escape.sql

SELECT "My "" Crazy Column Name" FROM my_table;
--         ^ constant.character.escape.sql

;CREATE TABLE foo (id INTEGER PRIMARY KEY);
 -- <- keyword.other.create
--^^^^^ keyword.other.create
--      ^^^^^ keyword.other
--            ^^^ entity.name.function
--               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ - entity.name.function

create table some_schema.test2( id serial );
--^^^^ meta.create keyword.other.create
--     ^^^^^ meta.create keyword.other
--           ^^^^^^^^^^^^ - entity.name.function
--                      ^ punctuation.accessor.dot
--                       ^^^^^ entity.name.function
--                            ^^^^^^^^^^^^^^ - entity.name.function

create table some_schema . test2 ( id serial );
--^^^^ meta.create keyword.other.create
--     ^^^^^ meta.create keyword.other
--           ^^^^^^^^^^^^^^ - entity.name
--                       ^ punctuation.accessor.dot
--                         ^^^^^ entity.name.function
--                              ^^^^^^^^^^^^^^^ - entity.name.function

create table "testing123" (id integer);
--^^^^ meta.create keyword.other.create
--     ^^^^^ meta.create keyword.other
--           ^ - entity.name.function
--            ^^^^^^^^^^ entity.name.function
--                      ^^^^^^^^^^^^^^^^ - entity.name.function

create table `dbo`."testing123" (id integer);
--^^^^ meta.create keyword.other.create
--     ^^^^^ meta.create keyword.other
--           ^^^^^^^ - entity.name.function
--                ^ punctuation.accessor.dot
--                  ^^^^^^^^^^ entity.name.function
--                            ^^^^^^^^^^^^^^^^ - entity.name.function

select *
from some_table
where exists(select * from other_table where id = some_table.id)
--    ^^^^^^ keyword.operator.logical

SELECT
(
SELECT CASE field
USING a
-- <- keyword.other.DML
    WHEN 1
    THEN -- comment's say that
--                    ^ comment.line.double-dash
        EXISTS(
        select 1)
    ELSE NULL
    END
) as result


/*
This is a
multiline comment
-- ^ source.sql comment.block.c
*/

/**
    *
--  ^ punctuation.definition.comment.sql
*/

select


   <=>  
-- ^^^ keyword.operator.comparison.sql

SELECT  *,
-- ^^^ keyword.other.DML.sql
--      ^ variable.language.star.sql
        f.id AS database_id
--           ^^ keyword.operator.assignment.alias.sql
FROM    foo
WHERE   f.a IS NULL
-- ^^ keyword.other.DML.sql
--          ^^ keyword.operator.logical.sql
--             ^^^^ constant.language.sql
        AND f.b IS NOT NULL
--      ^^^ keyword.operator.logical.sql
--              ^^ keyword.operator.logical.sql
--                 ^^^ keyword.operator.logical.sql
--                     ^^^^ constant.language.sql
