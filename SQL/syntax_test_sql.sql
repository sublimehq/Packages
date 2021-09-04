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

create table IF NOT EXISTS `testing123` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `lastchanged` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--                ^^^^^^^^^ storage.type.sql
--                                           ^^^^^^^^^^^^^^^^^ support.function.scalar.sql
--                                                             ^^^^^^^^^ storage.modifier.sql
    `col` bool DEFAULT FALSE,
--        ^^^^ storage.type.sql
--             ^^^^^^^ storage.modifier.sql
--                     ^^^^^ constant.boolean.sql
    `fkey` INT UNSIGNED NULL REFERENCES test2(id),
--                           ^^^^^^^^^^ storage.modifier.sql
    `version` tinytext DEFAULT NULL COMMENT 'important clarification',
--            ^^^^^^^^ storage.type.sql
    `percentage` float DEFAULT '0',
    UNIQUE KEY `testing123_search` (`col`, `version`),
--  ^^^^^^^^^^ storage.modifier.sql
    KEY `testing123_col` (`col`),
--  ^^^ storage.modifier.sql
    FULLTEXT KEY `testing123_version` (`version`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

create table fancy_table (
    id SERIAL,
--     ^^^^^^ storage.type.sql
    foreign_id integer,
--             ^^^^^^^ storage.type.sql
    myflag boolean DEFAULT false,
--         ^^^^^^^ storage.type.sql
    mycount double  precision DEFAULT 1,
--          ^^^^^^^^^^^^^^^^^ storage.type.sql
    fancy_column character  varying(42) DEFAULT 'nice'::character varying,
--               ^^^^^^^^^^^^^^^^^^ storage.type.sql
    mytime timestamp(3) without time zone DEFAULT now(),
--                      ^^^^^^^^^^^^^^^^^ storage.type.sql
    mytime2 timestamp(3) without  time  zone DEFAULT '2008-01-18 00:00:00'::timestamp(3) without time zone,
--                       ^^^^^^^^^^^^^^^^^^^ storage.type.sql
    primary key (id),
--  ^^^^^^^^^^^ storage.modifier.sql
    UNIQUE (foreign_id),
    CONSTRAINT fancy_table_valid1 CHECK (id <> foreign_id)
--  ^^^^^^^^^^ storage.modifier.sql
--                                ^^^^^ storage.modifier.sql
);

CREATE INDEX ON fancy_table(mytime);
--     ^^^^^ keyword.other.sql
--           ^^ - entity.name.function.sql
--              ^^^^^^^^^^^ entity.name.function.sql

CREATE INDEX ON fancy_table USING gin (fancy_column gin_trgm_ops);
--     ^^^^^ keyword.other.sql
--           ^^ - entity.name.function.sql

CREATE UNIQUE INDEX ON fancy_table(fancy_column,mycount) WHERE myflag IS NULL;
--     ^^^^^^^^^^^^ keyword.other.sql
--                  ^^ - entity.name.function.sql
--                     ^^^^^^^^^^^ entity.name.function.sql
--                                                       ^^^^^ keyword.other.DML.sql
--                                                                    ^^ keyword.operator.logical.sql
--                                                                       ^^^^ constant.language.sql

create fulltext index if not exists `myindex` ON mytable;
--     ^^^^^^^^^^^^^^ keyword.other.sql

ALTER TABLE dbo.testing123 ADD COLUMN mycolumn longtext;
--                         ^^^ keyword.other.add.sql
--                             ^^^^^^ keyword.other.sql
--                                             ^^^^^^^^ storage.type.sql

ALTER TABLE testing123 CHANGE COLUMN mycolumn mycolumn ENUM('foo', 'bar');
--                                                     ^^^^ storage.type.sql

DROP TABLE IF EXISTS testing123;
-- <- meta.drop.sql keyword.other.create.sql
--            ^^^^^^ keyword.operator.logical.sql

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
--      ^ variable.language.wildcard.asterisk.sql
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


SELECT columns FROM table WHERE
    column LIKE '%[[]SQL Server Driver]%'
--         ^^^^ keyword.operator.logical
--              ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.like string.quoted.single
--              ^ punctuation.definition.string.begin
--               ^ keyword.other.any
--                ^^^ meta.set.like
--                ^ keyword.control.set.begin
--                  ^ keyword.control.set.end
--                   ^^^^^^^^^^^^^^^^^^ - constant - keyword
--                                     ^ keyword.other.any
--                                      ^ punctuation.definition.string.end
--                                       ^^ - meta.string - string

SELECT columns FROM table WHERE
    column LIKE '%[SQL Server Driver]%'
--         ^^^^ keyword.operator.logical
--              ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.like string.quoted.single
--              ^ punctuation.definition.string.begin
--               ^ keyword.other.any
--                ^^^^^^^^^^^^^^^^^^^ meta.set.like
--                ^ keyword.control.set.begin
--                                  ^ keyword.control.set.end
--                   ^^^^^^^^^^^^^^^ - constant - keyword
--                                   ^ keyword.other.any
--                                    ^ punctuation.definition.string.end
--                                     ^^ - meta.string - string

SELECT columns FROM table WHERE
    column LIKE 'hello_world'
--         ^^^^ keyword.operator.logical
--              ^^^^^^^^^^^^ meta.string.like string.quoted.single
--              ^ punctuation.definition.string.begin
--                    ^ keyword.other.any
--                          ^ punctuation.definition.string.end
--                           ^^ - meta.string - string

SELECT columns FROM table WHERE
    column LIKE '%\[SQL Server Driver]%' ESCAPE '\'
--                                       ^^^^^^ keyword.operator
--                                              ^^^ string.quoted.single
--                                              ^ punctuation.definition.string.begin
--                                               ^ constant.character.escape
--                                                ^ punctuation.definition.string.end
