-- SYNTAX TEST "Packages/SQL/MySQL.sublime-syntax"

-- ----------------------------------------------------------------------------
-- Account Management SQL Commands
-- https://mariadb.com/kb/en/account-management-sql-commands
-- ----------------------------------------------------------------------------

CREATE USER IF NOT EXISTS
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql
--     ^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^ keyword.other.ddl.sql
--          ^^ keyword.control.conditional.if.sql
--             ^^^ keyword.operator.logical.sql
--                 ^^^^^^ keyword.operator.logical.sql
    user1,
-- <- meta.statement.create.sql
-- ^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^^ entity.name.user.sql
--       ^ punctuation.separator.sequence.sql

    user2@localhost IDENTIFIED BY 'password',
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^^^^^^^^^^^^ entity.name.user.sql
--       ^ punctuation.accessor.at.sql
--                  ^^^^^^^^^^ keyword.other.ddl.sql
--                             ^^ keyword.other.ddl.sql
--                                ^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                          ^ punctuation.separator.sequence.sql

    'user3@'@'%' IDENTIFIED BY PASSWORD 'password_hash',
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^^^^^^^^^ entity.name.user.sql
--  ^ punctuation.definition.identifier.begin.sql
--        ^ - punctuation
--         ^ punctuation.definition.identifier.end.sql
--          ^ punctuation.accessor.at.sql
--           ^ punctuation.definition.identifier.begin.sql
--            ^ variable.language.wildcard.percent.sql
--             ^ punctuation.definition.identifier.end.sql
--               ^^^^^^^^^^ keyword.other.ddl.sql
--                          ^^ keyword.other.ddl.sql
--                             ^^^^^^^^ storage.modifier.sql
--                                      ^^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                                     ^ punctuation.separator.sequence.sql

    user4 IDENTIFIED VIA
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^^ entity.name.user.sql
--        ^^^^^^^^^^ keyword.other.ddl.sql
--                   ^^^ keyword.other.ddl.sql

        auth_plugin1,
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--      ^^^^^^^^^^^^ meta.other-name.sql
--                  ^ punctuation.separator.sequence.sql

        auth_plugin2 AS 'auth_string',
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--      ^^^^^^^^^^^^ meta.other-name.sql
--                   ^^ keyword.operator.assignment.alias.sql
--                      ^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                   ^ punctuation.separator.sequence.sql

        auth_plugin3 USING 'auth_string',
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--      ^^^^^^^^^^^^ meta.other-name.sql
--                   ^^^^^ keyword.other.ddl.sql
--                         ^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                      ^ punctuation.separator.sequence.sql

        auth_plugin4 AS PASSWORD('password')
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--      ^^^^^^^^^^^^ meta.other-name.sql
--                   ^^ keyword.operator.assignment.alias.sql
--                      ^^^^^^^^^^^^^^^^^^^^ meta.function-call.sql
--                      ^^^^^^^^ support.function.sql
--                              ^^^^^^^^^^^^ meta.group.sql
--                              ^ punctuation.section.arguments.begin.sql
--                               ^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                         ^ punctuation.section.arguments.end.sql

    REQUIRE NONE
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^^^^ keyword.other.ddl.sql
--          ^^^^ constant.language.null.sql

    REQUIRE SSL AND CIPHER 'ciphername' X509 AND SUBJECT 'subject'
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^^^^ keyword.other.ddl.sql
--          ^^^ constant.language.sql
--              ^^^ keyword.operator.logical.sql
--                  ^^^^^^ constant.language.sql
--                         ^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                      ^^^^ constant.language.sql
--                                           ^^^ keyword.operator.logical.sql
--                                               ^^^^^^^ constant.language.sql
--                                                       ^^^^^^^^^ meta.string.sql string.quoted.single.sql

    WITH MAX_QUERIES_PER_HOUR 5
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^^^^^^^^^ constant.language.sql
--                            ^ meta.number.integer.decimal.sql constant.numeric.value.sql

    WITH MAX_UPDATES_PER_HOUR 5
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^^^^^^^^^ constant.language.sql
--                            ^ meta.number.integer.decimal.sql constant.numeric.value.sql

    WITH MAX_CONNECTIONS_PER_HOUR 5
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^^^^^^^^^^^^^ constant.language.sql
--                                ^ meta.number.integer.decimal.sql constant.numeric.value.sql

    WITH MAX_USER_CONNECTIONS 5
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^^^^^^^^^ constant.language.sql
--                            ^ meta.number.integer.decimal.sql constant.numeric.value.sql

    WITH MAX_STATEMENT_TIME 5
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^^^^^^^ constant.language.sql
--                          ^ meta.number.integer.decimal.sql constant.numeric.value.sql

    ACCOUNT LOCK
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^^^^ keyword.other.ddl.sql
--          ^^^^ constant.language.sql

    ACCOUNT UNLOCK
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^^^^ keyword.other.ddl.sql
--          ^^^^^^ constant.language.sql

    PASSWORD EXPIRE DEFAULT
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^^^^^ keyword.other.ddl.sql
--           ^^^^^^ keyword.other.ddl.sql
--                  ^^^^^^^ constant.language.sql

    PASSWORD EXPIRE NEVER
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^^^^^ keyword.other.ddl.sql
--           ^^^^^^ keyword.other.ddl.sql
--                  ^^^^^ constant.language.sql

    PASSWORD EXPIRE INTERVAL 5 DAY
