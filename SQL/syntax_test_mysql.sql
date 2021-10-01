-- SYNTAX TEST "Packages/SQL/SQL.sublime-syntax"

SELECT 'Foo Bar';
--     ^^^^^^^^^ string.quoted.single
--     ^ punctuation.definition.string.begin
--             ^ punctuation.definition.string.end
--              ^ punctuation.terminator.statement - string

SELECT 'Foo '' Bar';
--          ^^ constant.character.escape.sql

SELECT "My "" Crazy Column Name" FROM my_table;
--         ^^ constant.character.escape.sql

SELECT "My -- Crazy Column Name" FROM my_table;
--         ^^ - comment - punctuation

SELECT "My /* Crazy Column Name" FROM my_table;
--         ^^ - comment - punctuation


;CREATE TABLE foo (id INTEGER PRIMARY KEY);
 -- <- meta.create keyword.other.ddl
--^^^^^ keyword.other.ddl
--      ^^^^^ keyword.other
--            ^^^ entity.name.function
--               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ - entity.name.function

create table some_schema.test2( id serial );
--^^^^ meta.create keyword.other.ddl
--     ^^^^^ meta.create keyword.other
--           ^^^^^^^^^^^^^^^^^ entity.name.function
--                      ^ punctuation.accessor.dot
--                            ^^^^^^^^^^^^^^ - entity.name.function

create table some_schema . test2 ( id serial );
--^^^^ meta.create keyword.other.ddl
--     ^^^^^ meta.create keyword.other
--           ^^^^^^^^^^^^^^^^^^^ entity.name
--                       ^ punctuation.accessor.dot
--                              ^^^^^^^^^^^^^^^ - entity.name.function

create table "testing123" (id integer);
--^^^^ meta.create keyword.other.ddl
--     ^^^^^ meta.create keyword.other
--           ^ punctuation.definition.identifier.begin
--            ^^^^^^^^^^ entity.name.function
--                      ^ punctuation.definition.identifier.end

create table `dbo`."testing123" (id integer);
--^^^^ meta.create keyword.other.ddl
--     ^^^^^ meta.create keyword.other
--           ^^^^^^^^^^^^^^^^^^ entity.name.function
--                ^ punctuation.accessor.dot
--                             ^^^^^^^^^^^^^^^ - entity.name.function

create table IF NOT EXISTS `testing123` (
-- ^^^^^^^^^^^^^^^^^^^^^^^^ - meta.toc-list
--           ^^ keyword.control.flow
--              ^^^ keyword.operator.logical
--                  ^^^^^^ keyword.operator.logical
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT, -- TODO: is unsigned a modifier or part of the type?
--  ^^^^ meta.column-name
--       ^^^^^^^ storage.type
--               ^^^^^^^^ storage.type
--                        ^^^ keyword.operator.logical
--                            ^^^^ constant.language.null
--                                 ^^^^^^^^^^^^^^ keyword.other
--                                               ^ punctuation.separator.sequence
    `lastchanged` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--                ^^^^^^^^^ storage.type.sql
--                                           ^^^^^^^^^^^^^^^^^ support.function.scalar.sql
--                                                             ^^^^^^^^^ storage.modifier.sql
    `col` bool DEFAULT FALSE,
--        ^^^^ storage.type.sql
--             ^^^^^^^ storage.modifier.sql
--                     ^^^^^ constant.language.boolean.sql
--                          ^ punctuation.separator.sequence
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
--               ^^^^^^^^^^^^^^^^^^^^^^ storage.type.sql
    mytime timestamp(3) without time zone DEFAULT now(),
--         ^^^^^^^^^^^^ storage.type.sql
--                   ^ constant.numeric
--                      ^^^^^^^^^^^^^^^^^ storage.type.sql
--                                        ^^^^^^^ storage.modifier
--                                                ^^^ meta.function-call support.function
--                                                   ^ punctuation.section.parens.begin
--                                                    ^ punctuation.section.parens.end
--                                                     ^ punctuation.separator.sequence
    mytime2 timestamp(3) without  time  zone DEFAULT '2008-01-18 00:00:00'::timestamp(3) without time zone, -- TODO: seems like :: is a postgresql cast operator
--                       ^^^^^^^^^^^^^^^^^^^ storage.type.sql
    some_number numeric(5, 2) DEFAULT 0,
--  ^^^^^^^^^^^ meta.column-name
--              ^^^^^^^^^^^^^ storage.type
--                      ^ constant.numeric
--                       ^ punctuation.separator.sequence
--                         ^ constant.numeric
--                            ^^^^^^^ storage.modifier
--                                    ^ meta.number.integer.decimal constant.numeric.value
    primary key (id),
--  ^^^^^^^^^^^ storage.modifier.sql
    UNIQUE (foreign_id),
    CONSTRAINT fancy_table_valid1 CHECK (id <> foreign_id)
--  ^^^^^^^^^^ storage.modifier.sql
--                                ^^^^^ storage.modifier.sql
--                                      ^^^^^^^^^^^^^^^^^^ meta.group meta.group
--                                       ^^ meta.column-name
--                                          ^^ keyword.operator.comparison
--                                             ^^^^^^^^^^ meta.column-name
);

