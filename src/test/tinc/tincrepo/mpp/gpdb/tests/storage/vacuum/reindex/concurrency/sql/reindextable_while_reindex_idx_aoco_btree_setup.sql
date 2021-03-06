-- start_ignore
SET gp_create_table_random_default_distribution=off;
-- end_ignore
DROP TABLE IF EXISTS reindex_crtab_aoco_btree;

CREATE TABLE reindex_crtab_aoco_btree (a INT) WITH (appendonly=true, orientation=column);
insert into reindex_crtab_aoco_btree select generate_series(1,1000);
insert into reindex_crtab_aoco_btree select generate_series(1,1000);
create index idx_reindex_crtab_aoco_btree on reindex_crtab_aoco_btree(a);
