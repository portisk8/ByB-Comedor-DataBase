CREATE TABLE [dbo].[DocumentoTipo] (
    [DocumentoTipoId] INT           IDENTITY (1, 1) NOT NULL,
    [Descripcion]      VARCHAR (MAX) NULL,
    CONSTRAINT [PK_DocumentoTipo] PRIMARY KEY CLUSTERED ([DocumentoTipoId] ASC)
);

