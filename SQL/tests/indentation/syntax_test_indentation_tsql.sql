-- SYNTAX TEST reindent "Packages/SQL/TSQL.sublime-syntax"
SELECT *
FROM (
    SELECT *
    FROM a
    INNER JOIN b ON a.ID = b.ID
) alias
WHERE 1 = 1
GO

BEGIN
    INSERT INTO a
    VALUES (123, 456)
END

BEGIN
    INSERT INTO a
    VALUES (123, 456)
GO
    INSERT INTO b
    VALUES (123, 456)
END

SELECT
a,
b,
c
FROM foo

SELECT a
,b
,c
FROM foo

CREATE TABLE hello (
    field1 int,
    field2 nvarchar(50)
)

CREATE UNIQUE NONCLUSTERED INDEX IX_some_index ON dbo.some_table(
    some_column ASC
)

SET @fileDate = CONVERT(VARCHAR(20),GETDATE(),112)

BEGIN  RAISERROR ('File "%s" does not exist', 16, -1, @FromFile)
END

SELECT COALESCE(a.field1, b.field2, c.field1) AS Blah, ISNULL(d.field1, 'default') as field1

'no indentation increase when an unclosed open paren is in a string('
BEGIN
    'no indentation decrease when a close paren with no matching open paren on the same line is in a string)'
    null
    -- no indentation increase when an unclosed open paren is in a comment (
    --no indentation decrease when a close paren with no matching open paren on the same line is in a comment )
    null
END
