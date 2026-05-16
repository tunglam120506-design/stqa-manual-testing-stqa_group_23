use bookstore



insert into customer (name, email, address) values 
('Nguyen Van A', 'nva@gmail.com','Ha Noi'),
('Nguyen Van B', 'nvb@gmail.com','Ha Noi'),
('Nguyen Van C', 'nvc@gmail.com','Hai Phong'),
('Nguyen Van A', 'nva@gmail.com','Quang Ninh'),
('Nguyen Van D', 'nvd@gmail.com','Sai Gon'),
('Nguyen Van F', 'nvf@gmail.com','Hai Phong')


--Nhập loại sách:
insert into category (name) values
('Autobiography and memoir (non-fiction)'),
('Biography (non-fiction)'),
('Essays (non-fiction)'),
('Non-fiction novel (non-fiction)'),
('Self-help (non-fiction)'),
('Adventure stories (fiction)'),
('Classics (fiction)'),
('Crime (fiction)'),
('Fairy tales, fables, and folk tales (fiction)'),
('Fantasy (fiction)'),
('Historical fiction (fiction)'),
('Horror (fiction)'),
('Humour and satire (fiction)'),
('Literary fiction (fiction)'),
('Mystery (fiction)'),
('Poetry (fiction)'),
('Plays (fiction)'),
('Romance (fiction)'),
('Science fiction (fiction)'),
('Short stories (fiction)'),
('Thrillers (fiction)'),
('War (fiction)'),
('Women’s fiction (fiction)'),
('Young adult (fiction)'),
(N'Sách Văn Học'),
(N'Sách Kinh Tế'),
(N'Sách Thiếu Nhi'),
(N'Sách Kỹ Năng Sống'),
(N'Nuôi Dạy Con'),
(N'Sách Giáo Khoa - Giáo Trình'),
(N'Sách Học Ngoại Ngữ '),
(N'Sách Tham Khảo'),
(N'Từ Điển'),
(N'Sách Kiến Thức Tổng Hợp'),
(N'Sách Khoa Học - Kỹ Thuật'),
(N'Sách Lịch sử'),
(N'Điện ảnh - Nhạc - Họa'),
(N'Truyện Tranh,Manga,Comic'),
(N'Sách Tôn Giáo - Tâm Linh'),
(N'Sách Văn Hóa - Địa Lý - Du Lịch'),
(N'Sách Chính Trị - Pháp Lý'),
(N'Sách Nông - Lâm - Ngư Nghiệp'),
(N'Sách Công Nghệ Thông Tin'),
(N'Sách Y Học'),
(N'Tạp Chí - Catalogue'),
(N'Sách Tâm lý - Giới tính'),
(N'Sách Thưởng Thức - Gia Đình'),
(N'Thể Dục - Thể Thao')


--Nhập dữ liệu người bán hàng:
insert into saler (name) values
(N'Vũ Đình Quý'),
(N'Mai Hồng Anh'),
(N'Trần Đức Thuận'),
(N'Lê Đức Anh'),
(N'Phan Tiến Anh'),
(N'Đặng Minh Đức')

--Nhập dũ liệu đất nước nhà xuất bản:
insert into publisher(name) values
(N'Nhà Xuất Bản Hồng Đức'),
(N'Nhà Xuất Bản Thế Giới'),
(N'Nhà xuất bản Trẻ'),
(N'Nhà xuất bản Kim Đồng'),
(N'Nhà xuất bản Tổng hợp thành phố Hồ Chí Minh'),
(N'Nhà xuất bản Hội Nhà văn'),
(N'Nhà xuất bản Chính trị quốc gia Sự thật'),
(N'Nhà xuất bản Phụ nữ Việt Nam'),
(N'Nhà xuất bản Lao Động '),
(N'Nhã Nam (tư nhân)'),
(N'Đinh Tị Books (tư nhân)'),
(N'Đông A (tư nhân)')

