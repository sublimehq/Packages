-- SYNTAX TEST "Packages/SQL/SQL.sublime-syntax"

SELECT 'Foo '' Bar';
--           ^ constant.character.escape.sql

SELECT "My "" Crazy Column Name" FROM my_table;
--         ^ constant.character.escape.sql

;CREATE TABLE [dbo].[foo] (id INTEGER PRIMARY KEY);
 -- <- keyword.other.create
--^^^^^ keyword.other.create

SELECT
(
SELECT CASE field
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
SELECT 
    *
FROM DBO.TABLE_NAME D
INNER JOIN DBO.THIS_TABLE T
    ON D.COL = T.COL
LEFT OUTER HASH JOIN DBO.THAT_TABLE TT
    ON D.COL = TT.COL
INNER LOOP JOIN DBO.MY_TABLE MT
    ON TT.COL = MT.COL
RIGHT JOIN DBO.YOUR_TABLE YT
    ON MT.COL = YT.COL
CROSS JOIN DBO.HIS_TABLE HT
    ON TT.COL = HT.COL
INNER STRAIGHT_JOIN DBO.HER_TABLE HHT
    ON TT.COL = HHT.COL