-- <- meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
--  ^^^^^^^^ keyword.other.ddl.sql
--           ^^^^^^ keyword.other.ddl.sql
--                  ^^^^^^^^ constant.language.sql
--                           ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                             ^^^ keyword.other.unit.sql

-- ----------------------------------------------------------------------------

ALTER USER IF EXISTS
-- <- meta.statement.alter.sql keyword.other.ddl.sql
-- ^^^ meta.statement.alter.sql
--    ^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
-- ^^ keyword.other.ddl.sql
--    ^^^^ keyword.other.ddl.sql
--         ^^ keyword.control.conditional.if.sql
--            ^^^^^^ keyword.operator.logical.sql
    user1,
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^^ meta.user-name.sql
--       ^ punctuation.separator.sequence.sql

    user2 IDENTIFIED BY 'password',
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^^ meta.user-name.sql
--        ^^^^^^^^^^ keyword.other.ddl.sql
--                   ^^ keyword.other.ddl.sql
--                      ^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                ^ punctuation.separator.sequence.sql

    user3 IDENTIFIED BY PASSWORD 'password_hash',
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^^ meta.user-name.sql
--        ^^^^^^^^^^ keyword.other.ddl.sql
--                   ^^ keyword.other.ddl.sql
--                      ^^^^^^^^ storage.modifier.sql
--                               ^^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                              ^ punctuation.separator.sequence.sql

    user4 IDENTIFIED VIA
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^^ meta.user-name.sql
--        ^^^^^^^^^^ keyword.other.ddl.sql
--                   ^^^ keyword.other.ddl.sql

        auth_plugin1,
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--      ^^^^^^^^^^^^ meta.other-name.sql
--                  ^ punctuation.separator.sequence.sql

        auth_plugin2 AS 'auth_string',
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--      ^^^^^^^^^^^^ meta.other-name.sql
--                   ^^ keyword.operator.assignment.alias.sql
--                      ^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                   ^ punctuation.separator.sequence.sql

        auth_plugin3 USING 'auth_string',
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--      ^^^^^^^^^^^^ meta.other-name.sql
--                   ^^^^^ keyword.other.ddl.sql
--                         ^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                      ^ punctuation.separator.sequence.sql

        auth_plugin4 AS PASSWORD('password')
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--      ^^^^^^^^^^^^ meta.other-name.sql
--                   ^^ keyword.operator.assignment.alias.sql
--                      ^^^^^^^^^^^^^^^^^^^^ meta.function-call.sql
--                      ^^^^^^^^ support.function.sql
--                              ^^^^^^^^^^^^ meta.group.sql
--                              ^ punctuation.section.arguments.begin.sql
--                               ^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                         ^ punctuation.section.arguments.end.sql

    REQUIRE NONE
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^^^^ keyword.other.ddl.sql
--          ^^^^ constant.language.null.sql

    REQUIRE SSL AND CIPHER 'ciphername' X509 AND SUBJECT 'subject'
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^^^^ keyword.other.ddl.sql
--          ^^^ constant.language.sql
--              ^^^ keyword.operator.logical.sql
--                  ^^^^^^ constant.language.sql
--                         ^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                      ^^^^ constant.language.sql
--                                           ^^^ keyword.operator.logical.sql
--                                               ^^^^^^^ constant.language.sql
--                                                       ^^^^^^^^^ meta.string.sql string.quoted.single.sql

    WITH MAX_QUERIES_PER_HOUR 5
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^^^^^^^^^ constant.language.sql
--                            ^ meta.number.integer.decimal.sql constant.numeric.value.sql

    WITH MAX_UPDATES_PER_HOUR 5
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^^^^^^^^^ constant.language.sql
--                            ^ meta.number.integer.decimal.sql constant.numeric.value.sql

    WITH MAX_CONNECTIONS_PER_HOUR 5
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^^^^^^^^^^^^^ constant.language.sql
--                                ^ meta.number.integer.decimal.sql constant.numeric.value.sql

    WITH MAX_USER_CONNECTIONS 5
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^^^^^^^^^ constant.language.sql
--                            ^ meta.number.integer.decimal.sql constant.numeric.value.sql

    WITH MAX_STATEMENT_TIME 5
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^^^^^^^ constant.language.sql
--                          ^ meta.number.integer.decimal.sql constant.numeric.value.sql

    ACCOUNT LOCK
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^^^^ keyword.other.ddl.sql
--          ^^^^ constant.language.sql

    ACCOUNT UNLOCK
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^^^^ keyword.other.ddl.sql
--          ^^^^^^ constant.language.sql

    PASSWORD EXPIRE DEFAULT
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^^^^^ keyword.other.ddl.sql
--           ^^^^^^ keyword.other.ddl.sql
--                  ^^^^^^^ constant.language.sql

    PASSWORD EXPIRE NEVER
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^^^^^ keyword.other.ddl.sql
--           ^^^^^^ keyword.other.ddl.sql
--                  ^^^^^ constant.language.sql

    PASSWORD EXPIRE INTERVAL 5 DAY
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^^^^^ keyword.other.ddl.sql
--           ^^^^^^ keyword.other.ddl.sql
--                  ^^^^^^^^ constant.language.sql
--                           ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                             ^^^ keyword.other.unit.sql

