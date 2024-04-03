INSERT INTO ChainesHotels (IDChaineHotel, NomChaineHotel, AdresseBureauCentral, EmailContact, TelephoneContact)
VALUES
(1, 'Marriott', 'Marriott Headquarters Address', 'marriott@example.com', '123-456-7890'),
(2, 'Super8', 'Super8 Headquarters Address', 'super8@example.com', '123-456-7890'),
(3, 'Delta', 'Delta Headquarters Address', 'delta@example.com', '123-456-7890'),
(4, 'Sheraton', 'Sheraton Headquarters Address', 'sheraton@example.com', '123-456-7890'),
(5, 'Westin', 'Westin Headquarters Address', 'westin@example.com', '123-456-7890');

-- Inserting data into Hotels table
INSERT INTO Hotels (IDHotel, NomChaineHotel, NomHotel, AdresseHotel, EmailContact, TelephoneContact, Classement)
VALUES
(1, 'Marriott', 'Marriott Hotel 1', 'Marriott Hotel 1 Address', 'marriott1@example.com', '123-456-7890', 5),
(2, 'Marriott', 'Marriott Hotel 2', 'Marriott Hotel 2 Address', 'marriott2@example.com', '123-456-7890', 4),
(3, 'Marriott', 'Marriott Hotel 3', 'Marriott Hotel 3 Address', 'marriott3@example.com', '123-456-7890', 5),
(4, 'Marriott', 'Marriott Hotel 4', 'Marriott Hotel 4 Address', 'marriott4@example.com', '123-456-7890', 4),
(5, 'Marriott', 'Marriott Hotel 5', 'Marriott Hotel 5 Address', 'marriott5@example.com', '123-456-7890', 3),
(6, 'Marriott', 'Marriott Hotel 6', 'Marriott Hotel 6 Address', 'marriott6@example.com', '123-456-7890', 3),
(7, 'Marriott', 'Marriott Hotel 7', 'Marriott Hotel 7 Address', 'marriott7@example.com', '123-456-7890', 4),
(8, 'Marriott', 'Marriott Hotel 8', 'Marriott Hotel 8 Address', 'marriott8@example.com', '123-456-7890', 4),

(9, 'Super8', 'Super8 Hotel 1', 'Super8 Hotel 1 Address', 'super8_1@example.com', '123-456-7890', 3),
(10, 'Super8', 'Super8 Hotel 2', 'Super8 Hotel 2 Address', 'super8_2@example.com', '123-456-7890', 2),
(11, 'Super8', 'Super8 Hotel 3', 'Super8 Hotel 3 Address', 'super8_3@example.com', '123-456-7890', 3),
(12, 'Super8', 'Super8 Hotel 4', 'Super8 Hotel 4 Address', 'super8_4@example.com', '123-456-7890', 2),
(13, 'Super8', 'Super8 Hotel 5', 'Super8 Hotel 5 Address', 'super8_5@example.com', '123-456-7890', 4),
(14, 'Super8', 'Super8 Hotel 6', 'Super8 Hotel 6 Address', 'super8_6@example.com', '123-456-7890', 4),
(15, 'Super8', 'Super8 Hotel 7', 'Super8 Hotel 7 Address', 'super8_7@example.com', '123-456-7890', 3),
(16, 'Super8', 'Super8 Hotel 8', 'Super8 Hotel 8 Address', 'super8_8@example.com', '123-456-7890', 3),

(17, 'Delta', 'Delta Hotel 1', 'Delta Hotel 1 Address', 'delta1@example.com', '123-456-7890', 4),
(18, 'Delta', 'Delta Hotel 2', 'Delta Hotel 2 Address', 'delta2@example.com', '123-456-7890', 3),
(19, 'Delta', 'Delta Hotel 3', 'Delta Hotel 3 Address', 'delta3@example.com', '123-456-7890', 4),
(20, 'Delta', 'Delta Hotel 4', 'Delta Hotel 4 Address', 'delta4@example.com', '123-456-7890', 3),
(21, 'Delta', 'Delta Hotel 5', 'Delta Hotel 5 Address', 'delta5@example.com', '123-456-7890', 4),
(22, 'Delta', 'Delta Hotel 6', 'Delta Hotel 6 Address', 'delta6@example.com', '123-456-7890', 4),
(23, 'Delta', 'Delta Hotel 7', 'Delta Hotel 7 Address', 'delta7@example.com', '123-456-7890', 3),
(24, 'Delta', 'Delta Hotel 8', 'Delta Hotel 8 Address', 'delta8@example.com', '123-456-7890', 3),

