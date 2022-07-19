USE SuAnimalFeliz
GO

CREATE FUNCTION ventas_mayo()
RETURNS TABLE AS 
RETURN( SELECT SUM(precio) AS ventas_mayo FROM Expediente INNER JOIN Productos 
ON Expediente.id_producto=Productos.id_producto
WHERE fecha_visita BETWEEN '2022-05-01' AND '2022-06-01' );
