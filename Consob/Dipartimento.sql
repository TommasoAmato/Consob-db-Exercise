CREATE TABLE [dbo].[Dipartimento] (
    [Id_Dipartimento] INT NOT NULL PRIMARY KEY,
    [NOME] VARCHAR (50) NOT NULL,
    [SEDE] VARCHAR (50) NOT NULL,
    [MANAGER] INT  NOT NULL,
    FOREIGN KEY (MANAGER) REFERENCES [dbo].[Dipendente](Id_Dipendente)
)