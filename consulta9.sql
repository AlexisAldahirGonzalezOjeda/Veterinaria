USE SuAnimalFeliz
GO

CREATE VIEW pacientes_atendidos AS 
SELECT id_doctor, COUNT(id_doctor) AS pacientes_atendidos
FROM Expediente GROUP BY id_doctor; 
