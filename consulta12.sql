USE SuAnimalFeliz
GO

CREATE VIEW expediente_mas_reciente AS 
SELECT Expediente.fecha_visita, Medicos.nombre, Medicos.apellido 
FROM Expediente
INNER JOIN Medicos ON Expediente.id_doctor=Medicos.id_doctor 
WHERE Expediente.fecha_visita=(SELECT max(Expediente.fecha_visita) FROM Expediente);