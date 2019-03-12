USE [Northwind] -- Using the Northwind database
GO

DELETE FROM [Inventory_dw].[dbo].order_dimension -- Change 89514_dw to YOUR data warehouse name!

-- populate the order_dimension table
INSERT INTO [Inventory_dw].[dbo].order_dimension -- Change 89514_dw to YOUR data warehouse name!
        (OrderID,
		OrderDate,
		RequiredDate,
        ShippedDate,
        ShipCountry
		)
SELECT DISTINCT
	o.OrderID,
	o.OrderDate,
	o.RequiredDate,
    o.ShippedDate,
    o.ShipCountry 
FROM [dbo].[Orders] AS o;

-- Checking if the table is populated properly
SELECT * FROM [Inventory_dw].dbo.order_dimension; 