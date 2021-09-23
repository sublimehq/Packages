-- SYNTAX TEST "Packages/SQL/TSQL.sublime-syntax"

USE master
-- <- keyword.context - constant
--  ^^^^^^ meta.database-name constant.other.placeholder

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
-- ^^^ keyword.other.DML
--     ^^^ keyword.other.DML
--         ^ constant.numeric
--           ^^^^^^^^ variable.other.readwrite
--                    ^ keyword.operator
--                      ^ constant.numeric
--                        ^^^^ keyword.other.DML

SET @Path = 'X:\nowayout\'
--^ keyword.other.DML
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
--                        ^ meta.function-call meta.group punctuation.section.parens.begin
--                         ^^^^^^^^^^^ storage.type
--                                    ^ punctuation.separator
--                                     ^^^^^^^ support.function.scalar
--                                            ^ punctuation.section.parens.begin
--                                             ^ punctuation.section.parens.end
--                                              ^ punctuation.separator.argument
--                                               ^^^ meta.number.integer.decimal constant.numeric.value
--                                                  ^ punctuation.section.parens.end
--                                                   ^ - meta.function-call - meta.group

DECLARE db_cursor CURSOR FOR
-- ^^^^ keyword.declaration.variable
--      ^^^^^^^^^ meta.cursor-name constant.other.placeholder
--                ^^^^^^^^^^ keyword.other

SELECT name
FROM MASTER.dbo.sysdatabases
-- ^ keyword.other.DML
--   ^^^^^^^^^^^^^^^^^^^^^^^ meta.table-name constant.other.placeholder
WHERE name NOT IN ('master','model','msdb','tempdb')
-- ^^ keyword.other.DML

OPEN db_cursor
-- ^ keyword.other
--   ^^^^^^^^^ meta.cursor-name constant.other.placeholder
FETCH NEXT FROM db_cursor INTO @name
-- ^^^^^^^ keyword.other
--         ^^^^ keyword.other
--              ^^^^^^^^^ meta.cursor-name constant.other.placeholder
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

      FETCH NEXT FROM db_cursor INTO @name
END
-- <- keyword.control.flow.end

CLOSE db_cursor
-- ^^ keyword.other
--    ^^^^^^^^^ meta.cursor-name constant.other.placeholder
DEALLOCATE db_cursor
-- ^^^^^^^ keyword.other
--         ^^^^^^^^^ meta.cursor-name constant.other.placeholder

-------------

DECLARE @FileExists INT
SET NOCOUNT ON
--^ keyword.other.DML
--  ^^^^^^^ constant.language.switch
--          ^^ constant.language.boolean
EXEC master.dbo.xp_fileexist @FromFile, @FileExists OUTPUT
-- ^ keyword.control.flow
--                                                  ^^^^^^ keyword.other
SET NOCOUNT OFF
--^ keyword.other.DML
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
--                                         ^^^^^^^^^^^^^^^^ meta.label-name constant.other.placeholder
EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
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
-- ^^^^^^^^ keyword.other.DML
--          ^^^^^^^^^^^^^^^^^^^^ - meta.function-call - support
--          ^^^^^^^^ meta.table-name constant.other.placeholder
VALUES (2, 'two'),
-- ^^^ keyword.other.DML.II
       (3, 'three')

INSERT INTO #my_table
-- ^^^^^^^^ keyword.other.DML
--          ^^^^^^^^^ meta.table-name constant.other.placeholder - meta.function-call - support
VALUES (2, 'two'),
-- ^^^ keyword.other.DML.II
       (3, 'three')



SELECT  foo, COUNT(*) AS tally
-- ^^^ keyword.other.DML
--         ^ punctuation.separator.sequence
--           ^^^^^^^^ meta.function-call
--           ^^^^^ support.function.aggregate
--                ^^^ meta.group
--                ^ punctuation.section.parens.begin
--                 ^ variable.language.wildcard.asterisk
--                  ^ punctuation.section.parens.end
--                    ^^ keyword.operator.assignment.alias
--                       ^^^^^ meta.column-name constant.other.placeholder
FROM    bar
-- ^ keyword.other.DML
--      ^^^ meta.table-name constant.other.placeholder
WHERE   1 = 1
-- ^^ keyword.other.DML
GROUP BY foo
-- ^^^^^ keyword.other.DML

select *
from (select * from some_table) alias_table WITH (NOLOCK)
-- ^ keyword.other.DML
--   ^ punctuation.section.group.begin
--    ^^^^^^ keyword.other.DML
--           ^ variable.language.wildcard.asterisk
--                  ^^^^^^^^^^ meta.table-name constant.other.placeholder
--                            ^ punctuation.section.group.end
--                              ^^^^^^^^^^^ meta.table-name constant.other.placeholder
--                                          ^^^^ keyword.other.DML
--                                               ^ punctuation.section.group.begin
--                                                ^^^^^^ meta.group constant.language.with
--                                                      ^ punctuation.section.group.end
where exists(select * from other_table where id = some_table.id)
--    ^^^^^^ keyword.operator.logical