-- ----------------------------------------------------------------------------

DROP USER bob@'%' ;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^ meta.statement.drop.sql
-- ^ keyword.other.ddl.sql
--   ^^^^ keyword.other.ddl.sql
--        ^^^^^^^ meta.user-name.sql
--           ^ punctuation.accessor.at.sql
--                ^ punctuation.terminator.statement.sql

DROP USER IF EXISTS bob, clara@localhost ;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.drop.sql
-- ^ keyword.other.ddl.sql
--   ^^^^ keyword.other.ddl.sql
--        ^^ keyword.control.conditional.if.sql
--           ^^^^^^ keyword.operator.logical.sql
--                  ^^^ meta.user-name.sql
--                     ^ punctuation.separator.sequence.sql
--                       ^^^^^^^^^^^^^^^ meta.user-name.sql
--                            ^ punctuation.accessor.at.sql
--                                       ^ punctuation.terminator.statement.sql

-- ----------------------------------------------------------------------------

GRANT
-- <- meta.statement.grant.sql keyword.other.ddl.sql
-- ^^ meta.statement.grant.sql keyword.other.ddl.sql
--   ^ meta.statement.grant.sql - keyword

GRANT DROP TABLE, ALTER COLUMN
-- <- meta.statement.grant.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
-- ^^ keyword.other.ddl.sql
--              ^ punctuation.separator.sequence.sql

