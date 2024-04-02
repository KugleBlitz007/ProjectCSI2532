CREATE VIEW Vue2 AS
SELECT nomhotel, SUM(capacite) AS capacite_totale
FROM Chambres
GROUP BY nomhotel;
