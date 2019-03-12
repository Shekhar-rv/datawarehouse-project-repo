-- If the table already exists, we need to delete it first;
DROP TABLE [Inventory_dw].dbo.order_dimension;
-- Change '89514_dw' above to whatever your database is called

-- Create the order_dimension table

CREATE TABLE [Inventory_dw].dbo.order_dimension (
	OrderID INT NOT NULL,
	OrderDate DATETIME NOT NULL,
	RequiredDate DATETIME NOT NULL,
	ShippedDate DATETIME NOT NULL,
    ShipCountry NVARCHAR(15) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

