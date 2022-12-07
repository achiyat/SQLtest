/*1*/
/* כתבו שאילתא ששולפת את רשימת המוצרים בטווח המחירים של 30 עד 40 */
select ProductName,UnitPrice from Products
where UnitPrice between 30 and 40
/*2*/
/* כתבו שאילתא ששולפת את המוצרים ששייכים לקטגוריה Condiments */
select ProductName,CategoryName from Products p
inner join Categories c
on c.CategoryID = p.CategoryID
where CategoryName = 'Condiments'
/*3*/
/* כתבו שאילתא ששולפת את רשימת המוצרים ששייכים לקטגוריה שיש בתיאור שלה את האות S, יש למיין לפי שם המוצר */
select ProductName,Description from Products p
inner join Categories c
on c.CategoryID = p.CategoryID
where c.Description like 's%'
/*4*/
/* כתבו שאילתא ששולפת את שמות הפריטים שקנה הלקוח ALFKI , יוצגו רק שמות הפריטים ללא כפילויות */
select distinct p.ProductName from Customers c
inner join Orders o
on o.CustomerID = c.CustomerID
inner join [Order Details] od
on o.OrderID = od.OrderID
inner join Products p
on p.ProductID = od.ProductID
where c.CustomerID = 'ALFKI'
/*5*/
/* כתבו שאילתא ששולפת את רשימת ההזמנות שנשלחו ללונדון ולברזיל */
select * from Orders
where ShipCountry = 'Brazil'
or ShipCity = 'London'
/*6*/
/* כתבו שאילתא ששולפת את שמות הלקוחות שעשו הזמנה באמצעות השליח Federal Shipping */
select * from Orders o
inner join Shippers s
on s.ShipperID = o.ShipVia
inner join Customers c
on c.CustomerID = o.CustomerID
where s.CompanyName = 'Federal Shipping'
/*8*/
/* איזה שאילתא תהיה עבור תוצאות השליפה הבאה */
select c.CustomerID,EmployeeID,ShipVia,
Freight,ShipName,ShipAddress,
ShipCity,ShipRegion,ShipPostalCode,
ShipCountry from Orders o
inner join Customers c
on c.CustomerID = o.CustomerID
where ShipVia = 1
and c.CustomerID like 'B%'
and
(O.EmployeeID = 5
OR O.EmployeeID = 2)
/*9*/
/* איזה שאילתא תהיה עבור תוצאות השליפה הבאה */
select od.*,o.OrderDate,o.EmployeeID,o.CustomerID 
from Orders o,[Order Details] od
where o.OrderID = 10248
and od.OrderID = 10248
order by UnitPrice
/*10*/
/* איזה שאילתא תהיה עבור תוצאות השליפה הבאה */
select * from Customers
select CustomerID,Region, Country from Customers
where Country = 'France'
or Country = 'Canada'