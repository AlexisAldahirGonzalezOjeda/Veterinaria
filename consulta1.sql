USE SuAnimalFeliz
GO

CREATE FUNCTION pacientes_due�o(@cedula VARCHAR(20) )
RETURNS TABLE AS 
RETURN(SELECT id_cliente, nombre_cliente, tipo  
FROM Clientes WHERE cedula_due�o=@cedula );