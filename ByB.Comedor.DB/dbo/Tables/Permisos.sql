CREATE TABLE [dbo].[Permisos] (
    [PermisoId]   INT           NOT NULL,
    [Descripcion] VARCHAR (250) NOT NULL,
    [Titulo]      VARCHAR (250) NOT NULL,
    CONSTRAINT [PK_Permisos] PRIMARY KEY CLUSTERED ([PermisoId] ASC)
);

