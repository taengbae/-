create table member ( 
    id varchar(10) not null,
    password varchar(10) not null,
    name varchar(10) not null,
    email  varchar(30),
    phone varchar(20),
    address varchar(90),
    primary key(id) 
) default CHARSET=utf8;

desc member;
select * from member;