GRANT ALTER COLUMN ON *
-- <- meta.statement.grant.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--                 ^^ keyword.other.ddl.sql
--                    ^ meta.other-name.sql variable.language.wildcard.asterisk.sql

GRANT ALTER TABLE ON *.*
-- <- meta.statement.grant.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--                ^^ keyword.other.ddl.sql
--                   ^^^ meta.other-name.sql
--                   ^ variable.language.wildcard.asterisk.sql
--                    ^ punctuation.accessor.dot.sql
--                     ^ variable.language.wildcard.asterisk.sql

GRANT ALTER INDEX ON db_name.*
-- <- meta.statement.grant.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--                ^^ keyword.other.ddl.sql
--                   ^^^^^^^^^ meta.other-name.sql
--                          ^ punctuation.accessor.dot.sql
--                           ^ variable.language.wildcard.asterisk.sql

GRANT ALTER COLUMN ON db_name.table_name
-- <- meta.statement.grant.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--                 ^^ keyword.other.ddl.sql
--                    ^^^^^^^^^^^^^^^^^^ meta.other-name.sql
--                           ^ punctuation.accessor.dot.sql

GRANT ALTER COLUMN ON table_name
-- <- meta.statement.grant.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--                 ^^ keyword.other.ddl.sql
--                    ^^^^^^^^^^ meta.other-name.sql

GRANT CREATE INDEX ON TABLE * TO user1@% IDENTIFIED BY 'password' ;
-- <- meta.statement.grant.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
-- ^^ keyword.other.ddl.sql
--                 ^^ keyword.other.ddl.sql
--                    ^^^^^ storage.type.sql
--                          ^ meta.other-name.sql variable.language.wildcard.asterisk.sql
--                            ^^ keyword.other.ddl.sql
--                               ^^^^^^^ meta.user-name.sql
--                                    ^ punctuation.accessor.at.sql
--                                     ^ variable.language.wildcard.percent.sql
--                                       ^^^^^^^^^^ keyword.other.ddl.sql
--                                                  ^^ keyword.other.ddl.sql
--                                                     ^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                                                ^ punctuation.terminator.statement.sql

GRANT CREATE INDEX ON PROCEDURE *.* TO user1 IDENTIFIED BY PASSWORD 'password_hash' ;
-- <- meta.statement.grant.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
-- ^^ keyword.other.ddl.sql
--                 ^^ keyword.other.ddl.sql
--                    ^^^^^^^^^ storage.type.sql
--                              ^^^ meta.other-name.sql
--                                  ^^ keyword.other.ddl.sql
--                                     ^^^^^ meta.user-name.sql
--                                           ^^^^^^^^^^ keyword.other.ddl.sql
--                                                      ^^ keyword.other.ddl.sql
--                                                         ^^^^^^^^ storage.modifier.sql
--                                                                  ^^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                                                                  ^ punctuation.terminator.statement.sql

GRANT CREATE INDEX ON PACKAGE *.* TO "user1" IDENTIFIED VIA auth1 or auth2 ;
-- <- meta.statement.grant.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
-- ^^ keyword.other.ddl.sql
--                 ^^ keyword.other.ddl.sql
--                    ^^^^^^^ storage.type.sql
--                            ^^^ meta.other-name.sql
--                                ^^ keyword.other.ddl.sql
--                                   ^^^^^^^ meta.user-name.sql
--                                           ^^^^^^^^^^ keyword.other.ddl.sql
--                                                      ^^^ keyword.other.ddl.sql
--                                                          ^^^^^ meta.other-name.sql
--                                                                ^^ keyword.operator.logical.sql
--                                                                   ^^^^^ meta.other-name.sql
--                                                                         ^ punctuation.terminator.statement.sql

GRANT PROXY
-- <- meta.statement.grant.sql keyword.other.ddl.sql
-- ^^^^^^^^^ meta.statement.grant.sql
-- ^^ keyword.other.ddl.sql
--    ^^^^^ keyword.other.ddl.sql
    ON username
