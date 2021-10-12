-- SYNTAX TEST "Packages/SQL/Cassandra.sublime-syntax"

CREATE KEYSPACE killrvideo WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 1};
--^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create
--^^^^ keyword.other.ddl
--     ^^^^^^^^ keyword.other
--              ^^^^^^^^^^ meta.toc-list.full-identifier entity.name.function
--                         ^^^^ keyword.other
--                                          ^ keyword.operator
--                                            ^ punctuation.section.braces.begin
--                                             ^^^^^^^ string.quoted.single
--                                                    ^ punctuation.separator.mapping.key-value
--                                                     ^^^^^^^^^^^^^^^^ string.quoted.single
--                                                                     ^ punctuation.separator.sequence
--                                                                       ^^^^^^^^^^^^^^^^^^^^ string.quoted.single
--                                                                                            ^ punctuation.separator.mapping.key-value
--                                                                                              ^ meta.number.integer.decimal constant.numeric.value
--                                                                                               ^ punctuation.section.braces.end
--                                                                                                ^ punctuation.terminator.statement

select someid, token(someid), something
--^^^^ keyword.other.DML
--     ^^^^^^ meta.column-name
--           ^ punctuation.separator.sequence
--             ^^^^^ meta.function-call support.function
--                  ^ meta.function-call meta.group punctuation.section.parens.begin
--                   ^^^^^^ meta.function-call meta.group meta.column-name
--                         ^ meta.function-call meta.group punctuation.section.parens.end
--                          ^ punctuation.separator.sequence
--                            ^^^^^^^^^ meta.column-name
from something_by_someid
--^^ keyword.other.DML
--   ^^^^^^^^^^^^^^^^^^^ meta.table-name
where token(someid) >= token(d821d7d8-8265-402e-9a72-c61ab8473ab6)
--^^^ keyword.other.DML
--    ^^^^^^^^^^^^^ meta.function-call
--    ^^^^^ support.function
--         ^^^^^^^^ meta.group
--         ^ punctuation.section.parens.begin
--          ^^^^^^ meta.column-name
--                ^ punctuation.section.parens.end
--                  ^^ keyword.operator.comparison
--                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
--                     ^^^^^ support.function
--                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
--                          ^ punctuation.section.parens.begin
--                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.uuid
--                                                               ^ punctuation.section.parens.end
--                                                                ^ - meta
and token(someid) <= token(cf0acefc-ccff-42a0-8753-65d82e9c9b0f)
limit 2000;
-- <- keyword.other.dml
--^^^ keyword.other.dml
--    ^^^^ meta.number.integer.decimal constant.numeric.value
--        ^ punctuation.terminator.statement

select count(someid)
from something_by_someid
where something = 'abc'
-- ^^ keyword.other.DML
--    ^^^^^^^^^ meta.column-name
--              ^ keyword.operator.comparison
--                ^^^^^ string.quoted.single
limit 2000
allow filtering;
-- ^^^^^^^^^^^^ keyword.other.dml
--             ^ punctuation.terminator.statement

insert into something_by_countrycode (someid, countrycode) values (:someid, :countrycode);
-- ^^^^^^^^ keyword.other.DML
--          ^^^^^^^^^^^^^^^^^^^^^^^^ meta.table-name
--                                   ^^^^^^^^^^^^^^^^^^^^^ meta.group
--                                   ^ punctuation.section.group.begin
--                                    ^^^^^^ meta.column-name
--                                          ^ punctuation.separator.sequence
--                                            ^^^^^^^^^^^ meta.column-name
--                                                       ^ punctuation.section.group.end
--                                                         ^^^^^^ keyword.other.DML.II
--                                                                ^^^^^^^^^^^^^^^^^^^^^^^ meta.group
--                                                                ^ punctuation.section.group.begin
--                                                                 ^^^^^^^ variable.other.constant
--                                                                        ^ punctuation.separator.sequence
--                                                                          ^ punctuation.definition.variable
--                                                                           ^^^^^^^^^^^ variable.other.constant
--                                                                                       ^ punctuation.terminator.statement

