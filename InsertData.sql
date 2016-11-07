
insert into ZipCodes (zip, place)
values (101, 'Reykjav�k'), 
(103, 'Reykjav�k'), 
(105, 'Reykjav�k'),
(200, 'K�pavogur'), 
(210, 'Gar�ab�r'),
(220, 'Hafnarfj�r�ur'),
(221, 'Hafnarfj�r�ur');

insert into PaymentMethod values
('Millif�rt'),('P�stkrafa'),('Grei�slukort')

insert into Jam (name, size, price, description)
values ('Jar�arberjasulta',500,1100,'G�ms�t �mmu jar�arberjasulta'),
('Eplasulta',500,1250,'Una�sleg eplasulta'),
('Rabbabarasulta',500,950,'Lj�ffeng rabbabarasulta �r sveitinni'),
('Asparssulta',250,1200,'Su�r�n og spennandi'),
('L�fr�n �vaxtasulta',500,850,'Aspartam,E104,E203,E451,MSG,Gl�tein')

insert into Customer (name, email, homeaddress, zipcodes_zip)
values ('Sveinn �lafsson','svenni@hotmail.com','K�rsnesbraut 14',200),
('Hrafnhildur Briem-Zoega Sveinsd�ttir','krumma@gmail.com','�ingholtsstr�ti 12',101),
('Birgir Hannesson','biggi@hannesson.is','M�vanes 4',210),
('Gu�r�n J�nsd�ttir','sexybabe83@visir.is','�lfaskei�i 74',220)

select * from Customer
select * from PaymentMethod

insert into PurchaseOrder (orderdate, customer_cid, paymentmethod_pid)
values ('12.24.2003', 2, 3)
insert into PurchaseOrder (orderdate, customer_cid, paymentmethod_pid)
values ('12.26.2003',1,1),('12.27.2003',3,2),('12.28.2003',4,1)

select * from jam
select * from PurchaseOrder

insert into PurchaseOrder_Jam (purchaseorder_oid, jam_jid, price,quantity)
values (3, 1, 1100, 4), (3, 3, 950, 2),
(4, 2, 1250,3),(4,4,1200,1),(4,5,850,1),
(5, 1, 1100,4),(5,3,950,2),
(6, 4, 1200,1)

insert into Customer (name,email,homeaddress,zipcodes_zip)
values ('Gu�bj�rn Halld�rsson','gubbi@gubbi.com','Nor�urvangi 4',220),
('Sveinhildur H�lmsteinsd�ttir','sveinka@grillmeistarinn.is','N�b�lavegur 18',200)

insert into PurchaseOrder (orderdate, customer_cid, paymentmethod_pid)
values ('12.29.2003',5,1),('12.29.2003',6,2),('12.30.2003',1,1),('12.31.2003',2,1)

select * from jam

insert into PurchaseOrder_Jam (purchaseorder_oid, jam_jid,price,quantity)
values (7, 1, 1100, 2),(7,2,1250,2),
(8,1,1100,1),(8,2,1250,1),(8,3,950,1),(8,4,1200,3),
(9,1,1100,2),(9,3,950,2),
(10,1,1100,2),(10,3,950,5)