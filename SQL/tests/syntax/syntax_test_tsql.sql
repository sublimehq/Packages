-- SYNTAX TEST "Packages/SQL/TSQL.sublime-syntax"

USE master
-- <- keyword.context - constant
--  ^^^^^^ meta.database-name

SELECT columns FROM table WHERE
    column LIKE '%[[]SQL Server Driver]%'
--         ^^^^ keyword.operator.logical
--              ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.like string.quoted.single
--              ^ punctuation.definition.string.begin
--               ^ keyword.operator.wildcard
--                ^^^ meta.set.like
--                ^ keyword.control.set.begin
--                  ^ keyword.control.set.end
--                   ^^^^^^^^^^^^^^^^^^ - constant - keyword
--                                     ^ keyword.operator.wildcard
--                                      ^ punctuation.definition.string.end
--                                       ^^ - meta.string - string

SELECT columns FROM table WHERE
    column LIKE '%[SQL Server Driver]%'
--         ^^^^ keyword.operator.logical
--              ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.like string.quoted.single
--              ^ punctuation.definition.string.begin
--               ^ keyword.operator.wildcard
--                ^^^^^^^^^^^^^^^^^^^ meta.set.like
--                ^ keyword.control.set.begin
--                                  ^ keyword.control.set.end
--                   ^^^^^^^^^^^^^^^ - constant - keyword
--                                   ^ keyword.operator.wildcard
--                                    ^ punctuation.definition.string.end
--                                     ^^ - meta.string - string

SELECT columns FROM table WHERE
    column LIKE '%[^a-f]%'
--         ^^^^ keyword.operator.logical
--              ^^^^^^^^^^ meta.string.like string.quoted.single
--              ^ punctuation.definition.string.begin
--               ^ keyword.operator.wildcard
--                ^^^^^^ meta.set.like
--                ^ keyword.control.set.begin
--                 ^ keyword.control.set.negation
--                   ^ constant.other.range
--                     ^ keyword.control.set.end
--                      ^ keyword.operator.wildcard
--                       ^ punctuation.definition.string.end
--                        ^^ - meta.string - string

SELECT columns FROM table WHERE
    column LIKE 'hello_world'
--         ^^^^ keyword.operator.logical
--              ^^^^^^^^^^^^ meta.string.like string.quoted.single
--              ^ punctuation.definition.string.begin
--                    ^ keyword.operator.wildcard
--                          ^ punctuation.definition.string.end
--                           ^^ - meta.string - string

SELECT columns FROM table WHERE
    column LIKE '%\[SQL Server Driver]^%\__' ESCAPE '\'
--         ^^^^ keyword.operator.logical
--               ^ keyword.operator.wildcard
--                ^^ constant.character.escape
--                                    ^ - constant
--                                     ^ keyword.operator.wildcard
--                                      ^^ constant.character.escape
--                                        ^ keyword.operator.wildcard
--                                           ^^^^^^ keyword.operator.word
--                                                  ^^^ string.quoted.single
--                                                  ^ punctuation.definition.string.begin
--                                                   ^ constant.character.escape
--                                                    ^ punctuation.definition.string.end

SELECT columns FROM table WHERE
    column LIKE '%\[SQL Server Driver]^%\__'
--         ^^^^ keyword.operator.logical
--               ^ keyword.operator.wildcard
--                ^^ constant.character.escape
--                                    ^ - constant
--                                     ^ keyword.operator.wildcard
--                                      ^^ constant.character.escape
--                                        ^ keyword.operator.wildcard
    ESCAPE '\'
--  ^^^^^^ keyword.operator.word
--         ^^^ string.quoted.single
--         ^ punctuation.definition.string.begin
--          ^ constant.character.escape
--           ^ punctuation.definition.string.end

SELECT columns FROM table WHERE
    column LIKE '%\^[SQL Server Driver]^%_^_' ESCAPE '^'
--         ^^^^ keyword.operator.logical
--               ^ keyword.operator.wildcard
--                ^ - constant
--                 ^^ constant.character.escape
--                                     ^^ constant.character.escape
--                                       ^ keyword.operator.wildcard
--                                        ^^ constant.character.escape
--                                            ^^^^^^ keyword.operator.word
--                                                   ^^^ string.quoted.single
--                                                   ^ punctuation.definition.string.begin
--                                                    ^ constant.character.escape
--                                                     ^ punctuation.definition.string.end

SELECT columns FROM table WHERE
    column LIKE '%\^[SQL Server Driver]^%_^_\_{{--' ESCAPE '{' -- uncatered for escape char, scope operators as though unescaped
--         ^^^^ keyword.operator.logical
--               ^ keyword.operator.wildcard
--               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - constant
--                  ^^^^^^^^^^^^^^^^^^^ meta.set.like
--                                     ^^^^^^^^^^^ - meta.set
--                                      ^^ keyword.operator.wildcard
--                                         ^ keyword.operator.wildcard
--                                           ^ keyword.operator.wildcard
--                                              ^^^^^^^^^^^^^^^ - comment
--                                                  ^^^^^^ keyword.operator.word
--                                                         ^^^ string.quoted.single
--                                                         ^ punctuation.definition.string.begin
--                                                          ^ constant.character.escape
--                                                           ^ punctuation.definition.string.end
--                                                             ^^ comment.line.double-dash punctuation.definition.comment

DECLARE @Example INT = 5
-- ^^^^ keyword.declaration.variable
--      ^^^^^^^^ variable.other.readwrite
--               ^^^ storage.type
--                   ^ keyword.operator
--                     ^ constant.numeric

SELECT TOP 1 @Example = 4 FROM [dbo].[TableName]
-- ^^^ keyword.other.dml
--     ^^^ keyword.other.dml
--         ^ constant.numeric
--           ^^^^^^^^ variable.other.readwrite
--                    ^ keyword.operator
--                      ^ constant.numeric
--                        ^^^^ keyword.other.dml

SELECT TOP(1) @Example = y FROM [dbo].[TableName]
-- ^^^ keyword.other.dml
--     ^^^ keyword.other.dml
--        ^ meta.group punctuation.section.parens.begin
--         ^ meta.group meta.number.integer.decimal constant.numeric.value
--          ^ meta.group punctuation.section.parens.end
--            ^^^^^^^^ variable.other.readwrite
--                     ^ keyword.operator
--                       ^ meta.column-name
--                         ^^^^ keyword.other.dml
--                              ^^^^^^^^^^^^^^^^^ meta.table-name

SET @Path = 'X:\nowayout\'
--^ keyword.other.dml
--  ^^^^^ variable.other.readwrite
--        ^ keyword.operator
--          ^^^^^^^^^^^^^^ string.quoted.single - constant
--          ^ punctuation.definition.string.begin
--                       ^ punctuation.definition.string.end
--                        ^ - string

SET @Blah = 'He said, ''hello world''.'
--          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single
--                                     ^ - string
--                    ^^ constant.character.escape
--                                 ^^ constant.character.escape

SET @Blah = CASE WHEN @x = 2 THEN 'Y' CASE WHEN @z = @x THEN 'N' ELSE NULL END
--          ^^^^ keyword.control.conditional.case
--               ^^^^ keyword.control.conditional.when
--                    ^^ variable.other.readwrite
--                       ^ keyword.operator.comparison
--                         ^ meta.number.integer.decimal constant.numeric.value
--                           ^^^^ keyword.control.conditional.then
--                                ^^^ string.quoted.single
--                                    ^^^^ keyword.control.conditional.case
--                                         ^^^^ keyword.control.conditional.when
--                                              ^^ variable.other.readwrite
--                                                 ^ keyword.operator.comparison
--                                                   ^^ variable.other.readwrite
--                                                      ^^^^ keyword.control.conditional.then
--                                                           ^^^ string.quoted.single
--                                                               ^^^^ keyword.control.conditional.else
--                                                                    ^^^^ constant.language.null
--                                                                         ^^^ keyword.control.conditional.end
--                                                                             ^ - meta
SET @Blah = CASE @x WHEN 2 THEN 'Y' WHEN @z THEN 'N' ELSE NULL END
--          ^^^^ keyword.control.conditional.case
--               ^^ variable.other.readwrite
--                  ^^^^ keyword.control.conditional.when
--                       ^ meta.number.integer.decimal constant.numeric.value
--                         ^^^^ keyword.control.conditional.then
--                              ^^^ string.quoted.single
--                                  ^^^^ keyword.control.conditional.when
--                                       ^^ variable.other.readwrite
--                                          ^^^^ keyword.control.conditional.then
--                                               ^^^ string.quoted.single
--                                                   ^^^^ keyword.control.conditional.else
--                                                        ^^^^ constant.language.null
--                                                             ^^^ keyword.control.conditional.end
--                                                                ^ - meta



DECLARE @name SYSNAME -- database name
-- ^^^^ keyword.declaration.variable
--      ^ punctuation.definition.variable
--       ^^^^ variable.other.readwrite
--            ^^^^^^^ storage.type
--                    ^^ comment.line.double-dash punctuation.definition.comment
DECLARE @path NVARCHAR(256) -- path for backup files
-- ^^^^ keyword.declaration.variable
--      ^ variable.other.readwrite punctuation.definition.variable
--       ^^^^ variable.other.readwrite
--            ^^^^^^^^^^^^^ storage.type
--                     ^^^ constant.numeric
DECLARE @fileName NVARCHAR(256) -- filename for backup
DECLARE @fileDate VARCHAR(20) -- used for file name

SET @path = 'C:\Backup\'

SELECT @fileDate = CONVERT(VARCHAR(20),GETDATE(),112)
--               ^ keyword.operator
--                 ^^^^^^^ meta.function-call support.function.scalar
--                        ^ meta.function-call meta.group punctuation.section.arguments.begin
--                         ^^^^^^^^^^^ storage.type
--                                    ^ punctuation.separator
--                                     ^^^^^^^ support.function.scalar
--                                            ^ punctuation.section.arguments.begin
--                                             ^ punctuation.section.arguments.end
--                                              ^ punctuation.separator.arguments
--                                               ^^^ meta.number.integer.decimal constant.numeric.value
--                                                  ^ punctuation.section.arguments.end
--                                                   ^ - meta.function-call - meta.group

DECLARE db_cursor CURSOR SCROLL DYNAMIC FOR
-- ^^^^ keyword.declaration.variable
--      ^^^^^^^^^ meta.cursor-name
--                ^^^^^^ support.type
--                       ^^^^^^ storage.modifier
--                              ^^^^^^^ storage.modifier
--                                      ^^^ keyword.other
    SELECT name
