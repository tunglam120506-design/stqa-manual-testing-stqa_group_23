use bookstore;

create view viewPublisher as (select * from publisher);
select * from publisher;
select * from viewPublisher;

update viewPublisher set name = N'Nhà Xuất bản Hồng Đức' where publisher_id = 1;

create proc procPublisher as (select * from publisher);

execute procPublisher;

create proc updatePublisher
	@name nvarchar(255), @id int
as update publisher set name = @name where publisher_id = @id

exec updatePublisher N'Nhà Xuất bản Hồng Đức edit' , 1;

select * from publisher;