USE SuAnimalFeliz
GO

CREATE FUNCTION historial(@nombre VARCHAR(20) )
RETURNS TABLE AS 
RETURN( SELECT fecha_visita, id_doctor, id_producto 
FROM Expediente INNER JOIN Clientes
ON Expediente.id_cliente = Clientes.id_cliente
WHERE nombre_cliente=@nombre );
