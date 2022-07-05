CREATE TABLE [dbo].[Usuarios] (
    [UsuarioId] INT           IDENTITY (1, 1) NOT NULL,
    [Username]  VARCHAR (250) NULL,
    [Email]     VARCHAR (250) NULL,
    [Password]  VARCHAR (MAX) NULL,
    [Salt]      VARCHAR (MAX) NULL,
    CONSTRAINT [PK__Usuario__2B3DE7B8FF152274] PRIMARY KEY CLUSTERED ([UsuarioId] ASC)
);

