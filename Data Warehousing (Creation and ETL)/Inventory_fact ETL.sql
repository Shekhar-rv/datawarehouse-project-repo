USE [Northwind] -- Change this to your 'northwind' database, if necessary
GO

DELETE FROM [Inventory_dw].[dbo].Inventory_fact -- Change 89514_dw to YOUR data warehouse name!


INSERT INTO [Inventory_dw].[dbo].Inventory_fact -- Change 89514_dw to YOUR data warehouse name!
        (ProductID,
        OrderID,
		OrderDate,
		SupplierID,
        QuantityPerOrder,
        Revenue
		)
SELECT distinct
    p.ProductID,
	o.OrderID,
    o.OrderDate,
	p.SupplierID,
    SUM(od.Quantity) AS QuantityPerOrder,
    SUM(od.UnitPrice * od.Quantity) AS Revenue
	 
FROM [dbo].[Products] AS p
JOIN [dbo].[Order Details] AS od
	ON p.ProductID = od.ProductID
JOIN [Orders] AS o ON od.OrderID = o.OrderID
GROUP BY p.ProductID,o.OrderDate,o.OrderID,p.SupplierID 
ORDER BY p.ProductID;   


-- Check the table is populated correctly
SELECT * FROM dbo.Inventory_fact 
ORDER BY ProductID




        

