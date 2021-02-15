IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

CREATE TABLE [Clientes] (
    [ClientId] int NOT NULL IDENTITY,
    [Name] nvarchar(50) NULL,
    [Email] nvarchar(100) NULL,
    [Status] bit NOT NULL,
    CONSTRAINT [PK_Cliente] PRIMARY KEY ([ClientId])
);

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210215170741_InitialCreate', N'2.1.8-servicing-32085');

GO

