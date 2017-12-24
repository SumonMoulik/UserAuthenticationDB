CREATE TABLE [dbo].[tblPermission] (
    [PermissionId]   BIGINT   IDENTITY (1, 1) NOT NULL,
    [UserId]         BIGINT   NOT NULL,
    [MenuId]         BIGINT   NOT NULL,
    [UserPermission] BIT      NOT NULL,
    [PermissionDate] DATETIME NOT NULL,
    CONSTRAINT [PK_tblPermission] PRIMARY KEY CLUSTERED ([PermissionId] ASC)
);

