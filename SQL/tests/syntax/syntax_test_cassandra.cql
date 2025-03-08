-- SYNTAX TEST "Packages/SQL/Cassandra.sublime-syntax"

CREATE KEYSPACE killrvideo WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 1};
--^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create
--^^^^ keyword.other.ddl
--     ^^^^^^^^ keyword.other
--              ^^^^^^^^^^ entity.name.struct.other
--                         ^^^^ keyword.other
--                                          ^ keyword.operator
--                                            ^ punctuation.section.braces.begin
--                                             ^^^^^^^ string.quoted.single
--                                                    ^ punctuation.separator.key-value
--                                                     ^^^^^^^^^^^^^^^^ string.quoted.single
--                                                                     ^ punctuation.separator.sequence
--                                                                       ^^^^^^^^^^^^^^^^^^^^ string.quoted.single
--                                                                                            ^ punctuation.separator.key-value
--                                                                                              ^ meta.number.integer.decimal constant.numeric.value
--                                                                                               ^ punctuation.section.braces.end
--                                                                                                ^ punctuation.terminator.statement

select someid, token(someid), something
--^^^^ keyword.other.dml
--     ^^^^^^ meta.column-name
--           ^ punctuation.separator.sequence
--             ^^^^^ meta.function-call support.function
--                  ^ meta.function-call meta.group punctuation.section.arguments.begin
--                   ^^^^^^ meta.function-call meta.group meta.column-name
--                         ^ meta.function-call meta.group punctuation.section.arguments.end
--                          ^ punctuation.separator.sequence
--                            ^^^^^^^^^ meta.column-name
from something_by_someid
--^^ keyword.other.dml
--   ^^^^^^^^^^^^^^^^^^^ meta.table-name
where token(someid) >= token(d821d7d8-8265-402e-9a72-c61ab8473ab6)
--^^^ keyword.other.dml
--    ^^^^^^^^^^^^^ meta.function-call
--    ^^^^^ support.function
--         ^^^^^^^^ meta.group
--         ^ punctuation.section.arguments.begin
--          ^^^^^^ meta.column-name
--                ^ punctuation.section.arguments.end
--                  ^^ keyword.operator.comparison
--                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call
--                     ^^^^^ support.function
--                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
--                          ^ punctuation.section.arguments.begin
--                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.uuid
--                                                               ^ punctuation.section.arguments.end
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
-- ^^ keyword.other.dml
--    ^^^^^^^^^ meta.column-name
--              ^ keyword.operator.comparison
--                ^^^^^ string.quoted.single
limit 2000
allow filtering;
-- ^^^^^^^^^^^^ keyword.other.dml
--             ^ punctuation.terminator.statement

insert into something_by_countrycode (someid, countrycode) values (:someid, :countrycode);
-- ^^^^^^^^ keyword.other.dml
--          ^^^^^^^^^^^^^^^^^^^^^^^^ meta.table-name
--                                   ^^^^^^^^^^^^^^^^^^^^^ meta.group
--                                   ^ punctuation.section.group.begin
--                                    ^^^^^^ meta.column-name
--                                          ^ punctuation.separator.sequence
--                                            ^^^^^^^^^^^ meta.column-name
--                                                       ^ punctuation.section.group.end
--                                                         ^^^^^^ keyword.other.dml.II
--                                                                ^^^^^^^^^^^^^^^^^^^^^^^ meta.group
--                                                                ^ punctuation.section.group.begin
--                                                                 ^^^^^^^ variable.other.constant
--                                                                        ^ punctuation.separator.sequence
--                                                                          ^ punctuation.definition.variable
--                                                                           ^^^^^^^^^^^ variable.other.constant
--                                                                                       ^ punctuation.terminator.statement

