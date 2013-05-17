IF NOT EXISTS(SELECT NAME FROM SYSOBJECTS WHERE NAME='TKFuncionarios')
BEGIN 

	CREATE TABLE TKFuncionarios(
		FunCodigo			INT NOT NULL IDENTITY,
		FunTipo				INT DEFAULT(2),
		FunNome				VARCHAR(100) NOT NULL,
		FunSexo				CHAR(1),
		FunNascimento		DATE NOT NULL,
		FunCpf				CHAR(11),
		FunRg				VARCHAR(10),
		FunTelefone			VARCHAR(12),
		FunCelular			VARCHAR(12),
		FunEndereco			VARCHAR(200),
		FunNumeroEndereco	INT,
		FunBairro			VARCHAR(100),
		IdCidade			INT,
		FunCep				VARCHAR(9),
		FunEmail			VARCHAR(100),
		FunLogin			VARCHAR(20),
		FunSenha			VARCHAR(64),
		Created				DATETIME DEFAULT(GETDATE()),
		Modified			DATETIME


		CONSTRAINT PK_FunCodigo PRIMARY KEY(FunCodigo),

		CONSTRAINT CK_FunTipo CHECK (FunTipo BETWEEN 0 AND 2),

		CONSTRAINT CK_FunSexo CHECK (FunSexo = 'F' OR FunSexo = 'M'),

		CONSTRAINT UK_FunLogin UNIQUE(FunLogin),

		CONSTRAINT UK_FunCpf UNIQUE(FunCpf)

	);

END;
GO
