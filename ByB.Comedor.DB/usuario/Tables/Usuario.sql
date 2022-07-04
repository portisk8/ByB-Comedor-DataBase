CREATE TABLE [usuario].[Usuario] (
    [UsuarioId] INT           IDENTITY (1, 1) NOT NULL,
    [Username]  VARCHAR (250) NULL,
    [Email]     VARCHAR (250) NULL,
    [Password]  VARCHAR (MAX) NULL,
    [Salt]      VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([UsuarioId] ASC)
);