CREATE TABLE IF NOT EXISTS userpermissions_by_userid (
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create
-- ^^^ keyword.other.ddl
--     ^^^^^ keyword.other.ddl
--           ^^ keyword.control.conditional.if
--              ^^^ keyword.operator.logical
--                  ^^^^^^ keyword.operator.logical
--                         ^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.struct
--                                                   ^ meta.group.table-columns punctuation.section.group.begin
    userid uuid,
--  ^^^^^^^^^^^^^ meta.statement.create meta.group.table-columns
--  ^^^^^^ meta.column-name
--         ^^^^ storage.type
--             ^ punctuation.separator.sequence
    permissions frozen<set<text>>,
--  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create meta.group.table-columns
--  ^^^^^^^^^^^ meta.column-name
--              ^^^^^^ - meta.generic
--                    ^^^^ meta.generic.cql - meta.generic meta.generic
--                        ^^^^^^ meta.generic.cql meta.generic.cql - meta.generic meta.generic meta.generic
--                              ^ meta.generic.cql - meta.generic meta.generic
--                               ^ - meta.generic
--              ^^^^^^ storage.type
--                    ^ punctuation.definition.generic.begin
--                     ^^^ storage.type
--                        ^ punctuation.definition.generic.begin
--                         ^^^^ storage.type
--                             ^^ punctuation.definition.generic.end
--                               ^ punctuation.separator.sequence
   storage tuple<map<text, set<my_type>>>,
--         ^^^^^ - meta.generic
--              ^^^^ meta.generic.cql - meta.generic meta.generic
--                  ^^^^^^^^^^ meta.generic.cql meta.generic.cql - meta.generic meta.generic meta.generic
--                            ^^^^^^^^^ meta.generic.cql meta.generic.cql meta.generic.cql
--                                     ^ meta.generic.cql meta.generic.cql - meta.generic meta.generic meta.generic
--                                      ^ meta.generic.cql - meta.generic meta.generic
--                                       ^ - meta.generic
--         ^^^^^ storage.type.cql
--              ^ punctuation.definition.generic.begin.cql
--               ^^^ storage.type.cql
--                  ^ punctuation.definition.generic.begin.cql
--                   ^^^^ storage.type.sql
--                       ^ punctuation.separator.sequence.cql
--                         ^^^ storage.type.cql
--                            ^ punctuation.definition.generic.begin.cql
--                             ^^^^^^^ support.type.sql
--                                    ^^^ punctuation.definition.generic.end.cql
--                                       ^ punctuation.separator.sequence.sql
    PRIMARY KEY(userid)
--  ^^^^^^^^^^^^^^^^^^^^ meta.statement.create meta.group.table-columns
--  ^^^^^^^^^^^ storage.modifier
--             ^ meta.group punctuation.section.group.begin
--              ^^^^^^ meta.group.partition-key meta.column-name
--                    ^ meta.group.partition-key punctuation.section.group.end
);
-- <- meta.statement.create meta.group.table-columns punctuation.section.group.end

