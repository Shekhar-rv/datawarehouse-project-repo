USE [Northwind] -- Using the Northwind database
GO

DELETE FROM [Inventory_dw].[dbo].supplier_dimension -- Change 89514_dw to YOUR data warehouse name!

-- populate the supplier_dimension table
INSERT INTO [Inventory_dw].[dbo].supplier_dimension -- Change 89514_dw to YOUR data warehouse name!
        (SupplierID,
		CompanyName,
		SupplierCountry
		)
SELECT DISTINCT
	s.SupplierID,
	s.CompanyName,
	s.Country AS SupplierCountry
FROM [dbo].[Suppliers] AS s;

-- Checking if the table is populated properly
SELECT * FROM [Inventory_dw].dbo.supplier_dimension; 