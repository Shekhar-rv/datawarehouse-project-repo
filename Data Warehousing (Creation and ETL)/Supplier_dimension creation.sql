-- If the table already exists, we need to delete it first;
DROP TABLE [Inventory_dw].dbo.supplier_dimension;
-- Change '89514_dw' above to whatever your database is called

-- Create the supplier_dimension table

CREATE TABLE [Inventory_dw].dbo.supplier_dimension (
	SupplierID INT NOT NULL,
	CompanyName NVARCHAR(40) NOT NULL ,
    SupplierCountry NVARCHAR(15) NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