--  ^^^^^^ keyword.other.dml
--         ^^^^ meta.column-name
    FROM MASTER.dbo.sysdatabases
    -- ^ keyword.other.dml
    --   ^^^^^^^^^^^^^^^^^^^^^^^ meta.table-name
    WHERE name NOT IN ('master','model','msdb','tempdb')
    -- ^^ keyword.other.dml
    --                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
    --                 ^^^^^^^^ string.quoted.single
    --                         ^ punctuation.separator.sequence
    --                          ^^^^^^^ string.quoted.single
    FOR UPDATE OF name
--  ^^^ meta.cursor-declaration keyword.other
--      ^^^^^^^^^ storage.modifier
--                ^^^^ meta.column-name
DECLARE @blah int
-- <- keyword.declaration.variable - meta.cursor-declaration

OPEN db_cursor
-- ^ keyword.other
--   ^^^^^^^^^ meta.cursor-name
FETCH NEXT FROM db_cursor INTO @name
-- ^^^^^^^ keyword.other
--         ^^^^ keyword.other
--              ^^^^^^^^^ meta.cursor-name
--                        ^^^^ keyword.other
--                             ^^^^^ variable.other.readwrite

WHILE @@FETCH_STATUS = 0
-- ^^ keyword.control.flow
--    ^^^^^^^^^^^^^^ support.variable.global
--    ^^ support.variable.global
--                   ^ keyword.operator.comparison
--                     ^ meta.number.integer.decimal constant.numeric.value
BEGIN
-- ^^ keyword.control.flow.begin
      SET @fileName = @path + @name + '_' + @fileDate + '.BAK'
      BACKUP DATABASE @name TO DISK = @fileName
--    ^^^^^^^^^^^^^^^ keyword.other
--                    ^^^^^ variable.other.readwrite
--                          ^^ keyword.other
--                             ^^^^ keyword.other
--                                  ^ keyword.operator

      FETCH NEXT FROM db_cursor INTO @name
END
-- <- keyword.control.flow.end

CLOSE db_cursor
-- ^^ keyword.other
--    ^^^^^^^^^ meta.cursor-name
DEALLOCATE db_cursor
-- ^^^^^^^ keyword.other
--         ^^^^^^^^^ meta.cursor-name
GO
-------

DECLARE db_cursor CURSOR FAST_FORWARD READ_ONLY FOR
-- ^^^^ keyword.declaration.variable
--      ^^^^^^^^^ meta.cursor-name
--                ^^^^^^ support.type
--                       ^^^^^^^^^^^^ storage.modifier
--                                    ^^^^^^^^^ storage.modifier
--                                              ^^^ keyword.other
    SELECT name
--  ^^^^^^ keyword.other.dml
--         ^^^^ meta.column-name
    FROM MASTER.dbo.sysdatabases
    -- ^ keyword.other.dml
    --   ^^^^^^^^^^^^^^^^^^^^^^^ meta.table-name
    WHERE name NOT IN ('master','model','msdb','tempdb')
    -- ^^ keyword.other.dml
    --                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
    --                 ^^^^^^^^ string.quoted.single
    --                         ^ punctuation.separator.sequence
    --                          ^^^^^^^ string.quoted.single

OPEN db_cursor
-- ^ keyword.other - meta.cursor-declaration
--   ^^^^^^^^^ meta.cursor-name

-------------

DECLARE @FileExists INT
SET NOCOUNT ON
--^ keyword.other.dml
--  ^^^^^^^ constant.language.switch
--          ^^ constant.language.boolean
EXEC master.dbo.xp_fileexist @FromFile, @FileExists OUTPUT
-- ^ keyword.control.flow
--  ^ - meta.procedure-name
--   ^^^^^^^^^^^^^^^^^^^^^^^ meta.procedure-name
--                          ^ - meta.procedure-name
--                           ^^^^^^^^^ variable.other.readwrite
--                                    ^ punctuation.separator.sequence
--                                      ^^^^^^^^^^^ variable.other.readwrite
--                                                  ^^^^^^ storage.modifier.output
SET NOCOUNT OFF
--^ keyword.other.dml
--  ^^^^^^^ constant.language.switch
--          ^^^ constant.language.boolean
IF @FileExists = 0
BEGIN
    RAISERROR ('File "%s" does not exist', 16, -1, @FromFile)
    RETURN -1
    -- ^^^ keyword.control.flow
    --     ^ keyword.operator.arithmetic
    --      ^ meta.number.integer.decimal constant.numeric.value
END

SET @Message = 'Importing data from file...'
RAISERROR (@Message, 0, 1) WITH NOWAIT
-- ^^^^^^ meta.function-call support.function
--                         ^^^^ keyword.other
--                              ^^^^^^ keyword.other

SELECT COALESCE(a.field1, b.field2, c.field1) AS Blah, ISNULL(d.field1, 'default') as field1
--     ^^^^^^^^ meta.function-call support.function
--                                            ^^ keyword.operator.assignment.alias
--                                                     ^^^^^^ meta.function-call support.function
-------------------------------
EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'every 10 seconds',
        @enabled=1,
        @freq_type=4,
        @freq_interval=1,
        @freq_subday_type=2,
        @freq_subday_interval=10,
        @freq_relative_interval=0,
        @freq_recurrence_factor=0,
        @active_start_date=20150713,
        @active_end_date=99991231,
        @active_start_time=0,
        @active_end_time=235959,
        @schedule_uid=N'564354f8-4985-7408-80b7-afdc2bb92d3c'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
--                                    ^^^^ keyword.control.flow
--                                        ^ - meta.label-name
--                                         ^^^^^^^^^^^^^^^^ meta.label-name
--                                                         ^ - meta.label-name
EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
-- ^ keyword.control.flow
--   ^^^^^^^^^^^ variable.other.readwrite
--               ^ keyword.operator.assignment
--                 ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.procedure-name
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
COMMIT TRANSACTION
-- ^^^^^^^^^^^^^^^ keyword.context
GOTO EndSave
QuitWithRollback:
-- ^^^^^^^^^^^^^ entity.name.label
--              ^ punctuation.definition.label
    IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
    --  ^^^^^^^^^^^ meta.group support.variable.global
    --              ^ keyword.operator.comparison
EndSave:

-------------

INSERT INTO my_table (foo, bar)
-- ^^^^^^^^ keyword.other.dml
--          ^^^^^^^^^^^^^^^^^^^^ - meta.function-call - support
--          ^^^^^^^^ meta.table-name
--                   ^ punctuation.section.group.begin
--                            ^ punctuation.section.group.end
VALUES (2, 'two'),
-- ^^^ keyword.other.dml.II
--     ^ punctuation.section.group.begin
--              ^ punctuation.section.group.end
       (3, 'three')

INSERT INTO #my_table
-- ^^^^^^^^ keyword.other.dml
--          ^^^^^^^^^ meta.table-name - meta.function-call - support
VALUES (2, 'two'),
-- ^^^ keyword.other.dml.II
       (3, 'three')



SELECT  foo AS foobar, COUNT(*) AS tally
-- ^^^ keyword.other.dml
--      ^^^ meta.column-name
--          ^^ keyword.operator.assignment.alias
--             ^^^^^^ meta.column-alias
--                   ^ punctuation.separator.sequence
--                     ^^^^^^^^ meta.function-call
--                     ^^^^^ support.function.aggregate
--                          ^^^ meta.group
--                          ^ punctuation.section.arguments.begin
--                           ^ variable.language.wildcard.asterisk
--                            ^ punctuation.section.arguments.end
--                              ^^ keyword.operator.assignment.alias
--                                 ^^^^^ meta.column-alias
FROM    bar
-- ^ keyword.other.dml
--      ^^^ meta.table-name
WHERE   1 = 1
-- ^^ keyword.other.dml
GROUP BY foo
-- ^^^^^ keyword.other.dml

select *
from (select * from some_table) alias_table WITH (NOLOCK)
-- ^ keyword.other.dml
--   ^ punctuation.section.group.begin
--    ^^^^^^ keyword.other.dml
--           ^ variable.language.wildcard.asterisk
--                  ^^^^^^^^^^ meta.table-name
--                            ^ punctuation.section.group.end
--                              ^^^^^^^^^^^ meta.table-alias-name
--                                          ^^^^ keyword.other.dml
--                                               ^ punctuation.section.group.begin
--                                                ^^^^^^ meta.group constant.language.with
--                                                      ^ punctuation.section.group.end
where exists(select * from other_table where id = some_table.id)
--    ^^^^^^ keyword.operator.logical

UPDATE TableAlias
-- ^^^ keyword.other.dml
--     ^^^^^^^^^^ meta.table-name
SET column1 = v.column1,
-- <- keyword.other.dml
--^ keyword.other.dml
    column2 = 'testing123 TODO: assert the = operator is scoped as assignment instead of comparison'
--          ^ keyword.operator
 , col3 = 0xDEADC0DE
--        ^^^^^^^^^^ meta.number.integer.hexadecimal
--        ^^ constant.numeric.base
--          ^^^^^^^^ constant.numeric.value
FROM RealTableName TableAlias WITH (UPDLOCK, SOMETHING)
-- ^ keyword.other.dml
--  ^ - meta.table-name
--   ^^^^^^^^^^^^^ meta.table-name
--                ^ - meta.table-name - meta.table-alias-name
--                 ^^^^^^^^^^ meta.table-alias-name
--                           ^ - meta.table-alias-name
--                            ^^^^ keyword.other
--                                 ^^^^^^^^^^^^^^^^^^^^ meta.group
--                                                     ^ - meta.group
--                                 ^ punctuation.section.group.begin
--                                  ^^^^^^^ constant.language.with
--                                         ^ punctuation.separator.sequence
--                                           ^^^^^^^^^ meta.group constant.language.with
--                                                    ^ punctuation.section.group.end
INNER JOIN some_view AS v     WITH (NOLOCK) ON v.some_id = TableAlias.some_id
-- ^^^^^^^ keyword.other.dml
--        ^ - meta.table-name
--         ^^^^^^^^^ meta.table-name
--                  ^ - meta.table-name
--                   ^^ keyword.operator.assignment.alias
--                     ^ - meta.table-alias-name
--                      ^ meta.table-alias-name
--                       ^ - meta.table-alias-name
--                            ^^^^ keyword.other.dml
--                                 ^^^^^^^^ meta.group
--                                 ^ punctuation.section.group.begin
--                                  ^^^^^^ constant.language.with
--                                        ^ punctuation.section.group.end
--                                          ^^ keyword.operator.join
--                                            ^ - meta.column-name
--                                             ^^^^^^^^^ meta.column-name
--                                              ^ punctuation.accessor.dot
--                                                      ^ - meta.column-name
--                                                       ^ keyword.operator.comparison
--                                                        ^ - meta.column-name
--                                                         ^^^^^^^^^^^^^^^^^^ meta.column-name
--                                                                   ^ punctuation.accessor.dot
--                                                                           ^ - meta.column-name
WHERE TableAlias.some_id IN (
-- ^^ keyword.other.dml
--                       ^^ keyword.operator.logical
--                          ^ meta.group punctuation.section.group.begin
    SELECT a.another_id_column
--  ^^^^^^ keyword.other.dml
    FROM dbname..table_name_in_default_schema a
--  ^^^^ keyword.other.dml
--      ^ - meta.table-name
--       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.table-name
--                                           ^ - meta.table-name - meta.table-alias-name
--                                            ^ meta.table-alias-name
--                                             ^ - meta.table-alias-name
    WHERE a.another_id_column IS NOT NULL
--  ^^^^^ keyword.other.dml
--       ^ - meta.column-name - keyword
--        ^^^^^^^^^^^^^^^^^^^ meta.column-name
--                           ^ - meta.column-name - keyword
--                            ^^ keyword.operator.logical
--                               ^^^ keyword.operator.logical
--                                   ^^^^ constant.language.null
    AND   a.another_field     IS NOT NULL
)
AND (v.column2 IS NULL OR ISNULL(TableAlias.column1, 0) != v.column1)
-- <- keyword.operator.logical
--                     ^^ meta.group keyword.operator.logical
--                        ^^^^^^ meta.function-call support.function
--                                                      ^^ keyword.operator.comparison

