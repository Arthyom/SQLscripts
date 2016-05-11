create database Clase1;
use Clase1;

create table customers(
	CustomerID tinyint not null primary key auto_increment,
	CustomerName varchar(20),
	ContactName varchar(20),
	Address varchar(20),
	City varchar(20),
	PostalCode char(20),
	Country varchar(20)
);

insert into customers 
(
	CustomerName,
	ContactName,
	Address,
	City,
	PostalCode,
	Country
)
values 
(
	"Alfreds Futterkiste",
	"Maria Anders",
	"Obere Str. 57",
	"Berlin",
	"12209",
	"Germany"
);

insert into customers 
(
	CustomerName,
	ContactName,
	Address,
	City,
	PostalCode,
	Country
)
values 
(
	"Around the Horn",
	"Thomas Hardy 120",
	"Hanover Sq.",
	"London",
	"WA1 1DP" ,
	"UK"
);

insert into customers 
(
	CustomerName,
	ContactName,
	Address,
	City,
	PostalCode,
	Country
)
values 
(
 	"Antonio Moreno Taquería",
 	"Antonio Moreno",
 	"Mataderos 2312",
 	"México D.F.", 
 	"05023",
 	"Mexico"
);

insert into customers 
(
	CustomerName,
	ContactName,
	Address,
	City,
	PostalCode,
	Country
)
values 
(
 	"Berglunds snabbköp",
 	"Christina Berglund",
 	"Berguvsvägen 8",
 	"Luleå",
 	"S-958 22",
 	"Sweden"
);

insert into customers 
(
	CustomerName,
	ContactName,
	Address,
	City,
	PostalCode,
	Country
)
values 
(
 	 	"Ana Trujillo Emparedados y helados",
 	 	"Ana Trujillo",
 	 	"Avda. de la Constitución 2222",
 	 	"México D.F.",
 	 	"05021",
 	 	"Mexico"
);