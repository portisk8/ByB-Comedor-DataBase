CREATE TABLE [dbo].[ComedorDetalle] (
    [ComedorDetalleId] INT IDENTITY(1,1) NOT NULL, --IDENTITY(1,1) lo hace auto incremental de a 1
    [ComedorId]        INT NOT NULL,
    [CantidadPersonas]        INT NOT NULL,
    [FechaDeCarga]        DATETIME2(7) CONSTRAINT DF_ComedorDetalle_FechaDeCarga DEFAULT SYSDATETIME(),
    [UsuarioIdDeCarga]        INT NOT NULL,
    CONSTRAINT [PK_ComedorDetalle] PRIMARY KEY CLUSTERED ([ComedorDetalleId] ASC),
    CONSTRAINT [FK_ComedorDetalle_Comedores] FOREIGN KEY ([ComedorId]) REFERENCES [dbo].[Comedores] ([ComedorId]),
    CONSTRAINT [FK_ComedorDetalle_Usuarios] FOREIGN KEY ([UsuarioIdDeCarga]) REFERENCES [dbo].[Usuarios] ([UsuarioId])
);

