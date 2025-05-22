-- SYNTAX TEST "Packages/SQL/MySQL.sublime-syntax"

-- ----------------------------------------------------------------------------
-- String Literals
-- https://mariadb.com/kb/en/string-literals
-- ----------------------------------------------------------------------------

    '\0'  -- ASCII NUL (0x00).
--  ^^^^ meta.string.sql string.quoted.single.sql
--  ^ punctuation.definition.string.begin.sql
--   ^^ constant.character.escape.sql
--     ^ punctuation.definition.string.end.sql

    '\''  -- Single quote (“'”).
--  ^^^^ meta.string.sql string.quoted.single.sql
--  ^ punctuation.definition.string.begin.sql
--   ^^ constant.character.escape.sql
--     ^ punctuation.definition.string.end.sql

    '\"'  -- Double quote (“"”).
--  ^^^^ meta.string.sql string.quoted.single.sql
--  ^ punctuation.definition.string.begin.sql
--   ^^ constant.character.escape.sql
--     ^ punctuation.definition.string.end.sql

    '\b'  -- Backspace.
--  ^^^^ meta.string.sql string.quoted.single.sql
--  ^ punctuation.definition.string.begin.sql
--   ^^ constant.character.escape.sql
--     ^ punctuation.definition.string.end.sql

    '\n'  -- Newline, or linefeed,.
--  ^^^^ meta.string.sql string.quoted.single.sql
--  ^ punctuation.definition.string.begin.sql
--   ^^ constant.character.escape.sql
--     ^ punctuation.definition.string.end.sql

    '\r'  -- Carriage return.
--  ^^^^ meta.string.sql string.quoted.single.sql
--  ^ punctuation.definition.string.begin.sql
--   ^^ constant.character.escape.sql
--     ^ punctuation.definition.string.end.sql

    '\t'  -- Tab.
--  ^^^^ meta.string.sql string.quoted.single.sql
--  ^ punctuation.definition.string.begin.sql
--   ^^ constant.character.escape.sql
--     ^ punctuation.definition.string.end.sql

    '\Z'  -- ASCII 26 (Control+Z). See note following the table.
--  ^^^^ meta.string.sql string.quoted.single.sql
--  ^ punctuation.definition.string.begin.sql
--   ^^ constant.character.escape.sql
--     ^ punctuation.definition.string.end.sql

    '\\'  -- Backslash (“\”).
--  ^^^^ meta.string.sql string.quoted.single.sql
--  ^ punctuation.definition.string.begin.sql
--   ^^ constant.character.escape.sql
--     ^ punctuation.definition.string.end.sql

    '\%'  -- “%” character. See note following the table.
--  ^^^^ meta.string.sql string.quoted.single.sql
--  ^ punctuation.definition.string.begin.sql
--   ^^ constant.character.escape.sql
--     ^ punctuation.definition.string.end.sql

    '\_'  -- A “_” character. See note following the table.
--  ^^^^ meta.string.sql string.quoted.single.sql
--  ^ punctuation.definition.string.begin.sql
--   ^^ constant.character.escape.sql
--     ^ punctuation.definition.string.end.sql

-- ----------------------------------------------------------------------------
-- Constants
-- https://mariadb.com/kb/en/reserved-words
-- ----------------------------------------------------------------------------

    null none true false
-- ^ - constant
--  ^^^^ constant.language.null.sql
--      ^ - constant
--       ^^^^ constant.language.null.sql
--           ^ - constant
--            ^^^^ constant.language.boolean.true.sql
--                ^ - constant
--                 ^^^^^ constant.language.boolean.false.sql
--                      ^ - constant

    all default maxvalue
-- ^ - constant
--  ^^^ constant.language.sql
--     ^ - constant
--      ^^^^^^^ constant.language.sql
--             ^ - constant
--              ^^^^^^^^ constant.language.sql
--                      ^ - constant

    inplace copy nocopy instant exclusive shared
-- ^ - constant
--  ^^^^^^^ constant.language.sql
--         ^ - constant
--          ^^^^ constant.language.sql
--              ^ - constant
--               ^^^^^^ constant.language.sql
--                     ^ - constant
--                      ^^^^^^^ constant.language.sql
--                             ^ - constant
--                              ^^^^^^^^^ constant.language.sql
--                                       ^ - constant
--                                        ^^^^^^ constant.language.sql
--                                              ^ - constant

    system versioning
-- ^ - constant
--  ^^^^^^^^^^^^^^^^^ constant.language.sql
--                   ^ - constant

-- ----------------------------------------------------------------------------
-- Data Types
-- https://mariadb.com/kb/en/data-types
-- ----------------------------------------------------------------------------

    BIT BOOLEAN
-- ^ - storage
--  ^^^ storage.type.sql
--     ^ - storage
--      ^^^^^^^ storage.type.sql
--             ^ - storage

    INT INT1 INT2 INT3 INT4 INT8 INTEGER FLOAT FLOAT4 FLOAT8
-- ^ - storage
--  ^^^ storage.type.sql
--     ^ - storage
--      ^^^^ storage.type.sql
--          ^ - storage
--           ^^^^ storage.type.sql
--               ^ - storage
--                ^^^^ storage.type.sql
--                    ^ - storage
--                     ^^^^ storage.type.sql
--                         ^ - storage
--                          ^^^^ storage.type.sql
--                              ^ - storage
--                               ^^^^^^^ storage.type.sql
--                                      ^ - storage
--                                       ^^^^^ storage.type.sql
--                                            ^ - storage
--                                             ^^^^^^ storage.type.sql
--                                                   ^ - storage
--                                                    ^^^^^^ storage.type.sql
--                                                          ^ - storage

    BIGINT MEDIUMINT SMALLINT TINYINT
-- ^ - storage
--  ^^^^^^ storage.type.sql
--        ^ - storage
--         ^^^^^^^^^ storage.type.sql
--                  ^ - storage
--                   ^^^^^^^^ storage.type.sql
--                           ^ - storage
--                            ^^^^^^^ storage.type.sql
--                                   ^ - storage

    DECIMAL DEC NUMBER NUMERIC FIXED
-- ^ - storage
--  ^^^^^^^ storage.type.sql
--         ^ - storage
--          ^^^ storage.type.sql
--             ^ - storage
--              ^^^^^^ storage.type.sql
--                    ^ - storage
--                     ^^^^^^^ storage.type.sql
--                            ^ - storage
--                             ^^^^^ storage.type.sql
--                                  ^ - storage

    DOUBLE PRECISION DOUBLE FLOAT REAL
-- ^ - storage
--  ^^^^^^^^^^^^^^^^ storage.type.sql
--                  ^ - storage
--                   ^^^^^^ storage.type.sql
--                         ^ - storage
--                          ^^^^^ storage.type.sql
--                               ^ - storage
--                                ^^^^ storage.type.sql
--                                    ^ - storage

    CHAR BYTE
--  ^^^^^^^^^ storage.type.sql

    NATIONAL CHAR
--  ^^^^^^^^^^^^^ storage.type.sql

    ENUM('foo', 'bar')
--  ^^^^^^^^^^^^^^^^^^ - meta.function-call
--  ^^^^ storage.type.sql
--      ^^^^^^^^^^^^^^ meta.group.sql
--      ^ punctuation.section.group.begin.sql
--       ^^^^^ meta.string.sql string.quoted.single.sql
--            ^ punctuation.separator.sequence.sql
--              ^^^^^ meta.string.sql string.quoted.single.sql
--                   ^ punctuation.section.group.end.sql

    ENUM ('foo', 'bar')
--  ^^^^^^^^^^^^^^^^^^^ - meta.function-call
--  ^^^^ storage.type.sql
--       ^^^^^^^^^^^^^^ meta.group.sql
--       ^ punctuation.section.group.begin.sql
--        ^^^^^ meta.string.sql string.quoted.single.sql
--             ^ punctuation.separator.sequence.sql
--               ^^^^^ meta.string.sql string.quoted.single.sql
--                    ^ punctuation.section.group.end.sql

    INT(10) FIXED(10,2) TEXT(200) VARCHAR(10)
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function-call
--  ^^^^^^^ storage.type.sql
--          ^^^^^^^^^^^ storage.type.sql
--                      ^^^^^^^^^ storage.type.sql
--                                ^^^^^^^^^^^ storage.type.sql

    SET SET('foo', 'bar')
--  ^^^ keyword.other.dml.sql
--      ^^^ storage.type.sql
--         ^^^^^^^^^^^^^^ meta.group.sql
--         ^ punctuation.section.group.begin.sql
--          ^^^^^ meta.string.sql string.quoted.single.sql
--               ^ punctuation.separator.sequence.sql
--                 ^^^^^ meta.string.sql string.quoted.single.sql
--                      ^ punctuation.section.group.end.sql

    UUID UUID()
--  ^^^^ storage.type.sql
--       ^^^^ meta.function-call.sql support.function.sql

    YEAR YEAR()
--  ^^^^ storage.type.sql
--       ^^^^ meta.function-call.sql support.function.sql

    SIGNED UNSIGNED ZEROFILL
--  ^^^^^^ storage.modifier.sql
--         ^^^^^^^^ storage.modifier.sql
--                  ^^^^^^^^ storage.modifier.sql

-- ----------------------------------------------------------------------------
-- Units
-- https://mariadb.com/kb/en/reserved-words
-- ----------------------------------------------------------------------------

    DAY_HOUR DAY_MICROSECOND DAY_MINUTE DAY_SECOND
--  ^^^^^^^^ keyword.other.unit.sql
--           ^^^^^^^^^^^^^^^ keyword.other.unit.sql
--                           ^^^^^^^^^^ keyword.other.unit.sql
--                                      ^^^^^^^^^^ keyword.other.unit.sql

    HOUR_MICROSECOND HOUR_MINUTE HOUR_SECOND
--  ^^^^^^^^^^^^^^^^ keyword.other.unit.sql
--                   ^^^^^^^^^^^ keyword.other.unit.sql
--                               ^^^^^^^^^^^ keyword.other.unit.sql

    MINUTE_MICROSECOND MINUTE_SECOND
--  ^^^^^^^^^^^^^^^^^^ keyword.other.unit.sql
--                     ^^^^^^^^^^^^^ keyword.other.unit.sql

    SECOND_MICROSECOND
--  ^^^^^^^^^^^^^^^^^^ keyword.other.unit.sql

-- ----------------------------------------------------------------------------
-- Data Definition Statements
-- https://mariadb.com/kb/en/data-definition
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- Create Database Statements
-- https://mariadb.com/kb/en/create-database
--
-- CREATE [OR REPLACE] {DATABASE | SCHEMA} [IF NOT EXISTS] db_name
--     [create_specification] ...
--
-- create_specification:
--     [DEFAULT] CHARACTER SET [=] charset_name
--   | [DEFAULT] COLLATE [=] collation_name
--   | COMMENT [=] 'comment'
-- ----------------------------------------------------------------------------

CREATE DATABASE db_name
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.database
--     ^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.database.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^^^^ keyword.other.ddl.sql
--              ^^^^^^^ entity.name.struct.database.sql

CREATE DATABASE IF NOT EXISTS db_name
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.database
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.database.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^^^^ keyword.other.ddl.sql
--              ^^ keyword.control.conditional.if.sql
--                 ^^^ keyword.operator.logical.sql
--                     ^^^^^^ keyword.operator.logical.sql
--                            ^^^^^^^ entity.name.struct.database.sql

CREATE OR REPLACE DATABASE db_name
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^ meta.statement.create.sql - meta.database
--                ^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.database.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^^^^^^ keyword.other.ddl.sql
--                ^^^^^^^^ keyword.other.ddl.sql
--                         ^^^^^^^ entity.name.struct.database.sql

CREATE SCHEMA schema_name
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.database
--     ^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.database.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^^ keyword.other.ddl.sql
--            ^^^^^^^^^^^ entity.name.struct.database.sql

CREATE SCHEMA IF NOT EXISTS schema_name
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.database
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.database.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^^ keyword.other.ddl.sql
--            ^^ keyword.control.conditional.if.sql
--               ^^^ keyword.operator.logical.sql
--                   ^^^^^^ keyword.operator.logical.sql
--                          ^^^^^^^^^^^ entity.name.struct.database.sql

CREATE OR REPLACE SCHEMA schema_name
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^ meta.statement.create.sql - meta.database
--                ^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.database.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^^^^^^ keyword.other.ddl.sql
--                ^^^^^^ keyword.other.ddl.sql
--                       ^^^^^^^^^^^ entity.name.struct.database.sql

    CHARACTER SET = 'utf-8'
-- <- meta.statement.create.sql meta.database.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.database.sql
--  ^^^^^^^^^^^^^ variable.parameter.database.sql
--                ^ keyword.operator.assignment.sql
--                  ^^^^^^^ meta.string.sql string.quoted.single.sql

    DEFAULT CHARACTER SET = 'utf-16'
-- <- meta.statement.create.sql meta.database.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.database.sql
--  ^^^^^^^^^^^^^^^^^^^^^ variable.parameter.database.sql
--                        ^ keyword.operator.assignment.sql
--                          ^^^^^^^^ meta.string.sql string.quoted.single.sql
    DEFAULT CHARSET=utf8
-- <- meta.statement.create.sql meta.database.sql
--  ^^^^^^^^^^^^^^^ variable.parameter.database.sql
--                 ^ keyword.operator.assignment.sql
    COLLATE = 'collation'
-- <- meta.statement.create.sql meta.database.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.database.sql
--  ^^^^^^^ variable.parameter.database.sql
--          ^ keyword.operator.assignment.sql
--            ^^^^^^^^^^^ meta.string.sql string.quoted.single.sql

    COMMENT = 'My new database'
-- <- meta.statement.create.sql meta.database.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.database.sql
--  ^^^^^^^ variable.parameter.sql
--          ^ keyword.operator.assignment.sql
--            ^^^^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql

    COMMENT 'My new database'
-- <- meta.statement.create.sql meta.database.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.database.sql
--  ^^^^^^^ variable.parameter.sql
--          ^^^^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql


-- ----------------------------------------------------------------------------
-- Create Event Statements
-- https://mariadb.com/kb/en/create-event
--
-- CREATE [OR REPLACE]
--     [DEFINER = { user | CURRENT_USER | role | CURRENT_ROLE }]
--     EVENT
--     [IF NOT EXISTS]
--     event_name
--     ON SCHEDULE schedule
--     [ON COMPLETION [NOT] PRESERVE]
--     [ENABLE | DISABLE | DISABLE ON SLAVE]
--     [COMMENT 'comment']
--     DO sql_statement;
--
-- schedule:
--     AT timestamp [+ INTERVAL interval] ...
--   | EVERY interval
--     [STARTS timestamp [+ INTERVAL interval] ...]
--     [ENDS timestamp [+ INTERVAL interval] ...]
--
-- interval:
--     quantity {YEAR | QUARTER | MONTH | DAY | HOUR | MINUTE |
--               WEEK | SECOND | YEAR_MONTH | DAY_HOUR | DAY_MINUTE |
--               DAY_SECOND | HOUR_MINUTE | HOUR_SECOND | MINUTE_SECOND}
-- ----------------------------------------------------------------------------

CREATE EVENT event_name
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.event
--     ^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.event.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^ keyword.other.ddl.sql
--           ^^^^^^^^^^ entity.name.event.sql

CREATE DEFINER = user@host EVENT event_name
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql - meta.event
--                         ^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.event.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^^^ variable.parameter.definer.sql
--             ^ keyword.operator.assignment.sql
--               ^^^^^^^^^ meta.username.sql
--                         ^^^^^ keyword.other.ddl.sql
--                               ^^^^^^^^^^ entity.name.event.sql

CREATE EVENT IF NOT EXISTS event_name
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.event
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.event.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^ keyword.other.ddl.sql
--           ^^ keyword.control.conditional.if.sql
--              ^^^ keyword.operator.logical.sql
--                  ^^^^^^ keyword.operator.logical.sql
--                         ^^^^^^^^^^ entity.name.event.sql

CREATE EVENT event_name
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR + INTERVAL 3 MINUTE
-- <- meta.statement.create.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.event.sql
--  ^^ keyword.other.ddl.sql
--     ^^^^^^^^ keyword.other.ddl.sql
--              ^^ keyword.other.ddl.sql
--                 ^^^^^^^^^^^^^^^^^ meta.function-call.sql support.function.scalar.sql
--                                   ^ keyword.operator.arithmetic.sql
--                                     ^^^^^^^^ storage.type.interval.sql
--                                              ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                                ^^^^ keyword.other.unit.sql
--                                                     ^ keyword.operator.arithmetic.sql
--                                                       ^^^^^^^^ storage.type.interval.sql
--                                                                ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                                                  ^^^^^^ keyword.other.unit.sql

CREATE EVENT event_name
    ON SCHEDULE EVERY 1 MONTH
-- <- meta.statement.create.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.event.sql
--  ^^ keyword.other.ddl.sql
--     ^^^^^^^^ keyword.other.ddl.sql
--              ^^^^^ keyword.other.ddl.sql
--                    ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                      ^^^^^ keyword.other.unit.sql

    STARTS CURRENT_TIMESTAMP + INTERVAL 1 MONTH
-- <- meta.statement.create.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.event.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^^^^^^^^^^^^^^^^ meta.function-call.sql support.function.scalar.sql
--                           ^ keyword.operator.arithmetic.sql
--                             ^^^^^^^^ storage.type.interval.sql
--                                      ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                        ^^^^^ keyword.other.unit.sql

    ENDS CURRENT_TIMESTAMP + INTERVAL 1 MONTH + INTERVAL 1 WEEK
-- <- meta.statement.create.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.event.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^^^^^^ meta.function-call.sql support.function.scalar.sql
--                         ^ keyword.operator.arithmetic.sql
--                           ^^^^^^^^ storage.type.interval.sql
--                                    ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                      ^^^^^ keyword.other.unit.sql
--                                            ^ keyword.operator.arithmetic.sql
--                                              ^^^^^^^^ storage.type.interval.sql
--                                                       ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                                         ^^^^ keyword.other.unit.sql

    ON COMPLETION PRESERVE
-- <- meta.statement.create.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.event.sql
--  ^^ keyword.other.ddl.sql
--     ^^^^^^^^^^ keyword.other.ddl.sql
--                ^^^^^^^^ constant.language.sql

    ON COMPLETION NOT PRESERVE
-- <- meta.statement.create.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.event.sql
--  ^^ keyword.other.ddl.sql
--     ^^^^^^^^^^ keyword.other.ddl.sql
--                ^^^ keyword.operator.logical.sql
--                    ^^^^^^^^ constant.language.sql

    ENABLE
-- <- meta.statement.create.sql meta.event.sql
-- ^^^^^^^^ meta.statement.create.sql meta.event.sql
--  ^^^^^^ keyword.other.ddl.sql

    DISABLE
-- <- meta.statement.create.sql meta.event.sql
-- ^^^^^^^^^ meta.statement.create.sql meta.event.sql
--  ^^^^^^^ keyword.other.ddl.sql

    DISABLE ON SLAVE
-- <- meta.statement.create.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.event.sql
--  ^^^^^^^ keyword.other.ddl.sql
--          ^^ keyword.other.ddl.sql
--             ^^^^^ keyword.other.ddl.sql

    COMMENT 'my comment'
-- <- meta.statement.create.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.event.sql
--  ^^^^^^^ variable.parameter.sql
--          ^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql

    DO UPDATE myschema.mytable SET mycol = mycol + 1;
-- <- meta.statement.create.sql meta.event.sql
-- ^^^ meta.statement.create.sql meta.event.sql
--    ^ - meta.statement
--     ^^^^^^ keyword.other.dml.sql
--            ^^^^^^^^^^^^^^^^ meta.table-name.sql
--                             ^^^ keyword.other.dml.sql
--                                 ^^^^^ meta.column-name.sql
--                                       ^ keyword.operator.comparison.sql
--                                         ^^^^^ meta.column-name.sql
--                                               ^ keyword.operator.arithmetic.sql
--                                                 ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                                  ^ punctuation.terminator.statement.sql


-- ----------------------------------------------------------------------------
-- Create Function Statements
-- https://mariadb.com/kb/en/create-function
--
-- CREATE [OR REPLACE]
--     [DEFINER = {user | CURRENT_USER | role | CURRENT_ROLE }]
--     [AGGREGATE] FUNCTION [IF NOT EXISTS] func_name ([func_parameter[,...]])
--     RETURNS type
--     [characteristic ...]
--     RETURN func_body
--
-- func_parameter:
--     [ IN | OUT | INOUT | IN OUT ]  param_name type
--
-- type:
--     Any valid MariaDB data type
--
-- characteristic:
--     LANGUAGE SQL
--   | [NOT] DETERMINISTIC
--   | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }
--   | SQL SECURITY { DEFINER | INVOKER }
--   | COMMENT 'string'
--
-- func_body:
--     Valid SQL procedure statement
--
-- CREATE [OR REPLACE] [AGGREGATE] FUNCTION [IF NOT EXISTS] function_name
--    RETURNS {STRING|INTEGER|REAL|DECIMAL}
--    SONAME shared_library_name
-- ----------------------------------------------------------------------------

CREATE DEFINER = CURRENT_ROLE AGGREGATE FUNCTION foo
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql - meta.function
--                            ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^^^ variable.parameter.definer.sql
--             ^ keyword.operator.assignment.sql
--               ^^^^^^^^^^^^ meta.function-call.sql support.function.user.sql
--                            ^^^^^^^^^ keyword.other.ddl.sql
--                                      ^^^^^^^^ keyword.other.ddl.sql
--                                               ^^^ entity.name.function.sql

CREATE FUNCTION func_name(IN param_name number, IN OUT out varchar) RETURN
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.function
--     ^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.parameters.sql meta.group.sql
--                                                                 ^^^^^^^ meta.statement.create.sql meta.function.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^^^^ keyword.other.ddl.sql
--              ^^^^^^^^^ entity.name.function.sql
--                       ^ punctuation.section.group.begin.sql
--                        ^^ storage.modifier.sql
--                           ^^^^^^^^^^ variable.parameter.sql
--                                      ^^^^^^ storage.type.sql
--                                            ^ punctuation.separator.sequence.sql
--                                              ^^^^^^ storage.modifier.sql
--                                                     ^^^ variable.parameter.sql
--                                                         ^^^^^^^ storage.type.sql
--                                                                ^ punctuation.section.group.end.sql
--                                                                  ^^^^^^ keyword.control.flow.return.sql
--

CREATE AGGREGATE FUNCTION
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.function
--     ^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^^^^^ keyword.other.ddl.sql
--               ^^^^^^^^ keyword.other.ddl.sql

    func_name()
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^^^^^^^^ meta.statement.create.sql
--  ^^^^^^^^^ meta.function.sql entity.name.function.sql
--           ^ meta.function.parameters.sql meta.group.sql punctuation.section.group.begin.sql
--            ^ meta.function.parameters.sql meta.group.sql punctuation.section.group.end.sql

    RETURNS varchar(200)
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--  ^^^^^^^ keyword.other.ddl.sql
--          ^^^^^^^ storage.type.sql
--                 ^^^^^ meta.parens.sql
--                 ^ punctuation.definition.parens.begin.sql
--                  ^^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                     ^ punctuation.definition.parens.end.sql

    LANGUAGE SQL
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--  ^^^^^^^^ storage.modifier.sql
--           ^^^ constant.other.language.sql

    NOT DETERMINISTIC
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--  ^^^ keyword.operator.logical.sql
--      ^^^^^^^^^^^^^ storage.modifier.sql

    CONTAINS SQL
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--  ^^^^^^^^^^^^ storage.modifier.sql

    NO SQL
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^^ meta.statement.create.sql meta.function.sql
--  ^^^^^^ storage.modifier.sql

    READS SQL DATA
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--  ^^^^^^^^^^^^^^ storage.modifier.sql

    MODIFIES SQL DATA
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--  ^^^^^^^^^^^^^^^^^ storage.modifier.sql

    SQL SECURITY DEFINER
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--  ^^^^^^^^^^^^ storage.modifier.sql
--               ^^^^^^^ constant.language.user.sql
    SQL SECURITY INVOKER
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--  ^^^^^^^^^^^^ storage.modifier.sql
--               ^^^^^^^ constant.language.user.sql

    COMMENT 'string'
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--  ^^^^^^^ variable.parameter.sql
--          ^^^^^^^^ meta.string.sql string.quoted.single.sql

    RETURN
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^ meta.statement.create.sql meta.function.sql
--        ^ - meta.statement - meta.function

CREATE FUNCTION function_name RETURNS STRING SONAME 'ha_connect.so';
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.function
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--     ^^^^^^^^ keyword.other.ddl.sql
--              ^^^^^^^^^^^^^ entity.name.function.sql
--                            ^^^^^^^ keyword.other.ddl.sql
--                                    ^^^^^^ support.type.sql
--                                           ^^^^^^ keyword.other.ddl.sql
--                                                  ^^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                                                 ^ punctuation.terminator.statement.sql

-- ----------------------------------------------------------------------------
-- Create Procedure Statements
-- https://mariadb.com/kb/en/create-function
--
-- CREATE
--     [OR REPLACE]
--     [DEFINER = { user | CURRENT_USER | role | CURRENT_ROLE }]
--     PROCEDURE sp_name ([proc_parameter[,...]])
--     [characteristic ...] routine_body
--
-- proc_parameter:
--     [ IN | OUT | INOUT ] param_name type
--
-- type:
--     Any valid MariaDB data type
--
-- characteristic:
--     LANGUAGE SQL
--   | [NOT] DETERMINISTIC
--   | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }
--   | SQL SECURITY { DEFINER | INVOKER }
--   | COMMENT 'string'
--
-- routine_body:
--     Valid SQL procedure statement
-- ----------------------------------------------------------------------------