CREATE TABLE IF NOT EXISTS userpermissions_by_userid (
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create
-- ^^^^^^^^^ keyword.other.ddl
--           ^^ keyword.control.flow
--              ^^^ keyword.operator.logical
--                  ^^^^^^ keyword.operator.logical
--                         ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.toc-list.full-identifier entity.name.function
--                                                   ^ meta.group.table-columns punctuation.section.group.begin
    userid uuid,
--  ^^^^^^^^^^^^^ meta.create meta.group.table-columns
--  ^^^^^^ meta.column-name
--         ^^^^ storage.type
--             ^ punctuation.separator.sequence
    permissions frozen<set<text>>,
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create meta.group.table-columns
--  ^^^^^^^^^^^ meta.column-name
--              ^^^^^^^^^^^^^^^^^ storage.type
--                    ^ punctuation.definition.generic.begin
--                        ^ punctuation.definition.generic.begin
--                             ^^ punctuation.definition.generic.end
--                               ^ punctuation.separator.sequence
    PRIMARY KEY(userid)
--  ^^^^^^^^^^^^^^^^^^^^ meta.create meta.group.table-columns
--  ^^^^^^^^^^^ keyword.other
--             ^ meta.group punctuation.section.group.begin
--              ^^^^^^ meta.group.partition-key meta.column-name
--                    ^ meta.group.partition-key punctuation.section.group.end
);
-- <- meta.create meta.group.table-columns punctuation.section.group.end

CREATE TABLE IF NOT EXISTS test_by_userid_otherid (
    userid uuid,
    other_id uuid,
    test text,
    PRIMARY KEY(userid, other_id)
--  ^^^^^^^^^^^ meta.create meta.group.table-columns keyword.other
--             ^ punctuation.section.group.begin
--              ^^^^^^ meta.group.partition-key meta.column-name
--                    ^^^^^^^^^^^ - meta.group.partition-key
--                    ^ meta.group punctuation.separator.sequence
--                      ^^^^^^^^ meta.group.table-columns meta.group meta.column-name
--                              ^ punctuation.section.group.end
);
-- <- meta.create meta.group.table-columns punctuation.section.group.end
CREATE TABLE IF NOT EXISTS test_by_userid_otherid (
    userid uuid,
    other_id uuid,
    test text,
    PRIMARY KEY ((userid), other_id)
--  ^^^^^^^^^^^ meta.create meta.group.table-columns keyword.other
--              ^ punctuation.section.group.begin
--               ^^^^^^^^ meta.group.partition-key
--               ^ punctuation.section.group.begin
--                ^^^^^^ meta.column-name
--                      ^ punctuation.section.group.end
--                       ^^^^^^^^^^^ - meta.group.partition-key
--                       ^ punctuation.separator.sequence
--                         ^^^^^^^^ meta.group.table-columns meta.group meta.column-name
--                                 ^ punctuation.section.group.end
);
-- <- meta.create meta.group.table-columns punctuation.section.group.end
CREATE TABLE IF NOT EXISTS test_by_userid_otherid (
    userid uuid,
    other_id uuid,
    test int,
    PRIMARY KEY ((userid, other_id), test)
--  ^^^^^^^^^^^ meta.create meta.group.table-columns keyword.other
--              ^ punctuation.section.group.begin
--               ^^^^^^^^^^^^^^^^^^ meta.group.partition-key
--               ^ punctuation.section.group.begin
--                ^^^^^^ meta.column-name
--                      ^ punctuation.separator.sequence
--                        ^^^^^^^^ meta.column-name
--                                ^ punctuation.section.group.end
--                                 ^^^^^^^^ - meta.group.partition-key
--                                 ^ punctuation.separator.sequence
--                                   ^^^^ meta.group.table-columns meta.group meta.column-name
--                                       ^ punctuation.section.group.end
);
-- <- meta.create meta.group.table-columns punctuation.section.group.end

CREATE TABLE IF NOT EXISTS date_by_userid (
    userid uuid PRIMARY KEY,
--  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create meta.group.table-columns
--  ^^^^^^ meta.column-name
--         ^^^^ storage.type
--              ^^^^^^^^^^^ storage.modifier
--                         ^ punctuation.separator.sequence
    date timestamp -- TODO: scope date as a column name
--       ^^^^^^^^^ storage.type
);


DROP TABLE IF EXISTS userpermissions_by_userid;
--^^^^^^^^^^^^^^^^^^^ meta.drop
--^^^^^^^^ keyword.other.ddl
--         ^^ keyword.control.flow
--            ^^^^^^ keyword.operator.logical
--                   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.table-name
--                                            ^ punctuation.terminator.statement

CREATE MATERIALIZED VIEW IF NOT EXISTS foo_by_bar AS
--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create
--^^^^ keyword.other.ddl
--     ^^^^^^^^^^^^ keyword.other
--                  ^^^^ keyword.other
--                       ^^ keyword.control.flow
--                          ^^^ keyword.operator.logical
--                              ^^^^^^ keyword.operator.logical
--                                     ^^^^^^^^^^ meta.toc-list.full-identifier entity.name.function
--                                                ^^ keyword.operator.assignment.alias
    SELECT *
--  ^^^^^^ keyword.other.DML
--         ^ variable.language.wildcard.asterisk
    FROM foo
    WHERE bar IS NOT NULL
    PRIMARY KEY (foo_id, bar_id)
