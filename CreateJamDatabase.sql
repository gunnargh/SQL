use master
go
drop database JamMaster

create database JamMaster;

use JamMaster;
go

create table ZipCodes
(
	zip int primary key,
	place varchar(255) not null
)

create table Customer
(
	cid int identity primary key,
	name varchar(255) not null,
	email varchar(255),
	homeaddress varchar(255),
	zipcodes_zip int foreign key references zipcodes(zip)
)

create table PaymentMethod
(
	pid int identity primary key,
	method varchar(255) not null
)

create table Jam
(
	jid int identity primary key,
	name varchar(255) not null,
	description varchar(255),
	size int not null,
	price int not null
)

create table PurchaseOrder
(
	oid int identity primary key,
	orderdate datetime not null,
	customer_cid int foreign key references customer(cid),
	paymentmethod_pid int foreign key references paymentmethod(pid)
)

create table PurchaseOrder_Jam
(
	purchaseorder_oid int foreign key references purchaseorder(oid),
	jam_jid int foreign key references jam(jid),
	quantity int not null,
	price int not null,
	primary key (purchaseorder_oid, jam_jid)
)