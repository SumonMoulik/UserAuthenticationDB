CREATE TABLE [dbo].[tblUsers] (
    [UserID]   BIGINT        IDENTITY (1, 1) NOT NULL,
    [UserName] VARCHAR (50)  NOT NULL,
    [Email]    VARCHAR (150) NOT NULL,
    [Password] VARCHAR (15)  NOT NULL,
    CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED ([UserID] ASC)
);

