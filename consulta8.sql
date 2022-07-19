USE SuAnimalFeliz
GO

CREATE VIEW pacientes_nunca_internados AS 
SELECT nombre_cliente FROM Veterinaria 
INNER JOIN Clientes ON Veterinaria.id_servicio = Clientes.id_servicio
WHERE dias_internado IS NULL;

