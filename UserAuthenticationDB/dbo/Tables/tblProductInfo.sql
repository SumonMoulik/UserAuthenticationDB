CREATE TABLE [dbo].[tblProductInfo] (
    [ProductId]   BIGINT          IDENTITY (1, 1) NOT NULL,
    [ProductName] VARCHAR (250)   NOT NULL,
    [SalesPrice]  NUMERIC (18, 2) NOT NULL,
    CONSTRAINT [PK_tblProductInfo] PRIMARY KEY CLUSTERED ([ProductId] ASC)
);