CREATE PROCEDURE
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.function
--     ^^^^^^^^^ meta.statement.create.sql meta.function.sql keyword.other.ddl.sql

CREATE OR REPLACE PROCEDURE sp_name (param int, out args varchar(200)) SELECT foo FROM bar;
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^ meta.statement.create.sql
--                ^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.parameters.sql meta.group.sql
--                                                                    ^ meta.statement.create.sql meta.function.sql
-- ^^^^^^^^^^^^^^ keyword.other.ddl.sql
--                ^^^^^^^^^ meta.function.sql keyword.other.ddl.sql
--                          ^^^^^^^ entity.name.function.sql
--                                  ^ punctuation.section.group.begin.sql
--                                   ^^^^^ variable.parameter.sql
--                                         ^^^ storage.type.sql
--                                            ^ punctuation.separator.sequence.sql
--                                              ^^^ storage.modifier.sql
--                                                  ^^^^ variable.parameter.sql
--                                                       ^^^^^^^ storage.type.sql - meta.parens
--                                                              ^^^^^ storage.type.sql meta.parens.sql
--                                                              ^ punctuation.definition.parens.begin.sql
--                                                               ^^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                                                  ^ punctuation.definition.parens.end.sql
--                                                                     ^^^^^^ keyword.other.dml.sql
--                                                                            ^^^ meta.column-name.sql
--                                                                                ^^^^ keyword.other.dml.sql
--                                                                                     ^^^ meta.table-name.sql
--                                                                                        ^ punctuation.terminator.statement.sql

CREATE PROCEDURE
    sp_name
    NOT DETERMINISTIC
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--  ^^^ keyword.operator.logical.sql
--      ^^^^^^^^^^^^^ storage.modifier.sql
    SQL SECURITY INVOKER
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--  ^^^^^^^^^^^^ storage.modifier.sql
--               ^^^^^^^ constant.language.user.sql
    COMMENT 'my procedure'
-- <- meta.statement.create.sql meta.function.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--  ^^^^^^^ variable.parameter.sql
--          ^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
BEGIN

    DECLARE @var INT = 0;
--  ^^^^^^^ keyword.declaration.mysql
--          ^^^^ variable.other.sql
--          ^ punctuation.definition.variable.sql
--               ^^^ storage.type
--                   ^ keyword.operator.assignment.sql
--                     ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                      ^ punctuation.terminator.statement.sql

    DECLARE r ROW (c1 INT, c2 VARCHAR(10));
--  ^^^^^^^ keyword.declaration.mysql
--          ^ variable.other.mysql
--            ^^^ storage.type.sql
--                ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.table-columns.sql
--                ^ punctuation.section.group.begin.sql
--                 ^^ meta.column-name.sql variable.other.member.declaration.sql
--                    ^^^ storage.type.sql
--                       ^ punctuation.separator.sequence.sql
--                         ^^ meta.column-name.sql variable.other.member.declaration.sql
--                            ^^^^^^^^^^^ storage.type.sql
--                                       ^ punctuation.section.group.end.sql

    IF @var = TRUE THEN
--  ^^ keyword.control.conditional.sql
--     ^^^^ variable.other.sql
--          ^ keyword.operator.comparison.sql
--            ^^^^ constant.language.boolean.true.sql
--                 ^^^^ keyword.control.conditional.sql

    ELSEIF @var = FALSE THEN
--  ^^^^^^ keyword.control.conditional.sql
--         ^^^^ variable.other.sql
--              ^ keyword.operator.comparison.sql
--                ^^^^^ constant.language.boolean.false.sql
--                      ^^^^ keyword.control.conditional.sql

    ELSE
--  ^^^^ keyword.control.conditional.sql

    END IF
--  ^^^^^^ keyword.control.conditional.sql

    LOOP
--  ^^^^ keyword.control.loop.sql

    END LOOP
--  ^^^^^^^^ keyword.control.loop.sql

    REPEAT
--  ^^^^^^ keyword.control.loop.sql

    END REPEAT
--  ^^^^^^^^^^ keyword.control.loop.sql

    WHILE TRUE
--  ^^^^^ keyword.control.loop.sql
--        ^^^^ constant.language.boolean.true.sql

    END WHILE
--  ^^^^^^^^^ keyword.control.loop.sql

    CONTINUE
--  ^^^^^^^^ keyword.control.flow.continue.sql

    EXIT
--  ^^^^ keyword.control.flow.exit.sql

    RETURN
--  ^^^^^^ keyword.control.flow.return.sql

END

-- ----------------------------------------------------------------------------
-- Create Index Statements
-- https://mariadb.com/kb/en/create-index
--
-- CREATE [OR REPLACE] [UNIQUE|FULLTEXT|SPATIAL] INDEX
--   [IF NOT EXISTS] index_name
--     [index_type]
--     ON tbl_name (index_col_name,...)
--     [WAIT n | NOWAIT]
--     [index_option]
--     [algorithm_option | lock_option] ...
--
-- index_col_name:
--     col_name [(length)] [ASC | DESC]
--
-- index_type:
--     USING {BTREE | HASH | RTREE}
--
-- index_option:
--     [ KEY_BLOCK_SIZE [=] value
--   | index_type
--   | WITH PARSER parser_name
--   | COMMENT 'string'
--   | CLUSTERING={YES| NO} ]
--   [ IGNORED | NOT IGNORED ]
--
-- algorithm_option:
--     ALGORITHM [=] {DEFAULT|INPLACE|COPY|NOCOPY|INSTANT}
--
-- lock_option:
--     LOCK [=] {DEFAULT|NONE|SHARED|EXCLUSIVE}
-- ----------------------------------------------------------------------------

CREATE INDEX ON fancy_table(mytime);
-- <- meta.statement.create.sql keyword.other.ddl
-- ^^^^ meta.statement.create.sql - meta.index
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.index.sql
--     ^^^^^ keyword.other.ddl
--           ^^ keyword.other
--              ^^^^^^^^^^^ meta.table-name
--                         ^^^^^^^^ meta.group.sql

CREATE UNIQUE INDEX ON fancy_table(fancy_column,mycount) WHERE myflag IS NULL;
-- <- meta.statement.create.sql keyword.other.ddl
-- ^^^^ meta.statement.create.sql - meta.index
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.index.sql
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
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.index
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.index.sql
--     ^^^^^^^^ keyword.other.ddl
--              ^^^^^ keyword.other.ddl
--                    ^^ keyword.control.conditional.if
--                       ^^^ keyword.operator.logical
--                           ^^^^^^ keyword.operator.logical
--                                  ^^^^^^^^^ entity.name.struct.index
--                                            ^^ keyword.other
--                                               ^^^^^^^ meta.table-name
--                                                      ^ punctuation.terminator.statement

CREATE INDEX index_name
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql
--     ^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.index.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^ keyword.other.ddl.sql
--           ^^^^^^^^^^ entity.name.struct.index.sql
    USING BTREE
-- ^^^^^^^^^^^^^ meta.statement.create.sql meta.index.sql
--  ^^^^^ keyword.other.ddl.sql
--        ^^^^^ constant.language.sql
    ON tbl_name (col1(100) ASC, col2 DESC)
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.index.sql
--  ^^ keyword.other.sql
--     ^^^^^^^^ meta.table-name.sql
--              ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--              ^ punctuation.section.group.begin.sql
--                                       ^ punctuation.section.group.end.sql
    NOWAIT
-- ^^^^^^^^ meta.statement.create.sql meta.index.sql
--  ^^^^^^ keyword.other.ddl.sql
    WAIT 1 DAY
-- ^^^^^^^^^^^^ meta.statement.create.sql meta.index.sql
--  ^^^^ keyword.other.ddl.sql
--       ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--         ^^^ keyword.other.unit.sql
    COMMENT 'my comment'
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.index.sql
--  ^^^^^^^ variable.parameter.sql
--          ^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
    WITH PARSER parser_name
-- ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.index.sql
--  ^^^^^^^^^^^ keyword.other.ddl.sql
--              ^^^^^^^^^^^ meta.other-name.sql
    CLUSTERING = YES
-- ^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.index.sql
--  ^^^^^^^^^^ keyword.other.ddl.sql
--             ^ keyword.operator.comparison.sql
--               ^^^ constant.language.boolean.sql
    KEY_BLOCK_SIZE 20
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.index.sql
--  ^^^^^^^^^^^^^^ keyword.other.ddl.sql
--                 ^^ meta.number.integer.decimal.sql constant.numeric.value.sql
    NOT IGNORED
-- ^^^^^^^^^^^^^ meta.statement.create.sql meta.index.sql
--  ^^^ keyword.operator.logical.sql
--      ^^^^^^^ keyword.other.ddl.sql
    ALGORITHM INPLACE
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.index.sql
--  ^^^^^^^^^ keyword.other.ddl.sql
--            ^^^^^^^ constant.language.sql
    LOCK SHARED
-- ^^^^^^^^^^^^^ meta.statement.create.sql meta.index.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^ constant.language.sql


-- ----------------------------------------------------------------------------
-- Create Role Statements
-- https://mariadb.com/kb/en/create-role
--
-- CREATE [OR REPLACE] ROLE [IF NOT EXISTS] role
--  [WITH ADMIN
--    {CURRENT_USER | CURRENT_ROLE | user | role}]
-- ----------------------------------------------------------------------------

CREATE ROLE role
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.user
--     ^^^^^^^^^^ meta.statement.create.sql meta.user.sql
-- ^^^ keyword.other.ddl.sql
--    ^ - keyword
--     ^^^^ keyword.other.ddl.sql
--         ^ - keyword - entity
--          ^^^^ entity.name.user.sql
--              ^ - entity

CREATE ROLE IF NOT EXISTS role
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.user
--     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
-- ^^^ keyword.other.ddl.sql
--    ^ - keyword
--     ^^^^ keyword.other.ddl.sql
--         ^ - keyword
--          ^^ keyword.control.conditional.if.sql
--            ^ - keyword
--             ^^^ keyword.operator.logical.sql
--                ^ - keyword
--                 ^^^^^^ keyword.operator.logical.sql
--                       ^ - keyword - entity
--                        ^^^^ entity.name.user.sql
--                            ^ - entity

CREATE OR REPLACE ROLE IF NOT EXISTS role
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^ meta.statement.create.sql - meta.user
--                ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.user.sql
-- ^^^^^^^^^^^^^^ keyword.other.ddl.sql
--                ^^^^ keyword.other.ddl.sql
--                     ^^ keyword.control.conditional.if.sql
--                        ^^^ keyword.operator.logical.sql
--                            ^^^^^^ keyword.operator.logical.sql
--                                   ^^^^ entity.name.user.sql

CREATE OR REPLACE ROLE with WITH ADMIN lorinda@localhost
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^ meta.statement.create.sql - meta.user
--                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql
--                          ^^^^ keyword.other.ddl.sql
--                               ^^^^^ keyword.other.ddl.sql
--                                     ^^^^^^^^^^^^^^^^^ meta.username.sql
--                                            ^ punctuation.accessor.at.sql

CREATE ROLE role WITH ADMIN CURRENT_ROLE
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.user
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql
--               ^^^^ keyword.other.ddl.sql
--                    ^^^^^ keyword.other.ddl.sql
--                          ^^^^^^^^^^^^ support.function.user.sql


