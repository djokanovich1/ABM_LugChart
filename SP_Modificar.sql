﻿CREATE PROC [dbo].[SP_Modificar]
@ID INT, @NOMBRE VARCHAR(50), @APELLIDO VARCHAR(50), @FECHANAC DATE
AS
BEGIN

	DECLARE @nid INT
	SET @nid = (SELECT COUNT(*) FROM PERSONA WHERE ID = @ID)
	IF @nid > 0
	BEGIN
		UPDATE [dbo].[PERSONA]
		SET NOMBRE = @NOMBRE,
			APELLIDO = @APELLIDO,
			FECHA_NACIMIENTO = @FECHANAC
		WHERE ID = @ID
	END

END

GO