-- <- meta.statement.grant.sql
-- ^^^^^^^^^^^^^ meta.statement.grant.sql
--  ^^ keyword.other.ddl.sql
--     ^^^^^^^^ meta.user-name.sql
    TO user1 IDENTIFIED BY 'password',
-- <- meta.statement.grant.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--  ^^ keyword.other.ddl.sql
--     ^^^^^ meta.user-name.sql
--           ^^^^^^^^^^ keyword.other.ddl.sql
--                      ^^ keyword.other.ddl.sql
--                         ^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                   ^ punctuation.separator.sequence.sql
       user2 IDENTIFIED VIA auth USING PASSWORD('passord')
-- <- meta.statement.grant.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--     ^^^^^ meta.user-name.sql
--           ^^^^^^^^^^ keyword.other.ddl.sql
--                      ^^^ keyword.other.ddl.sql
--                          ^^^^ meta.other-name.sql
--                               ^^^^^ keyword.other.ddl.sql
--                                     ^^^^^^^^^^^^^^^^^^^ meta.function-call.sql
--                                     ^^^^^^^^ support.function.sql
--                                             ^^^^^^^^^^^ meta.group.sql
--                                             ^ punctuation.section.arguments.begin.sql
--                                              ^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                                       ^ punctuation.section.arguments.end.sql
    WITH GRANT OPTION ;
-- <- meta.statement.grant.sql
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^ constant.language.sql
--                    ^ punctuation.terminator.statement.sql

GRANT rolename TO role, user IDENTIFIED BY 'password' WITH ADMIN OPTION ;
-- <- meta.statement.grant.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
-- ^^ keyword.other.ddl.sql
--    ^^^^^^^^ meta.user-name.sql
--             ^^ keyword.other.ddl.sql
--                ^^^^ meta.user-name.sql
--                    ^ punctuation.separator.sequence.sql
--                      ^^^^ meta.user-name.sql
--                           ^^^^^^^^^^ keyword.other.ddl.sql
--                                      ^^ keyword.other.ddl.sql
--                                         ^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                                    ^^^^ keyword.other.ddl.sql
--                                                         ^^^^^^^^^^^^ constant.language.sql
--                                                                      ^ punctuation.terminator.statement.sql

-- ----------------------------------------------------------------------------
-- Legacy Tests
-- ----------------------------------------------------------------------------

SELECT 'Foo Bar';
--     ^^^^^^^^^ string.quoted.single
--     ^ punctuation.definition.string.begin
--             ^ punctuation.definition.string.end
--              ^ punctuation.terminator.statement - string

SELECT 'Foo '' Bar';
--          ^^ constant.character.escape.sql

SELECT "My "" Crazy Column Name" FROM my_table;
--     ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string string.quoted.double
--     ^ punctuation.definition.string.begin
--         ^^ constant.character.escape.sql
--                             ^ punctuation.definition.string.end

SELECT "My -- Crazy Column Name" FROM my_table;
--         ^^ - comment - punctuation

SELECT "My /* Crazy Column Name" FROM my_table;
--         ^^ - comment - punctuation

CREATE TABLE foo
-- <- meta.statement.create.sql keyword.other.ddl
-- ^^^^^^^^^^^^^^ meta.statement.create.sql
-- ^^^ keyword.other.ddl
--    ^ - keyword
--     ^^^^^ keyword.other.ddl
--          ^ - keyword
--           ^^^ entity.name.struct.table.sql

;CREATE TABLE foo (id INTEGER PRIMARY KEY);
-- <- punctuation.terminator.statement.sql
 -- <- meta.statement.create keyword.other.ddl
--^^^^^ keyword.other.ddl
--      ^^^^^ keyword.other
--            ^^^ entity.name.struct
--               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ - entity.name

create table some_schema.test2( id serial );
--^^^^ meta.statement.create keyword.other.ddl
--     ^^^^^ meta.statement.create keyword.other
--           ^^^^^^^^^^^^^^^^^ entity.name.struct
--                      ^ punctuation.accessor.dot
--                            ^^^^^^^^^^^^^^ - entity.name

