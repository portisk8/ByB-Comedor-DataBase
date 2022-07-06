CREATE TABLE [dbo].[Personas] (
    [PersonaId] INT           IDENTITY (1, 1) NOT NULL,
    [PersonaTipoId]  INT NOT NULL,
    [Nombre]     VARCHAR (250) NOT NULL,
    [Apellido]  VARCHAR (MAX) NULL,
    [FechaNacimiento]  DATE NULL,
    [DocumentoTipoId] INT NULL,
    [Documento] INT NULL,
    [FechaDeCarga]        DATETIME2(7) CONSTRAINT DF_Personas_FechaDeCarga DEFAULT SYSDATETIME(),
    [UsuarioIdDeCarga] INT NOT NULL,
    CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED ([PersonaId] ASC),
    CONSTRAINT [FK_Personas_PersonaTipo] FOREIGN KEY ([PersonaTipoId]) REFERENCES [dbo].[PersonaTipo] ([PersonaTipoId]),
    CONSTRAINT [FK_Personas_DocumentoTipo] FOREIGN KEY ([DocumentoTipoId]) REFERENCES [dbo].[DocumentoTipo] ([DocumentoTipoId]),
    CONSTRAINT [FK_Personas_UsuarioIdDeCarga] FOREIGN KEY ([UsuarioIdDeCarga]) REFERENCES [dbo].[Usuarios] ([UsuarioId])
);

