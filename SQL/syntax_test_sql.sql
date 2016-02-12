-- SYNTAX TEST "Packages/SQL/SQL.sublime-syntax"

SELECT 'Foo '' Bar';
--           ^ constant.character.escape.sql

SELECT "My "" Crazy Column Name" FROM my_table;
--         ^ constant.character.escape.sql
