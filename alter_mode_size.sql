alter table file add column mode int DEFAULT NULL;
alter table file add column size bigint DEFAULT NULL;
alter table file add column id bigint  AUTO_INCREMENT;
alter table dirty add column id bigint AUTO_INCREMENT;
alter table dirty add column file_id bigint;
 