create table some_schema . test2 ( id serial );
--^^^^ meta.statement.create keyword.other.ddl
--     ^^^^^ meta.statement.create keyword.other
--           ^^^^^^^^^^^^^^^^^^^ entity.name
--                       ^ punctuation.accessor.dot
--                              ^^^^^^^^^^^^^^^ - entity.name

create table "testing123" (id integer);
--^^^^ meta.statement.create keyword.other.ddl
--     ^^^^^ meta.statement.create keyword.other
--           ^ punctuation.definition.identifier.begin
--            ^^^^^^^^^^ entity.name.struct
--                      ^ punctuation.definition.identifier.end

create table `dbo`."testing123" (id integer);
--^^^^ meta.statement.create keyword.other.ddl
--     ^^^^^ meta.statement.create keyword.other
--           ^^^^^^^^^^^^^^^^^^ entity.name.struct
--                ^ punctuation.accessor.dot
--                             ^^^^^^^^^^^^^^^ - entity.name

create table IF NOT EXISTS `testing123` (
-- ^^^^^^^^^^^^^^^^^^^^^^^^ - meta.toc-list
--           ^^ keyword.control.conditional.if
--              ^^^ keyword.operator.logical
--                  ^^^^^^ keyword.operator.logical
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
--  ^^^^ meta.column-name
--       ^^^^^^^ storage.type
--               ^^^^^^^^ storage.modifier
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
--                                                   ^ punctuation.section.arguments.begin
--                                                    ^ punctuation.section.arguments.end
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
--                                ^^^^^ keyword.other
--                                      ^^^^^^^^^^^^^^^^^^ meta.group meta.group
--                                       ^^ meta.column-name
--                                          ^^ keyword.operator.comparison
--                                             ^^^^^^^^^^ meta.column-name
);

CREATE INDEX ON fancy_table(mytime);
-- <- meta.statement.create.sql keyword.other.ddl
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql
--     ^^^^^ keyword.other.ddl
--           ^^ keyword.other
--              ^^^^^^^^^^^ meta.table-name

CREATE INDEX ON fancy_table USING gin (fancy_column gin_trgm_ops);
-- <- meta.statement.create.sql keyword.other.ddl
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql
-- ^^^ keyword.other.ddl
--     ^^^^^ keyword.other.ddl
--           ^^ keyword.other
--              ^^^^^^^^^^^ meta.table-name
--                          ^^^^^ keyword.other

CREATE UNIQUE INDEX ON fancy_table(fancy_column,mycount) WHERE myflag IS NULL;
-- <- meta.statement.create.sql keyword.other.ddl
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql
-- ^^^ keyword.other.ddl
--     ^^^^^^ keyword.other.ddl
--            ^^^^^ keyword.other.ddl
--                  ^^ meta.statement.create keyword.other
--                     ^^^^^^^^^^^ meta.table-name
--                                ^ meta.group punctuation.section.group.begin
--                                 ^^^^^^^^^^^^ meta.group meta.column-name
--                                             ^ meta.group punctuation.separator.sequence
--                                              ^^^^^^^ meta.group meta.column-name
--                                                     ^ meta.group punctuation.section.group.end
--                                                       ^^^^^ keyword.other.dml.sql
--                                                                    ^^ keyword.operator.logical.sql
--                                                                       ^^^^ constant.language.null.sql

create fulltext index if not exists `myindex` ON mytable;
--     ^^^^^^^^ keyword.other.ddl
--              ^^^^^ keyword.other.ddl
--                    ^^ keyword.control.conditional.if
--                       ^^^ keyword.operator.logical
--                           ^^^^^^ keyword.operator.logical
--                                  ^^^^^^^^^ entity.name.struct.index
--                                            ^^ keyword.other
--                                               ^^^^^^^ meta.table-name
--                                                      ^ punctuation.terminator.statement

