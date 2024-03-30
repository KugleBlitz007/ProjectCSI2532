-- Inserting data into ChainesHotels table
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
(3, 'Super8', 'Super8 Hotel 1', 'Super8 Hotel 1 Address', 'super8_1@example.com', '123-456-7890', 3),
(4, 'Super8', 'Super8 Hotel 2', 'Super8 Hotel 2 Address', 'super8_2@example.com', '123-456-7890', 2),
(5, 'Delta', 'Delta Hotel 1', 'Delta Hotel 1 Address', 'delta1@example.com', '123-456-7890', 4),
(6, 'Delta', 'Delta Hotel 2', 'Delta Hotel 2 Address', 'delta2@example.com', '123-456-7890', 3),
(7, 'Sheraton', 'Sheraton Hotel 1', 'Sheraton Hotel 1 Address', 'sheraton1@example.com', '123-456-7890', 5),
(8, 'Sheraton', 'Sheraton Hotel 2', 'Sheraton Hotel 2 Address', 'sheraton2@example.com', '123-456-7890', 4),
(9, 'Westin', 'Westin Hotel 1', 'Westin Hotel 1 Address', 'westin1@example.com', '123-456-7890', 5),
(10, 'Westin', 'Westin Hotel 2', 'Westin Hotel 2 Address', 'westin2@example.com', '123-456-7890', 4);

-- Inserting data into Chambres table
INSERT INTO Chambres (IDChambre, IDHotel,NomChaineHotel, NomHotel, Prix, Capacite, Vue, Extensible, ProblemesDommages)
VALUES
(1, 1,'Marriott','Marriott Hotel 1', 150.00, 'Single', 'City View', TRUE, NULL),
(2, 1,'Marriott','Marriott Hotel 2', 200.00, 'Double', 'Ocean View', FALSE, 'Minor damage to door'),
(3, 2,'Super8','Super8 Hotel 1', 80.00, 'Single', 'Street View', TRUE, NULL),
(4, 2,'Super8','Super8 Hotel 2', 120.00, 'Double', 'Pool View', FALSE, NULL),
(5, 3,'Delta','Delta Hotel 1', 100.00, 'Single', 'City View', TRUE, NULL),
(6, 3,'Delta','Delta Hotel 2', 150.00, 'Double', 'Mountain View', FALSE, NULL),
(7, 4,'Sheraton','Sheraton Hotel 1', 200.00, 'Single', 'City View', TRUE, NULL),
(8, 4,'Sheraton','Sheraton Hotel 2', 250.00, 'Double', 'Beach View', FALSE, 'None'),
(9, 5,'Westin','Westin Hotel 1', 180.00, 'Single', 'City View', TRUE, 'Minor scratches on furniture'),
(10, 5,'Westin','Westin Hotel 2', 220.00, 'Double', 'Lake View', FALSE, NULL);

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
INSERT INTO Reservations (IDReservation, IDClient, IDChambre, DateReservation, DateDebut, DateFin)
VALUES
(1, 1, 1, '2024-04-01', '2024-04-10', '2024-04-15'),
(2, 2, 3, '2024-05-15', '2024-05-20', '2024-05-25');

-- Inserting data into Locations table
INSERT INTO Locations (IDLocation, IDReservation, IDEmploye, DateLocation)
VALUES
(1, 1, 1, '2024-04-10'),
(2, 2, 2, '2024-05-15');
