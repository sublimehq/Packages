-- SYNTAX TEST "Packages/SQL/SQL.sublime-syntax"

SELECT 'Foo '' Bar';
--           ^ constant.character.escape.sql

SELECT "My "" Crazy Column Name" FROM my_table;
--         ^ constant.character.escape.sql

;CREATE TABLE foo (id INTEGER PRIMARY KEY);
 -- <- keyword.other.create
--^^^^^ keyword.other.create

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
) as result


/*
This is a
multiline comment
-- ^ source.sql comment.block.c
*/
select


   <=>
-- ^^^ keyword.operator.comparison.sql

CREATE TABLE table_name (
-- ^^^  meta.create.sql
--     ^^^^^ keyword.other.sql
--           ^^^^^^^^^^ entity.name.function.sql
  d integer NOT NULL
);


CREATE TABLE my_bad_as_schema.table_name (
-- ^^^  meta.create.sql
--     ^^^^^ keyword.other.sql
--           ^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.function.sql

  d integer NOT NULL
);
