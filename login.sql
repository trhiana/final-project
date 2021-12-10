drop database if exists login;
create database login;
use login;

/* structure of 'users' table*/
create table users(
    userid int not null,
    username varchar(15) not null,
    email varchar(20) not null,
    password varchar(50) not null
);

/* data for the 'users' table */
insert into users(userid, username, email, password)  values (001, 'test', 'test@test.com', '$2y$10$SfhYIDtn.iOuCW7zfoFLuuZHX6lja4lF4XA4JqNmpiH/.P3zB8JCa');
-- insert into users(userid, username, email, password)  values (002, '', '', '');
-- insert into users(userid, username, email, password)  values (003, '', '', '');
