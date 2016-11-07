
select *
from customer

select name, email
from Customer

select *
from Customer
where cid=4

select *
from Customer
where zipcodes_zip = 220

select *
from customer
where zipcodes_zip >= 200



select name, homeaddress, zip, place
from customer, ZipCodes
where zipcodes_zip=zip

select c.name, c.homeaddress, z.zip, z.place
from customer c, ZipCodes z
where c.zipcodes_zip = z.zip

select c.name, p.oid, p.orderdate
from Customer c, PurchaseOrder p
where c.cid = p.customer_cid

select *
from PurchaseOrder_Jam pj, jam j
where pj.purchaseorder_oid = 3
and pj.jam_jid = j.jid

select distinct c.name, j.name
from customer c, PurchaseOrder p, PurchaseOrder_Jam pj, Jam j
where c.cid = p.customer_cid
and p.oid = pj.purchaseorder_oid
and pj.jam_jid = j.jid
order by c.name

select c.name, c.email
from Customer c, PurchaseOrder p, PurchaseOrder_Jam pj, Jam j
where c.cid = p.customer_cid
and p.oid = pj.purchaseorder_oid
and pj.jam_jid = j.jid
and j.name = 'Lífræn ávaxtasulta'

select c.name, j.name
from Customer c, PurchaseOrder p, PurchaseOrder_Jam pj, Jam j, ZipCodes z
where c.cid = p.customer_cid
and p.oid = pj.purchaseorder_oid
and pj.jam_jid = j.jid
and c.zipcodes_zip = z.zip
and z.place = 'Hafnarfjörður'

select distinct pm.method
from Customer c, ZipCodes z, PurchaseOrder p, PaymentMethod pm
where c.zipcodes_zip = z.zip
and z.place = 'Kópavogur'
and c.cid = p.customer_cid
and p.paymentmethod_pid = pm.pid