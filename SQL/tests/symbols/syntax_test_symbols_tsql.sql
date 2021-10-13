-- SYNTAX TEST "Packages/SQL/TSQL.sublime-syntax"

CREATE TABLE hello (
    --       @@@@@ definition
    field1 int,
    field2 nvarchar(50)
)

CREATE UNIQUE NONCLUSTERED INDEX IX_some_index ON dbo.some_table(
    --                           @@@@@@@@@@@@@ definition
    some_column ASC
)

SET @fileDate = CONVERT(VARCHAR(20),GETDATE(),112)
--              @@@@@@@ reference
--                                  @@@@@@@ reference

BEGIN  RAISERROR ('File "%s" does not exist', 16, -1, @FromFile)
    -- @@@@@@@@@ reference
END

SELECT COALESCE(a.field1, b.field2, c.field1) AS Blah, ISNULL(d.field1, 'default') as field1
--     @@@@@@@@ reference
--                                                     @@@@@@ reference
