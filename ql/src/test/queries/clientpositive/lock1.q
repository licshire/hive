drop table tstsrc;
create table tstsrc like src;
insert overwrite table tstsrc select key, value from src;

SHOW LOCKS;
SHOW LOCKS tstsrc;

LOCK TABLE tstsrc shared;
SHOW LOCKS;
SHOW LOCKS tstsrc;
UNLOCK TABLE tstsrc;
SHOW LOCKS;
SHOW LOCKS tstsrc;
lock TABLE tstsrc SHARED;
SHOW LOCKS;
SHOW LOCKS tstsrc;
LOCK TABLE tstsrc SHARED;
SHOW LOCKS;
SHOW LOCKS tstsrc;
UNLOCK TABLE tstsrc;
SHOW LOCKS;
SHOW LOCKS tstsrc;
drop table tstsrc;