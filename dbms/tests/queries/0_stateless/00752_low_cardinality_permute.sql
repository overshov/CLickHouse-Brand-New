drop table if exists test.lc_perm;
create table test.lc_perm (val UInt32, str LowCardinality(String)) engine = MergeTree order by val;
insert into test.lc_perm values (1, 'w'), (10, 'x'), (3, 'y'), (8, 'z'), (4, 'w'), (6, 'y'), (11, 'x'), (0, 'z'), (12, 'a'), (13, 'b'), (14, 'c'), (15, 'd'), (16, 'e'), (17, 'f'), (18, 'g'), (19, 'h');
select * from test.lc_perm;
select str from test.lc_perm where val < 12 order by str;
drop table if exists test.lc_perm;

