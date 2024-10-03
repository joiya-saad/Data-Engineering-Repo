#############   HOMEWORK 4
SELECT o1.OrderNumber,Od1.PriceEach,od1.QuantityOrdered,p1.ProductName,p1.ProductLine, c1.City, c1.Country, o1.OrderDate
FROM orders o1
INNER JOIN orderdetails od1 
ON o1.ordernumber = od1.ordernumber
INNER JOIN products as p1
on od1.productCode = p1.ProductCode
INNER JOIN customers c1 
ON o1.customernumber = c1.customernumber
;

