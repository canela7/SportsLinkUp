drop table if exists matches;
drop table if exists user;




create table users (
	id         	  integer auto_increment primary key,
    name          varchar(255) unique not null,
    password      varchar(255) unique not null
);

create table matches (
    id         		 integer auto_increment primary key,
    city             varchar(1000),
    title            varchar(1000),
    date_post        date,
    date_event 		 varchar(255),
    user_name        varchar(255),
    number_players	 integer,
    age_requierment	 integer,
    event_time       varchar(255),
    description		 varchar(2000),
    address          varchar(255)
    owner_id		 integer references users(id)
);

insert into matches (city,title,date_post,date_event,user_name,number_players,age_requierment,event_time,description,address) 
values ('Los Angeles', 'Anyone Want to play soccer for fun?', now(),'5/21/2018','David John', 8 , 18, '3:00pm-5:00pm', 'Hello I am new to the city and want to play soccer that are over 18! I am a male and anyone that is good at playing soccer and over 18 can come to play.', 'La Cienega Park');