(25, 'Sheraton', 'Sheraton Hotel 1', 'Sheraton Hotel 1 Address', 'sheraton1@example.com', '123-456-7890', 5),
(26, 'Sheraton', 'Sheraton Hotel 2', 'Sheraton Hotel 2 Address', 'sheraton2@example.com', '123-456-7890', 4),
(27, 'Sheraton', 'Sheraton Hotel 3', 'Sheraton Hotel 3 Address', 'sheraton3@example.com', '123-456-7890', 5),
(28, 'Sheraton', 'Sheraton Hotel 4', 'Sheraton Hotel 4 Address', 'sheraton4@example.com', '123-456-7890', 4),
(29, 'Sheraton', 'Sheraton Hotel 5', 'Sheraton Hotel 5 Address', 'sheraton5@example.com', '123-456-7890', 5),
(30, 'Sheraton', 'Sheraton Hotel 6', 'Sheraton Hotel 6 Address', 'sheraton6@example.com', '123-456-7890', 5),
(31, 'Sheraton', 'Sheraton Hotel 7', 'Sheraton Hotel 7 Address', 'sheraton7@example.com', '123-456-7890', 4),
(32, 'Sheraton', 'Sheraton Hotel 8', 'Sheraton Hotel 8 Address', 'sheraton8@example.com', '123-456-7890', 4),

(33, 'Westin', 'Westin Hotel 1', 'Westin Hotel 1 Address', 'westin1@example.com', '123-456-7890', 5),
(34, 'Westin', 'Westin Hotel 2', 'Westin Hotel 2 Address', 'westin2@example.com', '123-456-7890', 4),
(35, 'Westin', 'Westin Hotel 3', 'Westin Hotel 3 Address', 'westin3@example.com', '123-456-7890', 5),
(36, 'Westin', 'Westin Hotel 4', 'Westin Hotel 4 Address', 'westin4@example.com', '123-456-7890', 5),
(37, 'Westin', 'Westin Hotel 5', 'Westin Hotel 5 Address', 'westin5@example.com', '123-456-7890', 4),
(38, 'Westin', 'Westin Hotel 6', 'Westin Hotel 6 Address', 'westin6@example.com', '123-456-7890', 4),
(39, 'Westin', 'Westin Hotel 7', 'Westin Hotel 7 Address', 'westin7@example.com', '123-456-7890', 5),
(40, 'Westin', 'Westin Hotel 8', 'Westin Hotel 8 Address', 'westin8@example.com', '123-456-7890', 4);

-- Inserting data into Chambres table
INSERT INTO Chambres (IDChambre, IDHotel,NomChaineHotel, NomHotel, Prix, Capacite, Vue, Extensible, ProblemesDommages, Disponible)
VALUES
(1, 1,'Marriott','Marriott Hotel 1', 150.00, 5, 'City View', TRUE, NULL, TRUE),
(2, 2,'Marriott','Marriott Hotel 2', 200.00, 2, 'Ocean View', FALSE, 'Minor damage to door', TRUE),
(3, 3,'Marriott','Marriott Hotel 3', 150.00, 6, 'City View', TRUE, NULL, TRUE),
(4, 4,'Marriott','Marriott Hotel 4', 140.00, 5, 'Ocean View', TRUE, 'Minor damage to floor', TRUE),
(5, 5,'Marriott','Marriott Hotel 5', 150.00, 7, 'City View', TRUE, NULL, TRUE),
(6, 6,'Marriott','Marriott Hotel 6', 130.00, 5, 'City View', TRUE, 'Minor damage to ceilling', TRUE),
(7, 7,'Marriott','Marriott Hotel 7', 150.00, 2, 'Ocean View', TRUE, NULL, TRUE),
(8, 8,'Marriott','Marriott Hotel 8', 170.00, 5, 'City View', TRUE, 'Minor damage to wall', TRUE),

(9, 9,'Super8','Super8 Hotel 1', 80.00, 4, 'Street View', TRUE, NULL, TRUE),
(10, 10,'Super8','Super8 Hotel 2', 120.00, 5, 'Pool View', FALSE, NULL, TRUE),
(11, 11,'Super8','Super8 Hotel 3', 130.00, 4, 'Pool View', FALSE, NULL, TRUE),
(12, 12,'Super8','Super8 Hotel 4', 120.00, 5, 'Street View', FALSE, NULL, TRUE),
(13, 13,'Super8','Super8 Hotel 5', 90.00, 3, 'Street View', FALSE, NULL, TRUE),
(14, 14,'Super8','Super8 Hotel 6', 100.00, 5, 'Pool View', FALSE, NULL, TRUE),
(15, 15,'Super8','Super8 Hotel 7', 120.00, 2, 'Street View', FALSE, NULL, TRUE),
(16, 16,'Super8','Super8 Hotel 8', 110.00, 5, 'Pool View', FALSE, NULL, TRUE),