drop table foobar
-- ^^^^^^^ meta.drop keyword.other.ddl
--         ^^^^^^ meta.table-name

alter table foo
-- ^^^^^^^^ meta.alter keyword.other.ddl
--          ^^^ meta.alter meta.table-name
add bar uniqueidentifier
--^ meta.alter keyword.other.ddl
--  ^^^ meta.alter meta.column-name
--      ^^^^^^^^^^^^^^^^ meta.alter storage.type

alter table foo
--^^^^^^^^^ meta.alter keyword.other.ddl - meta.alter meta.alter
--          ^^^ meta.alter meta.table-name
alter column bar uniqueidentifier not null
--^^^^^^^^^^ meta.alter keyword.other.ddl
--           ^^^ meta.alter meta.column-name
--               ^^^^^^^^^^^^^^^^ meta.alter storage.type
--                                ^^^ meta.alter keyword.operator.logical
--                                    ^^^^ meta.alter constant.language.null

USE AdventureWorks2012;
GO
SELECT i.ProductID, p.Name, i.LocationID, i.Quantity
    ,RANK() OVER (PARTITION BY i.LocationID ORDER BY i.Quantity DESC) AS Rank
--  ^ punctuation.separator.sequence
--   ^^^^ meta.function-call support.function
--          ^^^^ keyword.other
--                ^^^^^^^^^^^^ meta.group keyword.other
--                                          ^^^^^^^^ meta.group keyword.other.dml
--                                                              ^^^^ meta.group keyword.other.order
--                                                                    ^^ keyword.operator.assignment.alias
--                                                                       ^^^^ meta.column-alias
FROM Production.ProductInventory AS i
INNER JOIN Production.Product AS p
    ON i.ProductID = p.ProductID
WHERE i.LocationID BETWEEN 3 AND 4
-- ^^ keyword.other.dml
--                 ^^^^^^^ keyword.operator.logical
--                         ^ meta.number.integer.decimal constant.numeric.value
--                           ^^^ keyword.operator.logical
--                               ^ meta.number.integer.decimal constant.numeric.value
ORDER BY i.LocationID;

PRINT 'Record with ID ' + CAST(@RecordID AS VARCHAR(10)) + ' has been updated.'
-- ^^ keyword.other
--    ^^^^^^^^^^^^^^^^^ string.quoted.single
--                      ^ keyword.operator.arithmetic
--                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
--                        ^^^^ support.function
--                            ^ punctuation.section.arguments.begin
--                             ^^^^^^^^^ variable.other.readwrite
--                                       ^^ keyword.operator.assignment
--                                          ^^^^^^^^^^^ storage.type
--                                                     ^ punctuation.section.arguments.end

UPDATE foo
SET Value = Bar.Value
FROM foo
INNER JOIN bar (NOLOCK) ON bar.Title = foo.Title COLLATE DATABASE_DEFAULT AND ISNULL(bar.some_id, 0) = ISNULL(foo.some_id, 0)
-- ^^^^^^^ keyword.other.dml
--         ^^^ meta.table-name
--              ^^^^^^ meta.group invalid.deprecated.table-hint-without-with.tsql constant.language.table-hint.tsql
--                      ^^ keyword.operator.join
--                         ^^^^^^^^^ meta.column-name
--                                   ^ keyword.operator.comparison
--                                     ^^^^^^^^^ meta.column-name
--                                               ^^^^^^^ keyword.other
--                                                       ^^^^^^^^^^^^^^^^ support.constant
--                                                                        ^^^ keyword.operator.logical
--                                                                            ^^^^^^ meta.function-call support.function
--                                                                                                   ^ keyword.operator.comparison
--                                                                                                     ^^^^^^ meta.function-call support.function
    AND foo.a = ''
--  ^^^ keyword.operator.logical
--      ^^^^^ meta.column-name
--            ^ keyword.operator.comparison
--              ^^ string.quoted.single

SELECT DISTINCT *
INTO ##global_temp_table
-- ^ keyword.other.dml
--   ^^^^^^^^^^^^^^^^^^^ meta.table-name
FROM some_long_table_name s
LEFT OUTER JOIN another_long_table_name (NOLOCK) a ON s.blah = a.blah AND ISNULL(p.ok, '') = ISNULL(a.ok, '') COLLATE DATABASE_DEFAULT
-- ^^^^^^^^^^^^ keyword.other.dml
--              ^^^^^^^^^^^^^^^^^^^^^^^ meta.table-name
--                                       ^^^^^^ invalid.deprecated.table-hint-without-with.tsql constant.language.table-hint.tsql
--                                               ^ meta.table-alias-name
--                                                 ^^ keyword.operator.join
--                                                    ^^^^^^ meta.column-name
--                                                           ^ keyword.operator.comparison
--                                                             ^^^^^^ meta.column-name
--                                                                    ^^^ keyword.operator.logical
--                                                                        ^^^^^^ meta.function-call support.function
--                                                                                                            ^^^^^^^ keyword.other
--                                                                                                                    ^^^^^^^^^^^^^^^^ support.constant

-----------

USE MSSQLTipsDemo
GO

CREATE OR ALTER PROC CreateOrAlterDemo
-- ^^^^^^^^^^^^ meta.create keyword.other.ddl
--              ^^^^ meta.create keyword.other
--                   ^^^^^^^^^^^^^^^^^ meta.create meta.toc-list.full-identifier entity.name.struct
 @Count SMALLINT
,@Other INT OUTPUT
-- <- punctuation.separator.sequence
--^^^^^ variable.parameter
--      ^^^ storage.type
--          ^^^^^^ storage.modifier.output
AS
-- <- keyword.context.block
BEGIN
-- <- keyword.control.flow.begin
   SELECT TOP (@Count) * FROM [dbo].[CountryInfoNew]
-- ^^^^^^ keyword.other.dml
--        ^^^ keyword.other.dml
--            ^ meta.group punctuation.section.group.begin
--             ^ meta.group variable.other.readwrite punctuation.definition.variable
--              ^^^^^ meta.group variable.other.readwrite
--                   ^ meta.group punctuation.section.group.end
--                     ^ variable.language.wildcard.asterisk
--                       ^^^^ keyword.other.dml
--                            ^^^^^^^^^^^^^^^^^^^^^^ meta.table-name
--                            ^ punctuation.definition.identifier.begin
--                                ^ punctuation.definition.identifier.end
--                                 ^ punctuation.accessor.dot
--                                  ^ punctuation.definition.identifier.begin
--                                                 ^ punctuation.definition.identifier.end

END
-- <- keyword.control.flow.end
GO
-- <- keyword.control.flow

---------------
ALTER PROC CreateOrAlterDemo
-- ^^ meta.alter keyword.other.ddl
--    ^^^^ meta.alter keyword.other.ddl
--         ^^^^^^^^^^^^^^^^^ meta.procedure-name
 @Count SMALLINT
,@Other INT OUTPUT
-- <- punctuation.separator.sequence
--^^^^^ variable.parameter
--      ^^^ storage.type
--          ^^^^^^ storage.modifier.output
AS
-- <- keyword.context.block
BEGIN
-- <- keyword.control.flow.begin
END
-- <- keyword.control.flow.end
---

select A.A
    , CASE WHEN B.B IS NOT NULL THEN B.B ELSE DATEADD(d, 1 - DATEPART(d, GETDATE()), DATEADD(m, B.MonthsInFuture, DATEADD(dd, DATEDIFF(dd, 0, getdate()), 0))) END AS FirstDayOfFutureMonth
--  ^ punctuation.separator.sequence
--    ^^^^ keyword.control.conditional.case
    , B.*
--  ^ punctuation.separator.sequence
--    ^^ meta.column-name
--     ^ punctuation.accessor.dot
--      ^ variable.language.wildcard.asterisk
into #temp
-- ^ keyword.other.dml
--   ^^^^^ meta.table-name
from @A A
-- ^ keyword.other.dml
--   ^^ meta.table-name.sql variable.other.readwrite.sql
--      ^ meta.table-alias-name
inner join B ON (SELECT TOP 1 C.ID FROM C WHERE C.B LIKE B.C + '%' ORDER BY LEN(B.C) DESC) = B.ID
--^^^^^^^^ keyword.other.dml
--         ^ meta.table-name
--           ^^ keyword.operator.join
--              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
--              ^ punctuation.section.group.begin
--               ^^^^^^ keyword.other.dml
--                                                                                         ^ keyword.operator.comparison
--                                                                                           ^^^^ meta.column-name

