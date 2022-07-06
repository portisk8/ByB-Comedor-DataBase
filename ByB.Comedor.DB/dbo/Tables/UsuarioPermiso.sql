CREATE TABLE [dbo].[UsuarioPermiso] (
    [UsuarioPermisoId] INT IDENTITY(1,1) NOT NULL, --IDENTITY(1,1) lo hace auto incremental de a 1
    [PermisoId]        INT NOT NULL,
    [UsuarioId]        INT NOT NULL,
    [FechaBaja]        VARCHAR(200) NULL,
    [FechaDeCarga]     VARCHAR(200) NULL,
    [UsuarioIdDeCarga]      INT NULL,
    [UsuarioIdDeBaja]       INT NULL,
    CONSTRAINT [PK_UsuarioPermiso] PRIMARY KEY CLUSTERED ([UsuarioPermisoId] ASC),
    CONSTRAINT [FK_UsuarioPermiso_Permisos] FOREIGN KEY ([PermisoId]) REFERENCES [dbo].[Permisos] ([PermisoId]),
    CONSTRAINT [FK_UsuarioPermiso_Usuarios] FOREIGN KEY ([UsuarioId]) REFERENCES [dbo].[Usuarios] ([UsuarioId]),
    CONSTRAINT [FK_UsuarioPermiso_UsuarioDeCarga] FOREIGN KEY ([UsuarioIdDeCarga]) REFERENCES [dbo].[Usuarios] ([UsuarioId]),
    CONSTRAINT [FK_UsuarioPermiso_UsuarioDeBaja] FOREIGN KEY ([UsuarioIdDeBaja]) REFERENCES [dbo].[Usuarios] ([UsuarioId]),
);

