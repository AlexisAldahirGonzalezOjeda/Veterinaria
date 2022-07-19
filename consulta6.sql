USE SuAnimalFeliz
GO

CREATE VIEW productos_proveedor1 AS 
SELECT producto AS lista_productos_proveedor1 
FROM Productos INNER JOIN Proveedores ON Productos.id_proveedor = Proveedores.id_proveedor 
WHERE Productos.id_proveedor=1;