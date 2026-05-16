-- insert data 

use book_store2;
insert into customer(name, email, address) values
	('Nguyen Van A', 'nva@gmail.com', 'Ha noi' ),
	('Nguyen Van B', 'nva@gmail.com', 'Quang Ninh' ),
	('Nguyen Van C', 'nva@gmail.com', 'Hai Phong' );

select count(*) as countCust from customer;
select count(*) from customer;
select name, email, address from customer;
select distinct name, email, address from customer;

select * from customer;
-- 
select * from customer where address = 'Ha noi' AND name = 'nguyen van A';
-- khach hang o ha noi co ho nguyen:
select * from customer where address = 'Ha noi' AND name LIKE 'nguyen%';
--
select * from customer where name LIKE 'nguyen%';
-- 10 bản ghi đầu tiên
select top 10 * from customer;
-- lấy ra danh sách có customer_id trong khoảng a-b
select * from customer where customer_id >= 1 AND customer_id <= 4;
select * from customer where customer_id between 1 AND 4;
-- ha noi hoac sai gon 
select * from customer where address = 'ha noi' OR address = 'quang ninh';
-- so luong khach hang tuong ung voi tng dia chi
select * from customer  order by customer_id desc;
select address, count(address)as countAddress from customer group by address;

select address, count(address)as countAddress from customer
group by address having count(address) > 1;

--cte
WITH temCust (name,email) as (select name, email from customer),
tmp (name) as (select name from customer where address = 'Ha noi')
select * from tmp ;
--in
select * from customer where address in ('ha noi','quang ninh');
-- sub query
select * from customer where address in
(select distinct address from customer where address in ('ha noi','quang ninh'));
-- nested
select * from customer where address in
(select distinct address from customer
where customer_id in (select customer_id from customer where customer_id in (1,2)));

 

 insert into publisher(name) values
	('Nguyen Van A');

