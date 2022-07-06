CREATE TABLE [dbo].[PersonasDetalle] (
    [PersonaDetalleId] INT           IDENTITY (1, 1) NOT NULL,
    [PersonaId]  INT NOT NULL,
    [ComedorId]  INT NOT NULL,
    [Edad]  INT NOT NULL,
    [DireccionCalle]  VARCHAR (MAX) NOT NULL,
    [DireccionNumero] INT NOT NULL,
    [TelefenoNumero] INT NOT NULL,
    [PersonaIdTutor]  INT NOT NULL,
    [FechaDeCarga]        DATETIME2(7) CONSTRAINT DF_PersonaDetalle_FechaDeCarga DEFAULT SYSDATETIME(),
    [UsuarioIdDeCarga] INT NOT NULL,
    CONSTRAINT [PK_PersonaDetalle] PRIMARY KEY CLUSTERED ([PersonaDetalleId] ASC),
    CONSTRAINT [FK_PersonasDetalle_Persona] FOREIGN KEY ([PersonaId]) REFERENCES [dbo].[Personas] ([PersonaId]),
    CONSTRAINT [FK_PersonasDetalle_Comedor] FOREIGN KEY ([ComedorId]) REFERENCES [dbo].[Comedores] ([ComedorId]),
    CONSTRAINT [FK_PersonasDetalle_PersonaTutor] FOREIGN KEY ([PersonaIdTutor]) REFERENCES [dbo].[Personas] ([PersonaId]),
    CONSTRAINT [FK_PersonasDetalle_UsuarioIdDeCarga] FOREIGN KEY ([UsuarioIdDeCarga]) REFERENCES [dbo].[Usuarios] ([UsuarioId])
);

