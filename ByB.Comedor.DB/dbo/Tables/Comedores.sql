CREATE TABLE [dbo].[Comedores] (
    [ComedorId]   INT           NOT NULL,
    [Descripcion] VARCHAR (250) NOT NULL,
    [Titulo]      VARCHAR (250) NOT NULL,
    CONSTRAINT [PK_Comedores] PRIMARY KEY CLUSTERED ([ComedorId] ASC)
);

