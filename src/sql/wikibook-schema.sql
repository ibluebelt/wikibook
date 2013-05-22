-- wiki
drop table if exists wiki;
create table wiki (
  id varchar(20) not null,
  name varchar(100) not null,
  description text null,
  type varchar(10) not null,
  layout enum('LEFT', 'RIGHT') not null,
  color_set enum('WHITE', 'LIGHT_GRAY', 'SKY_BLUE', 'DARK_GRAY', 'BLACK') not null,
  created_time datetime not null,
  modified_time datetime null,
  primary key (id),
  constraint unique (name)
);

-- wiki category
drop table if exists wiki_category;
create table wiki_category (
  id integer not null auto_increment,
  parent_id integer not null,
  name varchar(100) not null,
  primary key (id)
);


insert into wiki_category values(null, 0, 'category_1');
insert into wiki_category values(null, 0, 'category_2');
insert into wiki_category values(null, 1, 'category_1_1');
insert into wiki_category values(null, 1, 'category_1_2');
insert into wiki_category values(null, 2, 'category_2_1');
insert into wiki_category values(null, 3, 'category_3_1');