CREATE TABLE IF NOT EXISTS test_by_userid_otherid (
    userid uuid,
    other_id uuid,
    test text,
    PRIMARY KEY(userid, other_id)
--  ^^^^^^^^^^^ meta.statement.create meta.group.table-columns storage.modifier
--             ^ punctuation.section.group.begin
--              ^^^^^^ meta.group.partition-key meta.column-name
--                    ^^^^^^^^^^^ - meta.group.partition-key
--                    ^ meta.group punctuation.separator.sequence
--                      ^^^^^^^^ meta.group.table-columns meta.group meta.column-name
--                              ^ punctuation.section.group.end
);
-- <- meta.statement.create meta.group.table-columns punctuation.section.group.end
CREATE TABLE IF NOT EXISTS test_by_userid_otherid (
    userid uuid,
    other_id uuid,
    test text,
    PRIMARY KEY ((userid), other_id)
--  ^^^^^^^^^^^ meta.statement.create meta.group.table-columns storage.modifier
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
-- <- meta.statement.create meta.group.table-columns punctuation.section.group.end
CREATE TABLE IF NOT EXISTS test_by_userid_otherid (
    userid uuid,
    other_id timeuuid,
--  ^^^^^^^^ meta.column-name
--           ^^^^^^^^ storage.type
--                   ^ punctuation.separator.sequence
    test int,
    PRIMARY KEY ((userid, other_id), test)
--  ^^^^^^^^^^^ meta.statement.create meta.group.table-columns storage.modifier
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
-- <- meta.statement.create meta.group.table-columns punctuation.section.group.end

CREATE TABLE IF NOT EXISTS date_by_userid (
    userid uuid PRIMARY KEY,
--  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create meta.group.table-columns
--  ^^^^^^ meta.column-name
--         ^^^^ storage.type
--              ^^^^^^^^^^^ storage.modifier
--                         ^ punctuation.separator.sequence
    `date` timestamp
--  ^^^^^^ meta.column-name
--         ^^^^^^^^^ storage.type
);


DROP TABLE IF EXISTS userpermissions_by_userid;
-- <- meta.statement.drop.sql keyword.other.ddl
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.drop.sql
-- ^ keyword.other.ddl
--   ^^^^^ keyword.other.ddl
--         ^^ keyword.control.conditional.if
--            ^^^^^^ keyword.operator.logical
--                   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.table-name
--                                            ^ punctuation.terminator.statement

CREATE MATERIALIZED VIEW IF NOT EXISTS foo_by_bar AS
-- <- meta.statement.create.sql keyword.other.ddl
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql
--^^^^ keyword.other.ddl
--     ^^^^^^^^^^^^ keyword.other.ddl
--                  ^^^^ keyword.other.ddl
--                       ^^ keyword.control.conditional.if
--                          ^^^ keyword.operator.logical
--                              ^^^^^^ keyword.operator.logical
--                                     ^^^^^^^^^^ entity.name.struct.other
--                                                ^^ keyword.context.block
    SELECT *
--  ^^^^^^ keyword.other.dml
--         ^ constant.other.wildcard.asterisk
    FROM foo
    WHERE bar IS NOT NULL
    PRIMARY KEY (foo_id, bar_id)
--  ^^^^^^^^^^^ storage.modifier
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
--^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.create
--^^^^ keyword.other.ddl
--     ^^^^ keyword.other
--          ^^^^^^^^^^^^^^^^^ entity.name.type
--                            ^ meta.group punctuation.section.group.begin
    type1 timestamp,
--  ^^^^^ meta.column-name variable.other.member.declaration
--        ^^^^^^^^^ storage.type
--                 ^ punctuation.separator.sequence
    type2 text,
    type3 counter,
--  ^^^^^ meta.column-name
--        ^^^^^^^ storage.type
    type4 boolean,
--  ^^^^^ meta.column-name
--        ^^^^^^^ storage.type
    type5 blob,
--  ^^^^^ meta.column-name
--        ^^^^ storage.type
    type6 inet);
--  ^^^^^ meta.column-name
--        ^^^^ storage.type

INSERT INTO something_by_someid (someid, somebool, somemap)
VALUES (
    583395ca-0845-4517-b0f7-97bb0ea86b53,
    false,
    {77a969b4-378a-4fb0-b531-83404ee3c395:{id:22f7244c-c6d7-4bd7-aeac-a886c4242cd8,sometext:'text here',empty:{}}}
    -- <- meta.braces.cql punctuation.section.braces.begin.cql
    --^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.braces.cql - meta.braces meta.braces
    --                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.braces.cql meta.braces.cql
    --                                                                                                           ^ meta.braces.cql - meta.braces meta.braces
    -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.uuid
    --                                   ^ punctuation.separator.key-value
    --                                    ^ punctuation.section.braces.begin
    --                                     ^^ meta.mapping.key string.unquoted
    --                                       ^ punctuation.separator.key-value
    --                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.uuid
    --                                                                            ^ punctuation.separator.sequence
    --                                                                             ^^^^^^^^ meta.mapping.key string.unquoted
    --                                                                                     ^ punctuation.separator.key-value
    --                                                                                      ^^^^^^^^^^^ string.quoted.single
    --                                                                                                 ^ punctuation.separator.sequence
    --                                                                                                  ^^^^^ meta.mapping.key string.unquoted
    --                                                                                                       ^ punctuation.separator.key-value
    --                                                                                                        ^ punctuation.section.braces.begin
    --                                                                                                         ^^^ punctuation.section.braces.end
);

INSERT INTO something_by_someid (someid, someset)
VALUES (22f7244c-c6d7-4bd7-aeac-a886c4242cd8,{'item1','item2','item3'});
--                                           ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.braces.cql
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
--^^^^^^^^^^^^^^^^ meta.statement.create
-- ^^^ keyword.other
--     ^^^^^^^^^^ keyword.other
--                ^^^^^^^^ keyword.other.dml
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
-- <- meta.statement.alter.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter.sql
-- ^^ keyword.other.ddl.sql
--    ^^^^^ keyword.other.ddl.sql
--          ^^^^^^^^^^^^^^^^^^^^^^^ meta.table-name
--                                  ^^^ keyword.other.ddl
--                                      ^^^^^^^^^^^ meta.column-name
--                                                  ^^^^ storage.type
--                                                      ^ punctuation.terminator.statement

ALTER TABLE someentity_by_somefield
    add usefulfield text;
--  ^^^^^^^^^^^^^^^^^^^^ meta.statement.alter
--  ^^^ keyword.other.ddl
--      ^^^^^^^^^^^ meta.column-name
--                  ^^^^ storage.type
--                      ^ punctuation.terminator.statement

ALTER TABLE someentity_by_somefield
    DROP unnecessaryfield;
--  ^^^^^^^^^^^^^^^^^^^^^ meta.statement.alter
--  ^^^^ keyword.other.ddl
--       ^^^^^^^^^^^^^^^^ meta.column-name
--                       ^ punctuation.terminator.statement


select *
from test_by_example
join fred -- there are no joins in CQL
-- <- - keyword
--^^ - keyword

USE killrvideo;
-- <- keyword.context
--^ keyword.context
--  ^^^^^^^^^^ meta.database-name
--            ^ punctuation.terminator.statement

select uuid(), now(), *
--     ^^^^ meta.function-call support.function.scalar
--           ^ punctuation.separator.sequence
--             ^^^ meta.function-call support.function
--                  ^ punctuation.separator.sequence
--                    ^ constant.other.wildcard.asterisk
from test_by_example;

COPY table1 (column1, column2, column3) FROM 'table1data.csv'
-- ^ keyword.other.dml
--   ^^^^^^ meta.table-name
--          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
--          ^ punctuation.section.group.begin
--           ^^^^^^^ meta.column-name
--                  ^ punctuation.separator.sequence
--                    ^^^^^^^ meta.column-name
--                           ^ punctuation.separator.sequence
--                             ^^^^^^^ meta.column-name
--                                    ^ punctuation.section.group.end
--                                      ^^^^ keyword.other
--                                           ^^^^^^^^^^^^^^^^ string.quoted.single
--                                           ^ punctuation.definition.string.begin
--                                                          ^ punctuation.definition.string.end
WITH HEADER=true;
-- ^ keyword.other
--   ^^^^^^ string.unquoted
--         ^ keyword.operator
--          ^^^^ constant.language.boolean.true
--              ^ punctuation.terminator.statement

TRUNCATE table1;
-- ^^^^^ keyword.other.dml
--       ^^^^^^ meta.table-name
--             ^ punctuation.terminator.statement

SOURCE './myscript.cql';
-- ^^^ keyword.other
--     ^^^^^^^^^^^^^^^^ string.quoted.single
--                     ^ punctuation.terminator.statement

-- https://docs.datastax.com/en/cql-oss/3.x/cql/cql_reference/cqlCreateIndex.html
CREATE TABLE myschema.users (
   userID uuid,
   fname text,
   lname text,
   email text,
   address text,
   zip int,
   state text,
   PRIMARY KEY (userID)
 );

CREATE INDEX user_state
-- <- meta.statement.create.sql keyword.other.ddl
-- ^^^^^^^^^^^^^^^^^^^^^ meta.statement.create.sql
-- ^^^ keyword.other.ddl
--     ^^^^^ keyword.other
--           ^^^^^^^^^^ entity.name.struct.index.sql
   ON myschema.users (state);
-- ^^ keyword.other
--    ^^^^^^^^^^^^^^ meta.table-name
--                   ^ punctuation.section.group.begin
--                    ^^^^^ meta.column-name
--                         ^ punctuation.section.group.end
--                          ^ punctuation.terminator.statement

CREATE INDEX ON myschema.users (zip);
-- ^^^ keyword.other.ddl
--     ^^^^^ keyword.other
--           ^^ keyword.other
--              ^^^^^^^^^^^^^^ meta.table-name
--                             ^ punctuation.section.group.begin
--                              ^^^ meta.column-name
--                                 ^ punctuation.section.group.end

CREATE INDEX todo_dates ON users (KEYS(todo));
--                         ^^^^^ meta.statement.create meta.table-name
--                               ^ punctuation.section.group.begin
--                                ^^^^ meta.function-call support.function.scalar
--                                    ^ punctuation.section.arguments.begin
--                                     ^^^^ meta.column-name
--                                         ^ punctuation.section.arguments.end
--                                          ^ punctuation.section.group.end

CREATE INDEX entries_idx ON race (ENTRIES(race_wins));
--                          ^^^^ meta.statement.create meta.table-name
--                               ^ punctuation.section.group.begin
--                                ^^^^^^^ meta.function-call support.function.scalar
--                                       ^ punctuation.section.arguments.begin
--                                        ^^^^^^^^^ meta.column-name
--                                                 ^ punctuation.section.arguments.end
--                                                  ^ punctuation.section.group.end

CREATE INDEX rnumbers_idx ON cycling.race_starts (FULL(rnumbers));
--                           ^^^^^^^^^^^^^^^^^^^ meta.statement.create meta.table-name
--                                               ^ punctuation.section.group.begin
--                                                ^^^^ meta.function-call support.function.scalar
--                                                    ^ punctuation.section.arguments.begin
--                                                     ^^^^^^^^ meta.column-name
--                                                             ^ punctuation.section.arguments.end
--                                                              ^ punctuation.section.group.end

SELECT album, tags
FROM playlists
WHERE tags CONTAINS 'blues';
--         ^^^^^^^^ keyword.operator.logical

SELECT *
FROM playlists
WHERE venue CONTAINS KEY '2014-09-22 22:00:00-0700';
--          ^^^^^^^^^^^^ keyword.operator.logical

SELECT *
FROM cycling.birthday_list
WHERE blist['age'] = '23';
--    ^^^^^ meta.column-name
--         ^^^^^^^ meta.brackets.cql
--         ^ punctuation.section.brackets.begin
--          ^^^^^ string.quoted.single
--               ^ punctuation.section.brackets.end
--                 ^ keyword.operator.comparison
--                   ^^^^ string.quoted.single
--                       ^ punctuation.terminator.statement

SELECT *
FROM cycling.race_starts
WHERE rnumbers = [39,7,14];
--    ^^^^^^^^ meta.column-name
--             ^ keyword.operator.comparison
--               ^^^^^^^^^ meta.brackets.cql
--               ^ punctuation.section.brackets.begin
--                ^^ meta.number.integer.decimal constant.numeric.value
--                  ^ punctuation.separator.sequence
--                   ^ meta.number.integer.decimal constant.numeric.value
--                    ^ punctuation.separator.sequence
--                     ^^ meta.number.integer.decimal constant.numeric.value
--                       ^ punctuation.section.brackets.end
--                        ^ punctuation.terminator.statement

SELECT *
FROM ruling_stewards
WHERE (steward_name, king) = ('Boromir', 'Brego');
--    ^ meta.group punctuation.section.group.begin
--     ^^^^^^^^^^^^ meta.group meta.column-name
--                 ^ meta.group punctuation.separator.sequence
--                   ^^^^ meta.group meta.column-name
--                       ^ meta.group punctuation.section.group.end
--                         ^ keyword.operator.comparison
--                           ^ meta.group punctuation.section.group.begin
--                            ^^^^^^^^^ meta.group string.quoted.single
--                                     ^ meta.group punctuation.separator.sequence
--                                       ^^^^^^^ meta.group string.quoted.single
--                                              ^ meta.group punctuation.section.group.end
--                                               ^ punctuation.terminator.statement

SELECT WRITETIME (first_name)
--^^^^ keyword.other.dml
--     ^^^^^^^^^ meta.function-call support.function
FROM users
WHERE last_name = 'Jones';

INSERT INTO cycling.calendar (race_id, race_name, race_start_date, race_end_date)
VALUES (200, 'placeholder', '2015-05-27', '2015-05-27')
USING TTL;
-- ^^^^^^ keyword.other
--       ^ punctuation.terminator.statement

UPDATE cycling.calendar
USING TTL 300
-- ^^^^^^ keyword.other
--        ^^^ meta.number.integer.decimal constant.numeric.value
SET race_name = 'dummy'
-- <- keyword.other.dml
WHERE race_id = 200
  AND race_start_date = '2015-05-27'
  AND race_end_date = '2015-05-27';

SELECT TTL(race_name)
--     ^^^ meta.function-call support.function
FROM cycling.calendar
WHERE race_id=200;

-- https://docs.datastax.com/en/cql-oss/3.x/cql/cql_using/useQueryJSON.html
select json name, checkin_id, timestamp from checkin;
-- ^^^ keyword.other.dml
--     ^^^^ storage.modifier

select name, checkin_id, toJson(timestamp) from checkin;
--                       ^^^^^^ meta.function-call support.function

update blah.table
--^^^^ keyword.other.dml
--     ^^^^^^^^^^ meta.table-name
set x = 4
--^ keyword.other.dml
--  ^ meta.column-name
--    ^ keyword.operator
--      ^ meta.number.integer.decimal constant.numeric.value

DROP USER iffy ;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^ meta.statement.drop.sql
--        ^^^^ meta.username.sql

DROP USER IF EXISTS iffy ;
-- <- meta.statement.drop.sql keyword.other.ddl.sql
-- ^^^^^^^^^^^^^^^^^^^^^ meta.statement.drop.sql
--                  ^^^^ meta.username.sql
