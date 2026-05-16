create database bookstore;

use bookstore;

create table customer (
	customer_id int primary key IDENTITY(1,1),
	name nvarchar(50) not null,
	email varchar(100),
	address nvarchar(255) not null
);

go 

create table saler (
	saler_id int primary key IDENTITY(1,1),
	name nvarchar(50) not null
);
go

create table publisher (
	publisher_id int primary key IDENTITY(1,1),
	name nvarchar(50) not null
);

go

create table category (
	category_id int primary key IDENTITY(1,1),
	name nvarchar(50) not null
);

go 

create table book (
	book_id int primary key IDENTITY(1,1),
	name nvarchar(50) not null,
	price money not null,
	purchase_price money not null,
	quantity int not null,
	author nvarchar(255) not null,
	category_id int not null,
	publisher_id int not null,
	CONSTRAINT FK_Category FOREIGN KEY (category_id) REFERENCES category(category_id),
	CONSTRAINT FK_Publisher FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id)
);
go 

create table orders (
	order_id int primary key IDENTITY(1,1),
	order_date DATETIME not null,
	customer_id int not null,
	saler_id int not null,
	order_total money not null,
	CONSTRAINT FK_Customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT FK_Saler FOREIGN KEY (saler_id) REFERENCES saler(saler_id)
);
go 

create table order_detail (
	order_id int not null,
	book_id int not null,
	amount int not null,
	price money not null,
	CONSTRAINT FK_Orders FOREIGN KEY (order_id) REFERENCES orders(order_id),
	CONSTRAINT FK_Book FOREIGN KEY (book_id) REFERENCES book(book_id)
);