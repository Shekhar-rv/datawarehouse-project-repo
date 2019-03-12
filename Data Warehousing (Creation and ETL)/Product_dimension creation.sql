
-- If the table already exists, we need to delete it first;
DROP TABLE [Inventory_dw].dbo.product_dimension;

-- Create the product_dimension table
CREATE TABLE [Inventory_dw].dbo.product_dimension (
	ProductID INT NOT NULL,
	ProductName NVARCHAR(40) NOT NULL,
	Unitprice MONEY,
	UnitsInStock int NULL,
    UnitsOnOrder int NULL,
    ReorderLevel int NULL,
    Discontinued BIT NOT NULL,
	UnitsSoldLY int NULL,
	UnitsSoldCY int NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
