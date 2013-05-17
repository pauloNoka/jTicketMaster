IF NOT EXISTS(SELECT NAME FROM SYSOBJECTS WHERE NAME='TKConfiguration')
BEGIN
	CREATE TABLE TKConfiguration(
		ConfCodigo			INT NOT NULL IDENTITY,
		ConfNomeEmpresa		VARCHAR(200),
		ConfEndereco		VARCHAR(200),
		ConfNumero			INT,
		ConfCep				VARCHAR(9),
		ConfTelefone		VARCHAR(12),
		ConfEmail			VARCHAR(100),
		ConfLogotipo		VARCHAR(255),
		ConfIcon			VARCHAR(255),

		CONSTRAINT PK_ConfCodigo	PRIMARY KEY(ConfCodigo)
	);
END;
GO