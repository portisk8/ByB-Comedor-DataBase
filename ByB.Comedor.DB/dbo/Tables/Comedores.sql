CREATE TABLE [dbo].[Comedores] (
    [ComedorId]   INT IDENTITY(1,1) NOT NULL,
    [Descripcion] VARCHAR (250) NOT NULL,
    [Titulo]      VARCHAR (250) NOT NULL,
    [DireccionCalle]      VARCHAR (250) NOT NULL,
    [DireccionNumero]      INT NOT NULL,
    CONSTRAINT [PK_Comedores] PRIMARY KEY CLUSTERED ([ComedorId] ASC)
);

