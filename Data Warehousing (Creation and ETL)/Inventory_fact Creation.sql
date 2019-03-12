USE [Inventory_dw] 
GO

BEGIN TRY
	DROP TABLE [dbo].[Inventory_fact]
END TRY

BEGIN CATCH
	/*No Action*/
END CATCH

/****** Object:  Table [dbo].[Inventory_fact]    Script Date: 03/04/2018 13:54:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Inventory_fact](
	[ProductID] [int] NOT NULL,
    [OrderID] [int] NOT NULL,
    [OrderDate] [datetime] NOT NULL,
	[SupplierID] [int] NOT NULL,
	[QuantityPerOrder] [smallint] NULL,
	[Revenue] [money] NOT NULL,
	 CONSTRAINT [IX_Inventory_fact] UNIQUE NONCLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