--  ^^^^^^^^^^^ keyword.other
--              ^^^^^^^^^^^^^^^^ meta.group
--              ^ punctuation.section.group.begin
--               ^^^^^^ meta.column-name
--                     ^ punctuation.separator.sequence
--                       ^^^^^^ meta.column-name
--                             ^ punctuation.section.group.end
    WITH comment = 'allow querying by relationship more easily';
--  ^^^^ keyword.other
--       ^^^^^^^ string.unquoted
--               ^ keyword.operator
--                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single
--                                                             ^ punctuation.terminator.statement

CREATE TYPE user_defined_type (
--^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.create
--^^^^ keyword.other.ddl
--     ^^^^ keyword.other
--          ^^^^^^^^^^^^^^^^^ meta.toc-list.full-identifier entity.name.function
--                            ^ meta.group punctuation.section.group.begin
    type1 timestamp,
    type2 text,
    type3 text,
    type4 text);


INSERT INTO something_by_someid (someid, somebool, somemap)
VALUES (
    583395ca-0845-4517-b0f7-97bb0ea86b53,
    false,
    {77a969b4-378a-4fb0-b531-83404ee3c395:{id:22f7244c-c6d7-4bd7-aeac-a886c4242cd8,sometext:'text here',empty:{}}}
    -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.uuid
    --                                   ^ punctuation.separator.mapping.key-value
    --                                    ^ punctuation.section.braces.begin
    --                                     ^^ meta.mapping.key string.unquoted
    --                                       ^ punctuation.separator.mapping.key-value
    --                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.uuid
    --                                                                            ^ punctuation.separator.sequence
    --                                                                             ^^^^^^^^ meta.mapping.key string.unquoted
    --                                                                                     ^ punctuation.separator.mapping.key-value
    --                                                                                      ^^^^^^^^^^^ string.quoted.single
    --                                                                                                 ^ punctuation.separator.sequence
    --                                                                                                  ^^^^^ meta.mapping.key string.unquoted
    --                                                                                                       ^ punctuation.separator.mapping.key-value
    --                                                                                                        ^ punctuation.section.braces.begin
    --                                                                                                         ^^^ punctuation.section.braces.end
);

INSERT INTO something_by_someid (someid, someset)
VALUES (22f7244c-c6d7-4bd7-aeac-a886c4242cd8,{'item1','item2','item3'});
--                                           ^ punctuation.section.braces.begin
--                                            ^^^^^^^ string.quoted.single
--                                                   ^ punctuation.separator.sequence
--                                                    ^^^^^^^ string.quoted.single
--                                                           ^ punctuation.separator.sequence
--                                                            ^^^^^^^ string.quoted.single
--                                                                   ^ punctuation.section.braces.end
--                                                                    ^ meta.group punctuation.section.group.end
--                                                                     ^ punctuation.terminator.statement

CREATE TABLE IF NOT EXISTS someentity_by_somefield (
    entityid uuid,
    datecreated timestamp,
    somefield int,
    anotherfield text
PRIMARY KEY (entityid, datecreated, somefield)
) WITH CLUSTERING ORDER BY (datecreated DESC, somefield ASC);
--^^^^^^^^^^^^^^^^ meta.create
-- ^^^ keyword.other
--     ^^^^^^^^^^ keyword.other
--                ^^^^^^^^ keyword.other.DML
--                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
--                         ^ punctuation.section.group.begin
--                          ^^^^^^^^^^^ meta.column-name
--                                      ^^^^ keyword.other.order
--                                          ^ punctuation.separator.sequence
--                                            ^^^^^^^^^ meta.column-name
--                                                      ^^^ keyword.other.order
--                                                         ^ punctuation.section.group.end
--                                                          ^ punctuation.terminator.statement

ALTER TABLE someentity_by_somefield add usefulfield text;
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.alter
-- ^^^^^^^^ keyword.other.ddl
--          ^^^^^^^^^^^^^^^^^^^^^^^ meta.table-name
--                                  ^^^ keyword.other.ddl
--                                      ^^^^^^^^^^^ meta.column-name
--                                                  ^^^^ storage.type
--                                                      ^ punctuation.terminator.statement

ALTER TABLE someentity_by_somefield
    add usefulfield text;
--  ^^^^^^^^^^^^^^^^^^^^ meta.alter
--  ^^^ keyword.other.ddl
--      ^^^^^^^^^^^ meta.column-name
--                  ^^^^ storage.type
--                      ^ punctuation.terminator.statement

select *
from test_by_example
join fred -- there are no joins in CQL
-- <- - keyword
--^^ - keyword
