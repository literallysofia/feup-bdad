.mode columns
.header on
.nullvalue NULL

SELECT max(idDispositivo) AS idMax
FROM (SELECT Dispositivo.idDispositivo FROM Dispositivo);