UPDATE TableAlias
-- ^^^ keyword.other.DML
--     ^^^^^^^^^^ meta.table-name constant.other.placeholder
SET column1 = v.column1,
-- <- keyword.other.DML
--^ keyword.other.DML
    column2 = 'testing123 TODO: assert the = operator is scoped as assignment instead of comparison'
--          ^ keyword.operator
FROM RealTableName TableAlias WITH (UPDLOCK, SOMETHING)
-- ^ keyword.other.DML
--   ^^^^^^^^^^^^^ meta.table-name constant.other.placeholder
--                 ^^^^^^^^^^ meta.table-name constant.other.placeholder
--                            ^^^^ keyword.other
--                                 ^^^^^^^^^^^^^^^^^^^^ meta.group
--                                                     ^ - meta.group
--                                 ^ punctuation.section.group.begin
--                                  ^^^^^^^ constant.language.with
--                                         ^ punctuation.separator.sequence
--                                           ^^^^^^^^^ meta.group constant.language.with
--                                                    ^ punctuation.section.group.end
INNER JOIN some_view AS v     WITH (NOLOCK) ON v.some_id = TableAlias.some_id
-- ^^^^^^^ keyword.other.DML
--         ^^^^^^^^^ meta.table-name constant.other.placeholder
--                   ^^ keyword.operator.assignment.alias
--                      ^ meta.table-name constant.other.placeholder
--                            ^^^^ keyword.other.DML
--                                 ^^^^^^^^ meta.group
--                                 ^ punctuation.section.group.begin
--                                  ^^^^^^ constant.language.with
--                                        ^ punctuation.section.group.end
--                                          ^^ keyword.operator.join
--                                             ^^^^^^^^^ meta.column-name constant.other.placeholder
--                                              ^ punctuation.accessor.dot
--                                                       ^ keyword.operator.comparison
--                                                         ^^^^^^^^^^^^^^^^^^ meta.column-name constant.other.placeholder
--                                                                   ^ punctuation.accessor.dot
WHERE TableAlias.some_id IN (
-- ^^ keyword.other.DML
--                       ^^ keyword.operator.logical
--                          ^ meta.group punctuation.section.group.begin
    SELECT a.another_id_column
--  ^^^^^^ keyword.other.DML
    FROM dbname..table_name_in_default_schema a
--  ^^^^ keyword.other.DML
--       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.table-name constant.other.placeholder
--                                            ^ meta.group meta.table-name constant.other.placeholder
    WHERE a.another_id_column IS NOT NULL
--  ^^^^^ meta.group keyword.other.DML
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
--         ^^^^^^ meta.table-name constant.other.placeholder

alter table foo
-- ^^^^^^^^ meta.alter keyword.other.ddl
--          ^^^ meta.alter meta.table-name constant.other.placeholder
add bar uniqueidentifier
--^ meta.alter keyword.other.ddl
--  ^^^ meta.alter meta.column-name constant.other.placeholder
--      ^^^^^^^^^^^^^^^^ meta.alter storage.type

alter table foo
--^^^^^^^^^ meta.alter keyword.other.ddl - meta.alter meta.alter
--          ^^^ meta.alter meta.table-name constant.other.placeholder
alter column bar uniqueidentifier not null
--^^^^^^^^^^ meta.alter keyword.other.ddl
--           ^^^ meta.alter meta.column-name constant.other.placeholder
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
--                                          ^^^^^^^^ meta.group keyword.other.DML
--                                                              ^^^^ meta.group keyword.other.order
--                                                                    ^^ keyword.operator.assignment.alias
--                                                                       ^^^^ meta.column-name constant.other.placeholder
FROM Production.ProductInventory AS i
INNER JOIN Production.Product AS p
    ON i.ProductID = p.ProductID
WHERE i.LocationID BETWEEN 3 AND 4
-- ^^ keyword.other.DML
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
--                            ^ punctuation.section.parens.begin
--                             ^^^^^^^^^ variable.other.readwrite
--                                       ^^ keyword.operator.assignment
--                                          ^^^^^^^^^^^ storage.type
--                                                     ^ punctuation.section.parens.end

UPDATE foo
SET Value = Bar.Value
FROM foo
INNER JOIN bar (NOLOCK) ON bar.Title = foo.Title COLLATE DATABASE_DEFAULT AND ISNULL(bar.some_id, 0) = ISNULL(foo.some_id, 0)
-- ^^^^^^^ keyword.other.DML
--         ^^^ meta.table-name constant.other.placeholder
--              ^^^^^^ meta.group constant.language.with
--                      ^^ keyword.operator.join
--                         ^^^^^^^^^ meta.column-name constant.other.placeholder
--                                   ^ keyword.operator.comparison
--                                     ^^^^^^^^^ meta.column-name constant.other.placeholder
--                                               ^^^^^^^ keyword.other
--                                                       ^^^^^^^^^^^^^^^^ support.constant
--                                                                        ^^^ keyword.operator.logical
--                                                                            ^^^^^^ meta.function-call support.function
--                                                                                                   ^ keyword.operator.comparison
--                                                                                                     ^^^^^^ meta.function-call support.function
    AND foo.a = ''
--  ^^^ keyword.operator.logical
--      ^^^^^ meta.column-name constant.other.placeholder
--            ^ keyword.operator.comparison
--              ^^ string.quoted.single

SELECT DISTINCT *
INTO ##global_temp_table
-- ^ keyword.other.DML
--   ^^^^^^^^^^^^^^^^^^^ meta.table-name constant.other.placeholder
FROM some_long_table_name s
LEFT OUTER JOIN another_long_table_name (NOLOCK) a ON s.blah = a.blah AND ISNULL(p.ok, '') = ISNULL(a.ok, '') COLLATE DATABASE_DEFAULT
-- ^^^^^^^^^^^^ keyword.other.DML
--              ^^^^^^^^^^^^^^^^^^^^^^^ meta.table-name constant.other.placeholder
--                                       ^^^^^^ meta.group constant.language.with
--                                               ^ meta.table-name constant.other.placeholder
--                                                 ^^ keyword.operator.join
--                                                    ^^^^^^ meta.column-name constant.other.placeholder
--                                                           ^ keyword.operator.comparison
--                                                             ^^^^^^ meta.column-name constant.other.placeholder
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
--                   ^^^^^^^^^^^^^^^^^ meta.create meta.toc-list.full-identifier entity.name.function
 @Count SMALLINT
,@Other INT OUTPUT
-- <- punctuation.separator.sequence
--^^^^^ variable.other.readwrite
--      ^^^ storage.type
--          ^^^^^^ keyword.other
AS
-- <- keyword.context.block
BEGIN
-- <- keyword.control.flow.begin
   SELECT TOP (@Count) * FROM [dbo].[CountryInfoNew]
-- ^^^^^^ keyword.other.DML
--        ^^^ keyword.other.DML
--            ^ meta.group punctuation.section.group.begin
--             ^ meta.group variable.other.readwrite punctuation.definition.variable
--              ^^^^^ meta.group variable.other.readwrite
--                   ^ meta.group punctuation.section.group.end
--                     ^ variable.language.wildcard.asterisk
--                       ^^^^ keyword.other.DML
--                            ^^^^^^^^^^^^^^^^^^^^^^ meta.table-name constant.other.placeholder
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

select A.A
    , CASE WHEN B.B IS NOT NULL THEN B.B ELSE DATEADD(d, 1 - DATEPART(d, GETDATE()), DATEADD(m, B.MonthsInFuture, DATEADD(dd, DATEDIFF(dd, 0, getdate()), 0))) END AS FirstDayOfFutureMonth
--  ^ punctuation.separator.sequence
--    ^^^^ keyword.control.conditional.case
into #temp
-- ^ keyword.other.DML
--   ^^^^^ meta.table-name constant.other.placeholder
from @A A
-- ^ keyword.other.DML
--   ^^ meta.table-name constant.other.placeholder
--      ^ meta.table-name constant.other.placeholder
inner join B ON (SELECT TOP 1 C.ID FROM C WHERE C.B LIKE B.C + '%' ORDER BY LEN(B.C) DESC) = B.ID
--^^^^^^^^ keyword.other.DML
--         ^ meta.table-name constant.other.placeholder
--           ^^ keyword.operator.join
--              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
--              ^ punctuation.section.group.begin
--               ^^^^^^ keyword.other.DML
--                                                                                         ^ keyword.operator.comparison
--                                                                                           ^^^^ meta.column-name constant.other.placeholder

MERGE sales.category t
    USING sales.category_staging s
ON (s.category_id = t.category_id)
WHEN MATCHED
    THEN UPDATE SET
        t.category_name = s.category_name,
        t.amount = s.amount
WHEN NOT MATCHED BY TARGET
    THEN INSERT (category_id, category_name, amount)
         VALUES (s.category_id, s.category_name, s.amount)
WHEN NOT MATCHED BY SOURCE
    THEN DELETE;


WITH Sales_CTE (SalesPersonID, TotalSales, SalesYear)
AS
-- Define the first CTE query.
(
    SELECT SalesPersonID, SUM(TotalDue) AS TotalSales, YEAR(OrderDate) AS SalesYear
    FROM Sales.SalesOrderHeader
    WHERE SalesPersonID IS NOT NULL
       GROUP BY SalesPersonID, YEAR(OrderDate)

)
,   -- Use a comma to separate multiple CTE definitions.

-- Define the second CTE query, which returns sales quota data by year for each sales person.
Sales_Quota_CTE (BusinessEntityID, SalesQuota, SalesQuotaYear)
AS
(
       SELECT BusinessEntityID, SUM(SalesQuota)AS SalesQuota, YEAR(QuotaDate) AS SalesQuotaYear
       FROM Sales.SalesPersonQuotaHistory
       GROUP BY BusinessEntityID, YEAR(QuotaDate)
)

-- Define the outer query by referencing columns from both CTEs.
SELECT SalesPersonID
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
