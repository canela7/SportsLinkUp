drop table if exists matches;
drop table if exists sports_users;

create table sports_users (
    id            integer auto_increment primary key,
    name          varchar(255) unique not null,
    password      varchar(255) unique not null
);

create table matches (
    id               integer auto_increment primary key,
    city             varchar(1000),
    title            varchar(1000),
    date_post        date,
    date_event       varchar(255),
    user_name        varchar(255),
    number_players   integer,
    age_requierment  varchar(255),
    event_time       varchar(255),
    description      varchar(2000), 
    address          varchar(255),
    zipcode          integer,
    owner_id         integer references users(id)
);

insert into matches (city, title, date_post, date_event, user_name,number_players,age_requierment,event_time,description,zipcode, address) 
values ('Los Angeles, CA','Anyone Want to play soccer for fun?', now(), '12/06/2018','David John', 8 , '18+', '3:00pm-5:00pm', 'Hello I am new to the city of Los Angeles and want to play soccer with people that are over 18! I am a male and if anyone that is good at playing soccer and over 18 can come play for fun.', 90211, 'La Cienega Park');

insert into matches (city, title, date_post, date_event, user_name,number_players,age_requierment,event_time,description,zipcode, address) 
values ('Los Angels, CA','For parents who want their kid to be apart of a soccer team', now(), '07/06/2018','Ryan Garcia', 15 , '12-15', '12:00pm-2:30pm', 'Hello, I am starting a new soccer team for kids ages 12-15. I want to pursue a goal in becoming a soccer coach. There is a new soccer league, and we are trying out kids that are ages between 12-15. This team is going to be a new team playing a new league! Any parents that want their kids to be apart of a soccer club can come and bring their kids to try out! There will be food after try-outs! ', 90027, ' 3343 Riverside Dr');

insert into matches (city, title, date_post, date_event, user_name,number_players,age_requierment,event_time,description,zipcode, address) 
values ('Boston, MA', 'We need 3 soccer players for our soccer team',  now(),  '05/12/2018', 'James ', 3,  '19-23',  '11:00am-2:00pm',  'My team is in need of of two defenders and a midfielder for our soccer team. Must be the ages from 19-22. Its urgent or else we will get disqualified from the league with less than a the minimum of requiered players. Please contact me (323) 210-XXXX. Its okay if you are no good, but just want to have fun. There is no pressure. The main point is that we need 3 players to be able to play. ', 02121, ' Ceylon Park 105 Ceylon St');

insert into sports_users (name, password) values ('admin@gmail.com', 'abcd');





