IF NOT EXISTS(SELECT NAME FROM SYSOBJECTS WHERE NAME='TKStatusDescricao')
BEGIN
	CREATE TABLE TKStatusDescricao(
		DsCodigo			INT NOT NULL IDENTITY,
		DsDescricao			INT NOT NULL,

		CONSTRAINT PK_DsCodigo PRIMARY KEY (DsCodigo)
	);
END;
GO