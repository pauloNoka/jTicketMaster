IF NOT EXISTS(SELECT NAME FROM SYSOBJECTS WHERE NAME='TKClientes')
BEGIN 

	CREATE TABLE TKClientes(
		CliCodigo			INT NOT NULL IDENTITY,
		CliNome				VARCHAR(100) NOT NULL,
		CliSexo				CHAR(1),
		CliNascimento		DATE NOT NULL,
		CliCpf				CHAR(11),
		CliCnpj				CHAR(14),
		CliRg				VARCHAR(10),
		CliTelefone			VARCHAR(12),
		CliCelular			VARCHAR(12),
		CliEndereco			VARCHAR(200),
		CliNumeroEndereco	INT,
		CliBairro			VARCHAR(100),
		IdCidade			INT,
		CliCep				VARCHAR(9),
		CliEmail			VARCHAR(100),
		CliLogin			VARCHAR(20),
		CliSenha			VARCHAR(64),
		Created				DATETIME DEFAULT(GETDATE()),
		Modified			DATETIME


		CONSTRAINT PK_CliCodigo PRIMARY KEY(CliCodigo),

		CONSTRAINT CK_CliSexo CHECK (CliSexo = 'F' OR CliSexo = 'M'),

		CONSTRAINT UK_CliLogin UNIQUE(CliLogin),

		CONSTRAINT UK_CliCpf UNIQUE(CliCpf),

		CONSTRAINT UK_CliCnpj UNIQUE(CliCnpj)

	);

END;
GO
