USE SuAnimalFeliz
GO

CREATE VIEW mas_vendidos AS 
SELECT TOP 10 COUNT(id_producto) AS cantidad_ventas, id_producto 
FROM Expediente GROUP BY id_producto ORDER BY cantidad_ventas DESC;
