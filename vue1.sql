CREATE VIEW Vue1 AS
SELECT nomhotel, COUNT(*) AS nombre_de_chambres_disponibles
FROM Chambres
WHERE disponible = True
GROUP BY nomhotel;
