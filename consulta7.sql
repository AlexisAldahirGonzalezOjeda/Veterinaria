USE SuAnimalFeliz
GO

CREATE VIEW hacer_pedido AS
SELECT producto AS producto_stock_bajo, id_proveedor
FROM Productos WHERE cantidad_actual <= cantidad_minima;