create database personal_bookstore;
use personal_bookstore;

create table Customer (
	customer_id int primary key IDENTITY(1,1),
	customer_name varchar(255),
	customer_email varchar(255),
	customer_address varchar(255),
	customer_phone_number varchar(255)
);


create table Salesman(
	salesman_id int primary key IDENTITY(1,1),
	salesman_name varchar(300),
);




create table Order_ (
	order_id int primary key IDENTITY(1,1),
	order_date varchar(200),

	customer_id int not null,
	CONSTRAINT FK_Customer FOREIGN KEY (customer_id)
	REFERENCES Customer(customer_id),
	order_total varchar(200),

	salesman_id int not null,
	CONSTRAINT FK_Salesman FOREIGN KEY (salesman_id)
	REFERENCES Salesman(salesman_id),

);



create table Categories (
	category_id int primary key IDENTITY(1,1),
	category_name varchar(400)
);


create table Publisher (
	publisher_id int primary key IDENTITY(1,1),
	publisher_name varchar(500)
);

create table Books (
	book_id int primary key IDENTITY(1,1),
	book_name varchar(450),
	category_id int not null,
	CONSTRAINT FK_Categories FOREIGN KEY (category_id)
	REFERENCES Categories(category_id),
	book_price varchar(450),
	book_cost varchar(450),
	inventory_number varchar(450),
	publisher_id int not null,
	CONSTRAINT FK_Publisher FOREIGN KEY (publisher_id)
	REFERENCES Publisher(publisher_id),
	author varchar(450),
);




create table Order_Detail(
	order_id int not null,
	CONSTRAINT FK_Order FOREIGN KEY (order_id)
	REFERENCES Order_(order_id),

	book_id int not null,
	CONSTRAINT FK_Books FOREIGN KEY (book_id)
	REFERENCES Books(book_id),

	amount varchar(350),
	sales_price varchar(350),


);






