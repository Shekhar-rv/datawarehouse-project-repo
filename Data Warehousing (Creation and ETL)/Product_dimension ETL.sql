USE [Northwind] -- Using the Northwind database
GO

DELETE FROM [Inventory_dw].[dbo].product_dimension -- Change 89514_dw to YOUR data warehouse name!

-- populate the product_dimension table
INSERT INTO [Inventory_dw].[dbo].product_dimension -- Change 89514_dw to YOUR data warehouse name!
        (ProductID,
		ProductName,
		Unitprice,
		UnitsInStock,
		UnitsOnOrder,
		ReorderLevel,
		Discontinued,
        UnitsSoldLY,
        UnitsSoldCY
		)
SELECT DISTINCT
	p.ProductID,
	p.ProductName,
	p.UnitPrice AS Unitprice,
    p.UnitsInStock,
    p.UnitsOnOrder,
    p.ReorderLevel,
    p.Discontinued,
(SELECT SUM(od.Quantity)
FROM    Orders o
		left join [Order Details] od on od.OrderID = o.OrderID
WHERE   OrderDate >= '1996-07-01' AND
        OrderDate   <= '1997-06-30'
        AND od.ProductID = p.ProductID 
        GROUP BY od.ProductID
            ),
(SELECT  SUM(od.Quantity)
FROM    Orders o
		left join [Order Details] od on od.OrderID = o.OrderID
WHERE   OrderDate >= '1997-07-01' AND
        OrderDate   <= '1998-06-30'
        AND od.ProductID = p.ProductID
        GROUP BY od.ProductID
            )
FROM [dbo].[Products] AS p;

-- Checking if the table is populated properly
SELECT * FROM [Inventory_dw].dbo.product_dimension; 

