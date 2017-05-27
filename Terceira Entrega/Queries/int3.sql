.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

-- 3. Os IDs dos utilizadores premium que usam telemóvel.
SELECT UP.id AS PhonePremiumUsers
FROM UtilizadorPremium UP
INNER JOIN Utilizador U
ON U.id=UP.id
INNER JOIN Dispositivo D
ON D.idUser=U.id
INNER JOIN TipoDispositivo TD
ON TD.idTipoDispositivo = D.idTipoDispositivo
WHERE TD.tipoNome='Phone';