-- ----------------------------------------------------------------------------
-- Create Table Statements
-- https://mariadb.com/kb/en/create-table
--
-- CREATE [OR REPLACE] [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name
--     (create_definition,...) [table_options    ]... [partition_options]
-- CREATE [OR REPLACE] [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name
--     [(create_definition,...)] [table_options   ]... [partition_options]
--     select_statement
-- CREATE [OR REPLACE] [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name
--    { LIKE old_table_name | (LIKE old_table_name) }
--
-- create_definition:
--   { col_name column_definition | index_definition | period_definition | CHECK (expr) }
--
-- column_definition:
--   data_type
--     [NOT NULL | NULL] [DEFAULT default_value | (expression)]
--     [ON UPDATE [NOW | CURRENT_TIMESTAMP] [(precision)]]
--     [AUTO_INCREMENT] [ZEROFILL] [UNIQUE [KEY] | [PRIMARY] KEY]
--     [INVISIBLE] [{WITH|WITHOUT} SYSTEM VERSIONING]
--     [COMMENT 'string'] [REF_SYSTEM_ID = value]
--     [reference_definition]
--   | data_type [GENERATED ALWAYS]
--   AS { { ROW {START|END} } | { (expression) [VIRTUAL | PERSISTENT | STORED] } }
--       [UNIQUE [KEY]] [COMMENT 'string']
--
-- constraint_definition:
--    CONSTRAINT [constraint_name] CHECK (expression)
--
-- select_statement:
--     [IGNORE | REPLACE] [AS] SELECT ...   (Some legal select statement)
--
-- table_options:
--    table_option, [table_option ...]
--
-- table_option:
--     [STORAGE] ENGINE [=] engine_name
--   | AUTO_INCREMENT [=] value
--   | AVG_ROW_LENGTH [=] value
--   | [DEFAULT] CHARACTER SET [=] charset_name
--   | CHECKSUM [=] {0 | 1}
--   | [DEFAULT] COLLATE [=] collation_name
--   | COMMENT [=] 'string'
--   | CONNECTION [=] 'connect_string'
--   | DATA DIRECTORY [=] 'absolute path to directory'
--   | DELAY_KEY_WRITE [=] {0 | 1}
--   | ENCRYPTED [=] {YES | NO}
--   | ENCRYPTION_KEY_ID [=] value
--   | IETF_QUOTES [=] {YES | NO}
--   | INDEX DIRECTORY [=] 'absolute path to directory'
--   | INSERT_METHOD [=] { NO | FIRST | LAST }
--   | KEY_BLOCK_SIZE [=] value
--   | MAX_ROWS [=] value
--   | MIN_ROWS [=] value
--   | PACK_KEYS [=] {0 | 1 | DEFAULT}
--   | PAGE_CHECKSUM [=] {0 | 1}
--   | PAGE_COMPRESSED [=] {0 | 1}
--   | PAGE_COMPRESSION_LEVEL [=] {0 .. 9}
--   | PASSWORD [=] 'string'
--   | ROW_FORMAT [=] {DEFAULT|DYNAMIC|FIXED|COMPRESSED|REDUNDANT|COMPACT|PAGE}
--   | SEQUENCE [=] {0|1}
--   | STATS_AUTO_RECALC [=] {DEFAULT|0|1}
--   | STATS_PERSISTENT [=] {DEFAULT|0|1}
--   | STATS_SAMPLE_PAGES [=] {DEFAULT|value}
--   | TABLESPACE tablespace_name
--   | TRANSACTIONAL [=]  {0 | 1}
--   | UNION [=] (tbl_name[,tbl_name]...)
--   | WITH SYSTEM VERSIONING
--
-- partition_options:
--   PARTITION BY
--       { [LINEAR] HASH(expr)
--       | [LINEAR] KEY(column_list)
--       | RANGE(expr)
--       | LIST(expr)
--       | SYSTEM_TIME [INTERVAL time_quantity time_unit] [LIMIT num] }
--   [PARTITIONS num]
--   [SUBPARTITION BY
--       { [LINEAR] HASH(expr)
--       | [LINEAR] KEY(column_list) }
--     [SUBPARTITIONS num]
--   ]
--   [(partition_definition [, partition_definition] ...)]
--
--  partition_definition:
--      PARTITION partition_name
--          [VALUES {LESS THAN {(expr) | MAXVALUE} | IN (value_list)}]
--          [[STORAGE] ENGINE [=] engine_name]
--          [COMMENT [=] 'comment_text' ]
--          [DATA DIRECTORY [=] 'data_dir']
--          [INDEX DIRECTORY [=] 'index_dir']
--          [MAX_ROWS [=] max_number_of_rows]
--          [MIN_ROWS [=] min_number_of_rows]
--          [TABLESPACE [=] tablespace_name]
--          [NODEGROUP [=] node_group_id]
--          [(subpartition_definition [, subpartition_definition] ...)]
--
--  subpartition_definition:
--      SUBPARTITION logical_name
--          [[STORAGE] ENGINE [=] engine_name]
--          [COMMENT [=] 'comment_text' ]
--          [DATA DIRECTORY [=] 'data_dir']
--          [INDEX DIRECTORY [=] 'index_dir']
--          [MAX_ROWS [=] max_number_of_rows]
--          [MIN_ROWS [=] min_number_of_rows]
--          [TABLESPACE [=] tablespace_name]
--          [NODEGROUP [=] node_group_id]
-- ----------------------------------------------------------------------------

CREATE TABLE foo
-- <- meta.statement.create.sql keyword.other.ddl
-- ^^^^ meta.statement.create.sql - meta.table
--     ^^^^^^^^^^ meta.statement.create.sql meta.table.sql
-- ^^^ keyword.other.ddl
--    ^ - keyword
--     ^^^^^ keyword.other.ddl
--          ^ - keyword
--           ^^^ entity.name.struct.table.sql

;CREATE OR REPLACE TABLE foo (id INTEGER PRIMARY KEY);
-- <- punctuation.terminator.statement.sql
 -- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^ meta.statement.create.sql - meta.table
--                 ^^^^^^^^^^ meta.statement.create.sql meta.table.sql - meta.group
--                           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.table-columns.sql
-- ^^^^ keyword.other.ddl
--      ^^^^^^^^^^ keyword.other.ddl.sql
--                 ^^^^^ keyword.other.ddl.sql
--                       ^^^ entity.name.struct
--                          ^ - entity.name
--                           ^ punctuation.section.group.begin.sql
--                            ^^ meta.column-name.sql variable.other.member.declaration.sql
--                               ^^^^^^^ storage.type.sql
--                                       ^^^^^^^^^^^ storage.modifier.sql
--                                                  ^ punctuation.section.group.end.sql
--                                                   ^ punctuation.terminator.statement.sql

create table some_schema.test2( id serial );
-- ^^^^ meta.statement.create.sql - meta.table
--     ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql - meta.group
--                            ^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.table-columns.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^ keyword.other.ddl.sql
--           ^^^^^^^^^^^^^^^^^ entity.name.struct
--                      ^ punctuation.accessor.dot
--                            ^ punctuation.section.group.begin.sql
--                              ^^ meta.column-name.sql variable.other.member.declaration.sql
--                                 ^^^^^^ support.type.sql
--                                        ^ punctuation.section.group.end.sql
--                                         ^ punctuation.terminator.statement.sql

create table some_schema . test2 ( id serial );
-- ^^^^ meta.statement.create.sql - meta.table
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql - meta.group
--                               ^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.table-columns.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^ keyword.other.ddl.sql
--          ^ - entity.name
--           ^^^^^^^^^^^^^^^^^^^ entity.name.struct
--                              ^ - entity.name
--                       ^ punctuation.accessor.dot
--                               ^ punctuation.section.group.begin.sql
--                                 ^^ meta.column-name.sql variable.other.member.declaration.sql
--                                    ^^^^^^ support.type.sql
--                                           ^ punctuation.section.group.end.sql
--                                            ^ punctuation.terminator.statement.sql

create temporary table "testing123" (id integer);
-- ^^^^ meta.statement.create.sql - meta.table
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql - meta.group
--                                  ^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.table-columns.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^^^^^ keyword.other.ddl.sql
--               ^^^^^ keyword.other.ddl.sql
--                     ^^^^^^^^^^^^ entity.name.struct.table.sql
--                     ^ punctuation.definition.identifier.begin.sql
--                                ^ punctuation.definition.identifier.end.sql
--                                  ^ punctuation.section.group.begin.sql
--                                   ^^ meta.column-name.sql variable.other.member.declaration.sql
--                                      ^^^^^^^ storage.type.sql
--                                             ^ punctuation.section.group.end.sql
--                                              ^ punctuation.terminator.statement.sql

create table if not exists `dbo`."testing123" (id integer);
-- ^^^^ meta.statement.create.sql - meta.table
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql - meta.group
--                                            ^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.table-columns.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^ keyword.other.ddl.sql
--           ^^ keyword.control.conditional.if.sql
--              ^^^ keyword.operator.logical.sql
--                  ^^^^^^ keyword.operator.logical.sql
--                         ^^^^^^^^^^^^^^^^^^ entity.name.struct.table.sql
--                         ^ punctuation.definition.identifier.begin.sql
--                             ^ punctuation.definition.identifier.end.sql
--                              ^ punctuation.accessor.dot.sql
--                               ^ punctuation.definition.identifier.begin.sql
--                                          ^ punctuation.definition.identifier.end.sql
--                                            ^ punctuation.section.group.begin.sql
--                                             ^^ meta.column-name.sql variable.other.member.declaration.sql
--                                                ^^^^^^^ storage.type.sql
--                                                       ^ punctuation.section.group.end.sql
--                                                        ^ punctuation.terminator.statement.sql

create table IF NOT EXISTS `testing123` (
-- ^^^^ meta.statement.create.sql - meta.table
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql - meta.group
--                                      ^^ meta.statement.create.sql meta.table.sql meta.group.table-columns.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^ keyword.other.ddl.sql
--           ^^ keyword.control.conditional.if.sql
--              ^^^ keyword.operator.logical.sql
--                  ^^^^^^ keyword.operator.logical.sql
--                         ^^^^^^^^^^^^ entity.name.struct.table.sql
--                                      ^ punctuation.section.group.begin.sql

    -- ------------------
    -- column definitions
    -- ------------------

    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.table-columns.sql
--  ^^^^ meta.column-name.sql
--       ^^^ storage.type.sql - meta.parens
--          ^^^^ storage.type.sql meta.parens.sql
--          ^ punctuation.definition.parens.begin.sql
--           ^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--             ^ punctuation.definition.parens.end.sql
--               ^^^^^^^^ storage.modifier.sql
--                        ^^^ keyword.operator.logical.sql
--                            ^^^^ constant.language.null.sql
--                                 ^^^^^^^^^^^^^^ storage.modifier.sql
--                                               ^ punctuation.separator.sequence.sql
    `lastchanged` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--                ^^^^^^^^^ storage.type.sql
--                                           ^^^^^^^^^^^^^^^^^ support.function.scalar.sql
--                                                             ^^^^^^^^^ storage.modifier.sql
    `col` bool DEFAULT FALSE,
--        ^^^^ storage.type.sql
--             ^^^^^^^ storage.modifier.sql
--                     ^^^^^ constant.language.boolean.false.sql
--                          ^ punctuation.separator.sequence
    `fkey` INT UNSIGNED NULL REFERENCES test2(id),
--                           ^^^^^^^^^^ storage.modifier.sql
    `version` tinytext DEFAULT NULL COMMENT 'important clarification',
--            ^^^^^^^^ storage.type.sql
    `percentage` float DEFAULT '0',

    `set` SET ('value1', 'value2') NOT NULL,
--  ^^^^^ meta.column-name.sql variable.other.member.declaration.sql
--        ^^^ storage.type.sql
--            ^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--            ^ punctuation.section.group.begin.sql
--             ^^^^^^^^ meta.string.sql string.quoted.single.sql
--                     ^ punctuation.separator.sequence.sql
--                       ^^^^^^^^ meta.string.sql string.quoted.single.sql
--                               ^ punctuation.section.group.end.sql
--                                 ^^^ keyword.operator.logical.sql
--                                     ^^^^ constant.language.null.sql
--                                         ^ punctuation.separator.sequence.sql

    -- ------------------
    -- index definitions
    -- ------------------

    UNIQUE KEY `testing123_search` (`col`, `version`),
--  ^^^^^^^^^^ storage.modifier.sql
    KEY `testing123_col` (`col`),
--  ^^^ storage.modifier.sql
    FULLTEXT KEY `testing123_version` (`version`)

) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARACTER SET=utf8;

create table fancy_table (
    id SERIAL,
--     ^^^^^^ support.type.sql
    foreign_id integer,
--             ^^^^^^^ storage.type.sql
    myflag boolean DEFAULT false,
--         ^^^^^^^ storage.type.sql
--                 ^^^^^^^ storage.modifier.sql
--                         ^^^^^ constant.language.boolean.false.sql
    mycount double  precision DEFAULT 1,
--          ^^^^^^^^^^^^^^^^^ storage.type.sql
    fancy_column character  varying(42) DEFAULT 'nice'::character varying,
--               ^^^^^^^^^^^^^^^^^^^^^^ storage.type.sql
    mytime timestamp(3) without time zone DEFAULT now(),
--         ^^^^^^^^^^^^ storage.type.sql
--                   ^ constant.numeric
--                      ^^^^^^^^^^^^^^^^^ storage.modifier.sql
--                                        ^^^^^^^ storage.modifier
--                                                ^^^ meta.function-call support.function
--                                                   ^ punctuation.section.arguments.begin
--                                                    ^ punctuation.section.arguments.end
--                                                     ^ punctuation.separator.sequence
    mytime2 timestamp(3) without  time  zone DEFAULT '2008-01-18 00:00:00'::timestamp(3) without time zone, -- TODO: seems like :: is a postgresql cast operator
--                       ^^^^^^^^^^^^^^^^^^^ storage.modifier.sql
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

CREATE TABLE foo LIKE bar;
-- <- meta.statement.create.sql keyword.other.ddl.sql
-- ^^^^ meta.statement.create.sql - meta.table
--     ^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--     ^^^^^ keyword.other.ddl.sql
--           ^^^ entity.name.struct.table.sql
--               ^^^^ keyword.other.sql
--                    ^^^ meta.table-name.sql
--                       ^ punctuation.terminator.statement.sql


CREATE TABLE foo (col1, col2)
    ENGINE = engine_name,
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^ variable.parameter.sql
--         ^ keyword.operator.comparison.sql
    STORAGE ENGINE = engine_name,
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^ variable.parameter.sql
--                 ^ keyword.operator.comparison.sql
    AUTO_INCREMENT = 30,
-- ^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^ variable.parameter.sql
    AVG_ROW_LENGTH = 30,
-- ^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^ variable.parameter.sql
    DEFAULT CHARACTER SET = 'utf-8',
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^^^^^^^^ variable.parameter.sql
    CHARACTER SET = 'utf-16',
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^ variable.parameter.sql
    CHECKSUM = 0, -- {0 | 1}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^ variable.parameter.sql
    COLLATE = collation_name,
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^ variable.parameter.sql
    DEFAULT COLLATE = collation_name,
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^^ variable.parameter.sql
    COMMENT = 'string',
-- ^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^ variable.parameter.sql
    CONNECTION = 'connect_string',
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^ variable.parameter.sql
    DATA DIRECTORY = 'absolute path to directory',
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^ variable.parameter.sql
    DELAY_KEY_WRITE = 0, -- {0 | 1}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^^ variable.parameter.sql
    ENCRYPTED = NO, -- {YES | NO}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^ variable.parameter.sql
    ENCRYPTION_KEY_ID = 30,
-- ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^^^^ variable.parameter.sql
    IETF_QUOTES = YES, -- {YES | NO}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^ variable.parameter.sql
    INDEX DIRECTORY = 'absolute path to directory',
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^^ variable.parameter.sql
    INSERT_METHOD = FIRST, -- { NO | FIRST | LAST }
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^ variable.parameter.sql
    KEY_BLOCK_SIZE = 30,
-- ^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^ variable.parameter.sql
    MAX_ROWS = 30,
-- ^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^ variable.parameter.sql
    MIN_ROWS = 30,
-- ^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^ variable.parameter.sql
    PACK_KEYS = 1, -- {0 | 1 | DEFAULT}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^ variable.parameter.sql
    PAGE_CHECKSUM = 0, -- {0 | 1}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^ variable.parameter.sql
    PAGE_COMPRESSED = 0, -- {0 | 1}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^^ variable.parameter.sql
    PAGE_COMPRESSION_LEVEL = 9, -- {0 .. 9}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^^^^^^^^^ variable.parameter.sql
    PASSWORD = 'string',
-- ^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^ variable.parameter.sql
    ROW_FORMAT = DYNAMIC, -- {DEFAULT|DYNAMIC|FIXED|COMPRESSED|REDUNDANT|COMPACT|PAGE}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^ variable.parameter.sql
--             ^ keyword.operator.comparison.sql
--               ^^^^^^^ constant.language.sql
    SEQUENCE = 0, -- {0|1}
-- ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^ variable.parameter.sql
    STATS_AUTO_RECALC = DEFAULT, -- {DEFAULT|0|1}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^^^^ variable.parameter.sql
    STATS_PERSISTENT = DEFAULT, -- {DEFAULT|0|1}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^^^ variable.parameter.sql
    STATS_SAMPLE_PAGES = DEFAULT, -- {DEFAULT|value}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^^^^^ variable.parameter.sql
    TABLESPACE tablespace_name,
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^ variable.parameter.sql
--             ^^^^^^^^^^^^^^^ meta.other-name.sql
    TRANSACTIONAL =  0, -- {0 | 1}
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^ variable.parameter.sql
    UNION = (`table1`, "table2", table3), -- (tbl_name[,tbl_name]...)
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^ variable.parameter.sql
--        ^ keyword.operator.assignment.sql
--          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.tables.sql
--          ^ punctuation.section.sequence.begin.sql
--           ^^^^^^^^ meta.table-name.sql
--                   ^ punctuation.separator.sequence.sql
--                     ^^^^^^^^ meta.table-name.sql
--                             ^ punctuation.separator.sequence.sql
--                               ^^^^^^ meta.table-name.sql
--                                     ^ punctuation.section.sequence.end.sql
    WITH SYSTEM VERSIONING
-- ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^ keyword.other.sql
--       ^^^^^^^^^^^^^^^^^ constant.language.sql
;
-- <- punctuation.terminator.statement.sql

CREATE
    TABLE
--  ^^^^^ meta.statement.create.sql meta.table.sql keyword.other.ddl.sql
    foo
--  ^^^ meta.statement.create.sql meta.table.sql entity.name.struct.table.sql
    (col1, col2)
--  ^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.table-columns.sql
    PARTITION BY
--  ^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql keyword.other.sql
        LINEAR HASH( 20 + YEAR(col2) )
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--      ^^^^^^ storage.modifier.sql
--             ^^^^ support.function.sql
--                 ^^^^^^^^^^^^^^^^^^^ meta.group.sql
--                 ^ punctuation.section.group.begin.sql
--                   ^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                      ^ keyword.operator.arithmetic.sql
--                        ^^^^^^^^^^ meta.function-call
--                        ^^^^ support.function.sql
--                            ^^^^^^ meta.group.sql
--                            ^ punctuation.section.arguments.begin.sql
--                             ^^^^ meta.column-name.sql
--                                 ^ punctuation.section.arguments.end.sql
--                                   ^ punctuation.section.group.end.sql
        LINEAR KEY(col1, col2)
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--      ^^^^^^ storage.modifier.sql
--             ^^^ support.function.sql
--                ^^^^^^^^^^^^ meta.group.table-columns.sql
--                ^ punctuation.section.group.begin.sql
--                 ^^^^ meta.column-name.sql
--                     ^ punctuation.separator.sequence.sql
--                       ^^^^ meta.column-name.sql
--                           ^ punctuation.section.group.end.sql
        RANGE(10)
--  ^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--      ^^^^^ support.function.sql
--           ^^^^ meta.group.sql
--           ^ punctuation.section.group.begin.sql
--            ^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--              ^ punctuation.section.group.end.sql
        LIST()
--  ^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--      ^^^^ support.function.sql
--          ^^ meta.group.sql
--          ^ punctuation.section.group.begin.sql
--           ^ punctuation.section.group.end.sql
        SYSTEM_TIME INTERVAL 10 DAY LIMIT 10
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--      ^^^^^^^^^^^ keyword.other.sql
--                  ^^^^^^^^ storage.type.interval.sql
--                           ^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                              ^^^ keyword.other.unit.sql
--                                  ^^^^^ keyword.other.sql
--                                        ^^ meta.number.integer.decimal.sql constant.numeric.value.sql

    PARTITIONS 3
--  ^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^ keyword.other.sql
--             ^ meta.number.integer.decimal.sql constant.numeric.value.sql
    SUBPARTITION BY
--  ^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
--  ^^^^^^^^^^^^^^^ keyword.other.sql
        LINEAR HASH(10 + 20)
--  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql

        LINEAR KEY(col1, col2)
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql
        SUBPARTITIONS 3
--  ^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql

    (
--  ^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--  ^ punctuation.section.group.begin.sql
        PARTITION partition1
--      ^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--      ^^^^^^^^^ keyword.other.ddl.sql
--                ^^^^^^^^^^ entity.name.struct.partition.sql
            VALUES LESS THAN MAXVALUE
--         ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--          ^^^^^^ keyword.other.ddl.sql
--                 ^^^^^^^^^ keyword.operator.logical.sql
--                           ^^^^^^^^ constant.language.sql
            VALUES LESS THAN (20)
--         ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--          ^^^^^^ keyword.other.ddl.sql
--                 ^^^^^^^^^ keyword.operator.logical.sql
--                           ^^^^ meta.group.sql
--                           ^ punctuation.section.group.begin.sql
--                            ^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                              ^ punctuation.section.group.end.sql
            ENGINE = engine_name
--         ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--          ^^^^^^ variable.parameter.sql
--                 ^ keyword.operator.comparison.sql
            COMMENT = 'comment_text'
--         ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--          ^^^^^^^ variable.parameter.sql
--                  ^ keyword.operator.comparison.sql
--                    ^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
            DATA DIRECTORY = 'data_dir'
--         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--          ^^^^^^^^^^^^^^ variable.parameter.sql
--                         ^ keyword.operator.comparison.sql
--                           ^^^^^^^^^^ meta.string.sql string.quoted.single.sql
            INDEX DIRECTORY = 'index_dir'
--         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--          ^^^^^^^^^^^^^^^ variable.parameter.sql
--                          ^ keyword.operator.comparison.sql
--                            ^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
            MAX_ROWS = 20
--         ^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--          ^^^^^^^^ variable.parameter.sql
--                   ^ keyword.operator.comparison.sql
--                     ^^ meta.number.integer.decimal.sql constant.numeric.value.sql
            MIN_ROWS = 4
--         ^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--          ^^^^^^^^ variable.parameter.sql
--                   ^ keyword.operator.comparison.sql
--                     ^ meta.number.integer.decimal.sql constant.numeric.value.sql
            TABLESPACE = tablespace_name
--         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--          ^^^^^^^^^^ variable.parameter.sql
--                     ^ keyword.operator.assignment.sql
--                       ^^^^^^^^^^^^^^^ meta.other-name.sql
            NODEGROUP = 32

            (
--         ^ meta.group.partitions.sql - meta.sequence meta.sequence
--          ^^ meta.group.partitions.sql meta.group.partitions.sql
--          ^ punctuation.section.group.begin.sql
                subpartition partition1
--              ^^^^^^^^^^^^ keyword.other.ddl.sql
--                           ^^^^^^^^^^ entity.name.struct.partition.sql
                    ENGINE engine_name
--                  ^^^^^^ variable.parameter.sql
                    COMMENT 'comment_text'
--                  ^^^^^^^ variable.parameter.sql
--                          ^^^^^^^^^^^^^^ string.quoted.single.sql

              , subpartition partition2
--            ^ punctuation.separator.sequence.sql
--              ^^^^^^^^^^^^ keyword.other.ddl.sql
--                           ^^^^^^^^^^ entity.name.struct.partition.sql
            ),
--         ^^ meta.group.partitions.sql meta.group.partitions.sql
--           ^ meta.group.partitions.sql - meta.sequence meta.sequence
--          ^ punctuation.section.group.end.sql
--           ^ punctuation.separator.sequence.sql

        PARTITION partition2
--     ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--      ^^^^^^^^^ keyword.other.ddl.sql
--                ^^^^^^^^^^ entity.name.struct.partition.sql
            VALUES IN ("value1", "value2", "value3")
--         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--          ^^^^^^ keyword.other.ddl.sql
--                 ^^ keyword.operator.logical.sql
--                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--                    ^ punctuation.section.group.begin.sql
--                     ^^^^^^^^ meta.string.sql string.quoted.double.sql
--                             ^ punctuation.separator.sequence.sql
--                               ^^^^^^^^ meta.string.sql string.quoted.double.sql
--                                       ^ punctuation.separator.sequence.sql
--                                         ^^^^^^^^ meta.string.sql string.quoted.double.sql
--                                                 ^ punctuation.section.group.end.sql
--
            STORAGE ENGINE = engine_name
--         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--          ^^^^^^^^^^^^^^ variable.parameter.sql
--                         ^ keyword.operator.comparison.sql
    )
-- ^^ meta.statement.create.sql meta.table.sql meta.group.partitions.sql
--  ^ punctuation.section.group.end.sql


-- ----------------------------------------------------------------------------
-- Create User Statements
-- https://mariadb.com/kb/en/create-user
--
-- CREATE [OR REPLACE] USER [IF NOT EXISTS]
--  user_specification [,user_specification ...]
--   [REQUIRE {NONE | tls_option [[AND] tls_option ...] }]
--   [WITH resource_option [resource_option ...] ]
--   [lock_option] [password_option]
--
-- user_specification:
--   username [authentication_option]
--
-- authentication_option:
--   IDENTIFIED BY 'password'
--   | IDENTIFIED BY PASSWORD 'password_hash'
--   | IDENTIFIED {VIA|WITH} authentication_rule [OR authentication_rule  ...]
--
-- authentication_rule:
--     authentication_plugin
--   | authentication_plugin {USING|AS} 'authentication_string'
--   | authentication_plugin {USING|AS} PASSWORD('password')
--
-- tls_option:
--   SSL
--   | X509
--   | CIPHER 'cipher'
--   | ISSUER 'issuer'
--   | SUBJECT 'subject'
--
-- resource_option:
--   MAX_QUERIES_PER_HOUR count
--   | MAX_UPDATES_PER_HOUR count
--   | MAX_CONNECTIONS_PER_HOUR count
--   | MAX_USER_CONNECTIONS count
--   | MAX_STATEMENT_TIME time
--
-- password_option:
--   PASSWORD EXPIRE
--   | PASSWORD EXPIRE DEFAULT
--   | PASSWORD EXPIRE NEVER
--   | PASSWORD EXPIRE INTERVAL N DAY
--
-- lock_option:
--     ACCOUNT LOCK
--   | ACCOUNT UNLOCK
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
--            ^ constant.other.wildcard.percent.sql
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
--                  ^^^^^^^^ storage.type.interval.sql
--                           ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                             ^^^ keyword.other.unit.sql


-- ----------------------------------------------------------------------------
-- Alter Database Statements
-- https://mariadb.com/kb/en/alter-database
--
-- ALTER {DATABASE | SCHEMA} [db_name]
--     alter_specification ...
-- ALTER {DATABASE | SCHEMA} db_name
--     UPGRADE DATA DIRECTORY NAME
--
-- alter_specification:
--     [DEFAULT] CHARACTER SET [=] charset_name
--   | [DEFAULT] COLLATE [=] collation_name
--   | COMMENT [=] 'comment'
-- ----------------------------------------------------------------------------

ALTER DATABASE db_name
-- <- meta.statement.alter.sql keyword.other.ddl.sql
-- ^^^ meta.statement.alter.sql
--    ^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.database.sql
-- ^^ keyword.other.ddl.sql
--    ^^^^^^^^ keyword.other.ddl.sql
--             ^^^^^^^ meta.database-name.sql


ALTER DATABASE db_name UPGRADE DATA DIRECTORY NA
-- <- meta.statement.alter.sql keyword.other.ddl.sql
-- ^^^ meta.statement.alter.sql
--    ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.database.sql
--                            ^^^^^^^^^^^^^^^^^^^ - meta.statement.alter
-- ^^ keyword.other.ddl.sql
--    ^^^^^^^^ keyword.other.ddl.sql
--             ^^^^^^^ meta.database-name.sql
--                     ^^^^^^^ keyword.other.ddl.sql
--                            ^^^^^^^^^^^^^^^^^^ - keyword

ALTER DATABASE db_name UPGRADE DATA DIRECTORY NAME
-- <- meta.statement.alter.sql keyword.other.ddl.sql
-- ^^^ meta.statement.alter.sql
--    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.database.sql
-- ^^ keyword.other.ddl.sql
--    ^^^^^^^^ keyword.other.ddl.sql
--             ^^^^^^^ meta.database-name.sql
--                     ^^^^^^^ keyword.other.ddl.sql
--                            ^ - keyword
--                             ^^^^^^^^^^^^^^^^^^^ keyword.other.ddl.sql

ALTER SCHEMA schema_name
-- <- meta.statement.alter.sql keyword.other.ddl.sql
-- ^^^ meta.statement.alter.sql
--    ^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.database.sql
-- ^^ keyword.other.ddl.sql
--    ^^^^^^ keyword.other.ddl.sql
--           ^^^^^^^^^^^ meta.database-name.sql

    CHARACTER SET = 'utf-8'
-- <- meta.statement.alter.sql meta.database.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.database.sql
--  ^^^^^^^^^^^^^ variable.parameter.database.sql
--                ^ keyword.operator.assignment.sql
--                  ^^^^^^^ meta.string.sql string.quoted.single.sql

    DEFAULT CHARACTER SET = 'utf-16'
-- <- meta.statement.alter.sql meta.database.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.database.sql
--  ^^^^^^^^^^^^^^^^^^^^^ variable.parameter.database.sql
--                        ^ keyword.operator.assignment.sql
--                          ^^^^^^^^ meta.string.sql string.quoted.single.sql

    COLLATE = 'collation'
-- <- meta.statement.alter.sql meta.database.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.database.sql
--  ^^^^^^^ variable.parameter.database.sql
--          ^ keyword.operator.assignment.sql
--            ^^^^^^^^^^^ meta.string.sql string.quoted.single.sql

    COMMENT = 'My new database'
-- <- meta.statement.alter.sql meta.database.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.database.sql
--  ^^^^^^^ variable.parameter.sql
--          ^ keyword.operator.assignment.sql
--            ^^^^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql

-- ----------------------------------------------------------------------------
-- Alter Event Statements
-- https://mariadb.com/kb/en/alter-event
--
-- ALTER
--     [DEFINER = { user | CURRENT_USER }]
--     EVENT event_name
--     [ON SCHEDULE schedule]
--     [ON COMPLETION [NOT] PRESERVE]
--     [RENAME TO new_event_name]
--     [ENABLE | DISABLE | DISABLE ON SLAVE]
--     [COMMENT 'comment']
--     [DO sql_statement]
-- ----------------------------------------------------------------------------

ALTER EVENT event_name
-- <- meta.statement.alter.sql keyword.other.ddl.sql
-- ^^^ meta.statement.alter.sql - meta.event
--    ^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.event.sql
-- ^^ keyword.other.ddl.sql
--    ^^^^^ keyword.other.ddl.sql
--          ^^^^^^^^^^ meta.event-name.sql

ALTER DEFINER = user@host EVENT event_name
-- <- meta.statement.alter.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql - meta.event
--                        ^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.event.sql
-- ^^ keyword.other.ddl.sql
--    ^^^^^^^ variable.parameter.definer.sql
--            ^ keyword.operator.assignment.sql
--              ^^^^^^^^^ meta.username.sql
--                        ^^^^^ keyword.other.ddl.sql
--                              ^^^^^^^^^^ meta.event-name.sql

ALTER EVENT IF NOT EXISTS event_name
-- <- meta.statement.alter.sql keyword.other.ddl.sql
-- ^^^ meta.statement.alter.sql - meta.event
--    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.event.sql
-- ^^ keyword.other.ddl.sql
--    ^^^^^ keyword.other.ddl.sql
--          ^^ keyword.control.conditional.if.sql
--             ^^^ keyword.operator.logical.sql
--                 ^^^^^^ keyword.operator.logical.sql
--                        ^^^^^^^^^^ meta.event-name.sql

ALTER EVENT event_name
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR + INTERVAL 3 MINUTE
-- <- meta.statement.alter.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.event.sql
--  ^^ keyword.other.ddl.sql
--     ^^^^^^^^ keyword.other.ddl.sql
--              ^^ keyword.other.ddl.sql
--                 ^^^^^^^^^^^^^^^^^ meta.function-call.sql support.function.scalar.sql
--                                   ^ keyword.operator.arithmetic.sql
--                                     ^^^^^^^^ storage.type.interval.sql
--                                              ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                                ^^^^ keyword.other.unit.sql
--                                                     ^ keyword.operator.arithmetic.sql
--                                                       ^^^^^^^^ storage.type.interval.sql
--                                                                ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                                                  ^^^^^^ keyword.other.unit.sql

ALTER EVENT event_name
    ON SCHEDULE EVERY 1 MONTH
-- <- meta.statement.alter.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.event.sql
--  ^^ keyword.other.ddl.sql
--     ^^^^^^^^ keyword.other.ddl.sql
--              ^^^^^ keyword.other.ddl.sql
--                    ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                      ^^^^^ keyword.other.unit.sql

    STARTS CURRENT_TIMESTAMP + INTERVAL 1 MONTH
-- <- meta.statement.alter.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.event.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^^^^^^^^^^^^^^^^ meta.function-call.sql support.function.scalar.sql
--                           ^ keyword.operator.arithmetic.sql
--                             ^^^^^^^^ storage.type.interval.sql
--                                      ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                        ^^^^^ keyword.other.unit.sql

    ENDS CURRENT_TIMESTAMP + INTERVAL 1 MONTH + INTERVAL 1 WEEK
-- <- meta.statement.alter.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.event.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^^^^^^ meta.function-call.sql support.function.scalar.sql
--                         ^ keyword.operator.arithmetic.sql
--                           ^^^^^^^^ storage.type.interval.sql
--                                    ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                      ^^^^^ keyword.other.unit.sql
--                                            ^ keyword.operator.arithmetic.sql
--                                              ^^^^^^^^ storage.type.interval.sql
--                                                       ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                                         ^^^^ keyword.other.unit.sql

    ON COMPLETION PRESERVE
-- <- meta.statement.alter.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.event.sql
--  ^^ keyword.other.ddl.sql
--     ^^^^^^^^^^ keyword.other.ddl.sql
--                ^^^^^^^^ constant.language.sql

    ON COMPLETION NOT PRESERVE
-- <- meta.statement.alter.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.event.sql
--  ^^ keyword.other.ddl.sql
--     ^^^^^^^^^^ keyword.other.ddl.sql
--                ^^^ keyword.operator.logical.sql
--                    ^^^^^^^^ constant.language.sql

    ENABLE
-- <- meta.statement.alter.sql meta.event.sql
-- ^^^^^^^^ meta.statement.alter.sql meta.event.sql
--  ^^^^^^ keyword.other.ddl.sql

    DISABLE
-- <- meta.statement.alter.sql meta.event.sql
-- ^^^^^^^^^ meta.statement.alter.sql meta.event.sql
--  ^^^^^^^ keyword.other.ddl.sql

    DISABLE ON SLAVE
-- <- meta.statement.alter.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.event.sql
--  ^^^^^^^ keyword.other.ddl.sql
--          ^^ keyword.other.ddl.sql
--             ^^^^^ keyword.other.ddl.sql

    COMMENT 'my comment'
-- <- meta.statement.alter.sql meta.event.sql
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.event.sql
--  ^^^^^^^ variable.parameter.sql
--          ^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql

    DO UPDATE myschema.mytable SET mycol = mycol + 1;
-- <- meta.statement.alter.sql meta.event.sql
-- ^^^ meta.statement.alter.sql meta.event.sql
--    ^ - meta.statement
--     ^^^^^^ keyword.other.dml.sql
--            ^^^^^^^^^^^^^^^^ meta.table-name.sql
--                             ^^^ keyword.other.dml.sql
--                                 ^^^^^ meta.column-name.sql
--                                       ^ keyword.operator.comparison.sql
--                                         ^^^^^ meta.column-name.sql
--                                               ^ keyword.operator.arithmetic.sql
--                                                 ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                                  ^ punctuation.terminator.statement.sql


-- ----------------------------------------------------------------------------
-- Alter Table Statements
-- https://mariadb.com/kb/en/alter-table
--
-- ALTER [ONLINE] [IGNORE] TABLE [IF EXISTS] tbl_name
--     [WAIT n | NOWAIT]
--     alter_specification [, alter_specification] ...
--
-- alter_specification:
--     table_option ...
--   | ADD [COLUMN] [IF NOT EXISTS] col_name column_definition
--         [FIRST | AFTER col_name ]
--   | ADD [COLUMN] [IF NOT EXISTS] (col_name column_definition,...)
--   | ADD {INDEX|KEY} [IF NOT EXISTS] [index_name]
--         [index_type] (index_col_name,...) [index_option] ...
--   | ADD [CONSTRAINT [symbol]] PRIMARY KEY
--         [index_type] (index_col_name,...) [index_option] ...
--   | ADD [CONSTRAINT [symbol]]
--         UNIQUE [INDEX|KEY] [index_name]
--         [index_type] (index_col_name,...) [index_option] ...
--   | ADD FULLTEXT [INDEX|KEY] [index_name]
--         (index_col_name,...) [index_option] ...
--   | ADD SPATIAL [INDEX|KEY] [index_name]
--         (index_col_name,...) [index_option] ...
--   | ADD [CONSTRAINT [symbol]]
--         FOREIGN KEY [IF NOT EXISTS] [index_name] (index_col_name,...)
--         reference_definition
--   | ADD PERIOD FOR SYSTEM_TIME (start_column_name, end_column_name)
--   | ALTER [COLUMN] col_name SET DEFAULT literal | (expression)
--   | ALTER [COLUMN] col_name DROP DEFAULT
--   | ALTER {INDEX|KEY} index_name [NOT] INVISIBLE
--   | CHANGE [COLUMN] [IF EXISTS] old_col_name new_col_name column_definition
--         [FIRST | AFTER col_name]
--   | MODIFY [COLUMN] [IF EXISTS] col_name column_definition
--         [FIRST | AFTER col_name]
--   | DROP [COLUMN] [IF EXISTS] col_name [RESTRICT|CASCADE]
--   | DROP PRIMARY KEY
--   | DROP {INDEX|KEY} [IF EXISTS] index_name
--   | DROP FOREIGN KEY [IF EXISTS] index_name
--   | DROP CONSTRAINT [IF EXISTS] constraint_name
--   | DISABLE KEYS
--   | ENABLE KEYS
--   | RENAME [TO] new_tbl_name
--   | ORDER BY col_name [, col_name] ...
--   | RENAME COLUMN old_col_name TO new_col_name
--   | RENAME {INDEX|KEY} old_index_name TO new_index_name
--   | CONVERT TO CHARACTER SET charset_name [COLLATE collation_name]
--   | [DEFAULT] CHARACTER SET [=] charset_name
--   | [DEFAULT] COLLATE [=] collation_name
--   | DISCARD TABLESPACE
--   | IMPORT TABLESPACE
--   | ALGORITHM [=] {DEFAULT|INPLACE|COPY|NOCOPY|INSTANT}
--   | LOCK [=] {DEFAULT|NONE|SHARED|EXCLUSIVE}
--   | FORCE
--   | partition_options
--   | CONVERT TABLE normal_table TO partition_definition
--   | CONVERT PARTITION partition_name TO TABLE tbl_name
--   | ADD PARTITION [IF NOT EXISTS] (partition_definition)
--   | DROP PARTITION [IF EXISTS] partition_names
--   | COALESCE PARTITION number
--   | REORGANIZE PARTITION [partition_names INTO (partition_definitions)]
--   | ANALYZE PARTITION partition_names
--   | CHECK PARTITION partition_names
--   | OPTIMIZE PARTITION partition_names
--   | REBUILD PARTITION partition_names
--   | REPAIR PARTITION partition_names
--   | EXCHANGE PARTITION partition_name WITH TABLE tbl_name
--   | REMOVE PARTITIONING
--   | ADD SYSTEM VERSIONING
--   | DROP SYSTEM VERSIONING
--
-- index_col_name:
--     col_name [(length)] [ASC | DESC]
--
-- index_type:
--     USING {BTREE | HASH | RTREE}
--
-- index_option:
--     [ KEY_BLOCK_SIZE [=] value
--   | index_type
--   | WITH PARSER parser_name
--   | COMMENT 'string'
--   | CLUSTERING={YES| NO} ]
--   [ IGNORED | NOT IGNORED ]
--
-- table_options:
--     table_option [[,] table_option] ...
-- ----------------------------------------------------------------------------

ALTER ONLINE IGNORE TABLE IF EXISTS tbl_name WAIT 100
-- <- meta.statement.alter.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- ^^ keyword.other.ddl.sql
--    ^^^^^^ keyword.other.ddl.sql
--           ^^^^^^ keyword.other.ddl.sql
--                  ^^^^^ keyword.other.ddl.sql
--                        ^^ keyword.control.conditional.if.sql
--                           ^^^^^^ keyword.operator.logical.sql
--                                  ^^^^^^^^ meta.table-name.sql
--                                           ^^^^ keyword.other.ddl.sql
--                                                ^^^ meta.number.integer.decimal.sql constant.numeric.value.sql

    ADD id INTEGER PRIMARY KEY
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^ meta.column-name.sql variable.other.member.declaration.sql
--         ^^^^^^^ storage.type.sql
--                 ^^^^^^^^^^^ storage.modifier.sql

    ADD COLUMN id INTEGER PRIMARY KEY
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^ keyword.other.ddl.sql
--             ^^ meta.column-name.sql variable.other.member.declaration.sql
--                ^^^^^^^ storage.type.sql
--                        ^^^^^^^^^^^ storage.modifier.sql

    ADD COLUMN IF NOT EXISTS id INTEGER PRIMARY KEY
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^ keyword.other.ddl.sql
--             ^^ keyword.control.conditional.if.sql
--                ^^^ keyword.operator.logical.sql
--                    ^^^^^^ keyword.operator.logical.sql
--                           ^^ meta.column-name.sql variable.other.member.declaration.sql
--                              ^^^^^^^ storage.type.sql
--                                      ^^^^^^^^^^^ storage.modifier.sql

    ADD (id INTEGER PRIMARY KEY, )
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.table-columns.sql
--      ^ punctuation.section.group.begin.sql
--       ^^ meta.column-name.sql variable.other.member.declaration.sql
--          ^^^^^^^ storage.type.sql
--                  ^^^^^^^^^^^ storage.modifier.sql
--                             ^ punctuation.separator.sequence.sql
--                               ^ punctuation.section.group.end.sql

    ADD COLUMN (id INTEGER PRIMARY KEY, ) FIRST
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^ keyword.other.ddl.sql
--             ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.table-columns.sql
--             ^ punctuation.section.group.begin.sql
--              ^^ meta.column-name.sql variable.other.member.declaration.sql
--                 ^^^^^^^ storage.type.sql
--                         ^^^^^^^^^^^ storage.modifier.sql
--                                    ^ punctuation.separator.sequence.sql
--                                      ^ punctuation.section.group.end.sql
--                                        ^^^^^ keyword.other.position.sql

    ADD COLUMN IF NOT EXISTS (id INTEGER PRIMARY KEY, ) AFTER col
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^ keyword.other.ddl.sql
--             ^^ keyword.control.conditional.if.sql
--                ^^^ keyword.operator.logical.sql
--                    ^^^^^^ keyword.operator.logical.sql
--                           ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.table-columns.sql
--                           ^ punctuation.section.group.begin.sql
--                            ^^ meta.column-name.sql variable.other.member.declaration.sql
--                               ^^^^^^^ storage.type.sql
--                                       ^^^^^^^^^^^ storage.modifier.sql
--                                                  ^ punctuation.separator.sequence.sql
--                                                    ^ punctuation.section.group.end.sql
--                                                      ^^^^^ keyword.other.position.sql
--                                                            ^^^ meta.column-name.sql

-- ----------------------------------------------------------------------------
--  ADD {INDEX|KEY} [IF NOT EXISTS] [index_name]
--      [index_type] (index_col_name,...) [index_option] ...
--  ADD FULLTEXT [INDEX|KEY] [index_name]
--      (index_col_name,...) [index_option] ...
--  ADD SPATIAL [INDEX|KEY] [index_name]
--      (index_col_name,...) [index_option] ...
-- ----------------------------------------------------------------------------

ALTER TABLE tbl_name

    ADD INDEX index_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^ keyword.other.ddl.sql
--            ^^^^^^^^^^ meta.index-name.sql

    ADD INDEX IF NOT EXISTS index_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^ keyword.other.ddl.sql
--            ^^ keyword.control.conditional.if.sql
--               ^^^ keyword.operator.logical.sql
--                   ^^^^^^ keyword.operator.logical.sql
--                          ^^^^^^^^^^ meta.index-name.sql

    ADD FULLTEXT INDEX index_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^^ keyword.other.ddl.sql
--               ^^^^^ keyword.other.ddl.sql
--                     ^^^^^^^^^^ meta.index-name.sql

    ADD SPATIAL INDEX index_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^ keyword.other.ddl.sql
--              ^^^^^ keyword.other.ddl.sql
--                    ^^^^^^^^^^ meta.index-name.sql

    ADD KEY index_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^ keyword.other.ddl.sql
--          ^^^^^^^^^^ meta.index-name.sql

    ADD FULLTEXT KEY index_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^^ keyword.other.ddl.sql
--               ^^^ keyword.other.ddl.sql
--                   ^^^^^^^^^^ meta.index-name.sql

    ADD SPATIAL KEY index_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^ keyword.other.ddl.sql
--              ^^^ keyword.other.ddl.sql
--                  ^^^^^^^^^^ meta.index-name.sql

    ADD KEY IF NOT EXISTS index_name,
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^ keyword.other.ddl.sql
--          ^^ keyword.control.conditional.if.sql
--             ^^^ keyword.operator.logical.sql
--                 ^^^^^^ keyword.operator.logical.sql
--                        ^^^^^^^^^^ meta.index-name.sql

    ADD INDEX index_name USING BTREE (col1, col2, col3),
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^ keyword.other.ddl.sql
--            ^^^^^^^^^^ meta.index-name.sql
--                       ^^^^^ keyword.other.ddl.sql
--                             ^^^^^ constant.language.sql
--                                   ^^^^^^^^^^^^^^^^^^ meta.group.table-columns.sql
--                                   ^ punctuation.section.group.begin.sql
--                                    ^^^^ meta.column-name.sql
--                                        ^ punctuation.separator.sequence.sql
--                                          ^^^^ meta.column-name.sql
--                                              ^ punctuation.separator.sequence.sql
--                                                ^^^^ meta.column-name.sql
--                                                    ^ punctuation.section.group.end.sql

    ADD INDEX index_name (col1, col2, col3) USING BTREE KEY_BLOCK_SIZE 10 WITH PARSER parser CLUSTERING = NO NOT IGNORED
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^ keyword.other.ddl.sql
--            ^^^^^^^^^^ meta.index-name.sql
--                       ^^^^^^^^^^^^^^^^^^ meta.group.table-columns.sql
--                                          ^^^^^ keyword.other.ddl.sql
--                                                ^^^^^ constant.language.sql
--                                                      ^^^^^^^^^^^^^^ keyword.other.ddl.sql
--                                                                     ^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                                                        ^^^^^^^^^^^ keyword.other.ddl.sql
--                                                                                    ^^^^^^ meta.other-name.sql
--                                                                                           ^^^^^^^^^^ keyword.other.ddl.sql
--                                                                                                      ^ keyword.operator.comparison.sql
--                                                                                                        ^^ constant.language.boolean.sql
--                                                                                                           ^^^ keyword.operator.logical.sql
--                                                                                                               ^^^^^^^ keyword.other.ddl.sql

-- ----------------------------------------------------------------------------
--   ADD [CONSTRAINT [symbol]]
--       FOREIGN KEY [IF NOT EXISTS] [index_name] (index_col_name,...)
--       reference_definition
-- ----------------------------------------------------------------------------

ALTER TABLE tbl_name

    ADD FOREIGN KEY (col1, col2),
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^ keyword.other.ddl.sql
--              ^^^ keyword.other.ddl.sql
--                  ^^^^^^^^^^^^ meta.group.table-columns.sql
--                              ^ punctuation.separator.sequence.sql

    ADD FOREIGN KEY IF NOT EXISTS (col1, col2),
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^ keyword.other.ddl.sql
--              ^^^ keyword.other.ddl.sql
--                  ^^ keyword.control.conditional.if.sql
--                     ^^^ keyword.operator.logical.sql
--                         ^^^^^^ keyword.operator.logical.sql
--                                ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                            ^ punctuation.separator.sequence.sql

    ADD FOREIGN KEY index_name (col1, col2) REFERENCES (col1, col2),
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^ keyword.other.ddl.sql
--              ^^^ keyword.other.ddl.sql
--                  ^^^^^^^^^^ meta.index-name.sql
--                             ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                          ^^^^^^^^^^ storage.modifier.sql
--                                                     ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                                                 ^ punctuation.separator.sequence.sql

    ADD FOREIGN KEY IF NOT EXISTS index_name (col1, col2),
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^ keyword.other.ddl.sql
--              ^^^ keyword.other.ddl.sql
--                  ^^ keyword.control.conditional.if.sql
--                     ^^^ keyword.operator.logical.sql
--                         ^^^^^^ keyword.operator.logical.sql
--                                ^^^^^^^^^^ meta.index-name.sql
--                                           ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                                       ^ punctuation.separator.sequence.sql

    ADD CONSTRAINT FOREIGN KEY index_name (col1, col2),
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^^^^ keyword.other.ddl.sql
--                 ^^^^^^^ keyword.other.ddl.sql
--                         ^^^ keyword.other.ddl.sql
--                             ^^^^^^^^^^ meta.index-name.sql
--                                        ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                                    ^ punctuation.separator.sequence.sql

    ADD CONSTRAINT symbol FOREIGN KEY index_name (col1, col2) REFERENCES (col1, col2),
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^^^^ keyword.other.ddl.sql
--                 ^^^^^^ meta.constraint-name.sql
--                        ^^^^^^^ keyword.other.ddl.sql
--                                ^^^ keyword.other.ddl.sql
--                                    ^^^^^^^^^^ meta.index-name.sql
--                                               ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                                            ^^^^^^^^^^ storage.modifier.sql
--                                                                       ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                                                                   ^ punctuation.separator.sequence.sql

-- ----------------------------------------------------------------------------
--   ADD [CONSTRAINT [symbol]] PRIMARY KEY
--       [index_type] (index_col_name,...) [index_option] ...
-- ----------------------------------------------------------------------------

ALTER TABLE tbl_name

    ADD PRIMARY KEY (col1, col2) WITH PARSER parser,
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^ keyword.other.ddl.sql
--              ^^^ keyword.other.ddl.sql
--                  ^^^^^^^^^^^^ meta.group.table-columns.sql
--                               ^^^^^^^^^^^ keyword.other.ddl.sql
--                                           ^^^^^^ meta.other-name.sql
--                                                 ^ punctuation.separator.sequence.sql

    ADD CONSTRAINT PRIMARY KEY (col1, col2) WITH PARSER parser,
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^^^^ keyword.other.ddl.sql
--                 ^^^^^^^ keyword.other.ddl.sql
--                         ^^^ keyword.other.ddl.sql
--                             ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                          ^^^^^^^^^^^ keyword.other.ddl.sql
--                                                      ^^^^^^ meta.other-name.sql

    ADD CONSTRAINT symbol PRIMARY KEY (col1, col2) WITH PARSER parser,
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^^^^ keyword.other.ddl.sql
--                 ^^^^^^ meta.constraint-name.sql
--                        ^^^^^^^ keyword.other.ddl.sql
--                                ^^^ keyword.other.ddl.sql
--                                    ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                                 ^^^^^^^^^^^ keyword.other.ddl.sql
--                                                             ^^^^^^ meta.other-name.sql

    ADD CONSTRAINT symbol PRIMARY KEY USING BTREE (col1, col2) WITH PARSER parser,
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^^^^ keyword.other.ddl.sql
--                 ^^^^^^ meta.constraint-name.sql
--                        ^^^^^^^ keyword.other.ddl.sql
--                                ^^^ keyword.other.ddl.sql
--                                    ^^^^^ keyword.other.ddl.sql
--                                          ^^^^^ constant.language.sql
--                                                ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                                             ^^^^^^^^^^^ keyword.other.ddl.sql
--                                                                         ^^^^^^ meta.other-name.sql

-- ----------------------------------------------------------------------------
--   ADD [CONSTRAINT [symbol]]
--       UNIQUE [INDEX|KEY] [index_name]
--       [index_type] (index_col_name,...) [index_option] ...
-- ----------------------------------------------------------------------------

ALTER TABLE tbl_name

    ADD UNIQUE INDEX index_name USING BTREE (col1, col2) WITH PARSER parser,
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^ keyword.other.ddl.sql
--             ^^^^^ keyword.other.ddl.sql
--                   ^^^^^^^^^^ meta.index-name.sql
--                              ^^^^^ keyword.other.ddl.sql
--                                    ^^^^^ constant.language.sql
--                                          ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                                       ^^^^^^^^^^^ keyword.other.ddl.sql
--                                                                   ^^^^^^ meta.other-name.sql

    ADD UNIQUE KEY index_name USING BTREE (col1, col2) WITH PARSER parser,
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^ keyword.other.ddl.sql
--             ^^^ keyword.other.ddl.sql
--                 ^^^^^^^^^^ meta.index-name.sql
--                            ^^^^^ keyword.other.ddl.sql
--                                  ^^^^^ constant.language.sql
--                                        ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                                     ^^^^^^^^^^^ keyword.other.ddl.sql
--                                                                 ^^^^^^ meta.other-name.sql

    ADD CONSTRAINT UNIQUE KEY index_name USING BTREE (col1, col2) WITH PARSER parser,
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^^^^ keyword.other.ddl.sql
--                 ^^^^^^ keyword.other.ddl.sql
--                        ^^^ keyword.other.ddl.sql
--                            ^^^^^^^^^^ meta.index-name.sql
--                                       ^^^^^ keyword.other.ddl.sql
--                                             ^^^^^ constant.language.sql
--                                                   ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                                                ^^^^^^^^^^^ keyword.other.ddl.sql
--                                                                            ^^^^^^ meta.other-name.sql

    ADD CONSTRAINT symbol UNIQUE KEY index_name USING BTREE (col1, col2) WITH PARSER parser,
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^^^^ keyword.other.ddl.sql
--                 ^^^^^^ meta.constraint-name.sql
--                        ^^^^^^ keyword.other.ddl.sql
--                               ^^^ keyword.other.ddl.sql
--                                   ^^^^^^^^^^ meta.index-name.sql
--                                              ^^^^^ keyword.other.ddl.sql
--                                                    ^^^^^ constant.language.sql
--                                                          ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                                                       ^^^^^^^^^^^ keyword.other.ddl.sql
--                                                                                   ^^^^^^ meta.other-name.sql

-- ----------------------------------------------------------------------------
--   ADD PARTITION ...
--   ADD PERIOD ...
--   ADD SYSTEM VERSIONING
-- ----------------------------------------------------------------------------

    ADD PARTITION (
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^^^ keyword.other.ddl.sql
--                ^^ meta.group.partitions.sql
--                ^ punctuation.section.group.begin.sql
--
            partition1
--          ^^^^^^^^^^ entity.name.struct.partition.sql
            VALUES LESS THAN MAXVALUE
--          ^^^^^^ keyword.other.ddl.sql
--                 ^^^^^^^^^ keyword.operator.logical.sql
--                           ^^^^^^^^ constant.language.sql
    ),

    ADD PARTITION IF NOT EXISTS (partition1 DATA DIRECTORY '../dir'),
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^^^ keyword.other.ddl.sql
--                ^^ keyword.control.conditional.if.sql
--                   ^^^ keyword.operator.logical.sql
--                       ^^^^^^ keyword.operator.logical.sql
--                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.partitions.sql
--                              ^ punctuation.section.group.begin.sql
--                                                                 ^ punctuation.section.group.end.sql

    ADD PERIOD FOR SYSTEM_TIME (start_column_name, end_column_name),
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^ keyword.other.ddl.sql
--             ^^^ keyword.other.ddl.sql
--                 ^^^^^^^^^^^ keyword.other.ddl.sql
--                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.table-columns.sql
--                             ^ punctuation.section.group.begin.sql
--                              ^^^^^^^^^^^^^^^^^ meta.column-name.sql
--                                               ^ punctuation.separator.sequence.sql
--                                                 ^^^^^^^^^^^^^^^ meta.column-name.sql
--                                                                ^ punctuation.section.group.end.sql

    ADD SYSTEM VERSIONING
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^ keyword.other.ddl.sql
--      ^^^^^^^^^^^^^^^^^ constant.language.sql

-- ----------------------------------------------------------------------------
--   CHANGE [COLUMN] [IF EXISTS] old_col_name new_col_name column_definition
--       [FIRST | AFTER col_name]
-- ----------------------------------------------------------------------------

ALTER TABLE tbl_name

    CHANGE old_col new_col INTEGER NOT NULL FIRST
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^^^^^^ meta.column-name.sql
--                 ^^^^^^^ meta.column-name.sql
--                         ^^^^^^^ storage.type.sql
--                                 ^^^ keyword.operator.logical.sql
--                                     ^^^^ constant.language.null.sql
--                                          ^^^^^ keyword.other.position.sql

    CHANGE IF EXISTS old_col new_col INTEGER NOT NULL AFTER col
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^ keyword.control.conditional.if.sql
--            ^^^^^^ keyword.operator.logical.sql
--                   ^^^^^^^ meta.column-name.sql
--                           ^^^^^^^ meta.column-name.sql
--                                   ^^^^^^^ storage.type.sql
--                                           ^^^ keyword.operator.logical.sql
--                                               ^^^^ constant.language.null.sql
--                                                    ^^^^^ keyword.other.position.sql
--                                                          ^^^ meta.column-name.sql

    CHANGE COLUMN old_col new_col INTEGER NOT NULL FIRST
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^^^^^ keyword.other.ddl.sql
--                ^^^^^^^ meta.column-name.sql
--                        ^^^^^^^ meta.column-name.sql
--                                ^^^^^^^ storage.type.sql
--                                        ^^^ keyword.operator.logical.sql
--                                            ^^^^ constant.language.null.sql
--                                                 ^^^^^ keyword.other.position.sql

    CHANGE COLUMN IF EXISTS old_col new_col INTEGER NOT NULL AFTER col
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^^^^^ keyword.other.ddl.sql
--                ^^ keyword.control.conditional.if.sql
--                   ^^^^^^ keyword.operator.logical.sql
--                          ^^^^^^^ meta.column-name.sql
--                                  ^^^^^^^ meta.column-name.sql
--                                          ^^^^^^^ storage.type.sql
--                                                  ^^^ keyword.operator.logical.sql
--                                                      ^^^^ constant.language.null.sql
--                                                           ^^^^^ keyword.other.position.sql
--                                                                 ^^^ meta.column-name.sql

    CHANGE COLUMN old_col new_col ENUM('foo', 'bar')
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^^^^^ keyword.other.ddl.sql
--                ^^^^^^^ meta.column-name.sql
--                        ^^^^^^^ meta.column-name.sql variable.other.member.declaration.sql
--                                ^^^^ storage.type.sql - meta.parens
--                                    ^^^^^^^^^^^^^^ meta.group.sql
--                                    ^ punctuation.section.group.begin.sql
--                                     ^^^^^ meta.string.sql string.quoted.single.sql
--                                          ^ punctuation.separator.sequence.sql
--                                            ^^^^^ meta.string.sql string.quoted.single.sql
--                                                 ^ punctuation.section.group.end.sql

-- ----------------------------------------------------------------------------
--   MODIFY [COLUMN] [IF EXISTS] col_name column_definition
--       [FIRST | AFTER col_name]
-- ----------------------------------------------------------------------------

ALTER TABLE tbl_name

    MODIFY col_name INTEGER NOT NULL FIRST
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^^^^^^^ meta.column-name.sql
--                  ^^^^^^^ storage.type.sql
--                          ^^^ keyword.operator.logical.sql
--                              ^^^^ constant.language.null.sql
--                                   ^^^^^ keyword.other.position.sql

    MODIFY IF EXISTS col_name INTEGER NOT NULL AFTER col
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^ keyword.control.conditional.if.sql
--            ^^^^^^ keyword.operator.logical.sql
--                   ^^^^^^^ meta.column-name.sql
--                            ^^^^^^^ storage.type.sql
--                                    ^^^ keyword.operator.logical.sql
--                                        ^^^^ constant.language.null.sql
--                                             ^^^^^ keyword.other.position.sql
--                                                   ^^^ meta.column-name.sql

    MODIFY COLUMN col_name INTEGER NOT NULL FIRST
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^^^^^ keyword.other.ddl.sql
--                ^^^^^^^^ meta.column-name.sql
--                         ^^^^^^^ storage.type.sql
--                                 ^^^ keyword.operator.logical.sql
--                                     ^^^^ constant.language.null.sql
--                                          ^^^^^ keyword.other.position.sql

    MODIFY COLUMN IF EXISTS col_name INTEGER NOT NULL AFTER col
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^^^^^ keyword.other.ddl.sql
--                ^^ keyword.control.conditional.if.sql
--                   ^^^^^^ keyword.operator.logical.sql
--                          ^^^^^^^ meta.column-name.sql
--                                   ^^^^^^^ storage.type.sql
--                                           ^^^ keyword.operator.logical.sql
--                                               ^^^^ constant.language.null.sql
--                                                    ^^^^^ keyword.other.position.sql
--                                                          ^^^ meta.column-name.sql

-- ----------------------------------------------------------------------------
--   DROP [COLUMN] [IF EXISTS] col_name [RESTRICT|CASCADE]
--   DROP PRIMARY KEY
--   DROP {INDEX|KEY} [IF EXISTS] index_name
--   DROP FOREIGN KEY [IF EXISTS] fk_symbol
--   DROP CONSTRAINT [IF EXISTS] constraint_name
--   DROP PARTITION [IF EXISTS] partition_names
--   DROP SYSTEM VERSIONING
-- ----------------------------------------------------------------------------

ALTER TABLE tbl_name

    DROP col_name RESTRICT
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^ meta.column-name.sql
--                ^^^^^^^^ keyword.other.ddl.sql

    DROP IF EXISTS col_name RESTRICT
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^ keyword.control.conditional.if.sql
--          ^^^^^^ keyword.operator.logical.sql
--                 ^^^^^^^^ meta.column-name.sql
--                          ^^^^^^^^ keyword.other.ddl.sql

    DROP COLUMN col_name CASCADE
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^ keyword.other.ddl.sql
--              ^^^^^^^^ meta.column-name.sql
--                       ^^^^^^^ keyword.other.ddl.sql

    DROP COLUMN IF EXISTS col_name CASCADE
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^ keyword.other.ddl.sql
--              ^^ keyword.control.conditional.if.sql
--                 ^^^^^^ keyword.operator.logical.sql
--                        ^^^^^^^^ meta.column-name.sql
--                                 ^^^^^^^ keyword.other.ddl.sql

    DROP CONSTRAINT constraint_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^ keyword.other.ddl.sql
--                  ^^^^^^^^^^^^^^^ meta.constraint-name.sql

    DROP CONSTRAINT IF EXISTS constraint_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^ keyword.other.ddl.sql
--                  ^^ keyword.control.conditional.if.sql
--                     ^^^^^^ keyword.operator.logical.sql
--                            ^^^^^^^^^^^^^^^ meta.constraint-name.sql

    DROP INDEX index_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^ keyword.other.ddl.sql
--             ^^^^^^^^^^ meta.index-name.sql

    DROP INDEX IF EXISTS index_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^ keyword.other.ddl.sql
--             ^^ keyword.control.conditional.if.sql
--                ^^^^^^ keyword.operator.logical.sql
--                       ^^^^^^^^^^ meta.index-name.sql

    DROP KEY index_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^ keyword.other.ddl.sql
--           ^^^^^^^^^^ meta.index-name.sql

    DROP KEY IF EXISTS index_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^ keyword.other.ddl.sql
--           ^^ keyword.control.conditional.if.sql
--              ^^^^^^ keyword.operator.logical.sql
--                     ^^^^^^^^^^ meta.index-name.sql

    DROP FOREIGN KEY index_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^ keyword.other.ddl.sql
--                   ^^^^^^^^^^ meta.index-name.sql

    DROP FOREIGN KEY IF EXISTS index_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^ keyword.other.ddl.sql
--                   ^^ keyword.control.conditional.if.sql
--                      ^^^^^^ keyword.operator.logical.sql
--                             ^^^^^^^^^^ meta.index-name.sql

    DROP PRIMARY KEY
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^ keyword.other.ddl.sql

    DROP PARTITION partition_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^ keyword.other.ddl.sql
--                 ^^^^^^^^^^^^^^ meta.partition-name.sql

    DROP PARTITION IF EXISTS partition_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^ keyword.other.ddl.sql
--                 ^^ keyword.control.conditional.if.sql
--                    ^^^^^^ keyword.operator.logical.sql
--                           ^^^^^^^^^^^^^^ meta.partition-name.sql

    DROP SYSTEM VERSIONING
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^^^^^^ constant.language.sql

-- ----------------------------------------------------------------------------
--   RENAME ...
-- ----------------------------------------------------------------------------

ALTER TABLE tbl_name

    RENAME new_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^^^^^^^ meta.table-name.sql

    RENAME TO new_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^ keyword.other.ddl.sql
--            ^^^^^^^^ meta.table-name.sql

    RENAME COLUMN name TO new_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^^^^^ keyword.other.ddl.sql
--                ^^^^ meta.column-name.sql
--                     ^^ keyword.other.ddl.sql
--                        ^^^^^^^^ meta.column-name.sql

    RENAME INDEX name TO new_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^^^^ keyword.other.ddl.sql
--               ^^^^ meta.index-name.sql
--                    ^^ keyword.other.ddl.sql
--                       ^^^^^^^^ meta.index-name.sql

    RENAME KEY name TO new_name
-- <- meta.statement.alter.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
--  ^^^^^^ keyword.other.ddl.sql
--         ^^^ keyword.other.ddl.sql
--             ^^^^ meta.index-name.sql
--                  ^^ keyword.other.ddl.sql
--                     ^^^^^^^^ meta.index-name.sql

ALTER TABLE tbl_name ALGORITHM = INPLACE
-- <- meta.statement.alter.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql

-- ----------------------------------------------------------------------------
-- Alter User Statements
-- https://mariadb.com/kb/en/alter-user
--
-- ALTER USER [IF EXISTS]
--  user_specification [,user_specification] ...
--   [REQUIRE {NONE | tls_option [[AND] tls_option] ...}]
--   [WITH resource_option [resource_option] ...]
--   [lock_option] [password_option]
--
-- user_specification:
--   username [authentication_option]
--
-- authentication_option:
--   IDENTIFIED BY 'password'
--   | IDENTIFIED BY PASSWORD 'password_hash'
--   | IDENTIFIED {VIA|WITH} authentication_rule [OR authentication_rule] ...
--
-- authentication_rule:
--   authentication_plugin
--   | authentication_plugin {USING|AS} 'authentication_string'
--   | authentication_plugin {USING|AS} PASSWORD('password')
--
-- tls_option
--   SSL
--   | X509
--   | CIPHER 'cipher'
--   | ISSUER 'issuer'
--   | SUBJECT 'subject'
--
-- resource_option
--   MAX_QUERIES_PER_HOUR count
--   | MAX_UPDATES_PER_HOUR count
--   | MAX_CONNECTIONS_PER_HOUR count
--   | MAX_USER_CONNECTIONS count
--   | MAX_STATEMENT_TIME time
--
-- password_option:
--   PASSWORD EXPIRE
--   | PASSWORD EXPIRE DEFAULT
--   | PASSWORD EXPIRE NEVER
--   | PASSWORD EXPIRE INTERVAL N DAY
--
-- lock_option:
--     ACCOUNT LOCK
--   | ACCOUNT UNLOCK
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
--  ^^^^^ meta.username.sql
--       ^ punctuation.separator.sequence.sql

    user2 IDENTIFIED BY 'password',
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^^ meta.username.sql
--        ^^^^^^^^^^ keyword.other.ddl.sql
--                   ^^ keyword.other.ddl.sql
--                      ^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                ^ punctuation.separator.sequence.sql

    user3 IDENTIFIED BY PASSWORD 'password_hash',
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^^ meta.username.sql
--        ^^^^^^^^^^ keyword.other.ddl.sql
--                   ^^ keyword.other.ddl.sql
--                      ^^^^^^^^ storage.modifier.sql
--                               ^^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                              ^ punctuation.separator.sequence.sql

    user4 IDENTIFIED VIA
-- <- meta.statement.alter.sql meta.user.sql
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql meta.user.sql
--  ^^^^^ meta.username.sql
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
--                  ^^^^^^^^ storage.type.interval.sql
--                           ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                             ^^^ keyword.other.unit.sql


-- ----------------------------------------------------------------------------
-- Drop Statements
-- https://mariadb.com/kb/en/drop
-- ----------------------------------------------------------------------------

DROP
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^ meta.statement.drop.sql
-- ^ keyword.other.ddl.sql
--  ^ - keyword


-- ----------------------------------------------------------------------------
-- Drop Database Statements
-- https://mariadb.com/kb/en/drop-database
--
-- DROP {DATABASE | SCHEMA} [IF EXISTS] db_name
-- ----------------------------------------------------------------------------

DROP DATABASE db_name ;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^ meta.statement.drop.sql
--   ^^^^^^^^^^^^^^^^ meta.statement.drop.sql meta.database.sql
-- ^ keyword.other.ddl.sql
--  ^ - keyword
--   ^^^^^^^^ keyword.other.ddl.sql
--           ^ - keyword
--            ^^^^^^^ meta.database-name.sql
--                    ^ punctuation.terminator.statement.sql

DROP DATABASE IF EXISTS db_name ;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^ meta.statement.drop.sql
--   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.drop.sql meta.database.sql
-- ^ keyword.other.ddl.sql
--  ^ - keyword
--   ^^^^^^^^ keyword.other.ddl.sql
--           ^ - keyword
--            ^^ keyword.control.conditional.if.sql
--               ^^^^^^ keyword.operator.logical.sql
--                      ^^^^^^^ meta.database-name.sql
--                              ^ punctuation.terminator.statement.sql

DROP SCHEMA schema_name ;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^ meta.statement.drop.sql
-- ^ keyword.other.ddl.sql
--  ^ - keyword
--   ^^^^^^ keyword.other.ddl.sql
--         ^ - keyword
--          ^^^^^^^^^^^ meta.database.sql meta.database-name.sql
--                      ^ punctuation.terminator.statement.sql


-- ----------------------------------------------------------------------------
-- Drop Event Statements
-- https://mariadb.com/kb/en/drop-event
--
-- DROP EVENT [IF EXISTS] event_name
-- ----------------------------------------------------------------------------

DROP EVENT event ;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^ meta.statement.drop.sql - meta.user
--   ^^^^^^^^^^^ meta.statement.drop.sql meta.event.sql
-- ^ keyword.other.ddl.sql
--  ^ - keyword
--   ^^^^^ keyword.other.ddl.sql
--        ^ - keyword - meta.event-name
--         ^^^^^ meta.event-name.sql
--              ^ - meta.event-name
--               ^ punctuation.terminator.statement.sql

DROP EVENT IF EXISTS event ;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^ meta.statement.drop.sql - meta.user
--   ^^^^^^^^^^^^^^^^^^^^^ meta.statement.drop.sql meta.event.sql
-- ^ keyword.other.ddl.sql
--  ^ - keyword
--   ^^^^^ keyword.other.ddl.sql
--        ^ - keyword
--         ^^ keyword.control.conditional.if.sql
--           ^ - keyword
--            ^^^^^^ keyword.operator.logical.sql
--                  ^ - keyword - meta.event-name
--                   ^^^^^ meta.event-name.sql
--                        ^ - meta.event-name
--                         ^ punctuation.terminator.statement.sql


-- ----------------------------------------------------------------------------
-- Drop Index Statements
-- https://mariadb.com/kb/en/drop-index
--
-- DROP INDEX [IF EXISTS] index_name ON tbl_name
--     [WAIT n |NOWAIT]
-- ----------------------------------------------------------------------------

DROP INDEX index_name ON tbl_name NOWAIT;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^ meta.statement.drop.sql - meta.index
--   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.drop.sql meta.index.sql
-- ^ keyword.other.ddl.sql
--   ^^^^^ keyword.other.ddl.sql
--         ^^^^^^^^^^ meta.index-name.sql
--                    ^^ keyword.other.sql
--                       ^^^^^^^^ meta.table-name.sql
--                                ^^^^^^ keyword.other.ddl.sql

-- ----------------------------------------------------------------------------
-- Drop Role Statements
-- https://mariadb.com/kb/en/drop-role
--
-- DROP ROLE [IF EXISTS] role_name [,role_name ...]
-- ----------------------------------------------------------------------------

DROP ROLE role ;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^ meta.statement.drop.sql - meta.user
--   ^^^^^^^^^^ meta.statement.drop.sql meta.user.sql
-- ^ keyword.other.ddl.sql
--  ^ - keyword
--   ^^^^ keyword.other.ddl.sql
--       ^ - keyword
--        ^^^^ meta.username.sql
--             ^ punctuation.terminator.statement.sql

DROP ROLE IF EXISTS role1, role2, role3;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^ meta.statement.drop.sql - meta.user
--   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.drop.sql meta.user.sql
-- ^ keyword.other.ddl.sql
--  ^ - keyword
--   ^^^^ keyword.other.ddl.sql
--       ^ - keyword
--        ^^ keyword.control.conditional.if.sql
--          ^ - keyword
--           ^^^^^^ keyword.operator.logical.sql
--                 ^ - keyword
--                  ^^^^^ meta.username.sql
--                       ^ punctuation.separator.sequence.sql
--                         ^^^^^ meta.username.sql
--                              ^ punctuation.separator.sequence.sql
--                                ^^^^^ meta.username.sql
--                                     ^ punctuation.terminator.statement.sql


-- ----------------------------------------------------------------------------
-- Drop User Statements
-- https://mariadb.com/kb/en/drop-user
--
-- DROP USER [IF EXISTS] user_name [, user_name] ...
-- ----------------------------------------------------------------------------

DROP USER bob@'%' ;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^ meta.statement.drop.sql - meta.user
--   ^^^^^^^^^^^^^ meta.statement.drop.sql meta.user.sql
-- ^ keyword.other.ddl.sql
--   ^^^^ keyword.other.ddl.sql
--        ^^^^^^^ meta.username.sql
--           ^ punctuation.accessor.at.sql
--                ^ punctuation.terminator.statement.sql

DROP USER iffy ;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^ meta.statement.drop.sql - meta.user
--   ^^^^^^^^^ meta.statement.drop.sql meta.user.sql
--        ^^^^ meta.username.sql

DROP USER IF EXISTS ify, clara@localhost ;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^ meta.statement.drop.sql - meta.user
--   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.drop.sql meta.user.sql
-- ^ keyword.other.ddl.sql
--   ^^^^ keyword.other.ddl.sql
--        ^^ keyword.control.conditional.if.sql
--           ^^^^^^ keyword.operator.logical.sql
--                  ^^^ meta.username.sql
--                     ^ punctuation.separator.sequence.sql
--                       ^^^^^^^^^^^^^^^ meta.username.sql
--                            ^ punctuation.accessor.at.sql
--                                       ^ punctuation.terminator.statement.sql


-- ----------------------------------------------------------------------------
-- Account Management SQL Commands
-- -------------------------------
-- Grant Statements
-- https://mariadb.com/kb/en/grant
--
-- GRANT
--     priv_type [(column_list)]
--       [, priv_type [(column_list)]] ...
--     ON [object_type] priv_level
--     TO user_specification [ user_options ...]
--
-- user_specification:
--   username [authentication_option]
--
-- authentication_option:
--   IDENTIFIED BY 'password'
--   | IDENTIFIED BY PASSWORD 'password_hash'
--   | IDENTIFIED {VIA|WITH} authentication_rule [OR authentication_rule  ...]
--
-- authentication_rule:
--     authentication_plugin
--   | authentication_plugin {USING|AS} 'authentication_string'
--   | authentication_plugin {USING|AS} PASSWORD('password')
--
-- GRANT PROXY ON username
--     TO user_specification [, user_specification ...]
--     [WITH GRANT OPTION]
--
-- GRANT rolename TO grantee [, grantee ...]
--     [WITH ADMIN OPTION]
--
-- grantee:
--     rolename
--     username [authentication_option]
--
-- user_options:
--     [REQUIRE {NONE | tls_option [[AND] tls_option] ...}]
--     [WITH with_option [with_option] ...]
--
-- object_type:
--     TABLE
--   | FUNCTION
--   | PROCEDURE
--   | PACKAGE
--
-- priv_level:
--     *
--   | *.*
--   | db_name.*
--   | db_name.tbl_name
--   | tbl_name
--   | db_name.routine_name
--
-- with_option:
--     GRANT OPTION
--   | resource_option
--
-- resource_option:
--   MAX_QUERIES_PER_HOUR count
--   | MAX_UPDATES_PER_HOUR count
--   | MAX_CONNECTIONS_PER_HOUR count
--   | MAX_USER_CONNECTIONS count
--   | MAX_STATEMENT_TIME time
--
-- tls_option:
--   SSL
--   | X509
--   | CIPHER 'cipher'
--   | ISSUER 'issuer'
--   | SUBJECT 'subject'
-- ----------------------------------------------------------------------------

GRANT
-- <- meta.statement.grant.sql keyword.other.authorization.sql
-- ^^ meta.statement.grant.sql keyword.other.authorization.sql
--   ^ meta.statement.grant.sql - keyword

GRANT ALL
-- ^^ keyword.other.authorization.sql
--    ^^^ constant.language.sql

GRANT ALL PRIVILEGES
-- ^^ keyword.other.authorization.sql
--    ^^^^^^^^^^^^^^ constant.language.sql

GRANT DROP TABLE, ALTER COLUMN
-- <- meta.statement.grant.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
-- ^^ keyword.other.authorization.sql
--              ^ punctuation.separator.sequence.sql

GRANT ALTER COLUMN ON *
-- <- meta.statement.grant.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--                 ^^ keyword.context.sql
--                    ^ meta.other-name.sql constant.other.wildcard.asterisk.sql

GRANT ALTER TABLE ON *.*
-- <- meta.statement.grant.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--                ^^ keyword.context.sql
--                   ^^^ meta.other-name.sql
--                   ^ constant.other.wildcard.asterisk.sql
--                    ^ punctuation.accessor.dot.sql
--                     ^ constant.other.wildcard.asterisk.sql

GRANT ALTER INDEX ON db_name.*
-- <- meta.statement.grant.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--                ^^ keyword.context.sql
--                   ^^^^^^^^^ meta.other-name.sql
--                          ^ punctuation.accessor.dot.sql
--                           ^ constant.other.wildcard.asterisk.sql

GRANT ALTER COLUMN ON db_name.table_name
-- <- meta.statement.grant.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--                 ^^ keyword.context.sql
--                    ^^^^^^^^^^^^^^^^^^ meta.other-name.sql
--                           ^ punctuation.accessor.dot.sql

GRANT ALTER COLUMN ON table_name
-- <- meta.statement.grant.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--                 ^^ keyword.context.sql
--                    ^^^^^^^^^^ meta.other-name.sql

GRANT CREATE INDEX ON TABLE * TO user1@% IDENTIFIED BY 'password' ;
-- <- meta.statement.grant.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
-- ^^ keyword.other.authorization.sql
--                 ^^ keyword.context.sql
--                    ^^^^^ storage.type.sql
--                          ^ meta.other-name.sql constant.other.wildcard.asterisk.sql
--                            ^^ keyword.context.sql
--                               ^^^^^^^ meta.username.sql
--                                    ^ punctuation.accessor.at.sql
--                                     ^ constant.other.wildcard.percent.sql
--                                       ^^^^^^^^^^ keyword.other.ddl.sql
--                                                  ^^ keyword.other.ddl.sql
--                                                     ^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                                                ^ punctuation.terminator.statement.sql

GRANT CREATE INDEX ON PROCEDURE *.* TO user1 IDENTIFIED BY PASSWORD 'password_hash' ;
-- <- meta.statement.grant.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
-- ^^ keyword.other.authorization.sql
--                 ^^ keyword.context.sql
--                    ^^^^^^^^^ storage.type.sql
--                              ^^^ meta.other-name.sql
--                                  ^^ keyword.context.sql
--                                     ^^^^^ meta.username.sql
--                                           ^^^^^^^^^^ keyword.other.ddl.sql
--                                                      ^^ keyword.other.ddl.sql
--                                                         ^^^^^^^^ storage.modifier.sql
--                                                                  ^^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                                                                  ^ punctuation.terminator.statement.sql

GRANT CREATE INDEX ON PACKAGE *.* TO "user1" IDENTIFIED VIA auth1 or auth2 ;
-- <- meta.statement.grant.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
-- ^^ keyword.other.authorization.sql
--                 ^^ keyword.context.sql
--                    ^^^^^^^ storage.type.sql
--                            ^^^ meta.other-name.sql
--                                ^^ keyword.context.sql
--                                   ^^^^^^^ meta.username.sql
--                                           ^^^^^^^^^^ keyword.other.ddl.sql
--                                                      ^^^ keyword.other.ddl.sql
--                                                          ^^^^^ meta.other-name.sql
--                                                                ^^ keyword.operator.logical.sql
--                                                                   ^^^^^ meta.other-name.sql
--                                                                         ^ punctuation.terminator.statement.sql

GRANT PROXY
-- <- meta.statement.grant.sql keyword.other.authorization.sql
-- ^^^^^^^^^ meta.statement.grant.sql
-- ^^ keyword.other.authorization.sql
--    ^^^^^ keyword.other.ddl.sql
    ON username
-- <- meta.statement.grant.sql
-- ^^^^^^^^^^^^^ meta.statement.grant.sql
--  ^^ keyword.context.sql
--     ^^^^^^^^ meta.username.sql
    TO user1 IDENTIFIED BY 'password',
-- <- meta.statement.grant.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--  ^^ keyword.context.sql
--     ^^^^^ meta.username.sql
--           ^^^^^^^^^^ keyword.other.ddl.sql
--                      ^^ keyword.other.ddl.sql
--                         ^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                   ^ punctuation.separator.sequence.sql
       user2 IDENTIFIED VIA auth USING PASSWORD('password')
-- <- meta.statement.grant.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--     ^^^^^ meta.username.sql
--           ^^^^^^^^^^ keyword.other.ddl.sql
--                      ^^^ keyword.other.ddl.sql
--                          ^^^^ meta.other-name.sql
--                               ^^^^^ keyword.other.ddl.sql
--                                     ^^^^^^^^^^^^^^^^^^^^ meta.function-call.sql
--                                     ^^^^^^^^ support.function.sql
--                                             ^^^^^^^^^^^^ meta.group.sql
--                                             ^ punctuation.section.arguments.begin.sql
--                                              ^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                                        ^ punctuation.section.arguments.end.sql
    WITH GRANT OPTION ;
-- <- meta.statement.grant.sql
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
--  ^^^^ keyword.other.ddl.sql
--       ^^^^^^^^^^^^ constant.language.sql
--                    ^ punctuation.terminator.statement.sql

GRANT rolename TO role, user IDENTIFIED BY 'password' WITH ADMIN OPTION ;
-- <- meta.statement.grant.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
-- ^^ keyword.other.authorization.sql
--    ^^^^^^^^ meta.username.sql
--             ^^ keyword.context.sql
--                ^^^^ meta.username.sql
--                    ^ punctuation.separator.sequence.sql
--                      ^^^^ meta.username.sql
--                           ^^^^^^^^^^ keyword.other.ddl.sql
--                                      ^^ keyword.other.ddl.sql
--                                         ^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                                    ^^^^ keyword.other.ddl.sql
--                                                         ^^^^^^^^^^^^ constant.language.sql
--                                                                      ^ punctuation.terminator.statement.sql


-- ----------------------------------------------------------------------------
-- Account Management SQL Commands
-- -------------------------------
-- Rename User Statements
-- https://mariadb.com/kb/en/rename-user
--
-- RENAME USER old_user TO new_user
--    [, old_user TO new_user] ...
-- ----------------------------------------------------------------------------

RENAME
-- <- meta.statement.rename.sql keyword.other.authorization.sql
-- ^^^^ meta.statement.rename.sql
-- ^^^ keyword.other.authorization.sql
--    ^ - keyword

RENAME USER
-- <- meta.statement.rename.sql keyword.other.authorization.sql
-- ^^^^^^^^^ meta.statement.rename.sql
-- ^^^ keyword.other.authorization.sql
--    ^ - keyword
--     ^^^^ keyword.other.authorization.sql
--         ^ - keyword

RENAME USER 'donald' TO 'duck'@'localhost', 'mickey' TO 'mouse'@'localhost';
-- <- meta.statement.rename.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.rename.sql
-- ^^^ keyword.other.authorization.sql
--    ^ - keyword
--     ^^^^ keyword.other.authorization.sql
--         ^ - keyword
--          ^^^^^^^^ meta.username.sql
--                   ^^ keyword.context.sql
--                      ^^^^^^^^^^^^^^^^^^ meta.username.sql
--                                        ^ punctuation.separator.sequence.sql
--                                          ^^^^^^^^ meta.username.sql
--                                                   ^^ keyword.context.sql
--                                                      ^^^^^^^^^^^^^^^^^^^ meta.username.sql
--                                                                         ^ punctuation.terminator.statement.sql


-- ----------------------------------------------------------------------------
-- Account Management SQL Commands
-- -------------------------------
-- Revoke Statements
-- https://mariadb.com/kb/en/revoke
--
-- REVOKE
--     priv_type [(column_list)]
--       [, priv_type [(column_list)]] ...
--     ON [object_type] priv_level
--     FROM user [, user] ...
--
-- REVOKE ALL PRIVILEGES, GRANT OPTION
--     FROM user [, user] ...
-- ----------------------------------------------------------------------------

REVOKE ;
-- <- meta.statement.revoke.sql keyword.other.authorization.sql
-- ^^^^ meta.statement.revoke.sql
-- ^^^ keyword.other.authorization.sql
--     ^ punctuation.terminator.statement.sql

REVOKE ALTER COLUMN (`col1`, `names`) ;
-- <- meta.statement.revoke.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.revoke.sql
--     ^^^^^^^^^^^^ constant.language.sql
--                  ^^^^^^^^^^^^^^^^^ meta.group.table-columns.sql
--                  ^ punctuation.section.group.begin.sql
--                   ^^^^^^ meta.column-name.sql
--                         ^ punctuation.separator.sequence.sql
--                           ^^^^^^^ meta.column-name.sql
--                                  ^ punctuation.section.group.end.sql
--                                    ^ punctuation.terminator.statement.sql

REVOKE ALL PRIVILEGES, GRANT OPTION FROM user@'%', user2 ;
-- <- meta.statement.revoke.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.revoke.sql
-- ^^^ keyword.other.authorization.sql
--     ^^^^^^^^^^^^^^ constant.language.sql
--                   ^ punctuation.separator.sequence.sql
--                     ^^^^^^^^^^^^ constant.language.sql
--                                  ^^^^ keyword.context.sql
--                                       ^^^^^^^^ meta.username.sql
--                                               ^ punctuation.separator.sequence.sql
--                                                 ^^^^^ meta.username.sql
--                                                       ^ punctuation.terminator.statement.sql

REVOKE SUPER ON *.* FROM 'alexander'@'localhost';
-- <- meta.statement.revoke.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.revoke.sql
-- ^^^ keyword.other.authorization.sql
--     ^^^^^ constant.language.sql
--           ^^ keyword.context.sql
--              ^^^ meta.other-name.sql
--              ^ constant.other.wildcard.asterisk.sql
--               ^ punctuation.accessor.dot.sql
--                ^ constant.other.wildcard.asterisk.sql
--                  ^^^^ keyword.context.sql
--                       ^^^^^^^^^^^^^^^^^^^^^^^ meta.username.sql
--                                              ^ punctuation.terminator.statement.sql

REVOKE ADMIN OPTION FOR role FROM grantee, grantee2 ;
-- <- meta.statement.revoke.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.revoke.sql
-- ^^^ keyword.other.authorization.sql
--     ^^^^^^^^^^^^ constant.language.sql
--                  ^^^ keyword.context.sql
--                      ^^^^ meta.username.sql
--                           ^^^^ keyword.context.sql
--                                ^^^^^^^ meta.username.sql
--                                       ^ punctuation.separator.sequence.sql
--                                         ^^^^^^^^ meta.username.sql
--                                                  ^ punctuation.terminator.statement.sql

REVOKE role1, role2 FROM grantee, grantee2 ;
-- <- meta.statement.revoke.sql keyword.other.authorization.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.revoke.sql
--                  ^^^^ keyword.context.sql
--                       ^^^^^^^ meta.username.sql
--                              ^ punctuation.separator.sequence.sql
--                                ^^^^^^^^ meta.username.sql
--                                         ^ punctuation.terminator.statement.sql


-- ----------------------------------------------------------------------------
-- Account Management SQL Commands
-- -------------------------------
-- Set Password Statements
-- https://mariadb.com/kb/en/set-password
--
-- SET PASSWORD [FOR user] =
--    {
--        PASSWORD('some password')
--      | OLD_PASSWORD('some password')
--      | 'encrypted password'
--    }
-- ----------------------------------------------------------------------------

SET
-- <- meta.statement.set.sql keyword.other.dml.sql
-- ^ meta.statement.set.sql - keyword

SET PASSWORD =
-- <- meta.statement.set.sql keyword.other.dml.sql
-- ^^^^^^^^^^ meta.statement.set.sql
-- ^ - keyword
--  ^^^^^^^^ keyword.other.dml.sql
--          ^ - keyword
--           ^ keyword.operator.assignment.sql

SET PASSWORD FOR user1@localhost =
-- <- meta.statement.set.sql keyword.other.dml.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.set.sql
-- ^ - keyword
--  ^^^^^^^^ keyword.other.dml.sql
--          ^ - keyword
--           ^^^ keyword.other.dml.sql
--               ^^^^^^^^^^^^^^^ meta.username.sql
--                    ^ punctuation.accessor.at.sql
--                               ^ keyword.operator.assignment.sql

SET PASSWORD = PASSWORD('some password')
-- <- meta.statement.set.sql keyword.other.dml.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.set.sql
--             ^^^^^^^^ meta.function-call - meta.group
--                     ^^^^^^^^^^^^^^^^^ meta.function-call.sql meta.group.sql
--  ^^^^^^^^ keyword.other.dml.sql
--           ^ keyword.operator.assignment.sql
--             ^^^^^^^^ support.function.sql
--                     ^ punctuation.section.arguments.begin.sql
--                      ^^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                     ^ punctuation.section.arguments.end.sql

SET PASSWORD = OLD_PASSWORD('some password');
-- <- meta.statement.set.sql keyword.other.dml.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.set.sql
--             ^^^^^^^^^^^^ meta.function-call - meta.group
--                         ^^^^^^^^^^^^^^^^^ meta.function-call.sql meta.group.sql
--  ^^^^^^^^ keyword.other.dml.sql
--           ^ keyword.operator.assignment.sql
--             ^^^^^^^^^^^^ support.function.sql
--                         ^ punctuation.section.arguments.begin.sql
--                          ^^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                         ^ punctuation.section.arguments.end.sql
--                                          ^ punctuation.terminator.statement.sql

SET PASSWORD for `user@`@'%' = 'encrypted password';
-- <- meta.statement.set.sql keyword.other.dml.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.set.sql
--  ^^^^^^^^ keyword.other.dml.sql
--           ^^^ keyword.other.dml.sql
--               ^^^^^^^^^^^ meta.username.sql
--               ^ punctuation.definition.identifier.begin.sql
--                     ^ punctuation.definition.identifier.end.sql
--                      ^ punctuation.accessor.at.sql
--                       ^ punctuation.definition.identifier.begin.sql
--                        ^ constant.other.wildcard.percent.sql
--                         ^ punctuation.definition.identifier.end.sql
--                           ^ keyword.operator.assignment.sql
--                             ^^^^^^^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                                                 ^ punctuation.terminator.statement.sql


-- ----------------------------------------------------------------------------
-- Account Management SQL Commands
-- -------------------------------
-- Set Role Statements
-- https://mariadb.com/kb/en/set-role
--
-- SET ROLE { role | NONE }
-- ----------------------------------------------------------------------------

SET ROLE NONE
-- <- meta.statement.set.sql keyword.other.dml.sql
-- ^^^^^^^^^^ meta.statement.set.sql
--  ^^^^ keyword.other.dml.sql
--       ^^^^ constant.language.null.sql

SET ROLE role
-- <- meta.statement.set.sql keyword.other.dml.sql
-- ^^^^^^^^^^ meta.statement.set.sql
--  ^^^^ keyword.other.dml.sql
--       ^^^^ meta.username.sql

SET DEFAULT ROLE NONE
-- <- meta.statement.set.sql keyword.other.dml.sql
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.set.sql
--  ^^^^^^^ keyword.other.dml.sql
--          ^^^^ keyword.other.dml.sql
--               ^^^^ constant.language.null.sql

SET DEFAULT ROLE role
-- <- meta.statement.set.sql keyword.other.dml.sql
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.set.sql
--  ^^^^^^^ keyword.other.dml.sql
--          ^^^^ keyword.other.dml.sql
--               ^^^^ meta.username.sql

SET DEFAULT ROLE NONE FOR user@host
-- <- meta.statement.set.sql keyword.other.dml.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.set.sql
--  ^^^^^^^ keyword.other.dml.sql
--          ^^^^ keyword.other.dml.sql
--               ^^^^ constant.language.null.sql
--                    ^^^ keyword.other.dml.sql
--                        ^^^^^^^^^ meta.username.sql

SET DEFAULT ROLE role FOR user@host
-- <- meta.statement.set.sql keyword.other.dml.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.set.sql
--  ^^^^^^^ keyword.other.dml.sql
--          ^^^^ keyword.other.dml.sql
--               ^^^^ meta.username.sql
--                    ^^^ keyword.other.dml.sql
--                        ^^^^^^^^^ meta.username.sql


-- ----------------------------------------------------------------------------
-- Show Create Event Statements
-- https://mariadb.com/kb/en/show-create-event
--
-- SHOW CREATE EVENT event_name
-- ----------------------------------------------------------------------------

SHOW CREATE EVENT db_name.event_name
-- <- meta.statement.show.sql keyword.other.dml.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.show.sql
-- ^ keyword.other.dml.sql
--   ^^^^^^ keyword.other.ddl.sql
--          ^^^^^ keyword.other.ddl.sql
--                ^^^^^^^^^^^^^^^^^^ meta.event-name.sql


-- ----------------------------------------------------------------------------
-- Account Management SQL Commands
-- -------------------------------
-- Show Create User Statements
-- https://mariadb.com/kb/en/show-create-user
-- ----------------------------------------------------------------------------

SHOW CREATE USER user_name
-- <- meta.statement.show.sql keyword.other.dml.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.show.sql
-- ^ keyword.other.dml.sql
--   ^^^^^^ keyword.other.ddl.sql
--          ^^^^ keyword.other.ddl.sql
--               ^^^^^^^^^ meta.username.sql


-- ----------------------------------------------------------------------------
-- Account Management SQL Commands
-- -------------------------------
-- Show Grants Statements
-- https://mariadb.com/kb/en/show-grants
--
-- SHOW CREATE USER user_name
-- ----------------------------------------------------------------------------

SHOW GRANTS
-- <- meta.statement.show.sql keyword.other.dml.sql
-- ^^^^^^^^^ meta.statement.show.sql
-- ^ keyword.other.dml.sql
--  ^ - keyword
--   ^^^^^^ keyword.other.dml.sql
--         ^ - keyword

SHOW GRANTS FOR user@host
-- <- meta.statement.show.sql keyword.other.dml.sql
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.show.sql
-- ^ keyword.other.dml.sql
--  ^ - keyword
--   ^^^^^^ keyword.other.dml.sql
--         ^ - keyword
--          ^^^ keyword.other.dml.sql
--              ^^^^^^^^^ meta.username.sql

SHOW GRANTS FOR role
-- <- meta.statement.show.sql keyword.other.dml.sql
-- ^^^^^^^^^^^^^^^^^ meta.statement.show.sql
-- ^ keyword.other.dml.sql
--  ^ - keyword
--   ^^^^^^ keyword.other.dml.sql
--         ^ - keyword
--          ^^^ keyword.other.dml.sql
--              ^^^^ meta.username.sql

SHOW GRANTS FOR CURRENT_USER;
-- <- meta.statement.show.sql keyword.other.dml.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.show.sql
--              ^^^^^^^^^^^^ meta.function-call.sql support.function.user.sql

SHOW GRANTS FOR CURRENT_USER();
-- <- meta.statement.show.sql keyword.other.dml.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.show.sql
--              ^^^^^^^^^^^^ meta.function-call.sql support.function.user.sql
--                          ^^ meta.function-call.sql meta.group.sql


-- ----------------------------------------------------------------------------
-- Join Syntax
-- https://mariadb.com/kb/en/join-syntax/
--
-- table_references:
--     table_reference [, table_reference] ...
--
-- table_reference:
--     table_factor
--   | join_table
--
-- table_factor:
--     tbl_name [PARTITION (partition_list)]
--         [query_system_time_period_specification] [[AS] alias] [index_hint_list]
--   | table_subquery [query_system_time_period_specification] [AS] alias
--   | ( table_references )
--   | { ON table_reference LEFT OUTER JOIN table_reference
--         ON conditional_expr }
--
-- join_table:
--     table_reference [INNER | CROSS] JOIN table_factor [join_condition]
--   | table_reference STRAIGHT_JOIN table_factor
--   | table_reference STRAIGHT_JOIN table_factor ON conditional_expr
--   | table_reference {LEFT|RIGHT} [OUTER] JOIN table_reference join_condition
--   | table_reference NATURAL [{LEFT|RIGHT} [OUTER]] JOIN table_factor
--
-- join_condition:
--     ON conditional_expr
--   | USING (column_list)
--
-- query_system_time_period_specification:
--     FOR SYSTEM_TIME AS OF point_in_time
--   | FOR SYSTEM_TIME BETWEEN point_in_time AND point_in_time
--   | FOR SYSTEM_TIME FROM point_in_time TO point_in_time
--   | FOR SYSTEM_TIME ALL
--
-- point_in_time:
--     [TIMESTAMP] expression
--   | TRANSACTION expression
--
-- index_hint_list:
--     index_hint [, index_hint] ...
--
-- index_hint:
--     USE {INDEX|KEY}
--       [{FOR {JOIN|ORDER BY|GROUP BY}] ([index_list])
--   | IGNORE {INDEX|KEY}
--       [{FOR {JOIN|ORDER BY|GROUP BY}] (index_list)
--   | FORCE {INDEX|KEY}
--       [{FOR {JOIN|ORDER BY|GROUP BY}] (index_list)
--
-- index_list:
--     index_name [, index_name] ...
--
-- ----------------------------------------------------------------------------

JOIN (table1 alias, table2 AS alias ON (col1=col2), table3 PARTITION(part1) USE KEY (id), IGNORE INDEX (foo) USING (col1))
--   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--   ^ punctuation.section.group.begin.sql
--    ^^^^^^ meta.table-name.sql
--           ^^^^^ meta.alias.table.sql
--                ^ punctuation.separator.sequence.sql
--                  ^^^^^^ meta.table-name.sql
--                         ^^ keyword.operator.assignment.alias.sql
--                            ^^^^^ meta.alias.table.sql
--                                  ^^ keyword.control.conditional.sql
--                                     ^^^^^^^^^^^ meta.group.sql
--                                     ^ punctuation.section.group.begin.sql
--                                      ^^^^ meta.column-name.sql
--                                          ^ keyword.operator.comparison.sql
--                                           ^^^^ meta.column-name.sql
--                                               ^ punctuation.section.group.end.sql
--                                                ^ punctuation.separator.sequence.sql
--                                                  ^^^^^^ meta.table-name.sql
--                                                         ^^^^^^^^^ keyword.other.dml.sql
--                                                                  ^^^^^^^ meta.group.partitions.sql
--                                                                  ^ punctuation.section.group.begin.sql
--                                                                   ^^^^^ meta.partition-name.sql
--                                                                        ^ punctuation.section.group.end.sql
--                                                                          ^^^^^^^ keyword.other.dml.sql
--                                                                                  ^^^^ meta.group.sql
--                                                                                  ^ punctuation.section.sequence.begin.sql
--                                                                                   ^^ meta.index-name.sql
--                                                                                     ^ punctuation.section.group.end.sql
--                                                                                      ^ punctuation.separator.sequence.sql
--                                                                                        ^^^^^^^^^^^^ keyword.other.dml.sql
--                                                                                                     ^^^^^ meta.group.sql
--                                                                                                     ^ punctuation.section.sequence.begin.sql
--                                                                                                      ^^^ meta.index-name.sql
--                                                                                                         ^ punctuation.section.group.end.sql
--                                                                                                           ^^^^^ keyword.other.dml.sql
--                                                                                                                 ^^^^^^ meta.group.table-columns.sql
--                                                                                                                 ^ punctuation.section.group.begin.sql
--                                                                                                                  ^^^^ meta.column-name.sql
--                                                                                                                      ^ punctuation.section.group.end.sql
--                                                                                                                       ^ punctuation.section.group.end.sql

JOIN ( ( SELECT * FROM foo JOIN bar IGNORE KEY id ) alias, ( table1, ( SELECT * FROM baz) ) alias )
--   ^^ meta.group.sql - meta.group meta.group
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql meta.group.sql
--                                                 ^^^^^^^^ meta.group.sql - meta.group meta.group
--                                                         ^^^^^^^^^^ meta.group.sql meta.group.sql - meta.group meta.group meta.group
--                                                                   ^^^^^^^^^^^^^^^^^^^^ meta.group.sql meta.group.sql meta.group.sql
--                                                                                       ^^ meta.group.sql meta.group.sql - meta.group meta.group meta.group
--                                                                                         ^^^^^^^^ meta.group.sql - meta.group meta.group
--                                                                                                 ^ - meta.group
--   ^ punctuation.section.group.begin.sql
--     ^ punctuation.section.group.begin.sql
--       ^^^^^^ keyword.other.dml.sql
--              ^ constant.other.wildcard.asterisk.sql
--                ^^^^ keyword.other.dml.sql
--                     ^^^ meta.table-name.sql
--                         ^^^^ keyword.other.dml.sql
--                              ^^^ meta.table-name.sql
--                                  ^^^^^^^^^^ keyword.other.dml.sql
--                                             ^^ meta.column-name.sql
--                                                ^ punctuation.section.group.end.sql
--                                                  ^^^^^ meta.alias.table.sql
--                                                       ^ punctuation.separator.sequence.sql
--                                                         ^ punctuation.section.group.begin.sql
--                                                           ^^^^^^ meta.table-name.sql
--                                                                 ^ punctuation.separator.sequence.sql

-- ----------------------------------------------------------------------------
-- table_reference
-- ----------------------------------------------------------------------------

INNER JOIN tbl_name PARTITION (part1, part2, part3)
--    ^^^^ keyword.other.dml.sql
--         ^^^^^^^^ meta.table-name.sql
--                  ^^^^^^^^^ keyword.other.dml.sql
--                            ^^^^^^^^^^^^^^^^^^^^^ meta.group.partitions.sql
--                            ^ punctuation.section.group.begin.sql
--                             ^^^^^ meta.partition-name.sql
--                                  ^ punctuation.separator.sequence.sql
--                                    ^^^^^ meta.partition-name.sql
--                                         ^ punctuation.separator.sequence.sql
--                                           ^^^^^ meta.partition-name.sql
--                                                ^ punctuation.section.group.end.sql

INNER JOIN tbl_name alias
--    ^^^^ keyword.other.dml.sql
--         ^^^^^^^^ meta.table-name.sql
--                  ^^^^^ meta.alias.table.sql

INNER JOIN tbl_name AS alias
--    ^^^^ keyword.other.dml.sql
--         ^^^^^^^^ meta.table-name.sql
--                  ^^ keyword.operator.assignment.alias.sql
--                     ^^^^^ meta.alias.table.sql

INNER JOIN tbl_name PARTITION () alias
--    ^^^^ keyword.other.dml.sql
--         ^^^^^^^^ meta.table-name.sql
--                  ^^^^^^^^^ keyword.other.dml.sql
--                            ^^ meta.group.partitions.sql
--                               ^^^^^ meta.alias.table.sql

INNER JOIN tbl_name PARTITION () AS alias
--    ^^^^ keyword.other.dml.sql
--         ^^^^^^^^ meta.table-name.sql
--                  ^^^^^^^^^ keyword.other.dml.sql
--                            ^^ meta.group.partitions.sql
--                               ^^ keyword.operator.assignment.alias.sql
--                                  ^^^^^ meta.alias.table.sql

INNER JOIN tbl_name FOR SYSTEM_TIME ALL alias
--    ^^^^ keyword.other.dml.sql
--         ^^^^^^^^ meta.table-name.sql
--                  ^^^^^^^^^^^^^^^ keyword.other.dml.sql
--                                  ^^^ constant.other.sql
--                                      ^^^^^ meta.alias.table.sql

INNER JOIN tbl_name FOR SYSTEM_TIME AS OF 20341 alias
--    ^^^^ keyword.other.dml.sql
--         ^^^^^^^^ meta.table-name.sql
--                  ^^^^^^^^^^^^^^^ keyword.other.dml.sql
--                                  ^^^^^ keyword.operator.logical.sql
--                                        ^^^^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                              ^^^^^ meta.alias.table.sql

INNER JOIN tbl_name FOR SYSTEM_TIME FROM 20341 TO 423204 alias
--    ^^^^ keyword.other.dml.sql
--         ^^^^^^^^ meta.table-name.sql
--                  ^^^^^^^^^^^^^^^ keyword.other.dml.sql
--                                  ^^^^ keyword.operator.logical.sql
--                                       ^^^^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                             ^^ keyword.operator.logical.sql
--                                                ^^^^^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                                       ^^^^^ meta.alias.table.sql

INNER JOIN (SELECT * FROM tbl_name) alias USE KEY bar
--    ^^^^ keyword.other.dml.sql
--         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--         ^ punctuation.section.group.begin.sql
--          ^^^^^^ keyword.other.dml.sql
--                 ^ constant.other.wildcard.asterisk.sql
--                   ^^^^ keyword.other.dml.sql
--                        ^^^^^^^^ meta.table-name.sql
--                                ^ punctuation.section.group.end.sql
--                                  ^^^^^ meta.alias.table.sql
--                                        ^^^^^^^ keyword.other.dml.sql
--                                                ^^^ meta.column-name.sql

INNER JOIN (SELECT * FROM tbl_name) PARTITION (part1, part2, part3) alias
--    ^^^^ keyword.other.dml.sql
--         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--         ^ punctuation.section.group.begin.sql
--          ^^^^^^ keyword.other.dml.sql
--                 ^ constant.other.wildcard.asterisk.sql
--                   ^^^^ keyword.other.dml.sql
--                        ^^^^^^^^ meta.table-name.sql
--                                ^ punctuation.section.group.end.sql
--                                  ^^^^^^^^^ keyword.other.dml.sql
--                                            ^^^^^^^^^^^^^^^^^^^^^ meta.group.partitions.sql
--                                            ^ punctuation.section.group.begin.sql
--                                             ^^^^^ meta.partition-name.sql
--                                                  ^ punctuation.separator.sequence.sql
--                                                    ^^^^^ meta.partition-name.sql
--                                                         ^ punctuation.separator.sequence.sql
--                                                           ^^^^^ meta.partition-name.sql
--                                                                ^ punctuation.section.group.end.sql
--                                                                  ^^^^^ meta.alias.table.sql

INNER JOIN {ON tbl_name LEFT OUTER JOIN other1 other2 ON TRUE}
--         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.braces.mysql
--    ^^^^ keyword.other.dml.sql
--         ^ punctuation.section.braces.begin.mysql
--          ^^ keyword.other.dml.sql
--             ^^^^^^^^ meta.table-name.sql
--                      ^^^^^^^^^^^^^^^ keyword.other.dml.sql
--                                      ^^^^^^ meta.table-name.sql
--                                             ^^^^^^ meta.alias.table.sql
--                                                    ^^ keyword.control.conditional.sql
--                                                       ^^^^ constant.language.boolean.true.sql
--                                                           ^ punctuation.section.braces.end.mysql

-- ----------------------------------------------------------------------------
-- join_condition
-- ----------------------------------------------------------------------------

INNER JOIN tbl_name ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)
--    ^^^^ keyword.other.dml.sql
--         ^^^^^^^^ meta.table-name.sql
--                  ^^ keyword.control.conditional.sql
--                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--                     ^ punctuation.section.group.begin.sql
--                      ^^^^ meta.column-name.sql
--                          ^ keyword.operator.comparison.sql
--                           ^^^^ meta.column-name.sql
--                                ^^^ keyword.operator.logical.sql
--                                    ^^^^ meta.column-name.sql
--                                        ^ keyword.operator.comparison.sql
--                                         ^^^^ meta.column-name.sql
--                                              ^^^ keyword.operator.logical.sql
--                                                  ^^^^ meta.column-name.sql
--                                                      ^ keyword.operator.comparison.sql
--                                                       ^^^^ meta.column-name.sql
--                                                           ^ punctuation.section.group.end.sql

INNER JOIN tbl_name USING (col1, col2)
--    ^^^^ keyword.other.dml.sql
--         ^^^^^^^^ meta.table-name.sql
--                  ^^^^^ keyword.other.dml.sql
--                        ^^^^^^^^^^^^ meta.group.table-columns.sql
--                        ^ punctuation.section.group.begin.sql
--                         ^^^^ meta.column-name.sql
--                             ^ punctuation.separator.sequence.sql
--                               ^^^^ meta.column-name.sql
--                                   ^ punctuation.section.group.end.sql

INNER JOIN tbl_name alias USING (col1, col2)
--    ^^^^ keyword.other.dml.sql
--         ^^^^^^^^ meta.table-name.sql
--                  ^^^^^ meta.alias.table.sql
--                        ^^^^^ keyword.other.dml.sql
--                              ^^^^^^^^^^^^ meta.group.table-columns.sql
--                              ^ punctuation.section.group.begin.sql
--                               ^^^^ meta.column-name.sql
--                                   ^ punctuation.separator.sequence.sql
--                                     ^^^^ meta.column-name.sql
--                                         ^ punctuation.section.group.end.sql

INNER JOIN tbl_name AS alias USING (col1, col2)
--    ^^^^ keyword.other.dml.sql
--         ^^^^^^^^ meta.table-name.sql
--                  ^^ keyword.operator.assignment.alias.sql
--                     ^^^^^ meta.alias.table.sql
--                           ^^^^^ keyword.other.dml.sql
--                                 ^^^^^^^^^^^^ meta.group.table-columns.sql
--                                 ^ punctuation.section.group.begin.sql
--                                  ^^^^ meta.column-name.sql
--                                      ^ punctuation.separator.sequence.sql
--                                        ^^^^ meta.column-name.sql
--                                            ^ punctuation.section.group.end.sql

-- ----------------------------------------------------------------------------
-- index_hint
-- ----------------------------------------------------------------------------

FORCE INDEX FOR JOIN (index1, index2, index3)
-- <- keyword.other.dml.sql
-- ^^^^^^^^ keyword.other.dml.sql
--          ^^^^^^^^ keyword.other.dml.sql
--                   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--                   ^ punctuation.section.sequence.begin.sql
--                    ^^^^^^ meta.index-name.sql
--                          ^ punctuation.separator.sequence.sql
--                            ^^^^^^ meta.index-name.sql
--                                  ^ punctuation.separator.sequence.sql
--                                    ^^^^^^ meta.index-name.sql
--                                          ^ punctuation.section.group.end.sql

FORCE INDEX FOR ORDER BY (index1, index2, index3)
-- <- keyword.other.dml.sql
-- ^^^^^^^^ keyword.other.dml.sql
--          ^^^^^^^^^^^^ keyword.other.dml.sql
--                       ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--                       ^ punctuation.section.sequence.begin.sql
--                        ^^^^^^ meta.index-name.sql
--                              ^ punctuation.separator.sequence.sql
--                                ^^^^^^ meta.index-name.sql
--                                      ^ punctuation.separator.sequence.sql
--                                        ^^^^^^ meta.index-name.sql
--                                              ^ punctuation.section.group.end.sql

FORCE INDEX FOR GROUP BY (index1, index2, index3)
-- <- keyword.other.dml.sql
-- ^^^^^^^^ keyword.other.dml.sql
--          ^^^^^^^^^^^^ keyword.other.dml.sql
--                       ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--                       ^ punctuation.section.sequence.begin.sql
--                        ^^^^^^ meta.index-name.sql
--                              ^ punctuation.separator.sequence.sql
--                                ^^^^^^ meta.index-name.sql
--                                      ^ punctuation.separator.sequence.sql
--                                        ^^^^^^ meta.index-name.sql
--                                              ^ punctuation.section.group.end.sql

USE INDEX FOR JOIN (index1, index2, index3)
-- <- keyword.other.dml.sql
-- ^^^^^^ keyword.other.dml.sql
--        ^^^^^^^^ keyword.other.dml.sql
--                 ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--                 ^ punctuation.section.sequence.begin.sql
--                  ^^^^^^ meta.index-name.sql
--                        ^ punctuation.separator.sequence.sql
--                          ^^^^^^ meta.index-name.sql
--                                ^ punctuation.separator.sequence.sql
--                                  ^^^^^^ meta.index-name.sql
--                                        ^ punctuation.section.group.end.sql

USE INDEX FOR ORDER BY (index1, index2, index3)
-- <- keyword.other.dml.sql
-- ^^^^^^ keyword.other.dml.sql
--        ^^^^^^^^^^^^ keyword.other.dml.sql
--                     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--                     ^ punctuation.section.sequence.begin.sql
--                      ^^^^^^ meta.index-name.sql
--                            ^ punctuation.separator.sequence.sql
--                              ^^^^^^ meta.index-name.sql
--                                    ^ punctuation.separator.sequence.sql
--                                      ^^^^^^ meta.index-name.sql
--                                            ^ punctuation.section.group.end.sql

USE INDEX FOR GROUP BY (index1, index2, index3)
-- <- keyword.other.dml.sql
-- ^^^^^^ keyword.other.dml.sql
--        ^^^^^^^^^^^^ keyword.other.dml.sql
--                     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--                     ^ punctuation.section.sequence.begin.sql
--                      ^^^^^^ meta.index-name.sql
--                            ^ punctuation.separator.sequence.sql
--                              ^^^^^^ meta.index-name.sql
--                                    ^ punctuation.separator.sequence.sql
--                                      ^^^^^^ meta.index-name.sql
--                                            ^ punctuation.section.group.end.sql

SELECT * FROM table FORCE INDEX FOR GROUP BY (Name)
--                  ^^^^^^^^^^^ keyword.other.dml.sql
--                              ^^^^^^^^^^^^ keyword.other.dml.sql
--                                           ^^^^^^ meta.group.sql
--                                           ^ punctuation.section.sequence.begin.sql
--                                            ^^^^ meta.index-name.sql
--                                                ^ punctuation.section.group.end.sql

SELECT * FROM table USE INDEX FOR GROUP BY (Name)
--                  ^^^^^^^^^ keyword.other.dml.sql
--                            ^^^^^^^^^^^^ keyword.other.dml.sql
--                                         ^^^^^^ meta.group.sql
--                                         ^ punctuation.section.sequence.begin.sql
--                                          ^^^^ meta.index-name.sql
--                                              ^ punctuation.section.group.end.sql


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
--      ^ constant.other.wildcard.asterisk.sql
        f.id AS database_id
--           ^^ keyword.operator.assignment.alias.sql
--              ^^^^^^^^^^^ meta.alias.column
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

INSERT INTO some_table (id, `from`, `to`, a, b)
-- ^^^^^^^^ keyword.other.dml.sql
--          ^^^^^^^^^^ meta.table-name.sql
--                     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--                     ^ punctuation.section.group.begin.sql
--                      ^^ meta.column-name.sql
--                        ^ punctuation.separator.sequence.sql
--                          ^ punctuation.definition.identifier.begin.sql
--                          ^^^^^^ meta.column-name.sql
--                               ^ punctuation.definition.identifier.end.sql
--                                ^ punctuation.separator.sequence.sql
VALUES (
-- <- keyword.other.dml.II.sql
    :id,
--  ^^^ variable.parameter.sql
--  ^ punctuation.definition.variable.sql
--     ^ punctuation.separator.sequence.sql
    :from,
--  ^^^^^ variable.parameter.sql
--  ^ punctuation.definition.variable.sql
--       ^ punctuation.separator.sequence.sql
    :to,
    :a,
    :b
)
ON DUPLICATE KEY UPDATE
-- <- keyword.other.dml.sql
-- ^^^^^^^^^^^^^ keyword.other.dml.sql
--               ^^^^^^ keyword.other.dml.sql
    a = :a,
--  ^ meta.column-name.sql
--    ^ keyword.operator.comparison.sql
    b = :b
--  ^ meta.column-name.sql
--    ^ keyword.operator
--      ^ variable.parameter.sql punctuation.definition.variable.sql
--       ^ variable.parameter.sql

select @@hostname;
--     ^^ variable.language.sql punctuation.definition.variable.sql
--       ^^^^^^^^ variable.language.sql
--               ^ punctuation.terminator.statement.sql

SELECT *
FROM suppliers
WHERE supplier_name LIKE 'H%\_';
--                  ^^^^ keyword.operator.logical.sql
--                       ^^^^^^ meta.string.like.sql string.quoted.single.sql
--                       ^ punctuation.definition.string.begin.sql
--                        ^ - constant
--                         ^ constant.other.wildcard.percent.sql
--                          ^^ constant.character.escape.sql
--                            ^ punctuation.definition.string.end.sql
--                             ^ punctuation.terminator.statement.sql

SELECT *
FROM suppliers
WHERE supplier_name LIKE 'H%\__' ESCAPE '\\';
--                  ^^^^ keyword.operator.logical.sql
--                       ^^^^^^ meta.string.like.sql string.quoted.single.sql
--                        ^ - constant
--                         ^ constant.other.wildcard.percent.sql
--                          ^^ constant.character.escape.sql
--                            ^ constant.other.wildcard.underscore.sql
--                               ^^^^^^ keyword.operator.word.sql
--                                      ^ meta.string.escape.sql string.quoted.single.sql punctuation.definition.string.begin.sql
--                                       ^^ meta.string.escape.sql string.quoted.single.sql constant.character.escape.sql
--                                         ^ meta.string.escape.sql string.quoted.single.sql punctuation.definition.string.end.sql
--                                          ^ punctuation.terminator.statement.sql

SELECT *
FROM suppliers
WHERE supplier_name LIKE 'H%\_#_' ESCAPE '#';
--                  ^^^^ keyword.operator.logical.sql
--                       ^^^^^^^^ meta.string.like.sql string.quoted.single.sql
--                        ^ - constant
--                         ^ constant.other.wildcard.percent.sql
--                          ^ - constant
--                           ^ constant.other.wildcard.underscore.sql
--                            ^^ constant.character.escape.sql
--                              ^ punctuation.definition.string.end.sql
--                                ^^^^^^ keyword.operator.word.sql
--                                       ^ meta.string.escape.sql string.quoted.single.sql punctuation.definition.string.begin.sql
--                                        ^ meta.string.escape.sql string.quoted.single.sql constant.character.escape.sql
--                                         ^ meta.string.escape.sql string.quoted.single.sql punctuation.definition.string.end.sql
--                                          ^ punctuation.terminator.statement.sql

LOCK TABLES trans READ, customer WRITE;
-- ^^^^^^^^ keyword.context.resource.mysql
--          ^^^^^ meta.table-name.sql
--                ^^^^ constant.language.lock-type.mysql
--                    ^ punctuation.separator.sequence.mysql
--                      ^^^^^^^^ meta.table-name.sql
--                               ^^^^^ constant.language.lock-type.mysql
--                                    ^ punctuation.terminator.statement.sql
SELECT SUM(value) FROM trans WHERE customer_id=some_id;
UPDATE customer
  SET total_value=sum_from_previous_statement
  WHERE customer_id=some_id;
UNLOCK TABLES;
-- ^^^^^^^^^^ keyword.context.resource.mysql
--           ^ punctuation.terminator.statement.sql

DESCRIBE City;
-- ^^^^^ meta.statement.show.sql keyword.other.dml.sql
--       ^^^^ meta.column-name.sql
--           ^ punctuation.terminator.statement.sql
SHOW COLUMNS FROM City;
-- ^^^^^^^^^^^^^^^^^^^ meta.statement.show.sql
-- ^ keyword.other.dml.sql
--   ^^^^^^^ keyword.other.mysql
--           ^^^^ keyword.other.mysql
--                ^^^^ meta.table-name.sql
--                    ^ punctuation.terminator.statement.sql
SHOW FULL COLUMNS FROM mytable FROM mydb;
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.show.sql
--   ^^^^ keyword.other.mysql
--        ^^^^^^^ keyword.other.mysql
--                ^^^^ keyword.other.mysql
--                     ^^^^^^^  meta.table-name.sql
--                             ^^^^ keyword.other.dml.sql
--                                      ^ punctuation.terminator.statement.sql

SHOW EXTENDED COLUMNS FROM mydb.mytable;
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.show.sql
-- ^  keyword.other.dml.sql
--   ^^^^^^^^  keyword.other.mysql
--            ^^^^^^^  keyword.other.mysql
--                    ^^^^  keyword.other.mysql
--                         ^^^^^^^^^^^^  meta.table-name.sql
--                                     ^ punctuation.terminator.statement.sql

EXPLAIN FORMAT=JSON INTO @myselect 
-- ^^^^ keyword.other.dml.sql
--      ^^^^^^ variable.parameter.explain.sql
--            ^ keyword.operator.assignment.sql
--             ^^^^ string.unquoted.mysql
--                  ^^^^ keyword.other.dml.sql
--                       ^ variable.other.sql punctuation.definition.variable.sql
--                        ^^^^^^^^ variable.other.sql
    SELECT name FROM a WHERE id = 2;
SELECT @myselect

EXPLAIN FORMAT=TREE FOR SCHEMA s1 SELECT * FROM t WHERE c2 > 50;
-- ^^^^ keyword.other.dml.sql
--      ^^^^^^ variable.parameter.explain.sql
--            ^ keyword.operator.assignment.sql
--             ^^^^ string.unquoted.mysql
--                  ^^^^^^^^^^ keyword.other.dml.sql
--                             ^^ meta.other-name.sql
--                                ^^^^^^ keyword.other.dml.sql
SELECT @@explain_format;
SET @@explain_format=TREE;

EXPLAIN ANALYZE SELECT * FROM t1 JOIN t2 ON (t1.c1 = t2.c2);
EXPLAIN ANALYZE FORMAT=TREE SELECT * FROM t3 WHERE pk > 17;
-- ^^^^^^^^^^^^ keyword.other.dml.sql
--              ^^^^^^ variable.parameter.explain.sql
--                    ^ keyword.operator.assignment.sql
--                     ^^^^ string.unquoted.mysql

CREATE USER 'read' IDENTIFIED BY 'toor';
GRANT SELECT ON * . * TO 'read';
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.grant.sql
-- ^^ keyword.other.authorization.sql
--    ^^^^^^ constant.language.sql
--           ^^ keyword.context.sql
--              ^^^^^ meta.other-name.sql
--              ^ constant.other.wildcard.asterisk.sql
--                ^ punctuation.accessor.dot.sql
--                  ^ constant.other.wildcard.asterisk.sql
--                    ^^ keyword.context.sql
--                       ^^^^^^ meta.username.sql
--                       ^ punctuation.definition.identifier.begin.sql
--                            ^ punctuation.definition.identifier.end.sql
--                             ^ punctuation.terminator.statement.sql
FLUSH PRIVILEGES;


REPLACE INTO test2 VALUES (1, 'Old', '2014-08-20 18:47:00');
-- ^^^^^^^^^ keyword.other.dml
--           ^^^^^ meta.table-name
--                 ^^^^^^ keyword.other
REPLACE test2 VALUES (1, 'Old', '2014-08-20 18:47:00');
-- ^^^^ keyword.other.dml
--      ^^^^^ meta.table-name
--            ^^^^^^ keyword.other

INSERT IGNORE INTO users_partners (uid,pid) VALUES (1,1);
-- ^^^^^^^^^^^^^^^ keyword.other.dml
--                 ^^^^^^^^^^^^^^ meta.table-name
--                                ^^^^^^^^^ meta.group
--                                ^ punctuation.section.group.begin
--                                 ^^^ meta.column-name
--                                    ^ punctuation.separator.sequence
--                                     ^^^ meta.column-name
--                                        ^ punctuation.section.group.end
--                                          ^^^^^^ keyword.other
--                                                 ^^^^^ meta.group
--                                                 ^ punctuation.section.group.begin
--                                                  ^ meta.number.integer.decimal constant.numeric.value
--                                                   ^ punctuation.separator.sequence
--                                                    ^ meta.number.integer.decimal constant.numeric.value
--                                                     ^ punctuation.section.group.end
--                                                      ^ punctuation.terminator.statement

INSERT IGNORE users_partners (uid,pid) VALUES (1,1);
-- ^^^^^^^^^^ keyword.other.dml
--            ^^^^^^^^^^^^^^ meta.table-name

DELIMITER $$
-- ^^^^^^ keyword.other.sql
--        ^^ punctuation.terminator.mysql

CREATE DEFINER=`root`@`%` FUNCTION `RandString`(length SMALLINT(3), initial_seed INT)
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^^^ variable.parameter.definer.sql
--            ^ keyword.operator.assignment.sql
--             ^^^^^^^^^^ meta.username.sql
--             ^ punctuation.definition.identifier.begin.sql
--                  ^ punctuation.definition.identifier.end.sql
--                   ^ punctuation.accessor.at.sql
--                    ^ punctuation.definition.identifier.begin.sql
--                     ^ constant.other.wildcard.percent.sql
--                      ^ punctuation.definition.identifier.end.sql
--                        ^^^^^^^^^^^^^^^^^^^^^ meta.function.sql
--                        ^^^^^^^^ keyword.other.ddl.sql
--                                 ^^^^^^^^^^^^ entity.name.function.sql
--                                 ^ punctuation.definition.identifier.begin.sql
--                                            ^ punctuation.definition.identifier.end.sql
--                                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.sql meta.group.sql
--                                             ^ punctuation.section.group.begin.sql
--                                              ^^^^^^ variable.parameter.sql
--                                                     ^^^^^^^^^^^ storage.type.sql
--                                                             ^^^ meta.parens.sql
--                                                             ^ punctuation.definition.parens.begin.sql
--                                                              ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                                               ^ punctuation.definition.parens.end.sql
--                                                                ^ punctuation.separator.sequence.sql
--                                                                  ^^^^^^^^^^^^ variable.parameter.sql
--                                                                               ^^^ storage.type.sql
--                                                                                  ^ punctuation.section.group.end.sql
    RETURNS varchar(100) CHARSET UTF8MB4
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql meta.function.sql
--  ^^^^^^^ keyword.other.ddl.sql
--          ^^^^^^^^^^^^ storage.type.sql
--                 ^^^^^ meta.parens.sql
--                 ^ punctuation.definition.parens.begin.sql
--                  ^^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                     ^ punctuation.definition.parens.end.sql
--                       ^^^^^^^ storage.modifier.mysql
--                               ^^^^^^^ constant.language.mysql
    CONTAINS SQL
--  ^^^^^^^^^^^^ storage.modifier.sql
    DETERMINISTIC
--  ^^^^^^^^^^^^^ storage.modifier.sql
BEGIN
    SET @returnStr = '';
    SET @allowedChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz';
    SET @i = 0;
    
    SET @seed := initial_seed;
--  ^^^^ meta.statement.set.sql
--  ^^^ keyword.other.dml.sql
--      ^^^^^ variable.other.sql
--      ^ punctuation.definition.variable.sql
--            ^^ keyword.operator.assignment.mysql
--                           ^ punctuation.terminator.statement.sql

    WHILE (@i < length) DO
--  ^^^^^ keyword.control.loop.sql
--        ^^^^^^^^^^^^^ meta.group.sql
--        ^ punctuation.section.group.begin.sql
--         ^^ variable.other.sql
--         ^ punctuation.definition.variable.sql
--            ^ keyword.operator.comparison.sql
--                    ^ punctuation.section.group.end.sql
--                      ^^ keyword.control.loop.sql
        SET @returnStr = CONCAT(@returnStr, substring(@allowedChars, FLOOR(RAND(@seed) * LENGTH(@allowedChars) + 1), 1));
        SET @i = @i + 1;
        SET @seed = round(rand(@seed)*4294967296);
    END WHILE;

    RETURN @returnStr;
END
$$
-- <- punctuation.terminator.mysql
DELIMITER ;


-- https://dev.mysql.com/doc/refman/8.4/en/set-variable.html
SET GLOBAL max_connections = 1000;
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.set.sql
-- <- keyword.other.dml.sql
--  ^^^^^^ storage.modifier.mysql
--         ^^^^^^^^^^^^^^^ variable.other
--                         ^ keyword.operator.assignment
--                           ^^^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                               ^ punctuation.terminator.statement.sql
SET @@GLOBAL.max_connections = 1000;
--  ^^^^^^^^ variable.language
--  ^^ punctuation.definition.variable
--          ^^^^^^^^^^^^^^^^ - meta.column-name
--          ^ punctuation.accessor.dot
--           ^^^^^^^^^^^^^^^ variable.other
--                           ^ keyword.operator.assignment
--                             ^^^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                 ^ punctuation.terminator.statement.sql

SET SESSION sql_mode = 'TRADITIONAL';
SET LOCAL sql_mode = 'TRADITIONAL';
SET @@SESSION.sql_mode = 'TRADITIONAL';
SET @@LOCAL.sql_mode = 'TRADITIONAL';
SET @@sql_mode = 'TRADITIONAL';
SET sql_mode = 'TRADITIONAL';

SET PERSIST max_connections = 1000;
SET @@PERSIST.max_connections = 1000;

SET PERSIST_ONLY back_log = 100;
SET @@PERSIST_ONLY.back_log = 100;

SET @@SESSION.max_join_size = DEFAULT;
SET @@SESSION.max_join_size = @@GLOBAL.max_join_size;
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.set.sql
-- <- keyword.other.dml.sql
--  ^^^^^^^^^ variable.language.mysql
--  ^^ punctuation.definition.variable.mysql
--           ^ punctuation.accessor.dot.mysql
--            ^^^^^^^^^^^^^ variable.other
--                          ^ keyword.operator.assignment.sql
--                            ^^^^^^^^ variable.language.sql
--                            ^^ punctuation.definition.variable.sql
--                                    ^ punctuation.accessor.dot.sql
--                                     ^^^^^^^^^^^^^ variable.other.member.mysql
--                                                  ^ punctuation.terminator.statement.sql

LOCK TABLES `some_table` WRITE;

SET AUTOCOMMIT=0;
SET foreign_key_checks = 0;

-- https://dev.mysql.com/doc/refman/8.4/en/load-data.html
LOAD DATA /*LOCAL*/ INFILE "/var/lib/mysql-files/some_pipe_delimited_file.txt"
-- ^^^^^^ keyword.other.dml.mysql
--        ^^^^^^^^^ comment.block.sql
--        ^^ punctuation.definition.comment.begin.sql
--               ^^ punctuation.definition.comment.end.sql
--                  ^^^^^^ keyword.other.dml.mysql
--                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.filepath.mysql
--                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.sql string.quoted.double.sql
--                         ^ punctuation.definition.string.begin.sql
--                                                                           ^ punctuation.definition.string.end.sql
IGNORE
-- ^^^ storage.modifier.mysql
    INTO TABLE some_table
--  ^^^^^^^^^^ keyword.other.dml.mysql
--             ^^^^^^^^^^ meta.table-name.sql
COLUMNS TERMINATED BY '|'
-- ^^^^ storage.modifier.mysql
--      ^^^^^^^^^^^^^ keyword.other.dml.mysql
--                    ^^^ meta.string.sql string.quoted.single.sql
--                    ^ punctuation.definition.string.begin.sql
--                      ^ punctuation.definition.string.end.sql
OPTIONALLY ENCLOSED BY '"'
-- ^^^^^^^^^^^^^^^^^^^ keyword.other.dml.mysql
--                     ^^^ meta.string.sql string.quoted.single.sql
--                     ^ punctuation.definition.string.begin.sql
--                       ^ punctuation.definition.string.end.sql
ESCAPED BY '"'
-- ^^^^^^^ keyword.other.dml.mysql
--         ^^^ meta.string.sql string.quoted.single.sql
--         ^ punctuation.definition.string.begin.sql
--           ^ punctuation.definition.string.end.sql
LINES TERMINATED BY '\n'
-- ^^ storage.modifier.mysql
--    ^^^^^^^^^^^^^ keyword.other.dml.mysql
--                  ^^^^ meta.string.sql string.quoted.single.sql
--                  ^ punctuation.definition.string.begin.sql
--                   ^^ constant.character.escape.sql
--                     ^ punctuation.definition.string.end.sql
IGNORE 1 LINES;
-- ^^^ storage.modifier.mysql
--     ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--       ^^^^^ storage.modifier.mysql
--            ^ punctuation.terminator.statement.sql

COMMIT;
UNLOCK TABLES;

show open tables where in_use>0;
-- ^^^^^^^^^^^^^^ meta.statement.show.sql
-- ^ keyword.other.dml.sql
--   ^^^^^^^^^^^ constant.language.mysql
--               ^^^^^ keyword.other.dml.sql
--                     ^^^^^^ meta.column-name.sql
--                           ^ keyword.operator.comparison.sql
--                            ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                             ^ punctuation.terminator.statement.sql
show processlist;
-- ^^^^^^^^^^^^^ meta.statement.show.sql
-- ^ keyword.other.dml.sql
--   ^^^^^^^^^^^ constant.language.mysql
--              ^ punctuation.terminator.statement.sql
SHOW ENGINE INNODB STATUS;
-- ^^^^^^^^^^^^^^^^^^^^^^ meta.statement.show.sql
-- ^ keyword.other.dml.sql
--   ^^^^^^^^^^^^^^^^^^^^ constant.language.mysql
--                       ^ punctuation.terminator.statement.sql

CREATE TABLE jokes
  (a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  joke TEXT NOT NULL);
LOAD DATA INFILE '/tmp/jokes.txt' INTO TABLE jokes
  FIELDS TERMINATED BY ''
  LINES TERMINATED BY '\n%%\n' (joke);

LOAD DATA INFILE 'file.txt'
  INTO TABLE t1
    (column1, @dummy, column2, @dummy, column3);
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.table-columns.sql
--  ^ punctuation.section.group.begin.sql
--   ^^^^^^^ meta.column-name.sql
--          ^ punctuation.separator.sequence.sql
--            ^^^^^^ variable.other.sql
--            ^ punctuation.definition.variable.sql
--                  ^ punctuation.separator.sequence.sql
--                    ^^^^^^^ meta.column-name.sql
--                           ^ punctuation.separator.sequence.sql
--                             ^^^^^^ variable.other.sql
--                             ^ punctuation.definition.variable.sql
--                                   ^ punctuation.separator.sequence.sql
--                                     ^^^^^^^ meta.column-name.sql
--                                            ^ punctuation.section.group.end.sql
--                                             ^ punctuation.terminator.statement.sql

LOAD DATA INFILE 'file.txt'
  INTO TABLE t1
  (column1, @var1)
    SET column2 = @var1/100;
--  ^^^^ meta.statement.set.sql
--  ^^^ keyword.other.dml.sql
--      ^^^^^^^ meta.column-name.sql
--              ^ keyword.operator.comparison.sql
--                ^^^^^ variable.other.sql
--                ^ punctuation.definition.variable.sql
--                     ^ keyword.operator.arithmetic.sql
--                      ^^^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                         ^ punctuation.terminator.statement.sql

LOAD DATA INFILE 'file.txt'
  INTO TABLE t1
  (column1, column2)
    SET column3 = CURRENT_TIMESTAMP;
--  ^^^^ meta.statement.set.sql
--  ^^^ keyword.other.dml.sql
--      ^^^^^^^ meta.column-name.sql
--              ^ keyword.operator.comparison.sql
--                ^^^^^^^^^^^^^^^^^ meta.function-call.sql support.function.scalar.sql
--                                 ^ punctuation.terminator.statement.sql

CREATE TEMPORARY TABLE temporary_table LIKE target_table;
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql
-- ^^^ keyword.other.ddl.sql
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.table.sql
--     ^^^^^^^^^
--               ^^^^^ keyword.other.ddl.sql
--                     ^^^^^^^^^^^^^^^ entity.name.struct.table.sql
--                                     ^^^^ keyword.other.sql
--                                          ^^^^^^^^^^^^ meta.table-name.sql
--                                                      ^ punctuation.terminator.statement.sql

SHOW INDEX FROM temporary_table;
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.show.sql
-- ^ keyword.other.dml.sql
--   ^^^^^^ meta.index.sql
--   ^^^^^ keyword.other.dml.mysql
--         ^^^^ keyword.other.mysql
--              ^^^^^^^^^^^^^^^ meta.table-name.sql
--                             ^ punctuation.terminator.statement.sql
DROP INDEX `PRIMARY` ON temporary_table;
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.drop.sql
-- ^ keyword.other.ddl.sql
--   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.index.sql
--   ^^^^^ keyword.other.ddl.sql
--         ^^^^^^^^^ meta.index-name.sql
--         ^ punctuation.definition.identifier.begin.sql
--                 ^ punctuation.definition.identifier.end.sql
--                   ^^ keyword.other.sql
--                      ^^^^^^^^^^^^^^^ meta.table-name.sql
--                                     ^ punctuation.terminator.statement.sql
DROP INDEX `some_other_index` ON temporary_table;

LOAD DATA INFILE 'your_file.csv'
INTO TABLE temporary_table
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
(field1, field2);

SHOW COLUMNS FROM target_table;
INSERT INTO target_table
SELECT * FROM temporary_table
ON DUPLICATE KEY UPDATE field1 = VALUES(field1), field2 = VALUES(field2);

DROP TEMPORARY TABLE temporary_table;

-- ----------------------
SELECT a,b,a+b INTO OUTFILE '/tmp/result.txt'
-- ^^^ keyword.other.dml.sql
--     ^ meta.column-name.sql
--      ^ punctuation.separator.sequence.sql
--       ^ meta.column-name.sql
--        ^ punctuation.separator.sequence.sql
--         ^ meta.column-name.sql
--          ^ keyword.operator.arithmetic.sql
--           ^ meta.column-name.sql
--             ^^^^^^^^^^^^ keyword.other.dml.sql
--                         ^^^^^^^^^^^^^^^^^^ meta.filepath.mysql
--                          ^^^^^^^^^^^^^^^^^ meta.string.sql string.quoted.single.sql
--                          ^ punctuation.definition.string.begin.sql
--                                          ^ punctuation.definition.string.end.sql
  FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
-- ^^^^^ storage.modifier.mysql
--       ^^^^^^^^^^^^^ keyword.other.dml.mysql
--                     ^^^ meta.string.sql string.quoted.single.sql
--                     ^ punctuation.definition.string.begin.sql
--                       ^ punctuation.definition.string.end.sql
--                         ^^^^^^^^^^^^^^^^^^^^^^ keyword.other.dml.mysql
--                                                ^^^ meta.string.sql string.quoted.single.sql
--                                                ^ punctuation.definition.string.begin.sql
--                                                  ^ punctuation.definition.string.end.sql
  LINES TERMINATED BY '\n'
  FROM test_table;
-- ^^^ keyword.other.dml.sql
--     ^^^^^^^^^^ meta.table-name.sql
--               ^ punctuation.terminator.statement.sql

SELECT * FROM (VALUES ROW(1,2,3),ROW(4,5,6),ROW(7,8,9)) AS t
-- ^^^ keyword.other.dml.sql
--     ^ constant.other.wildcard.asterisk.sql
--       ^^^^ keyword.other.dml.sql
--            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--            ^ punctuation.section.group.begin.sql
--             ^^^^^^ keyword.other.ddl.sql
--                    ^^^ keyword.other.ddl.sql
--                       ^^^^^^^ meta.group.sql
--                       ^ punctuation.section.group.begin.sql
--                        ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                         ^ punctuation.separator.sequence.sql
--                          ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                           ^ punctuation.separator.sequence.sql
--                            ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                             ^ punctuation.section.group.end.sql
--                              ^ punctuation.separator.sequence.sql
--                               ^^^ keyword.other.ddl.sql
--                                  ^^^^^^^ meta.group.sql
--                                  ^ punctuation.section.group.begin.sql
--                                   ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                    ^ punctuation.separator.sequence.sql
--                                     ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                      ^ punctuation.separator.sequence.sql
--                                       ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                        ^ punctuation.section.group.end.sql
--                                         ^ punctuation.separator.sequence.sql
--                                          ^^^ keyword.other.ddl.sql
--                                             ^^^^^^^ meta.group.sql
--                                             ^ punctuation.section.group.begin.sql
--                                              ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                               ^ punctuation.separator.sequence.sql
--                                                ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                                 ^ punctuation.separator.sequence.sql
--                                                  ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                                                   ^ punctuation.section.group.end.sql
--                                                    ^ punctuation.section.group.end.sql
--                                                      ^^ keyword.operator.assignment.alias.sql
--                                                         ^ meta.alias.table.sql
    INTO OUTFILE '/tmp/select-values.txt';

TABLE employees ORDER BY lname LIMIT 1000
-- ^^ keyword.context.mysql
-- ^^^ - meta.table-name
--    ^^^^^^^^^ meta.table-name.sql
--             ^ - meta.table-name
--              ^^^^^^^^ keyword.other.dml.sql
--                       ^^^^^ meta.column-name.sql
--                             ^^^^^ keyword.other.dml.sql
--                                   ^^^^ meta.number.integer.decimal.sql constant.numeric.value.sql
    INTO OUTFILE '/tmp/employee_data_1.txt'
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\'
    LINES TERMINATED BY '\n';
--  ^^^^^ storage.modifier.mysql
--        ^^^^^^^^^^^^^ keyword.other.dml.mysql
--                      ^^^^ meta.string.sql string.quoted.single.sql
--                      ^ punctuation.definition.string.begin.sql
--                       ^^ constant.character.escape.sql
--                         ^ punctuation.definition.string.end.sql
--                          ^ punctuation.terminator.statement.sql

SELECT id, data INTO @x, @y FROM test.t1 LIMIT 1;

TABLE employees ORDER BY lname DESC LIMIT 1
    INTO @id, @fname, @lname, @hired, @separated, @job_code, @store_id;

SELECT * FROM (VALUES ROW(2,4,8)) AS t INTO @x,@y,@z;
-- ^^^ keyword.other.dml.sql
--     ^ constant.other.wildcard.asterisk.sql
--       ^^^^ keyword.other.dml.sql
--            ^^^^^^^^^^^^^^^^^^^ meta.group.sql
--            ^ punctuation.section.group.begin.sql
--             ^^^^^^ keyword.other.ddl.sql
--                    ^^^ keyword.other.ddl.sql
--                       ^^^^^^^ meta.group.sql
--                       ^ punctuation.section.group.begin.sql
--                        ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                         ^ punctuation.separator.sequence.sql
--                          ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                           ^ punctuation.separator.sequence.sql
--                            ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                             ^ punctuation.section.group.end.sql
--                              ^ punctuation.section.group.end.sql
--                                ^^ keyword.operator.assignment.alias.sql
--                                   ^ meta.alias.table.sql
--                                     ^^^^ keyword.other.dml.sql
--                                          ^^ variable.other.sql
--                                          ^ punctuation.definition.variable.sql
--                                            ^ punctuation.separator.sequence.sql
--                                             ^^ variable.other.sql
--                                             ^ punctuation.definition.variable.sql
--                                               ^ punctuation.separator.sequence.sql
--                                                ^^ variable.other.sql
--                                                ^ punctuation.definition.variable.sql
--                                                  ^ punctuation.terminator.statement.sql

SELECT * FROM (VALUES ROW(2,4,8)) AS t(a,b,c) INTO @x,@y,@z;
-- ^^^ keyword.other.dml.sql
--     ^ constant.other.wildcard.asterisk.sql
--       ^^^^ keyword.other.dml.sql
--            ^^^^^^^^^^^^^^^^^^^ meta.group.sql
--            ^ punctuation.section.group.begin.sql
--             ^^^^^^ keyword.other.ddl.sql
--                    ^^^ keyword.other.ddl.sql
--                       ^^^^^^^ meta.group.sql
--                       ^ punctuation.section.group.begin.sql
--                        ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                         ^ punctuation.separator.sequence.sql
--                          ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                           ^ punctuation.separator.sequence.sql
--                            ^ meta.number.integer.decimal.sql constant.numeric.value.sql
--                             ^ punctuation.section.group.end.sql
--                              ^ punctuation.section.group.end.sql
--                                ^^ keyword.operator.assignment.alias.sql
--                                   ^ meta.alias.table.sql
--                                    ^^^^^^^ meta.group.sql
--                                    ^ punctuation.section.group.begin.sql
--                                     ^ meta.column-name.sql
--                                      ^ punctuation.separator.sequence.sql
--                                       ^ meta.column-name.sql
--                                        ^ punctuation.separator.sequence.sql
--                                         ^ meta.column-name.sql
--                                          ^ punctuation.section.group.end.sql
--                                            ^^^^ keyword.other.dml.sql
--                                                 ^^ variable.other.sql
--                                                 ^ punctuation.definition.variable.sql
--                                                   ^ punctuation.separator.sequence.sql
--                                                    ^^ variable.other.sql
--                                                    ^ punctuation.definition.variable.sql
--                                                      ^ punctuation.separator.sequence.sql
--                                                       ^^ variable.other.sql
--                                                       ^ punctuation.definition.variable.sql
--                                                         ^ punctuation.terminator.statement.sql

-- https://dev.mysql.com/doc/refman/8.4/en/lateral-derived-tables.html
SELECT
    salesperson.name,
    max_sale.amount,
    max_sale_customer.customer_name
FROM
    salesperson,
    -- calculate maximum size, cache it in transient derived table max_sale
    LATERAL
    (SELECT MAX(amount) AS amount
      FROM all_sales
      WHERE all_sales.salesperson_id = salesperson.id)
    AS max_sale,
    -- find customer, reusing cached maximum size
    LATERAL
--  ^^^^^^^ keyword.other.dml.sql
    (SELECT customer_name
--  ^^^^^^^^^^^^^^^^^^^^^ meta.group.sql
--  ^ punctuation.section.group.begin.sql
--   ^^^^^^ keyword.other.dml.sql
--          ^^^^^^^^^^^^^ meta.column-name.sql
      FROM all_sales
      WHERE all_sales.salesperson_id = salesperson.id
      AND all_sales.amount =
          -- the cached maximum size
          max_sale.amount)
    AS max_sale_customer;

-- comment one
select
    col1, col2
-- comment two
from table1
-- comment three
left join lateral (
    -- comment four
    select col2
    -- comment five
--  ^^ punctuation.definition.comment.sql
--  ^^^^^^^^^^^^^^^^ comment.line.double-dash.sql
    from table2
    -- comment six
    where col2 = 'string'
    and col3 = 123
    -- comment seven
    and col4 = '123'
    -- comment eight
    and col5 = 123
    -- seems to toggle the commenting when using
    -- certain keywords
    group by col6
    -- comment nine with single quote: don't use the wrong columns
    order by col7
)


-- ----------------------------------------------------------------------------
-- Diff Conflict Markers
-- https://mariadb.com/kb/en/string-literals
-- ----------------------------------------------------------------------------

SELECT
<<<<<<< HEAD
-- <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
-- ^^^^^^^^^ meta.block.conflict.begin.diff
-- ^^^^ punctuation.section.block.begin.diff
--      ^^^^ entity.name.section.diff
    *
--  ^ constant.other.wildcard.asterisk.sql
=======
-- <- meta.block.conflict.separator.diff punctuation.section.block.diff
-- ^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
    column1, column2
--  ^^^^^^^ meta.column-name.sql
--         ^ punctuation.separator.sequence.sql
--           ^^^^^^^ meta.column-name.sql
>>>>>>> master
-- <- meta.block.conflict.end.diff punctuation.section.block.end.diff
-- ^^^^^^^^^^^ meta.block.conflict.end.diff
-- ^^^^ punctuation.section.block.end.diff
--      ^^^^^^ entity.name.section.diff
