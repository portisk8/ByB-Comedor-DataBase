CREATE TABLE [dbo].[PersonaHistorial] (
    [PersonaHistorialId] INT           IDENTITY (1, 1) NOT NULL,
    [PersonaId]  INT NOT NULL,
    [Edad]  INT NOT NULL,
    [SexoTipoId]  INT NOT NULL,
    [Peso]  INT NOT NULL,
    [Altura]  INT NOT NULL,
    [CinturaCircunferencia] INT NOT NULL,
    [Diagnositco] VARCHAR(255) NOT NULL,
    [FechaDeCarga]        DATETIME2(7) CONSTRAINT DF_PersonaHistrial_FechaDeCarga DEFAULT SYSDATETIME(),
    [UsuarioIdDeCarga] INT NOT NULL,
    CONSTRAINT [PK_PersonaHistorial] PRIMARY KEY CLUSTERED ([PersonaHistorialId] ASC),
    CONSTRAINT [FK_PersonasHistorial_Persona] FOREIGN KEY ([PersonaId]) REFERENCES [dbo].[Personas] ([PersonaId]),
    CONSTRAINT [FK_PersonasHistorial_SexoTipo] FOREIGN KEY ([SexoTipoId]) REFERENCES [dbo].[SexoTipo] ([SexoTipoId]),
    CONSTRAINT [FK_PersonasHistorial_UsuarioIdDeCarga] FOREIGN KEY ([UsuarioIdDeCarga]) REFERENCES [dbo].[Usuarios] ([UsuarioId])
);