CREATE INDEX ON fancy_table(mytime);
--     ^^^^^ keyword.other.sql
--           ^^ keyword.other
--              ^^^^^^^^^^^ meta.table-name

CREATE INDEX ON fancy_table USING gin (fancy_column gin_trgm_ops);
--     ^^^^^ keyword.other.sql
--           ^^ keyword.other
--              ^^^^^^^^^^^ meta.table-name
--                          ^^^^^ keyword.other

CREATE UNIQUE INDEX ON fancy_table(fancy_column,mycount) WHERE myflag IS NULL;
--     ^^^^^^^^^^^^ keyword.other.sql
--                  ^^ meta.create keyword.other
--                     ^^^^^^^^^^^ meta.table-name
--                                ^ meta.group punctuation.section.group.begin
--                                 ^^^^^^^^^^^^ meta.group meta.column-name
--                                             ^ meta.group punctuation.separator.sequence
--                                              ^^^^^^^ meta.group meta.column-name
--                                                     ^ meta.group punctuation.section.group.end
--                                                       ^^^^^ keyword.other.DML.sql
--                                                                    ^^ keyword.operator.logical.sql
--                                                                       ^^^^ constant.language.null.sql

create fulltext index if not exists `myindex` ON mytable;
--     ^^^^^^^^^^^^^^ keyword.other.sql
--                    ^^ keyword.control.flow
--                       ^^^ keyword.operator.logical
--                           ^^^^^^ keyword.operator.logical
--                                  ^^^^^^^^^ meta.toc-list.full-identifier entity.name.function
--                                            ^^ keyword.other
--                                               ^^^^^^^ meta.table-name
--                                                      ^ punctuation.terminator.statement

ALTER TABLE dbo.testing123 ADD COLUMN mycolumn longtext;
-- ^^^^^^^^ meta.alter keyword.other.ddl
--                         ^^^ keyword.other.ddl.sql
--                             ^^^^^^ keyword.other.ddl.sql
--                                    ^^^^^^^^ meta.column-name
--                                             ^^^^^^^^ storage.type.sql

ALTER TABLE testing123 CHANGE COLUMN mycolumn mycolumn ENUM('foo', 'bar');
--                     ^^^^^^^^^^^^^ meta.alter keyword.other.ddl
--                                                     ^^^^ storage.type.sql

DROP TABLE IF EXISTS testing123;
-- <- meta.drop.sql keyword.other.ddl.sql
-- ^^^^^^^ meta.drop keyword.other.ddl
--         ^^ meta.drop keyword.control.flow
--            ^^^^^^ keyword.operator.logical.sql
--                   ^^^^^^^^^^ meta.table-name
--                             ^ punctuation.terminator.statement

select *
from some_table
where exists(select * from other_table where id = some_table.id)
--    ^^^^^^ keyword.operator.logical

SELECT
(
SELECT CASE field
USING a
-- <- keyword.other
    WHEN 1
    THEN -- comment's say that
--                    ^ comment.line.double-dash
        EXISTS(
        select 1)
    ELSE NULL
    END
) as result


/*
-- <- comment.block punctuation.definition.comment.begin
This is a
multiline comment
-- ^^^^^^^^^^^^^^^ source.sql comment.block.sql
*/
-- <- comment.block punctuation.definition.comment.end

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
--              ^^^^^^^^^^^ meta.column-alias
FROM    foo
WHERE   f.a IS NULL
-- ^^ keyword.other.DML.sql
--          ^^ keyword.operator.logical.sql
--             ^^^^ constant.language.null.sql
        AND f.b IS NOT NULL
--      ^^^ keyword.operator.logical.sql
--              ^^ keyword.operator.logical.sql
--                 ^^^ keyword.operator.logical.sql
--                     ^^^^ constant.language.null.sql