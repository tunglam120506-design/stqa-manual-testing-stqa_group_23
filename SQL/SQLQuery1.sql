create database book_store;
use book_store;

create table demo (
	id int primary key IDENTITY(1,1),
	name varchar(255),
	title nvarchar(255)
);

create table demo1 (
	id int primary key IDENTITY(1,1),
	name varchar(200),
	demoId int not null,
	CONSTRAINT FK_Demo FOREIGN KEY (demoId)
	REFERENCES demo(id)
);


insert into demo (name,title) values ('fpt aptech Việt Nam',N' Việt Nam');
update demo set name = 'fpt aptech' where id =1;

select * from demo;