CREATE TABLE [dbo].[Usuarios] (
    [UsuarioId] INT           IDENTITY (1, 1) NOT NULL,
    [Username]  VARCHAR (250) NOT NULL,
    [Email]     VARCHAR (250) NOT NULL,
    [Password]  VARCHAR (MAX) NOT NULL,
    [Salt]      VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK__Usuario__2B3DE7B8FF152274] PRIMARY KEY CLUSTERED ([UsuarioId] ASC)
);

