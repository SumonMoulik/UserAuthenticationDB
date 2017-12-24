CREATE TABLE [dbo].[tblTestUser] (
    [UserId]   BIGINT         IDENTITY (1, 1) NOT NULL,
    [UserName] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_tblTestUser] PRIMARY KEY CLUSTERED ([UserId] ASC)
);