--Nhập dữ liệu sách:
insert into book(name,price,purchase_price,quantity,author,category_id,publisher_id) values
(N'TÚP LỀU BÁC TOM',50000,99000,10,'Harriet Beecher Stowe',25,2),
(N'How To Make Money In Stock',350000,700000,10,'William J. O’Neil, Matthew Galgani',26,12),
(N'Con Sẽ Thành Công',30000,65000,10,N'Lưu Dung',27,11),
(N'Nóng Giận Là Bản Năng , Tĩnh Lặng Là Bản Lĩnh',25000,52510,10,N'Tống Mặc',28,11),
(N'Từ Điển Tiếng Việt',225000,455400,10,N'GS.Hoàng Phê',33,10),
(N'Phương Pháp Đọc Sáng Tạo Của Người Do Thái',40000,79400,10,N'Soon-Doc Ryu',29,7),
(N'Huyễn Tưởng Về Trí Tuệ Nhân Tạo',65000,131000,10,'Gary Smith',35,8),
(N'Kiếp Nào Ta Cũng Tìm Thấy Nhau',34000,67200,10,'Brian L. Weiss',39,7),
(N'Doraemon Truyện Ngắn trọn bộ 45 tập',500000,990000,10,'Fujiko.F.Fujio',38,5),
(N'AI 2041 - 10 Viễn cảnh cho tương lai',145000,285000,10,'Kai-Fu Lee, Chen Qiufan',43,4);

-- order
insert into orders (order_date , customer_id,saler_id,order_total) values
('2020-2-12', 3, 1, 765000),
('2023-5-5', 2, 3, 210400),
('2023-9-1', 4, 2, 131000);


select * from orders;


insert into order_detail (order_id , book_id,amount,price) values
(1, 3, 1, 65000),
(1, 2, 1, 700000),
(2, 7, 1, 131000),
(2, 6, 1, 79400),
(3, 7, 1, 131000);

select * from order_detail;


---------------------

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
with temCust (name,email) as (select name, email from customer),
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


--join

select b.name, b.price, p.name as publisherName from book as b
	INNER join publisher as p on b.publisher_id = p.publisher_id;

select b.name, b.price, p.name as publisherName from book as b
	left join publisher as p on b.publisher_id = p.publisher_id;


select b.name, b.price, p.name as publisherName from book as b
	right join publisher as p on b.publisher_id = p.publisher_id;

--UNION

select publisher_id from book
UNION ALL
select publisher_id from publisher;


-- 1. In ra thong tin ten sach, gia mua, gia ban, ten nha xuat ban, ten the loai cua tung cuon sach
-- 2. In ra thong tin cuon sach co gia ban lon nhat, nho nhat
-- 3. In ra thong tin ten the loai va so dau sach cua the loai do
-- 4. In ra cac cuon sach chua ban duoc
-- 5. In ra cac cuon sach da ban duoc




-- 1.
select b.name, b.price, b.purchase_price, p.name as publisherName, c.name as category from book as b
	INNER join publisher as p on b.publisher_id = p.publisher_id
	INNER join category as c on b.category_id = c.category_id


-- 2.
select b.name, b.price, p.name as publisherName, c.name as category from book as b
	INNER join publisher as p on b.publisher_id = p.publisher_id
	INNER join category as c on b.category_id = c.category_id
	where b.price = (select max(price) from book) or b.price = (select min(price) from book)
	group by c.name, p.name, b.name, b.price;

---

with tmp (price) as (select max(price) from book UNION select min(price) from book)
select * from book where price IN (select price from tmp);


---
select * from(
select top 1 * from book order by price
UNION
select top 1 * from book order by price desc ) as temp;

-- 3.
select c.name, count(c.name) as countCat from category c
	inner join book b on b.category_id = c.category_id
	group by c.name;
---

with tmp (category_id, number) as (select category_id, count(category_id) as number from book group by category_id)
select c.name, tmp.number from category c inner join tmp ON c.category_id = tmp.category_id;


-- 4.
select b.* from order_detail od right join book b ON od.book_id = b.book_id where od.book_id is null;
-----

select b.*, od.book_id from book b left join order_detail od ON b.book_id = od.book_id where od.book_id is null;

-----

select * from book where book_id not in (select distinct book_id from order_detail);

-- 5.
select * from book where book_id in (select distinct book_id from order_detail);
-- 6.
select order_id from order_detail group by order_id having count(distinct book_id) >= 2;


