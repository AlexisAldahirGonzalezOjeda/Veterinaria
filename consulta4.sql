USE SuAnimalFeliz
GO 

CREATE FUNCTION servicio(@nombre VARCHAR(20) )
RETURNS TABLE AS 
RETURN(SELECT tipo_servicio FROM Clientes INNER JOIN Veterinaria 
ON Clientes.id_servicio = Veterinaria.id_servicio
WHERE nombre_cliente = @nombre);

