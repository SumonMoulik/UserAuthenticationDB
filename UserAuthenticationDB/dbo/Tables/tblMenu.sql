CREATE TABLE [dbo].[tblMenu] (
    [MenuId]    INT           IDENTITY (1, 1) NOT NULL,
    [MenuCode]  VARCHAR (4)   NOT NULL,
    [ParentId]  VARCHAR (4)   NOT NULL,
    [MenuText]  VARCHAR (60)  NOT NULL,
    [URL]       VARCHAR (100) NOT NULL,
    [MenuOrder] INT           NOT NULL,
    [IsActive]  INT           NOT NULL,
    CONSTRAINT [PK_tblMenu] PRIMARY KEY CLUSTERED ([MenuId] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UK_tblMenu]
    ON [dbo].[tblMenu]([MenuCode] ASC);