select o.order_id from orders o join order_detail od ON o.order_id = od.order_id
group by o.order_id having count(distinct od.book_id) > 1;




-- 7.

select distinct od.order_id from order_detail od
	where exists (select * from book b where b.book_id = od.book_id and
	publisher_id = (select publisher_id from publisher where name = N'Đinh Tị Books (tư nhân)'));

select * from orders o where
not exists (select * from book b where b.publisher_id = 
(select publisher_id from publisher where name = N'Đinh Tị Books (tư nhân)') and 
not exists (select * from order_detail od where od.order_id = o.order_id and od.book_id = b.book_id));

	

-------------------------------------------------------
--1
select distinct od.order_id from order_detail od where 
exists (select * from book b where b.book_id = od.book_id and
b.name = N'Con sẽ Thành Công');

--
select order_id from order_detail od join book b on od.book_id = b.book_id where b.name = N'Con sẽ Thành Công';

-----2
select * from orders where order_total = (select max(order_total) from orders);


-----3

select b.name, order_date  from book b
	inner join order_detail od on b.book_id = od.book_id 
	inner join orders o on od.order_id = o.order_id
	where year(o.order_date) = 2023;

-----4

select count(od.amount) as total_books_sold
from order_detail od
join book b ON od.book_id = b.book_id
join publisher p ON b.publisher_id = p.publisher_id
where p.name = N'Đinh Tị Books (tư nhân)';


------5 ?
with LatestOrders as (select *, ROW_NUMBER() OVER (PARTITION BY customer_id order by order_date DESC) as order_rank from orders)
select order_id, customer_id, order_date
from LatestOrders
where order_rank = 1;

-----------------------

SELECT o.order_id, COUNT(od.book_id) AS sold FROM orders o
JOIN order_detail od ON o.order_id = od.order_id
JOIN book b ON od.book_id = b.book_id
JOIN publisher p ON b.publisher_id = p.publisher_id
WHERE p.publisher_id = 11
GROUP BY o.order_id
HAVING COUNT(DISTINCT od.book_id) >= 1;

select * from order_detail

--- 
WITH tmp AS (SELECT od.book_id, b.name, SUM(od.amount) AS total FROM order_detail od
JOIN orders o ON od.order_id = o.order_id
JOIN book b ON od.book_id = b.book_id
WHERE YEAR(o.order_date) = 2023
GROUP BY od.book_id, b.name)
SELECT name, total FROM tmp
WHERE total = (SELECT MIN(total) FROM tmp);

---
select sum(od.amount) as total_2023
from order_detail od
join orders o ON od.order_id = o.order_id
where YEAR(o.order_date) = 2023;


select sum(amount) as number from order_detail 
where order_id in (select order_id from orders where year(order_date) = 2023);
---
select * from book where publisher_id = 11 
and book_id not in (select book_id from order_detail where 
order_id = (select order_id from orders where year(order_date) = 2023))





---

SELECT AVG(order_total) FROM orders WHERE YEAR(order_date) = 2023;

---

SELECT TOP 3 * FROM book ORDER BY price desc;

select order_id from order_detail where book_id in (SELECT TOP 3 book_id FROM book ORDER BY price desc);

-----

select p.publisher_id, p.name, MAX(b.price) as max_price, MIN(b.price) as min_price, avg(b.price) as avg_price
from publisher p
join book b on b.publisher_id = p.publisher_id
GROUP BY p.publisher_id, p.name;


----
select * from book
where price BETWEEN 200000 AND 500000;

----
select * from customer c 
join orders o on c.customer_id = o.customer_id 
where order_total = (select min(order_total) from orders);

----
select * from saler s 
join orders o on s.saler_id = o.saler_id 
where order_total = (select max(order_total) from orders);


select * from saler where saler_id 
in (select saler_id from orders where order_total 
in (select max(order_total) from orders));



----

with tmp as (select p.publisher_id, p.name, count(b.book_id) as number from publisher p join book b
on p.publisher_id = b.publisher_id group by p.publisher_id, p.name)
select publisher_id, name, number from tmp where number = (select max(number) from tmp);


select * from orders;
select * from order_detail;
select * from book;