(17, 17,'Delta','Delta Hotel 1', 100.00, 2, 'City View', TRUE, NULL, TRUE),
(18, 18,'Delta','Delta Hotel 2', 150.00, 4, 'Mountain View', FALSE, NULL, TRUE),
(19, 19,'Delta','Delta Hotel 3', 140.00, 3, 'City View', FALSE, NULL, TRUE),
(20, 20,'Delta','Delta Hotel 4', 150.00, 4, 'Mountain View', FALSE, NULL, TRUE),
(21, 21,'Delta','Delta Hotel 5', 130.00, 5, 'Mountain View', FALSE, NULL, TRUE),
(22, 22,'Delta','Delta Hotel 6', 150.00, 4, 'City View', FALSE, NULL, TRUE),
(23, 23,'Delta','Delta Hotel 7', 170.00, 6, 'Mountain View', FALSE, NULL, TRUE),
(24, 24,'Delta','Delta Hotel 8', 150.00, 4, 'City View', FALSE, NULL, TRUE),

(25, 25,'Sheraton','Sheraton Hotel 1', 200.00, 2, 'City View', TRUE, NULL, TRUE),
(26, 26,'Sheraton','Sheraton Hotel 2', 250.00, 4, 'Beach View', FALSE, 'None', TRUE),
(27, 27,'Sheraton','Sheraton Hotel 3', 200.00, 2, 'City View', TRUE, NULL, TRUE),
(28, 28,'Sheraton','Sheraton Hotel 4', 240.00, 3, 'City View', TRUE, NULL, TRUE),
(29, 29,'Sheraton','Sheraton Hotel 5', 200.00, 2, 'Beach View', TRUE, NULL, TRUE),
(30, 30,'Sheraton','Sheraton Hotel 6', 190.00, 5, 'City View', TRUE, NULL, TRUE),
(31, 31,'Sheraton','Sheraton Hotel 7', 200.00, 2, 'Beach View', TRUE, NULL, TRUE),
(32, 32,'Sheraton','Sheraton Hotel 8', 170.00, 3, 'Beach View', TRUE, NULL, TRUE),

(33, 33,'Westin','Westin Hotel 1', 180.00, 5, 'City View', TRUE, 'Minor scratches on furniture', TRUE),
(34, 34,'Westin','Westin Hotel 2', 220.00, 5, 'Lake View', FALSE, NULL, TRUE),
(35, 35,'Westin','Westin Hotel 3', 190.00, 5, 'Lake View', FALSE, NULL, TRUE),
(36, 36,'Westin','Westin Hotel 4', 230.00, 5, 'City View', FALSE, NULL, TRUE),
(37, 37,'Westin','Westin Hotel 5', 270.00, 5, 'City View', FALSE, 'Minor scratches on window', TRUE),
(38, 38,'Westin','Westin Hotel 6', 220.00, 5, 'Lake View', FALSE, NULL, TRUE),
(39, 39,'Westin','Westin Hotel 7', 240.00, 5, 'City View', FALSE, NULL, TRUE),
(40, 40,'Westin','Westin Hotel 8', 220.00, 5, 'Lake View', FALSE, NULL, TRUE);


-- Inserting data into Clients table
INSERT INTO Clients (IDClient, NomComplet, Adresse, NumeroSecuriteSociale, DateEnregistrement)
VALUES
(11111111, 'John Doe', '123 Main St City Country', '123456789', '2024-03-27'),
(22222222, 'Jane Smith', '456 Elm St City Country', '987654321', '2024-03-28');

-- Inserting data into Employes table
INSERT INTO Employes (IDEmploye, NomComplet, Adresse, NumeroSecuriteSociale, RolePoste)
VALUES
(1, 'Michael Johnson', '789 Oak St, City Country', '456123789', 'Receptionist'),
(2, 'Emily Williams', '101 Pine St, City, Country', '789456123', 'Manager');

-- Inserting data into Reservations table
INSERT INTO Reservations (IDReservation, IDClient, IDChambre, DateReservation, DateDebut, DateFin, client_arrived)
VALUES
(1, 11111111, 1, '2024-04-01', '2024-04-10', '2024-04-15',FALSE),
(2, 11111111, 3, '2024-05-15', '2024-05-20', '2024-05-25', FALSE);

-- Inserting data into Locations table
INSERT INTO Locations (IDLocation, IDReservation, IDEmploye, DateLocation)
VALUES
(1, 1, 1, '2024-04-10'),
(2, 2, 2, '2024-05-15');

