IF NOT EXISTS(SELECT NAME FROM SYSOBJECTS WHERE NAME='TKProdutosCliente')
BEGIN
	CREATE TABLE TKProdutosCliente(
		ProdCliCodigo			INT NOT NULL IDENTITY,
		CliCodigo				INT NOT NULL,
		ProdCodigo				INT NOT NULL,
		Status					INT,
		Created					DATETIME DEFAULT(GETDATE()),
		Modified				DATETIME,


		CONSTRAINT PK_ProdCliCodigo PRIMARY KEY(ProdCliCodigo),

		CONSTRAINT FK_CliCodigo		FOREIGN KEY(CliCodigo)
			REFERENCES TKClientes	(CliCodigo),

		CONSTRAINT FK_ProdCodigo	FOREIGN KEY(ProdCodigo)
			REFERENCES TKProdutos	(ProdCodigo)
	);
END
GO