WITH Sales_CTE (SalesPersonID, TotalSales, SalesYear)
-- ^ keyword.other.dml
--   ^^^^^^^^^ meta.cte-table-name
--             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.table-columns
--             ^ punctuation.section.group.begin
--              ^^^^^^^^^^^^^ meta.column-name
--                           ^ punctuation.separator.sequence
--                             ^^^^^^^^^^ meta.column-name
--                                       ^ punctuation.separator.sequence
--                                         ^^^^^^^^^ meta.column-name
AS
-- <- keyword.operator.assignment.cte
-- Define the first CTE query.
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash
(
-- <- meta.group punctuation.section.group.begin
    SELECT SalesPersonID, SUM(TotalDue) AS TotalSales, YEAR(OrderDate) AS SalesYear
--  ^^^^^^ meta.group keyword.other.dml
    FROM Sales.SalesOrderHeader
    WHERE SalesPersonID IS NOT NULL
       GROUP BY SalesPersonID, YEAR(OrderDate)

)
,   -- Use a comma to separate multiple CTE definitions.
-- <- punctuation.separator.sequence.cte
-- Define the second CTE query, which returns sales quota data by year for each sales person.
Sales_Quota_CTE (BusinessEntityID, SalesQuota, SalesQuotaYear)
-- ^^^^^^^^^^^^ meta.cte-table-name
--              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.table-columns - meta.group meta.group
--               ^^^^^^^^^^^^^^^^ meta.column-name
AS
-- <- keyword.operator.assignment.cte
(
-- <- meta.group punctuation.section.group.begin
       SELECT BusinessEntityID, SUM(SalesQuota)AS SalesQuota, YEAR(QuotaDate) AS SalesQuotaYear
--     ^^^^^^ meta.group keyword.other.dml
       FROM Sales.SalesPersonQuotaHistory
       GROUP BY BusinessEntityID, YEAR(QuotaDate)
)

-- Define the outer query by referencing columns from both CTEs.
SELECT SalesPersonID
-- ^^^ keyword.other.dml
  , SalesYear
  , FORMAT(TotalSales,'C','en-us') AS TotalSales
  , SalesQuotaYear
  , FORMAT (SalesQuota,'C','en-us') AS SalesQuota
  , FORMAT (TotalSales -SalesQuota, 'C','en-us') AS Amt_Above_or_Below_Quota
FROM Sales_CTE
JOIN Sales_Quota_CTE ON Sales_Quota_CTE.BusinessEntityID = Sales_CTE.SalesPersonID
                    AND Sales_CTE.SalesYear = Sales_Quota_CTE.SalesQuotaYear
ORDER BY SalesPersonID, SalesYear;

WITH DirectReports(ManagerID, EmployeeID, Title, EmployeeLevel) AS
(
    SELECT ManagerID, EmployeeID, Title, 0 AS EmployeeLevel
    FROM dbo.MyEmployees
    WHERE ManagerID IS NULL
    UNION ALL
    SELECT e.ManagerID, e.EmployeeID, e.Title, EmployeeLevel + 1
    FROM dbo.MyEmployees AS e
        INNER JOIN DirectReports AS d
        ON e.ManagerID = d.EmployeeID
)
SELECT ManagerID, EmployeeID, Title, EmployeeLevel
FROM DirectReports
ORDER BY ManagerID
OPTION (MAXRECURSION 3)
-- ^^^ keyword.other.dml
--     ^ meta.group punctuation.section.group.begin
--      ^^^^^^^^^^^^ meta.group constant.language.with
--                   ^ meta.group constant.language.with
--                    ^ meta.group punctuation.section.group.end

WITH cte_table AS ( SELECT blah )
-- ^ keyword.other.dml
--   ^^^^^^^^^ meta.cte-table-name
--             ^^ keyword.operator.assignment.cte
--                ^ meta.group punctuation.section.group.begin
--                  ^^^^^^ meta.group keyword.other.dml
--                         ^^^^ meta.group meta.column-name
--                              ^ meta.group punctuation.section.group.end
SELECT cte_table.* FROM cte_table
-- ^^^ keyword.other.dml
--     ^^^^^^^^^^ meta.column-name
--               ^ variable.language.wildcard.asterisk
--                 ^^^^ keyword.other.dml
--                      ^^^^^^^^^ meta.table-name

;WITH A AS
    (
        SELECT
            Foo.ID AS [FooID],
            Character,
            Universe,
            COUNT(Bar.*) AS BarCount
        FROM
            Foo
            LEFT JOIN Bar B WITH (NOLOCK) ON B.Something = 1 AND B.Example = Foo.Example AND B.[When] >= @intervalDate_Start AND B.[When] < @intervalDate_End
        WHERE
            @intervalDate_Start <= Foo.CreationTime AND Foo.CreationTime < @intervalDate_End
        GROUP BY
            ISNULL(Foo.Example, Foo.ID)
    ),
    B AS
--  ^ meta.cte-table-name
--    ^^ keyword.operator.assignment.cte
    (
        SELECT
--      ^^^^^^ meta.group keyword.other.dml
            FooID,
            CASE WHEN Character = 'Zoidberg'
                THEN
                    CASE WHEN SUBSTRING(Universe, 1, 3) IN ('140', '170','290','235')
                        THEN 'Futurama'
                        ELSE 'Pasturama'
                    END
                ELSE Universe
            END AS Universe,
            BarCount
        FROM
            A a
    )
    SELECT
        *
    FROM
        B
    ORDER BY Universe DESC


CREATE TABLE foo (id [int] PRIMARY KEY, [test me] [varchar] (5))
-- ^^^ keyword.other.ddl
--     ^^^^^ keyword.other
--           ^^^ meta.toc-list.full-identifier entity.name.struct
--               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create meta.group.table-columns
--               ^ punctuation.section.group.begin
--                ^^ meta.column-name
--                   ^^^^^ storage.type
--                         ^^^^^^^^^^^ storage.modifier
--                                    ^ punctuation.separator.sequence
--                                      ^^^^^^^^^ meta.column-name
--                                                ^^^^^^^^^^^^^ storage.type
--                                                           ^ constant.numeric
--                                                             ^ punctuation.section.group.end
GO
-- <- keyword.control.flow
CREATE TABLE foo ([int] [int] PRIMARY KEY, [test'hello¬world'@"me"] [varchar] (5));
--                      ^^^^^ storage.type
--                                         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.column-name

CREATE PROCEDURE [blah].[test]
    @input1 INT,
    @input2 [VARCHAR]( MAX )
--          ^^^^^^^^^^^^^^^^ storage.type
--                     ^^^ constant.language.max
AS
-- <- keyword.context.block
;WITH CTE AS (SELECT @input1 AS Input1) UPDATE Blah SET X = CTE.Input1 FROM CTE JOIN X ON X.Nonsense = 12.6
-- <- punctuation.terminator.statement
--^^^ keyword.other.dml
--    ^^^ meta.cte-table-name
--        ^^ keyword.operator.assignment.cte
--                                      ^^^^^^ keyword.other.dml
--                                             ^^^^ meta.table-name
--                                                  ^^^ keyword.other.dml
--                                                                                                     ^^^^ meta.number.float.decimal constant.numeric.value
--                                                                                                       ^ punctuation.separator.decimal

IF OBJECT_ID('tempdb..import') IS NOT NULL
    DROP TABLE tempdb..import
    --         ^^^^^^^^^^^^^^ meta.table-name
    --               ^^ punctuation.accessor.dot
GO
CREATE TABLE tempdb..[import] (a varchar(10), b varchar(20) null)
GO
RAISERROR ('importing file...', 0, 1) WITH NOWAIT
-- import file
BULK INSERT
--^^^^^^^^^ keyword.other
    tempdb..import
FROM
    'C:\temp_folder\filename.txt'
WITH (
    FIRSTROW        = 1,
--  ^^^^^^^^ constant.language.with
--                  ^ keyword.operator.assignment
--                    ^ meta.number.integer.decimal constant.numeric.value
--                     ^ punctuation.separator.sequence
    FIELDTERMINATOR = ';',
    ROWTERMINATOR   = '\n',
--  ^^^^^^^^^^^^^ constant.language.with
--                  ^ keyword.operator.assignment
--                    ^^^^ string.quoted.single
--                        ^ punctuation.separator.sequence
    CODEPAGE        = '1257',
    TABLOCK
--  ^^^^^^^ constant.language.with
)
-- <- punctuation.section.group.end
IF @@ERROR != 0
-- <- keyword.control.flow
-- ^^^^^^^ support.variable.global
--         ^^ keyword.operator.comparison
    UPDATE tempdb..continue_script SET proceed = 0
GO
IF EXISTS (SELECT proceed FROM tempdb..continue_script WHERE proceed = 0)
    RETURN
RAISERROR ('file imported', 0, 1) WITH NOWAIT

---------

SELECT [EmpID]
      ,[FirstName]
      ,[LastName]
      ,[Education]
      ,[Occupation]
      ,[YearlyIncome]
      ,[Sales]
      ,[HireDate]
  FROM [NewEmployee]
  FOR XML RAW, ELEMENTS;
-- ^^^^^^ keyword.other
--        ^^^ keyword.other
--           ^ punctuation.separator.sequence
--             ^^^^^^^^ keyword.other

SELECT [EmpID]
      ,[FirstName]
      ,[LastName]
      ,[Education]
      ,[Occupation]
      ,[YearlyIncome]
      ,[Sales]
      ,[HireDate]
  FROM [NewEmployee]
  FOR XML RAW('Employee'),
--^^^^^^^ keyword.other
--        ^^^ keyword.other
--           ^ punctuation.section.group.begin
--            ^^^^^^^^^^ string.quoted.single
--                      ^ punctuation.section.group.end
--                       ^ punctuation.separator.sequence
          ROOT('EmployeeDetails'), ELEMENTS XSINIL, XMLSCHEMA('urn:tutorialgateway.org');
--        ^^^^ keyword.other
--            ^ punctuation.section.group.begin
--             ^^^^^^^^^^^^^^^^^ string.quoted.single
--                              ^ punctuation.section.group.end
--                               ^ punctuation.separator.sequence
--                                 ^^^^^^^^ keyword.other
--                                          ^^^^^^ keyword.other
--                                                ^ punctuation.separator.sequence
--                                                  ^^^^^^^^^ keyword.other
------------------------

USE [AdventureWorks]
GO
SELECT PR.ProductID, PR.ReviewerName, PR.Comments, PP.Name
FROM [Production].[ProductReview] PR
WITH (INDEX = IX_ProductReview_ProductID_Name)
--    ^^^^^ keyword.other
--          ^ keyword.operator.assignment
--            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.index-name
INNER JOIN [Production].[Product] PP
WITH (INDEX = [AK_Product_Name]) ON PR.ProductID = PP.ProductID
--    ^^^^^ keyword.other
--          ^ keyword.operator.assignment
--            ^^^^^^^^^^^^^^^^^ meta.index-name
--            ^ punctuation.definition.identifier.begin
--                            ^ punctuation.definition.identifier.end

