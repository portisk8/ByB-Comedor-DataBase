CREATE TABLE [dbo].[PersonaTipo] (
    [PersonaTipoId] INT           IDENTITY (1, 1) NOT NULL,
    [Descripcion]      VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_PersonaTipo] PRIMARY KEY CLUSTERED ([PersonaTipoId] ASC)
);

