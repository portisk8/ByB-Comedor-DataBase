CREATE TABLE [dbo].[UsuarioPermiso] (
    [UsuarioPermisoId] INT IDENTITY(1,1) NOT NULL, --IDENTITY(1,1) lo hace auto incremental de a 1
    [PermisoId]        INT NULL,
    [UsuarioId]        INT NULL,
    CONSTRAINT [PK_UsuarioPermiso] PRIMARY KEY CLUSTERED ([UsuarioPermisoId] ASC),
    CONSTRAINT [FK_UsuarioPermiso_Permisos] FOREIGN KEY ([PermisoId]) REFERENCES [dbo].[Permisos] ([PermisoId]),
    CONSTRAINT [FK_UsuarioPermiso_Usuarios] FOREIGN KEY ([UsuarioId]) REFERENCES [dbo].[Usuarios] ([UsuarioId])
);

