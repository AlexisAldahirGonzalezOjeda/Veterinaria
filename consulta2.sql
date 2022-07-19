USE SuAnimalFeliz
GO

CREATE FUNCTION pacientes_tipo(@consulta VARCHAR(20) )
RETURNS TABLE AS 
RETURN(SELECT nombre_cliente FROM Clientes WHERE tipo=@consulta );