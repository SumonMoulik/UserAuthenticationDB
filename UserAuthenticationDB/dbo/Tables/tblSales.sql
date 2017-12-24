CREATE TABLE [dbo].[tblSales] (
    [SalesInvId] BIGINT       IDENTITY (1, 1) NOT NULL,
    [SalesInvNo] VARCHAR (20) NOT NULL,
    CONSTRAINT [PK_tblSales] PRIMARY KEY CLUSTERED ([SalesInvId] ASC)
);