ALTER TABLE dbo.testing123 ADD COLUMN mycolumn longtext;
-- <- meta.statement.alter.sql keyword.other.ddl
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
-- ^^ keyword.other.ddl
--    ^^^^^ keyword.other.ddl
--          ^^^^^^^^^^^^^^ meta.table-name.sql
--                         ^^^ keyword.other.ddl
--                             ^^^^^^ keyword.other.ddl
--                                    ^^^^^^^^ meta.column-name
--                                             ^^^^^^^^ storage.type.sql

ALTER TABLE testing123 CHANGE COLUMN mycolumn mycolumn ENUM('foo', 'bar');
-- <- meta.statement.alter.sql keyword.other.ddl
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--                     ^^^^^^ keyword.other.ddl
--                            ^^^^^^ keyword.other.ddl
--                                   ^^^^^^^^ meta.column-name
--                                            ^^^^^^^^ meta.column-name variable.other.member.declaration
--                                                     ^^^^ storage.type.sql

DROP TABLE IF EXISTS testing123;
-- <- meta.statement.drop.sql keyword.other.ddl
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.drop.sql
-- ^ keyword.other.ddl
--   ^^^^^ keyword.other.ddl
--         ^^ keyword.control.conditional.if.sql
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
-- ^^^ keyword.other.dml.sql
--      ^ variable.language.wildcard.asterisk.sql
        f.id AS database_id
--           ^^ keyword.operator.assignment.alias.sql
--              ^^^^^^^^^^^ meta.column-alias
FROM    foo
WHERE   f.a IS NULL
-- ^^ keyword.other.dml.sql
--          ^^ keyword.operator.logical.sql
--             ^^^^ constant.language.null.sql
        AND f.b IS NOT NULL
--      ^^^ keyword.operator.logical.sql
--              ^^ keyword.operator.logical.sql
--                 ^^^ keyword.operator.logical.sql
--                     ^^^^ constant.language.null.sql

CREATE INDEX IX_some_index ON dbo.some_table(
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create
-- ^^^ keyword.other.ddl
--     ^^^^^ keyword.other.ddl
--           ^^^^^^^^^^^^^ entity.name.struct.index
--                         ^^ keyword.other
--                            ^^^^^^^^^^^^^^ meta.table-name
--                                          ^ meta.group punctuation.section.group.begin
    some_column ASC
--  ^^^^^^^^^^^ meta.group meta.column-name
--              ^^^ meta.group keyword.other.order
)

CREATE ALGORITHM=MERGE VIEW contactPersons(
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create
-- ^^^ keyword.other.ddl
--     ^^^^^^^^^ keyword.other
--              ^ keyword.operator.assignment
--               ^^^^^ constant.language
--                     ^^^^ keyword.other.ddl
--                          ^^^^^^^^^^^^^^ entity.name.struct.other
--                                        ^ meta.group punctuation.section.group.begin
    customerName,
--  ^^^^^^^^^^^^ meta.group meta.column-name
--              ^ meta.group punctuation.separator.sequence
    firstName,
    lastName,
    phone
) AS
-- <- meta.group punctuation.section.group.end
-- ^ keyword.context.block - meta.group
SELECT
-- ^^^ keyword.other.dml
    customerName,
    contactFirstName,
    contactLastName,
    phone
FROM customers;
-- ^ keyword.other.dml
--   ^^^^^^^^^ meta.table-name
--            ^ punctuation.terminator.statement

CREATE TEMPORARY TABLE IF NOT EXISTS foo (
-- <- meta.statement.create.sql keyword.other.ddl
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql
-- ^^^ keyword.other.ddl
--     ^^^^^^^^^ keyword.other.ddl
--               ^^^^^ keyword.other.ddl
--                     ^^ keyword.control.conditional.if.sql
--                        ^^^ keyword.operator.logical.sql
--                            ^^^^^^ keyword.operator.logical.sql
--                                   ^^^ entity.name.struct.table
    bar NVARCHAR(400),
    baz INT
);

CREATE FUNCTION myFunction(id INT) RETURNS TABLE
BEGIN
   RETURN SELECT * FROM board;
-- ^^^^^^ keyword.control.flow.return
END
-- <- keyword.control.flow.end
