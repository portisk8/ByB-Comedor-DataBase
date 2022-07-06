CREATE TABLE [dbo].[SexoTipo] (
    [SexoTipoId]   INT           NOT NULL,
    [Descripcion] VARCHAR (250) NOT NULL,
    [DescripcionCorta]      VARCHAR (250) NOT NULL,
    CONSTRAINT [PK_SexoTipo] PRIMARY KEY CLUSTERED ([SexoTipoId] ASC)
);

