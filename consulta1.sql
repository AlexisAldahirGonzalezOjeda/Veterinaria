USE SuAnimalFeliz
GO

CREATE FUNCTION pacientes_dueño(@cedula VARCHAR(20) )
RETURNS TABLE AS 
RETURN(SELECT id_cliente, nombre_cliente, tipo  
FROM Clientes WHERE cedula_dueño=@cedula );