SELECT PR.ProductID, PR.ReviewerName, PR.Comments, PP.Name
FROM [Production].[ProductReview] PR
WITH (TABLOCK, INDEX(myindex, [anotherindex]))
--    ^^^^^^^ constant.language.with
--           ^ punctuation.separator.sequence
--             ^^^^^ keyword.other
--                  ^ punctuation.section.group.begin
--                   ^^^^^^^ meta.index-name
--                          ^ punctuation.separator.sequence
--                            ^^^^^^^^^^^^^^ meta.index-name
--                                          ^^ punctuation.section.group.end

SELECT PR.ProductID, PR.ReviewerName, PR.Comments, PP.Name
FROM [Production].[ProductReview] PR
WITH (TABLOCK, INDEX(1))
--             ^^^^^ keyword.other
--                  ^^^ meta.group meta.group
--                   ^ meta.number.integer.decimal constant.numeric.value

SELECT PR.ProductID, PR.ReviewerName, PR.Comments, PP.Name
FROM [Production].[ProductReview] PR
WITH (FORCESEEK (MyIndex (col1, col2, col3))
--    ^^^^^^^^^ keyword.other
--              ^ punctuation.section.group.begin
--               ^^^^^^^ meta.index-name
--                       ^^^^^^^^^^^^^^^^^^ meta.group.table-columns
--                       ^ punctuation.section.group.begin
--                        ^^^^ meta.column-name
--                            ^ punctuation.separator.sequence
--                              ^^^^ meta.column-name
--                                  ^ punctuation.separator.sequence
--                                    ^^^^ meta.column-name
--                                        ^ punctuation.section.group.end
--                                         ^ punctuation.section.group.end
-----------------


-- Pivot table with one row and five columns
SELECT 'AverageCost' AS Cost_Sorted_By_Production_Days,
  [0], [1], [2], [3], [4]
--^^^ meta.column-name
--   ^ punctuation.separator.sequence
--     ^^^ meta.column-name
FROM
(
  SELECT DaysToManufacture, StandardCost
  FROM Production.Product
) AS SourceTable
PIVOT
--^^^ keyword.other
(
  AVG(StandardCost)
--^^^^^^^^^^^^^^^^^ meta.function-call
--^^^ support.function.aggregate
--   ^ punctuation.section.arguments.begin
--    ^^^^^^^^^^^^ meta.column-name
--                ^ punctuation.section.arguments.end
  FOR DaysToManufacture IN ([0], [1], [2], [3], [4])
--^^^ keyword.other
--    ^^^^^^^^^^^^^^^^^ meta.column-name
--                      ^^ keyword.operator.logical
--                         ^ punctuation.section.group.begin
--                          ^^^ meta.column-name
--                             ^ punctuation.separator.sequence
) AS PivotTable;
--^^ keyword.operator.assignment.alias
--   ^^^^^^^^^^ meta.table-alias-name
--             ^ punctuation.terminator.statement

SELECT  item.ID AS DatePivotID,
        MAX(dDate) AS LastUpdateDate
FROM    Documents
UNPIVOT (dDate FOR nDate IN (date1, date2, date3, date4)) AS item
-- <- keyword.other
-- ^^^^ keyword.other
--                                                        ^^ keyword.operator.assignment.alias
--                                                           ^^^^ meta.table-alias-name
GROUP BY item.ID
-- ^^^^^ keyword.other.dml

------------
-- Create the table and insert values as portrayed in the previous example.
CREATE TABLE pvt (VendorID INT, Emp1 INT, Emp2 INT,
    Emp3 INT, Emp4 INT, Emp5 INT);
GO
INSERT INTO pvt VALUES (1,4,3,5,4,4);
INSERT INTO pvt VALUES (2,4,1,5,5,5);
INSERT INTO pvt VALUES (3,4,3,5,4,4);
INSERT INTO pvt VALUES (4,4,2,5,5,4);
INSERT INTO pvt VALUES (5,5,1,5,5,5);
GO
-- Unpivot the table.
SELECT VendorID, Employee, Orders
FROM
   (SELECT VendorID, Emp1, Emp2, Emp3, Emp4, Emp5
   FROM pvt) p
UNPIVOT
-- <- keyword.other
--^^^^^ keyword.other
   (Orders FOR Employee IN
--  ^^^^^^ meta.column-name
--         ^^^ keyword.other
--             ^^^^^^^^ meta.column-name
--                      ^^ keyword.operator.logical
      (Emp1, Emp2, Emp3, Emp4, Emp5)
) AS unpvt;
-- <- meta.group punctuation.section.group.end
--^^ keyword.operator.assignment.alias
--   ^^^^^ meta.table-alias-name
--        ^ punctuation.terminator.statement
GO

-------------

CREATE TABLE dbo.T1 ( column_1 int IDENTITY, column_2 VARCHAR(30));
GO
INSERT T1 VALUES ('Row #1');
--^^^^ keyword.other.dml
--     ^^ meta.table-name
--        ^^^^^^ keyword.other.dml.II
INSERT T1 (column_2) VALUES ('Row #2');
GO
SET IDENTITY_INSERT T1 ON;
-- <- keyword.other.dml
--  ^^^^^^^^^^^^^^^ constant.language.switch
--                  ^^ meta.table-name
--                     ^^ constant.language.boolean
--                       ^ punctuation.terminator.statement
GO
INSERT INTO T1 (column_1,column_2)
    VALUES (-99, 'Explicit identity value');
GO
SELECT column_1, column_2
FROM T1;
GO

CREATE TABLE dbo.T1
(
-- <- meta.group.table-columns punctuation.section.group.begin
    column_1 AS 'Computed column ' + column_2,
--  ^^^^^^^^ meta.column-name
--           ^^ keyword.other
--              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.computed-column-definition
--              ^^^^^^^^^^^^^^^^^^ string.quoted.single
--                                 ^ keyword.operator.arithmetic
--                                   ^^^^^^^^ meta.column-name
--                                           ^ punctuation.separator.sequence - meta.computed-column-definition
    column_2 varchar(30)
--  ^^^^^^^^ meta.column-name
--           ^^^^^^^^^^^ storage.type
        CONSTRAINT default_name DEFAULT ('my column default'),
--      ^^^^^^^^^^ storage.modifier
--                ^ - meta.constraint-name
--                 ^^^^^^^^^^^^ meta.constraint-name
--                             ^ - meta.constraint-name
--                              ^^^^^^^ storage.modifier
--                                      ^ punctuation.section.group.begin
--                                       ^^^^^^^^^^^^^^^^^^^ string.quoted.single
--                                                          ^ punctuation.section.group.end
--                                                           ^ punctuation.separator.sequence
    column_3 rowversion,
-- ^ - meta.column-name
--  ^^^^^^^^ meta.column-name
--          ^ - meta.column-name
--           ^^^^^^^^^^ storage.type
    column_4 varchar(40) NULL,
-- ^ - meta.column-name
--  ^^^^^^^^ meta.column-name
--          ^ - meta.column-name
--           ^^^^^^^^^^^ storage.type
--                       ^^^^ constant.language.null
--                           ^ punctuation.separator.sequence
    column_5 as 'last computed' + column_2
-- ^ - meta.column-name
--  ^^^^^^^^ meta.column-name
--          ^^^ - meta.column-name - meta.computed-column-definition
--             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.computed-column-definition
--           ^^ keyword.other.tsql
--              ^^^^^^^^^^^^^^^ string.quoted.single
--                              ^ keyword.operator.arithmetic
--                                ^^^^^^^^ meta.column-name.sql
);
-- <- meta.group.table-columns punctuation.section.group.end
INSERT INTO T1 DEFAULT VALUES;
-- ^^^^^^^^ keyword.other.dml
--          ^^ meta.table-name
--             ^^^^^^^^^^^^^^ keyword.other.dml.II
--                           ^ punctuation.terminator.statement


MERGE sales.category t
-- ^^ keyword.other
--   ^ - meta.table-name
--    ^^^^^^^^^^^^^^ meta.table-name
--                  ^ - meta.table-name - meta.table-alias-name
--                   ^ meta.table-alias-name
--                    ^ - meta.table-alias-name
    USING sales.category_staging s
--  ^^^^^ keyword.other
--       ^ - meta.table-name
--        ^^^^^^^^^^^^^^^^^^^^^^ meta.table-name
--                              ^ - meta.table-name - meta.table-alias-name
--                               ^ meta.table-alias-name
--                                ^ - meta.table-alias-name
ON (s.category_id = t.category_id)
-- <- keyword.operator.join
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
--  ^^^^^^^^^^^^^ meta.column-name
--                ^ keyword.operator.comparison
--                  ^^^^^^^^^^^^^ meta.column-name
WHEN MATCHED
-- ^^^^^^^^^ keyword.control.conditional.case
    THEN UPDATE SET
--  ^^^^ keyword.other
--       ^^^^^^ keyword.other.dml
--              ^^^ keyword.other.dml
        t.category_name = s.category_name,
--      ^^^^^^^^^^^^^^^ meta.column-name
--                      ^ keyword.operator
--                        ^^^^^^^^^^^^^^^ meta.column-name
--                                       ^ punctuation.separator.sequence
        t.amount = s.amount
--      ^^^^^^^^ meta.column-name
--               ^ keyword.operator
--                 ^^^^^^^^ meta.column-name
WHEN NOT MATCHED BY TARGET
--^^^^^^^^^^^^^^ keyword.control.conditional.case
--               ^^^^^^^^^ keyword.other
    THEN INSERT (category_id, category_name, amount)
--  ^^^^ keyword.other
--       ^^^^^^ keyword.other.dml
--              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
--              ^ punctuation.section.group.begin
--               ^^^^^^^^^^^ meta.column-name
--                          ^ punctuation.separator.sequence
--                            ^^^^^^^^^^^^^ meta.column-name
--                                         ^ punctuation.separator.sequence
--                                           ^^^^^^ meta.column-name
--                                                 ^ punctuation.section.group.end
         VALUES (s.category_id, s.category_name, s.amount)
--       ^^^^^^ keyword.other.dml.II
--              ^ punctuation.section.group.begin
--               ^^^^^^^^^^^^^ meta.column-name
--                            ^ punctuation.separator.sequence
--                              ^^^^^^^^^^^^^^^ meta.column-name
--                                             ^ punctuation.separator.sequence
--                                               ^^^^^^^^ meta.column-name
--                                                       ^ punctuation.section.group.end
WHEN NOT MATCHED BY SOURCE
--^^^^^^^^^^^^^^ keyword.control.conditional.case
--               ^^^^^^^^^ keyword.other
    THEN DELETE;
--  ^^^^ keyword.other
--       ^^^^^^ keyword.other.dml
--             ^ punctuation.terminator.statement

--------------
SET ANSI_NULLS ON
--  ^^^^^^^^^^ constant.language.switch
--             ^^ constant.language.boolean
GO
SET QUOTED_IDENTIFIER ON
--  ^^^^^^^^^^^^^^^^^ constant.language.switch
--                    ^^ constant.language.boolean
GO
CREATE TABLE [dbo].[be_Categories](
    [CategoryID] [uniqueidentifier] ROWGUIDCOL NOT NULL CONSTRAINT [DF_be_Categories_CategoryID] DEFAULT (newid()),
--                                  ^^^^^^^^^^ storage.modifier
--                                             ^^^ keyword.operator.logical
--                                                 ^^^^ constant.language.null
--                                                      ^^^^^^^^^^ storage.modifier
--                                                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.constraint-name
--                                                                                               ^^^^^^^ storage.modifier
--                                                                                                       ^ punctuation.section.group.begin
--                                                                                                        ^^^^^ meta.function-call support.function
--                                                                                                             ^ punctuation.section.arguments.begin
--                                                                                                              ^ punctuation.section.arguments.end
--                                                                                                               ^ punctuation.section.group.end
--                                                                                                                ^ punctuation.separator.sequence
    [CategoryName] [nvarchar](50) NULL,
    [Description] [nvarchar](200) NULL,
    [ParentID] [uniqueidentifier] NULL,
    CONSTRAINT [PK_be_Categories] PRIMARY KEY CLUSTERED
--  ^^^^^^^^^^ storage.modifier
--             ^^^^^^^^^^^^^^^^^^ meta.constraint-name
--                                ^^^^^^^^^^^ storage.modifier
--                                            ^^^^^^^^^ storage.modifier
    (
        [CategoryID] ASC
--      ^^^^^^^^^^^^ meta.column-name
--                   ^^^ keyword.other.order
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--    ^^^^ keyword.other.dml
--          ^^^^^^^^^ constant.language.with
--                    ^ keyword.operator.assignment
--                      ^^^ constant.language.bool
--                         ^ punctuation.separator.sequence
--                                                                               ^^^^^^^^^^^^^^^ constant.language.with
--                                                                                               ^ keyword.operator.assignment
--                                                                                                 ^^ constant.language.bool
--                                                                                                   ^ punctuation.separator.sequence
--                                                                                                     ^^^^^^^^^^^^^^^^ constant.language.with
--                                                                                                                      ^ keyword.operator.assignment
--                                                                                                                        ^^ constant.language.bool
--                                                                                                                          ^ punctuation.section.group.end
--                                                                                                                            ^^ keyword.other
--                                                                                                                               ^^^^^^^^^ meta.filegroup-name
) ON [PRIMARY]
-- <- punctuation.section.group.end
--^^ meta.create keyword.other
--   ^^^^^^^^^ meta.filegroup-name
--   ^ punctuation.definition.identifier.begin
--           ^ punctuation.definition.identifier.end
GO
--------------
CREATE TABLE [dbo].[table_with_constraint_following_derived_column](
    [SomeID] [uniqueidentifier] ROWGUIDCOL NOT NULL CONSTRAINT [DF_be_Categories_CategoryID] DEFAULT (newid()),
    [Data] [nvarchar](MAX) NOT NULL,
    [DerivedColumn1] AS CAST(JSON_VALUE([Data], '$.info.address.PostCode') AS NVARCHAR(1000))
--  ^^^^^^^^^^^^^^^^ meta.column-name variable.other.member.declaration
--                   ^^ keyword.other
--                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.computed-column-definition meta.function-call
--                      ^^^^ support.function
--                          ^ punctuation.section.arguments.begin
--                           ^^^^^^^^^^ support.function
--                                     ^ punctuation.section.arguments.begin
--                                      ^^^^^^ meta.group meta.function-call meta.group meta.column-name
--                                            ^ meta.group meta.function-call meta.group punctuation.separator.arguments
--                                              ^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single
--                                                                       ^ punctuation.section.arguments.end
--                                                                         ^^ keyword.operator.assignment
--                                                                            ^^^^^^^^^^^^^^ storage.type
--                                                                                          ^ punctuation.section.arguments.end
    CONSTRAINT [PK_be_Categories] PRIMARY KEY CLUSTERED
--  ^^^^^^^^^^ storage.modifier
--             ^^^^^^^^^^^^^^^^^^ meta.constraint-name
--                                ^^^^^^^^^^^ storage.modifier
--                                            ^^^^^^^^^ storage.modifier
    (
        [CategoryID] ASC
--      ^^^^^^^^^^^^ meta.column-name
--                   ^^^ keyword.other.order
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--    ^^^^ keyword.other.dml
--          ^^^^^^^^^ constant.language.with
--                    ^ keyword.operator.assignment
--                      ^^^ constant.language.bool
--                         ^ punctuation.separator.sequence
--                                                                               ^^^^^^^^^^^^^^^ constant.language.with
--                                                                                               ^ keyword.operator.assignment
--                                                                                                 ^^ constant.language.bool
--                                                                                                   ^ punctuation.separator.sequence
--                                                                                                     ^^^^^^^^^^^^^^^^ constant.language.with
--                                                                                                                      ^ keyword.operator.assignment
--                                                                                                                        ^^ constant.language.bool
--                                                                                                                          ^ punctuation.section.group.end
--                                                                                                                            ^^ keyword.other
--                                                                                                                               ^^^^^^^^^ meta.filegroup-name
) ON [PRIMARY]
-- <- punctuation.section.group.end
--^^ meta.create keyword.other
--   ^^^^^^^^^ meta.filegroup-name
--   ^ punctuation.definition.identifier.begin
--           ^ punctuation.definition.identifier.end
GO
--------------
CREATE TABLE [Employee](
   [EmployeeID] [int] NOT NULL PRIMARY KEY,
-- ^^^^^^^^^^^^ meta.column-name
--              ^^^^^ storage.type
--                    ^^^ keyword.operator.logical
--                        ^^^^ constant.language.null
--                             ^^^^^^^^^^^ storage.modifier
--                                        ^ punctuation.separator.sequence
   [FirstName] VARCHAR(250) NOT NULL,
   [LastName] VARCHAR(250) NOT NULL,
   [DepartmentID] [int] NOT NULL REFERENCES [Department](DepartmentID),
--                      ^^^ keyword.operator.logical
--                          ^^^^ constant.language.null
--                               ^^^^^^^^^^ storage.modifier
--                                          ^^^^^^^^^^^^ meta.table-name
--                                                      ^ punctuation.section.group.begin
--                                                       ^^^^^^^^^^^^ meta.column-name
--                                                                   ^ punctuation.section.group.end
--                                                                    ^ punctuation.separator.sequence
) ON [PRIMARY]
-- <- punctuation.section.group.end
--^^ meta.create keyword.other
--   ^^^^^^^^^ meta.create meta.filegroup-name
GO
SELECT * FROM Department D
CROSS APPLY
--^^^^^^^^^ keyword.other.dml
   (
   SELECT * FROM Employee E
   WHERE E.DepartmentID = D.DepartmentID
   ) A
GO
SELECT * FROM Department D
OUTER APPLY
-- ^^^^^^^^ keyword.other.dml
   (
   SELECT * FROM Employee E
   WHERE E.DepartmentID = D.DepartmentID
   ) A
GO
--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE OBJECT_ID = OBJECT_ID(N'[fn_GetAllEmployeeOfADepartment]') AND type IN (N'IF'))
BEGIN
   DROP FUNCTION dbo.fn_GetAllEmployeeOfADepartment -- TODO: scope this correctly
END
GO

CREATE FUNCTION dbo.fn_GetAllEmployeeOfADepartment(@DeptID AS INT)
RETURNS TABLE
--^^^^^ keyword.other
--      ^^^^^ storage.type
AS
-- <- keyword.context.block
RETURN
-- ^^^ keyword.control.flow
   (
   SELECT * FROM Employee E
   WHERE E.DepartmentID = @DeptID
   )
GO

CREATE FUNCTION foo() RETURNS @MyType
--                            ^^^^^^^ support.type.sql variable.other.readwrite.sql

CREATE FUNCTION foo() RETURNS My@TypeName
--                            ^^ support.type.sql - variable
--                              ^^^^^^^^^ support.type.sql variable.other.readwrite.sql

SELECT * FROM Department D
CROSS APPLY dbo.fn_GetAllEmployeeOfADepartment(D.DepartmentID) AS func_call_results_table
--          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
--          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.table-valued-function-name
--                                            ^^^^^^^^^^^^^^^^ meta.group
--                                            ^ punctuation.section.arguments.begin
--                                             ^^^^^^^^^^^^^^ meta.column-name
--                                                           ^ punctuation.section.arguments.end
--                                                             ^^ keyword.operator.assignment.alias - meta.function-call
--                                                                ^^^^^^^^^^^^^^^^^^^^^^^ meta.table-alias-name
GO

SELECT * FROM Department D
OUTER APPLY dbo.fn_GetAllEmployeeOfADepartment(D.DepartmentID, 123, 'testing123')
--          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call meta.table-valued-function-name
--                                            ^ meta.function-call meta.group punctuation.section.arguments.begin
--                                             ^^^^^^^^^^^^^^ meta.function-call meta.group meta.column-name
--                                                           ^ meta.function-call meta.group punctuation.separator.arguments
--                                                             ^^^ meta.function-call meta.group meta.number.integer.decimal constant.numeric.value
--                                                                ^ meta.function-call meta.group punctuation.separator.arguments
--                                                                  ^^^^^^^^^^^^ meta.function-call meta.group string.quoted.single
--                                                                              ^ meta.function-call meta.group punctuation.section.arguments.end
GO

SELECT DB_NAME(r.database_id) AS [Database], st.[text] AS [Query]
FROM sys.dm_exec_requests r
CROSS APPLY sys.dm_exec_sql_text(r.plan_handle) st
--          ^^^^^^^^^^^^^^^^^^^^ meta.function-call meta.table-valued-function-name
--                              ^ meta.function-call meta.group punctuation.section.arguments.begin
--                               ^^^^^^^^^^^^^ meta.function-call meta.group meta.column-name
--                                            ^ meta.function-call meta.group punctuation.section.arguments.end
--                                              ^^ meta.table-alias-name
WHERE r.session_Id > 50           -- Consider spids for users only, no system spids.
AND r.session_Id NOT IN (@@SPID)  -- Don't include request from current spid.
--                      ^ meta.group punctuation.section.group.begin
--                       ^^^^^^ support.variable.global
--                       ^^ punctuation.definition.variable
--                             ^ meta.group punctuation.section.group.end

SELECT p.BusinessEntityID ,
       p.FirstName ,
       p.MiddleName ,
       p.LastName ,
       pp.PhoneNumber ,
       dbo.some_func(p.BusinessEntityID),
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
--     ^^^^^^^^^^^^^ variable.function
--        ^ punctuation.accessor.dot
       [dbo].[some_func](p.BusinessEntityID)
--     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
--     ^^^^^^^^^^^^^^^^^ variable.function
--          ^ punctuation.accessor.dot
FROM   Person.Person AS p TABLESAMPLE (10 PERCENT) REPEATABLE (123)
--                      ^ meta.table-alias-name
--                        ^^^^^^^^^^^ keyword.other
--                                    ^^^^^^^^^^^^ meta.group.tablesample
--                                    ^ punctuation.section.group.begin
--                                     ^^ meta.number.integer.decimal constant.numeric.value
--                                        ^^^^^^^ constant.language
--                                               ^ punctuation.section.group.end
--                                                 ^^^^^^^^^^ constant.language
--                                                            ^ meta.group punctuation.section.group.begin
--                                                             ^^^ meta.group meta.number.integer.decimal constant.numeric.value
--                                                                ^ meta.group punctuation.section.group.end
       LEFT OUTER JOIN Person.PersonPhone AS pp TABLESAMPLE SYSTEM (10 ROWS)
--                                           ^^ meta.table-alias-name
--                                              ^^^^^^^^^^^^^^^^^^ keyword.other
--                                                                 ^^^^^^^^^ meta.group.tablesample
--                                                                 ^ punctuation.section.group.begin
--                                                                  ^^ meta.number.integer.decimal constant.numeric.value
--                                                                     ^^^^ constant.language
--                                                                         ^ punctuation.section.group.end
           ON pp.BusinessEntityID = p.BusinessEntityID
--         ^^ keyword.operator.join
--            ^^^^^^^^^^^^^^^^^^^ meta.column-name
--                                ^ keyword.operator.comparison
--                                  ^^^^^^^^^^^^^^^^^^ meta.column-name
ORDER BY p.BusinessEntityID DESC;

-- Test incomplete table alias assignment
JOIN table AS WHERE
--         ^^ keyword.operator.assignment.alias.sql
--            ^^^^^ keyword.other.dml.sql

--------

USE AdventureWorks2012;
GO
DECLARE @MyTableVar table(
    EmpID INT NOT NULL,
    OldVacationHours INT,
    NewVacationHours INT,
    ModifiedDate datetime);
UPDATE TOP (10) HumanResources.Employee
-- ^^^ keyword.other.dml
--     ^^^ keyword.other.dml
--         ^^^^ meta.group
--         ^ punctuation.section.parens.begin
--          ^^ meta.number.integer.decimal constant.numeric.value
--            ^ punctuation.section.parens.end
--              ^^^^^^^^^^^^^^^^^^^^^^^ meta.table-name
SET VacationHours = VacationHours * 1.25
--                                ^ keyword.operator.arithmetic
--                                  ^^^^ meta.number.float.decimal constant.numeric.value
OUTPUT INSERTED.BusinessEntityID,
--^^^^ storage.modifier.output
--     ^^^^^^^^^ meta.column-name constant.language.table
--             ^ meta.column-name constant.language.table punctuation.accessor.dot
--              ^^^^^^^^^^^^^^^^ meta.column-name
--                              ^ punctuation.separator.sequence
       DELETED.VacationHours,
--     ^^^^^^^^ meta.column-name constant.language.table
--            ^ meta.column-name constant.language.table punctuation.accessor.dot
--             ^^^^^^^^^^^^^ meta.column-name
--                          ^ punctuation.separator.sequence
       INSERTED.VacationHours,
       INSERTED.ModifiedDate
INTO @MyTableVar;
--Display the result set of the table variable.
SELECT EmpID, OldVacationHours, NewVacationHours, ModifiedDate
FROM @MyTableVar;
GO
--Display the result set of the table.
--Note that ModifiedDate reflects the value generated by an
--AFTER UPDATE trigger.
SELECT TOP 10 percent BusinessEntityID, VacationHours, ModifiedDate
--     ^^^ keyword.other.dml
--         ^^ meta.number.integer.decimal constant.numeric.value
--            ^^^^^^^ keyword.other.dml
--                    ^^^^^^^^^^^^^^^^ meta.column-name
FROM HumanResources.Employee;
GO
----------------
DECLARE @XmlDocumentHandle int
DECLARE @XmlDocument nvarchar(1000)
SET @XmlDocument = N'<ROOT>
<Customer>
   <CustomerID>VINET</CustomerID>
   <ContactName>Paul Henriot</ContactName>
   <Order OrderID="10248" CustomerID="VINET" EmployeeID="5" OrderDate="1996-07-04T00:00:00">
      <OrderDetail ProductID="11" Quantity="12"/>
      <OrderDetail ProductID="42" Quantity="10"/>
   </Order>
</Customer>
<Customer>
   <CustomerID>LILAS</CustomerID>
   <ContactName>Carlos Gonzlez</ContactName>
   <Order OrderID="10283" CustomerID="LILAS" EmployeeID="3" OrderDate="1996-08-16T00:00:00">
      <OrderDetail ProductID="72" Quantity="3"/>
   </Order>
</Customer>
</ROOT>'
-- Create an internal representation of the XML document.
EXEC sp_xml_preparedocument @XmlDocumentHandle OUTPUT, @XmlDocument
-- Execute a SELECT statement using OPENXML rowset provider.
SELECT    *
FROM      OPENXML (@XmlDocumentHandle, '/ROOT/Customer',2) -- TODO: apply xpath highlighting to the string
--^^ keyword.other.dml
--        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
--                                                        ^ - meta.function-call
--        ^^^^^^^ meta.table-valued-function-name support.function
--                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
--                ^ punctuation.section.arguments.begin
--                 ^^^^^^^^^^^^^^^^^^  variable.other.readwrite
           WITH (CustomerID  varchar(10),
--         ^^^^ keyword.other
--              ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.table-columns
--              ^ punctuation.section.group.begin
--               ^^^^^^^^^^ meta.column-name
--                           ^^^^^^^^^^^ storage.type
--                                      ^ punctuation.separator.sequence
                 ContactName varchar(20))
--               ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.table-columns
--                                       ^ - meta.group
--               ^^^^^^^^^^^ meta.column-name
--                           ^^^^^^^^^^^ storage.type
--                                      ^ punctuation.section.group.end
EXEC sp_xml_removedocument @XmlDocumentHandle
-- <- keyword.control.flow
--  ^ - meta.procedure-name
--   ^^^^^^^^^^^^^^^^^^^^^ meta.procedure-name
--                        ^ - meta.procedure-name
--                         ^ variable.other.readwrite punctuation.definition.variable
--                          ^^^^^^^^^^^^^^^^^ variable.other.readwrite - punctuation

--Create an internal representation of the XML document.
EXEC sp_xml_preparedocument @idoc OUTPUT, @doc;
-- <- keyword.control.flow
--  ^ - meta.procedure-name
--   ^^^^^^^^^^^^^^^^^^^^^^ meta.procedure-name
--                         ^ - meta.procedure-name
--                          ^ variable.other.readwrite punctuation.definition.variable
--                           ^^^^ variable.other.readwrite.sql
--                               ^ - variable
--                                ^^^^^^ storage.modifier.output.tsql
--                                      ^ punctuation.separator.sequence.sql
--                                        ^^^^ variable.other.readwrite.sql
--                                            ^ punctuation.terminator.statement.sql

-- SELECT stmt using OPENXML rowset provider
SELECT *
FROM   OPENXML (@idoc, '/ROOT/Customer/Order/OrderDetail',2)
         WITH (OrderID       int         '../@OrderID',
               CustomerID  varchar(10) '../@CustomerID',
               OrderDate   datetime    '../@OrderDate',
--             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.table-columns
--             ^^^^^^^^^ meta.column-name
--                         ^^^^^^^^ storage.type
--                                     ^^^^^^^^^^^^^^^ string.quoted.single
--                                     ^ punctuation.definition.string.begin
--                                                   ^ punctuation.definition.string.end
--                                                    ^ punctuation.separator.sequence
               ProdID      int         '@ProductID',
               Qty         int         '@Quantity');
--                                                ^ meta.group.table-columns punctuation.section.group.end
--                                                 ^ punctuation.terminator.statement - meta.group
-----
SELECT  *
FROM    table_name AS t1
        INNER JOIN  (SELECT foo FROM bar) AS t2(id) ON t2.ID = t1.ID
--                                        ^^ keyword.operator.assignment.alias
--                                           ^^ meta.table-alias-name
--                                             ^^^^ meta.group
--                                             ^ punctuation.section.group.begin
--                                              ^^ meta.column-name
--                                                ^ punctuation.section.group.end
--                                                  ^^ keyword.operator.join
----

SELECT a.*
   FROM OPENROWSET('Microsoft.Jet.OLEDB.4.0',
-- ^^^^ keyword.other.dml
--      ^^^^^^^^^^ meta.function-call meta.table-valued-function-name support.function
--                ^ punctuation.section.arguments.begin
                   'C:\SAMPLES\Northwind.mdb';
--                 ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single
--                                           ^ punctuation.separator.sequence
                   'admin';
                   'password',
                   Customers) AS a;
--                          ^ meta.function-call meta.group punctuation.section.arguments.end
--                            ^^ keyword.operator.assignment.alias - meta.group - meta.function-call
--                               ^ meta.table-alias-name

DECLARE @Data NVARCHAR(MAX)
--                    ^ punctuation.section.group.begin
--                        ^ punctuation.section.group.end
SELECT @Data = (
    SELECT [CustomerID] as "@CustomerID",
       [CustomerName],
       [CustomerCategoryName],
       [PrimaryContact],
       [AlternateContact],
       [PhoneNumber],
       [FaxNumber],
       [BuyingGroupName] AS '*',
       [WebsiteURL] WebsiteLink, -- TODO: scope alias correctly when no explicit 'AS'
       [DeliveryMethod] 'MethodOfDelivery' -- TODO: scope alias correctly when no explicit 'AS'
    FROM [WideWorldImporters].[Website].[Customers]
    WHERE CustomerID < 3 FOR XML PATH('Customer'), ROOT('Customers')
--                       ^^^^^^^ keyword.other
--                               ^^^^ keyword.other
--                                   ^ punctuation.section.group.begin
--                                               ^ punctuation.separator.sequence
--                                                 ^^^^ keyword.other
)
-- <- meta.group punctuation.section.group.end

-------------------
CREATE UNIQUE NONCLUSTERED INDEX IX_some_index ON dbo.some_table(
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create
-- ^^^ keyword.other.ddl
--     ^^^^^^ keyword.other
--            ^^^^^^^^^^^^ keyword.other
--                         ^^^^^ keyword.other
--                               ^^^^^^^^^^^^^ meta.toc-list.full-identifier entity.name.struct
--                                             ^^ keyword.other
--                                                ^^^^^^^^^^^^^^ meta.table-name
--                                                              ^ meta.group punctuation.section.group.begin
    some_column ASC
--  ^^^^^^^^^^^ meta.group meta.column-name
--              ^^^ meta.group keyword.other.order
)
-- <- meta.group punctuation.section.group.end
--^ - meta.group
;
WITH cols
--^^ keyword.other.dml
--   ^^^^ meta.cte-table-name
AS
-- <- keyword.operator.assignment.cte
(
    SELECT table_name, column_name,
    ROW_NUMBER() OVER(ORDER BY table_name, column_name) AS sequence,
    COUNT(*) OVER() AS total_columns
    FROM [INFORMATION_SCHEMA].columns
)
SELECT table_name, column_name, total_columns
FROM cols
ORDER BY sequence

set @test += 2
--^ keyword.other.dml
--  ^^^^^ variable.other.readwrite
--        ^^ keyword.operator.assignment
--           ^ meta.number.integer.decimal constant.numeric.value
set @test -= 2
--^ keyword.other.dml
--  ^^^^^ variable.other.readwrite
--        ^^ keyword.operator.assignment
--           ^ meta.number.integer.decimal constant.numeric.value
set @test *= 2
--^ keyword.other.dml
--  ^^^^^ variable.other.readwrite
--        ^^ keyword.operator.assignment
--           ^ meta.number.integer.decimal constant.numeric.value
set @test /= 2
--^ keyword.other.dml
--  ^^^^^ variable.other.readwrite
--        ^^ keyword.operator.assignment
--           ^ meta.number.integer.decimal constant.numeric.value
set @test %= 2
--^ keyword.other.dml
--  ^^^^^ variable.other.readwrite
--        ^^ keyword.operator.assignment
--           ^ meta.number.integer.decimal constant.numeric.value
set @test ^= 2
--^ keyword.other.dml
--  ^^^^^ variable.other.readwrite
--        ^^ keyword.operator.assignment
--           ^ meta.number.integer.decimal constant.numeric.value
set @test |= 2
--^ keyword.other.dml
--  ^^^^^ variable.other.readwrite
--        ^^ keyword.operator.assignment
--           ^ meta.number.integer.decimal constant.numeric.value

---------------
CREATE PROCEDURE dbo.RetrievePersonAddress
    @city_name NVARCHAR(30),
    @postal_code NVARCHAR(15)
AS
SELECT * FROM Person.Address
WHERE City = @city_name AND PostalCode = @postal_code
OPTION ( OPTIMIZE FOR (@city_name = 'Seattle', @postal_code UNKNOWN) );
-- ^^^ keyword.other.dml
--     ^ punctuation.section.group.begin
--       ^^^^^^^^^^^^ keyword.other
--                    ^ punctuation.section.group.begin
--                     ^^^^^^^^^^ variable.other.readwrite
--                                ^ keyword.operator.comparison
--                                  ^^^^^^^^^ string.quoted.single
--                                           ^ punctuation.separator.sequence
--                                             ^^^^^^^^^^^^ variable.other.readwrite
--                                                          ^^^^^^^ keyword.other
--                                                                 ^ punctuation.section.group.end
--                                                                   ^ punctuation.section.group.end
--                                                                    ^ punctuation.terminator.statement
GO

SELECT * FROM Person.Address
WHERE City = @city_name AND PostalCode = @postal_code
OPTION (OPTIMIZE FOR UNKNOWN);
--^^^^ keyword.other.dml - meta.group
--     ^^^^^^^^^^^^^^^^^^^^^^ meta.group
--     ^ punctuation.section.group.begin
--      ^^^^^^^^^^^^^^^^^^^^ keyword.other
--                          ^ punctuation.section.group.end
--                           ^ punctuation.terminator.statement


CREATE NONCLUSTERED INDEX IX_Address_PostalCode
ON Person.Address (PostalCode)
-- <- keyword.other
-- ^^^^^^^^^^^^^^ meta.table-name
--                ^ punctuation.section.group.begin
--                 ^^^^^^^^^^ meta.column-name
--                           ^ punctuation.section.group.end
INCLUDE (AddressLine1, AddressLine2, City, StateProvinceID)
-- ^^^^ keyword.other - meta.function-call - support.function
--      ^ punctuation.section.group.begin
--       ^^^^^^^^^^^^ meta.column-name
--                   ^ punctuation.separator.sequence
WHERE CountryCode = 'FR'

  /**/
--^^^^ comment.block - comment.block.documentation
--^^ punctuation.definition.comment.begin
--  ^^ punctuation.definition.comment.end

  /***/
--^^^ comment.block.documentation punctuation.definition.comment.begin
--   ^^ comment.block.documentation punctuation.definition.comment.end

  /****/
--^^^^ comment.block.documentation punctuation.definition.comment.begin
--    ^^ comment.block.documentation punctuation.definition.comment.end

  /***
   ***
-- ^ comment.block.documentation punctuation.definition.comment
    ^^ - punctuation
   ***/
-- ^^^^ comment.block.documentation punctuation.definition.comment.end

SELECT FLOOR(hours / 24) as days, hours%24 as hours
--                                     ^ keyword.operator.arithmetic
FROM timings

-- Temporal table
CREATE TABLE Department
(
    DepartmentNumber CHAR(10) NOT NULL PRIMARY KEY CLUSTERED,
    DepartmentName VARCHAR(50) NOT NULL,
    ManagerID INT NULL,
    ParentDepartmentNumber CHAR(10) NULL,
    SysStartTime DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN NOT NULL,
--  ^^^^^^^^^^^^ meta.column-name variable.other.member.declaration
--               ^^^^^^^^^ storage.type
--                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ keyword.other
--                                                              ^^^ keyword.operator.logical
--                                                                  ^^^^ constant.language.null
--                                                                      ^ punctuation.separator.sequence
    SysEndTime DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN NOT NULL,
--  ^^^^^^^^^^ meta.column-name variable.other.member.declaration
--             ^^^^^^^^^ storage.type
--                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ keyword.other
--                                                          ^^^ keyword.operator.logical
--                                                              ^^^^ constant.language.null
--                                                                  ^ punctuation.separator.sequence
    PERIOD FOR SYSTEM_TIME (SysStartTime, SysEndTime)
--  ^^^^^^^^^^^^^^^^^^^^^^ storage.modifier
--                         ^ punctuation.section.group.begin
--                          ^^^^^^^^^^^^ meta.column-name - variable.other.member.declaration
--                                      ^ punctuation.separator.sequence
--                                        ^^^^^^^^^^ meta.column-name - variable.other.member.declaration
--                                                  ^ punctuation.section.group.end
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.Department_History, DATA_CONSISTENCY_CHECK = ON));
--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create
--^^ keyword.other.dml
--   ^ punctuation.section.group.begin
--    ^^^^^^^^^^^^^^^^^ keyword.other
--                      ^ keyword.operator.assignment
--                        ^^ constant.language.bool
--                           ^ punctuation.section.group.begin
--                            ^^^^^^^^^^^^^ keyword.other
--                                          ^ keyword.operator.assignment
--                                            ^^^^^^^^^^^^^^^^^^^^^^ meta.table-name
--                                                                  ^ punctuation.separator.sequence
--                                                                    ^^^^^^^^^^^^^^^^^^^^^^ constant.language.with
--                                                                                           ^ keyword.operator.assignment
--                                                                                             ^^ constant.language.bool
--                                                                                               ^ punctuation.section.group.end
--                                                                                                ^ punctuation.section.group.end
--                                                                                                 ^ punctuation.terminator.statement

CREATE TABLE Customers (
    CustName NVARCHAR(60)
        ENCRYPTED WITH (
--      ^^^^^^^^^^^^^^ storage.modifier
            COLUMN_ENCRYPTION_KEY = MyCEK,
--          ^^^^^^^^^^^^^^^^^^^^^ constant.language.with
            ENCRYPTION_TYPE = RANDOMIZED,
--          ^^^^^^^^^^^^^^^ constant.language.with
            ALGORITHM = 'AEAD_AES_256_CBC_HMAC_SHA_256'
--          ^^^^^^^^^ constant.language.with
--                    ^ keyword.operator.assignment
--                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single
        ),
--      ^ punctuation.section.group.end
--       ^ punctuation.separator.sequence
    SSN VARCHAR(11) COLLATE Latin1_General_BIN2
--  ^^^ meta.create meta.group.table-columns meta.column-name variable.other.member.declaration
--      ^^^^^^^^^^^ storage.type
--                  ^^^^^^^ keyword.other
--                          ^^^^^^^^^^^^^^^^^^^ support.constant
        ENCRYPTED WITH (
--      ^^^^^^^^^^^^^^ storage.modifier
            COLUMN_ENCRYPTION_KEY = MyCEK,
            ENCRYPTION_TYPE = DETERMINISTIC ,
            ALGORITHM = 'AEAD_AES_256_CBC_HMAC_SHA_256'
        ),
    Age INT NULL
);

ALTER TABLE inventory
ADD CONSTRAINT fk_inv_product_id
--^^^^^^^^^^^^ meta.alter meta.add keyword.other
--             ^^^^^^^^^^^^^^^^^ meta.alter meta.constraint-name
    FOREIGN KEY (product_id)
--  ^^^^^^^^^^^ meta.alter storage.modifier
--              ^ meta.alter meta.group.table-columns punctuation.section.group.begin
--               ^^^^^^^^^^ meta.column-name
    REFERENCES products (product_id)
--  ^^^^^^^^^^ meta.alter storage.modifier
--             ^^^^^^^^ meta.alter meta.table-name
--                      ^ meta.alter meta.group.table-columns punctuation.section.group.begin
--                       ^^^^^^^^^^ meta.column-name
--                                 ^ punctuation.section.group.end
    ON DELETE CASCADE;
--  ^^^^^^^^^^^^^^^^^ meta.alter storage.modifier
--                   ^ punctuation.terminator.statement
