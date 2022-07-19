USE SuAnimalFeliz
GO

CREATE FUNCTION ventas_entre(@fecha1 DATE, @fecha2 DATE)
RETURNS TABLE AS 
RETURN( SELECT Expediente.fecha_visita as fecha, Productos.producto
FROM Expediente
INNER JOIN Productos ON Expediente.id_producto=Productos.id_producto
WHERE Expediente.fecha_visita BETWEEN @fecha1 AND @fecha2); 