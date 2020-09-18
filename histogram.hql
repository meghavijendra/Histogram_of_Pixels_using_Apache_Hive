drop table colors;

create table colors(
red bigint,
green bigint,
blue bigint)
row format delimited fields terminated by ',' stored as textfile;

load data inpath '${hiveconf:P}' overwrite into table colors;

select * from (
select 3 c, blue i, count(*) n
from colors
group by blue

UNION ALL

select 1 c, red i, count(*) n
from colors
group by red

UNION ALL

select 2 c, green i, count(*) n
from colors
group by green )res
order by c,i;
