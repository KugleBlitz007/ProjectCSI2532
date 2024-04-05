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
INSERT INTO Chambres (IDChambre, IDHotel, NomChaineHotel, NomHotel, Prix, Capacite, Vue, Extensible, ProblemesDommages, Disponible)
-- Marriott Hotel 1
VALUES
(1, 1, 'Marriott', 'Marriott Hotel 1', 150.00, 5, 'City View', TRUE, NULL, TRUE),
(2, 1, 'Marriott', 'Marriott Hotel 1', 200.00, 2, 'Ocean View', FALSE, 'Minor damage to door', TRUE),
(3, 1, 'Marriott', 'Marriott Hotel 1', 150.00, 6, 'City View', TRUE, NULL, TRUE),
(4, 1, 'Marriott', 'Marriott Hotel 1', 140.00, 5, 'Ocean View', TRUE, 'Minor damage to floor', TRUE),
(5, 1, 'Marriott', 'Marriott Hotel 1', 150.00, 7, 'City View', TRUE, NULL, TRUE),

-- Marriott Hotel 2
(6, 2, 'Marriott', 'Marriott Hotel 2', 130.00, 4, 'City View', TRUE, 'Minor damage to ceiling', TRUE),
(7, 2, 'Marriott', 'Marriott Hotel 2', 180.00, 3, 'Ocean View', TRUE, NULL, TRUE),
(8, 2, 'Marriott', 'Marriott Hotel 2', 160.00, 5, 'City View', TRUE, NULL, TRUE),
(9, 2, 'Marriott', 'Marriott Hotel 2', 200.00, 2, 'Ocean View', FALSE, 'Minor damage to door', TRUE),
(10, 2, 'Marriott', 'Marriott Hotel 2', 170.00, 6, 'City View', TRUE, NULL, TRUE),

-- Marriott Hotel 3
(11, 3, 'Marriott', 'Marriott Hotel 3', 150.00, 5, 'City View', TRUE, NULL, TRUE),
(12, 3, 'Marriott', 'Marriott Hotel 3', 200.00, 3, 'Ocean View', TRUE, NULL, TRUE),
(13, 3, 'Marriott', 'Marriott Hotel 3', 140.00, 4, 'City View', FALSE, 'Minor damage to window', TRUE),
(14, 3, 'Marriott', 'Marriott Hotel 3', 180.00, 6, 'Ocean View', TRUE, NULL, TRUE),
(15, 3, 'Marriott', 'Marriott Hotel 3', 160.00, 5, 'City View', TRUE, 'Minor damage to floor', TRUE),

-- Marriott Hotel 4
(16, 4, 'Marriott', 'Marriott Hotel 4', 170.00, 5, 'City View', TRUE, NULL, TRUE),
(17, 4, 'Marriott', 'Marriott Hotel 4', 190.00, 2, 'Ocean View', FALSE, 'Minor damage to door', TRUE),
(18, 4, 'Marriott', 'Marriott Hotel 4', 150.00, 6, 'City View', TRUE, NULL, TRUE),
(19, 4, 'Marriott', 'Marriott Hotel 4', 200.00, 4, 'Ocean View', TRUE, 'Minor damage to floor', TRUE),
(20, 4, 'Marriott', 'Marriott Hotel 4', 180.00, 5, 'City View', TRUE, NULL, TRUE),

-- Marriott Hotel 5
(21, 5, 'Marriott', 'Marriott Hotel 5', 150.00, 5, 'City View', TRUE, NULL, TRUE),
(22, 5, 'Marriott', 'Marriott Hotel 5', 200.00, 3, 'Ocean View', FALSE, 'Minor damage to door', TRUE),
(23, 5, 'Marriott', 'Marriott Hotel 5', 140.00, 6, 'City View', TRUE, NULL, TRUE),
(24, 5, 'Marriott', 'Marriott Hotel 5', 180.00, 4, 'Ocean View', TRUE, NULL, TRUE),
(25, 5, 'Marriott', 'Marriott Hotel 5', 160.00, 5, 'City View', TRUE, 'Minor damage to floor', TRUE),

-- Marriott Hotel 6
(26, 6, 'Marriott', 'Marriott Hotel 6', 170.00, 5, 'City View', TRUE, NULL, TRUE),
(27, 6, 'Marriott', 'Marriott Hotel 6', 190.00, 2, 'Ocean View', FALSE, 'Minor damage to door', TRUE),
(28, 6, 'Marriott', 'Marriott Hotel 6', 150.00, 6, 'City View', TRUE, NULL, TRUE),
(29, 6, 'Marriott', 'Marriott Hotel 6', 200.00, 4, 'Ocean View', TRUE, 'Minor damage to floor', TRUE),
(30, 6, 'Marriott', 'Marriott Hotel 6', 180.00, 5, 'City View', TRUE, NULL, TRUE),

-- Marriott Hotel 7
(31, 7, 'Marriott', 'Marriott Hotel 7', 150.00, 5, 'City View', TRUE, NULL, TRUE),
(32, 7, 'Marriott', 'Marriott Hotel 7', 200.00, 3, 'Ocean View', FALSE, 'Minor damage to door', TRUE),
(33, 7, 'Marriott', 'Marriott Hotel 7', 140.00, 6, 'City View', TRUE, NULL, TRUE),
(34, 7, 'Marriott', 'Marriott Hotel 7', 180.00, 4, 'Ocean View', TRUE, NULL, TRUE),
(35, 7, 'Marriott', 'Marriott Hotel 7', 160.00, 5, 'City View', TRUE, 'Minor damage to floor', TRUE),

-- Marriott Hotel 8
(36, 8, 'Marriott', 'Marriott Hotel 8', 170.00, 5, 'City View', TRUE, NULL, TRUE),
(37, 8, 'Marriott', 'Marriott Hotel 8', 190.00, 2, 'Ocean View', FALSE, 'Minor damage to door', TRUE),
(38, 8, 'Marriott', 'Marriott Hotel 8', 150.00, 6, 'City View', TRUE, NULL, TRUE),
(39, 8, 'Marriott', 'Marriott Hotel 8', 200.00, 4, 'Ocean View', TRUE, 'Minor damage to floor', TRUE),
(40, 8, 'Marriott', 'Marriott Hotel 8', 180.00, 5, 'City View', TRUE, NULL, TRUE),

-- Super8 Hotel 1
(41, 9, 'Super8', 'Super8 Hotel 1', 80.00, 4, 'Street View', TRUE, NULL, TRUE),
(42, 9, 'Super8', 'Super8 Hotel 1', 90.00, 3, 'Pool View', TRUE, NULL, TRUE),
(43, 9, 'Super8', 'Super8 Hotel 1', 100.00, 5, 'Street View', FALSE, 'Minor damage to door', TRUE),
(44, 9, 'Super8', 'Super8 Hotel 1', 85.00, 4, 'Pool View', TRUE, NULL, TRUE),
(45, 9, 'Super8', 'Super8 Hotel 1', 95.00, 5, 'Street View', TRUE, 'Minor damage to floor', TRUE),

-- Super8 Hotel 2
(46, 10, 'Super8', 'Super8 Hotel 2', 120.00, 5, 'Pool View', FALSE, NULL, TRUE),
(47, 10, 'Super8', 'Super8 Hotel 2', 130.00, 4, 'Street View', TRUE, NULL, TRUE),
(48, 10, 'Super8', 'Super8 Hotel 2', 110.00, 5, 'Pool View', FALSE, 'Minor damage to door', TRUE),
(49, 10, 'Super8', 'Super8 Hotel 2', 125.00, 3, 'Street View', TRUE, NULL, TRUE),
(50, 10, 'Super8', 'Super8 Hotel 2', 135.00, 6, 'Pool View', TRUE, 'Minor damage to floor', TRUE),

-- Super8 Hotel 3
(51, 11, 'Super8', 'Super8 Hotel 3', 130.00, 4, 'Pool View', FALSE, NULL, TRUE),
(52, 11, 'Super8', 'Super8 Hotel 3', 140.00, 3, 'Street View', TRUE, NULL, TRUE),
(53, 11, 'Super8', 'Super8 Hotel 3', 120.00, 5, 'Pool View', FALSE, 'Minor damage to door', TRUE),
(54, 11, 'Super8', 'Super8 Hotel 3', 135.00, 4, 'Street View', TRUE, NULL, TRUE),
(55, 11, 'Super8', 'Super8 Hotel 3', 145.00, 6, 'Pool View', TRUE, 'Minor damage to floor', TRUE),

-- Super8 Hotel 4
(56, 12, 'Super8', 'Super8 Hotel 4', 120.00, 5, 'Street View', FALSE, NULL, TRUE),
(57, 12, 'Super8', 'Super8 Hotel 4', 130.00, 4, 'Pool View', TRUE, NULL, TRUE),
(58, 12, 'Super8', 'Super8 Hotel 4', 110.00, 5, 'Street View', FALSE, 'Minor damage to door', TRUE),
(59, 12, 'Super8', 'Super8 Hotel 4', 125.00, 3, 'Pool View', TRUE, NULL, TRUE),
(60, 12, 'Super8', 'Super8 Hotel 4', 135.00, 6, 'Street View', TRUE, 'Minor damage to floor', TRUE),

-- Super8 Hotel 5
(61, 13, 'Super8', 'Super8 Hotel 5', 90.00, 3, 'Street View', FALSE, NULL, TRUE),
(62, 13, 'Super8', 'Super8 Hotel 5', 100.00, 5, 'Pool View', TRUE, NULL, TRUE),
(63, 13, 'Super8', 'Super8 Hotel 5', 80.00, 4, 'Street View', FALSE, 'Minor damage to door', TRUE),
(64, 13, 'Super8', 'Super8 Hotel 5', 95.00, 3, 'Pool View', TRUE, NULL, TRUE),
(65, 13, 'Super8', 'Super8 Hotel 5', 105.00, 6, 'Street View', TRUE, 'Minor damage to floor', TRUE),

-- Super8 Hotel 6
(66, 14, 'Super8', 'Super8 Hotel 6', 100.00, 5, 'Pool View', FALSE, NULL, TRUE),
(67, 14, 'Super8', 'Super8 Hotel 6', 110.00, 4, 'Street View', TRUE, NULL, TRUE),
(68, 14, 'Super8', 'Super8 Hotel 6', 90.00, 5, 'Pool View', FALSE, 'Minor damage to door', TRUE),
(69, 14, 'Super8', 'Super8 Hotel 6', 105.00, 3, 'Street View', TRUE, NULL, TRUE),
(70, 14, 'Super8', 'Super8 Hotel 6', 115.00, 6, 'Pool View', TRUE, 'Minor damage to floor', TRUE),

-- Super8 Hotel 7
(71, 15, 'Super8', 'Super8 Hotel 7', 120.00, 2, 'Street View', FALSE, NULL, TRUE),
(72, 15, 'Super8', 'Super8 Hotel 7', 130.00, 3, 'Pool View', TRUE, NULL, TRUE),
(73, 15, 'Super8', 'Super8 Hotel 7', 110.00, 2, 'Street View', FALSE, 'Minor damage to door', TRUE),
(74, 15, 'Super8', 'Super8 Hotel 7', 125.00, 4, 'Pool View', TRUE, NULL, TRUE),
(75, 15, 'Super8', 'Super8 Hotel 7', 135.00, 3, 'Street View', TRUE, 'Minor damage to floor', TRUE),

-- Super8 Hotel 8
(76, 16, 'Super8', 'Super8 Hotel 8', 110.00, 5, 'Pool View', FALSE, NULL, TRUE),
(77, 16, 'Super8', 'Super8 Hotel 8', 120.00, 4, 'Street View', TRUE, NULL, TRUE),
(78, 16, 'Super8', 'Super8 Hotel 8', 100.00, 5, 'Pool View', FALSE, 'Minor damage to door', TRUE),
(79, 16, 'Super8', 'Super8 Hotel 8', 115.00, 3, 'Street View', TRUE, NULL, TRUE),
(80, 16, 'Super8', 'Super8 Hotel 8', 125.00, 6, 'Pool View', TRUE, 'Minor damage to floor', TRUE),

-- Delta Hotel 1
(81, 17, 'Delta', 'Delta Hotel 1', 100.00, 2, 'City View', TRUE, NULL, TRUE),
(82, 17, 'Delta', 'Delta Hotel 1', 110.00, 3, 'Mountain View', TRUE, NULL, TRUE),
(83, 17, 'Delta', 'Delta Hotel 1', 120.00, 4, 'City View', FALSE, NULL, TRUE),
(84, 17, 'Delta', 'Delta Hotel 1', 105.00, 2, 'Mountain View', TRUE, NULL, TRUE),
(85, 17, 'Delta', 'Delta Hotel 1', 115.00, 3, 'City View', TRUE, NULL, TRUE),

-- Delta Hotel 2
(86, 18, 'Delta', 'Delta Hotel 2', 150.00, 4, 'Mountain View', FALSE, NULL, TRUE),
(87, 18, 'Delta', 'Delta Hotel 2', 160.00, 5, 'City View', TRUE, NULL, TRUE),
(88, 18, 'Delta', 'Delta Hotel 2', 170.00, 6, 'Mountain View', FALSE, NULL, TRUE),
(89, 18, 'Delta', 'Delta Hotel 2', 155.00, 4, 'City View', FALSE, NULL, TRUE),
(90, 18, 'Delta', 'Delta Hotel 2', 165.00, 5, 'Mountain View', TRUE, NULL, TRUE),

-- Delta Hotel 3
(91, 19, 'Delta', 'Delta Hotel 3', 140.00, 3, 'City View', FALSE, NULL, TRUE),
(92, 19, 'Delta', 'Delta Hotel 3', 150.00, 4, 'Mountain View', TRUE, NULL, TRUE),
(93, 19, 'Delta', 'Delta Hotel 3', 160.00, 5, 'City View', FALSE, NULL, TRUE),
(94, 19, 'Delta', 'Delta Hotel 3', 145.00, 3, 'Mountain View', TRUE, NULL, TRUE),
(95, 19, 'Delta', 'Delta Hotel 3', 155.00, 4, 'City View', TRUE, NULL, TRUE),

-- Delta Hotel 4
(96, 20, 'Delta', 'Delta Hotel 4', 150.00, 4, 'Mountain View', FALSE, NULL, TRUE),
(97, 20, 'Delta', 'Delta Hotel 4', 160.00, 5, 'City View', TRUE, NULL, TRUE),
(98, 20, 'Delta', 'Delta Hotel 4', 170.00, 6, 'Mountain View', FALSE, NULL, TRUE),
(99, 20, 'Delta', 'Delta Hotel 4', 155.00, 4, 'City View', FALSE, NULL, TRUE),
(100, 20, 'Delta', 'Delta Hotel 4', 165.00, 5, 'Mountain View', TRUE, NULL, TRUE),

-- Delta Hotel 5
(101, 21, 'Delta', 'Delta Hotel 5', 130.00, 5, 'Mountain View', FALSE, NULL, TRUE),
(102, 21, 'Delta', 'Delta Hotel 5', 140.00, 6, 'City View', TRUE, NULL, TRUE),
(103, 21, 'Delta', 'Delta Hotel 5', 150.00, 7, 'Mountain View', FALSE, NULL, TRUE),
(104, 21, 'Delta', 'Delta Hotel 5', 135.00, 5, 'City View', FALSE, NULL, TRUE),
(105, 21, 'Delta', 'Delta Hotel 5', 145.00, 6, 'Mountain View', TRUE, NULL, TRUE),

-- Delta Hotel 6
(106, 22, 'Delta', 'Delta Hotel 6', 150.00, 4, 'City View', FALSE, NULL, TRUE),
(107, 22, 'Delta', 'Delta Hotel 6', 160.00, 5, 'Mountain View', TRUE, NULL, TRUE),
(108, 22, 'Delta', 'Delta Hotel 6', 170.00, 6, 'City View', FALSE, NULL, TRUE),
(109, 22, 'Delta', 'Delta Hotel 6', 155.00, 4, 'Mountain View', FALSE, NULL, TRUE),
(110, 22, 'Delta', 'Delta Hotel 6', 165.00, 5, 'City View', TRUE, NULL, TRUE),

-- Delta Hotel 7
(111, 23, 'Delta', 'Delta Hotel 7', 170.00, 6, 'Mountain View', FALSE, NULL, TRUE),
(112, 23, 'Delta', 'Delta Hotel 7', 180.00, 7, 'City View', TRUE, NULL, TRUE),
(113, 23, 'Delta', 'Delta Hotel 7', 190.00, 8, 'Mountain View', FALSE, NULL, TRUE),
(114, 23, 'Delta', 'Delta Hotel 7', 175.00, 6, 'City View', FALSE, NULL, TRUE),
(115, 23, 'Delta', 'Delta Hotel 7', 185.00, 7, 'Mountain View', TRUE, NULL, TRUE),

-- Delta Hotel 8
(116, 24, 'Delta', 'Delta Hotel 8', 150.00, 4, 'City View', FALSE, NULL, TRUE),
(117, 24, 'Delta', 'Delta Hotel 8', 160.00, 5, 'Mountain View', TRUE, NULL, TRUE),
(118, 24, 'Delta', 'Delta Hotel 8', 170.00, 6, 'City View', FALSE, NULL, TRUE),
(119, 24, 'Delta', 'Delta Hotel 8', 155.00, 4, 'Mountain View', FALSE, NULL, TRUE),
(120, 24, 'Delta', 'Delta Hotel 8', 165.00, 5, 'City View', TRUE, NULL, TRUE),

-- Sheraton Hotel 1
(121, 25, 'Sheraton', 'Sheraton Hotel 1', 200.00, 2, 'City View', TRUE, NULL, TRUE),
(122, 25, 'Sheraton', 'Sheraton Hotel 1', 210.00, 3, 'Beach View', TRUE, NULL, TRUE),
(123, 25, 'Sheraton', 'Sheraton Hotel 1', 220.00, 4, 'City View', FALSE, NULL, TRUE),
(124, 25, 'Sheraton', 'Sheraton Hotel 1', 205.00, 2, 'Beach View', TRUE, NULL, TRUE),
(125, 25, 'Sheraton', 'Sheraton Hotel 1', 215.00, 3, 'City View', TRUE, NULL, TRUE),

-- Sheraton Hotel 2
(126, 26, 'Sheraton', 'Sheraton Hotel 2', 250.00, 4, 'Beach View', FALSE, 'None', TRUE),
(127, 26, 'Sheraton', 'Sheraton Hotel 2', 260.00, 5, 'City View', TRUE, NULL, TRUE),
(128, 26, 'Sheraton', 'Sheraton Hotel 2', 270.00, 6, 'Beach View', FALSE, NULL, TRUE),
(129, 26, 'Sheraton', 'Sheraton Hotel 2', 255.00, 4, 'City View', FALSE, NULL, TRUE),
(130, 26, 'Sheraton', 'Sheraton Hotel 2', 265.00, 5, 'Beach View', TRUE, NULL, TRUE),

-- Sheraton Hotel 3
(131, 27, 'Sheraton', 'Sheraton Hotel 3', 200.00, 2, 'City View', TRUE, NULL, TRUE),
(132, 27, 'Sheraton', 'Sheraton Hotel 3', 210.00, 3, 'Beach View', TRUE, NULL, TRUE),
(133, 27, 'Sheraton', 'Sheraton Hotel 3', 220.00, 4, 'City View', FALSE, NULL, TRUE),
(134, 27, 'Sheraton', 'Sheraton Hotel 3', 205.00, 2, 'Beach View', TRUE, NULL, TRUE),
(135, 27, 'Sheraton', 'Sheraton Hotel 3', 215.00, 3, 'City View', TRUE, NULL, TRUE),

-- Sheraton Hotel 4
(136, 28, 'Sheraton', 'Sheraton Hotel 4', 240.00, 3, 'City View', TRUE, NULL, TRUE),
(137, 28, 'Sheraton', 'Sheraton Hotel 4', 250.00, 4, 'Beach View', FALSE, NULL, TRUE),
(138, 28, 'Sheraton', 'Sheraton Hotel 4', 260.00, 5, 'City View', TRUE, NULL, TRUE),
(139, 28, 'Sheraton', 'Sheraton Hotel 4', 245.00, 3, 'Beach View', TRUE, NULL, TRUE),
(140, 28, 'Sheraton', 'Sheraton Hotel 4', 255.00, 4, 'City View', FALSE, NULL, TRUE),

-- Sheraton Hotel 5
(141, 29, 'Sheraton', 'Sheraton Hotel 5', 200.00, 2, 'Beach View', TRUE, NULL, TRUE),
(142, 29, 'Sheraton', 'Sheraton Hotel 5', 210.00, 3, 'City View', TRUE, NULL, TRUE),
(143, 29, 'Sheraton', 'Sheraton Hotel 5', 220.00, 4, 'Beach View', FALSE, NULL, TRUE),
(144, 29, 'Sheraton', 'Sheraton Hotel 5', 205.00, 2, 'City View', TRUE, NULL, TRUE),
(145, 29, 'Sheraton', 'Sheraton Hotel 5', 215.00, 3, 'Beach View', TRUE, NULL, TRUE),

-- Sheraton Hotel 6
(146, 30, 'Sheraton', 'Sheraton Hotel 6', 190.00, 5, 'City View', TRUE, NULL, TRUE),
(147, 30, 'Sheraton', 'Sheraton Hotel 6', 200.00, 6, 'Beach View', FALSE, NULL, TRUE),
(148, 30, 'Sheraton', 'Sheraton Hotel 6', 210.00, 7, 'City View', TRUE, NULL, TRUE),
(149, 30, 'Sheraton', 'Sheraton Hotel 6', 195.00, 5, 'Beach View', TRUE, NULL, TRUE),
(150, 30, 'Sheraton', 'Sheraton Hotel 6', 205.00, 6, 'City View', FALSE, NULL, TRUE),

-- Sheraton Hotel 7
(151, 31, 'Sheraton', 'Sheraton Hotel 7', 200.00, 2, 'Beach View', TRUE, NULL, TRUE),
(152, 31, 'Sheraton', 'Sheraton Hotel 7', 210.00, 3, 'City View', TRUE, NULL, TRUE),
(153, 31, 'Sheraton', 'Sheraton Hotel 7', 220.00, 4, 'Beach View', FALSE, NULL, TRUE),
(154, 31, 'Sheraton', 'Sheraton Hotel 7', 205.00, 2, 'City View', TRUE, NULL, TRUE),
(155, 31, 'Sheraton', 'Sheraton Hotel 7', 215.00, 3, 'Beach View', TRUE, NULL, TRUE),

-- Sheraton Hotel 8
(156, 32, 'Sheraton', 'Sheraton Hotel 8', 170.00, 3, 'Beach View', TRUE, NULL, TRUE),
(157, 32, 'Sheraton', 'Sheraton Hotel 8', 180.00, 4, 'City View', TRUE, NULL, TRUE),
(158, 32, 'Sheraton', 'Sheraton Hotel 8', 190.00, 5, 'Beach View', FALSE, NULL, TRUE),
(159, 32, 'Sheraton', 'Sheraton Hotel 8', 175.00, 3, 'City View', TRUE, NULL, TRUE),
(160, 32, 'Sheraton', 'Sheraton Hotel 8', 185.00, 4, 'Beach View', TRUE, NULL, TRUE),

-- Westin Hotel 1
(161, 33, 'Westin', 'Westin Hotel 1', 180.00, 5, 'City View', TRUE, 'Minor scratches on furniture', TRUE),
(162, 33, 'Westin', 'Westin Hotel 1', 190.00, 6, 'Lake View', FALSE, NULL, TRUE),
(163, 33, 'Westin', 'Westin Hotel 1', 200.00, 7, 'City View', FALSE, NULL, TRUE),
(164, 33, 'Westin', 'Westin Hotel 1', 185.00, 5, 'Lake View', TRUE, NULL, TRUE),
(165, 33, 'Westin', 'Westin Hotel 1', 195.00, 6, 'City View', TRUE, NULL, TRUE),

-- Westin Hotel 2
(166, 34, 'Westin', 'Westin Hotel 2', 220.00, 5, 'Lake View', FALSE, NULL, TRUE),
(167, 34, 'Westin', 'Westin Hotel 2', 230.00, 6, 'City View', TRUE, NULL, TRUE),
(168, 34, 'Westin', 'Westin Hotel 2', 240.00, 7, 'Lake View', FALSE, NULL, TRUE),
(169, 34, 'Westin', 'Westin Hotel 2', 225.00, 5, 'City View', FALSE, NULL, TRUE),
(170, 34, 'Westin', 'Westin Hotel 2', 235.00, 6, 'Lake View', TRUE, NULL, TRUE),

-- Westin Hotel 3
(171, 35, 'Westin', 'Westin Hotel 3', 190.00, 5, 'Lake View', FALSE, NULL, TRUE),
(172, 35, 'Westin', 'Westin Hotel 3', 200.00, 6, 'City View', TRUE, NULL, TRUE),
(173, 35, 'Westin', 'Westin Hotel 3', 210.00, 7, 'Lake View', FALSE, NULL, TRUE),
(174, 35, 'Westin', 'Westin Hotel 3', 195.00, 5, 'City View', TRUE, NULL, TRUE),
(175, 35, 'Westin', 'Westin Hotel 3', 205.00, 6, 'Lake View', TRUE, NULL, TRUE),

-- Westin Hotel 4
(176, 36, 'Westin', 'Westin Hotel 4', 230.00, 5, 'City View', FALSE, NULL, TRUE),
(177, 36, 'Westin', 'Westin Hotel 4', 240.00, 6, 'Lake View', TRUE, NULL, TRUE),
(178, 36, 'Westin', 'Westin Hotel 4', 250.00, 7, 'City View', FALSE, NULL, TRUE),
(179, 36, 'Westin', 'Westin Hotel 4', 235.00, 5, 'Lake View', TRUE, NULL, TRUE),
(180, 36, 'Westin', 'Westin Hotel 4', 245.00, 6, 'City View', TRUE, NULL, TRUE),

-- Westin Hotel 5
(181, 37, 'Westin', 'Westin Hotel 5', 270.00, 5, 'City View', FALSE, 'Minor scratches on window', TRUE),
(182, 37, 'Westin', 'Westin Hotel 5', 280.00, 6, 'Lake View', TRUE, NULL, TRUE),
(183, 37, 'Westin', 'Westin Hotel 5', 290.00, 7, 'City View', FALSE, NULL, TRUE),
(184, 37, 'Westin', 'Westin Hotel 5', 275.00, 5, 'Lake View', TRUE, NULL, TRUE),
(185, 37, 'Westin', 'Westin Hotel 5', 285.00, 6, 'City View', FALSE, NULL, TRUE),

-- Westin Hotel 6
(186, 38, 'Westin', 'Westin Hotel 6', 220.00, 5, 'Lake View', FALSE, NULL, TRUE),
(187, 38, 'Westin', 'Westin Hotel 6', 230.00, 6, 'City View', TRUE, NULL, TRUE),
(188, 38, 'Westin', 'Westin Hotel 6', 240.00, 7, 'Lake View', FALSE, NULL, TRUE),
(189, 38, 'Westin', 'Westin Hotel 6', 225.00, 5, 'City View', TRUE, NULL, TRUE),
(190, 38, 'Westin', 'Westin Hotel 6', 235.00, 6, 'Lake View', TRUE, NULL, TRUE),

-- Westin Hotel 7
(191, 39, 'Westin', 'Westin Hotel 7', 240.00, 5, 'City View', FALSE, NULL, TRUE),
(192, 39, 'Westin', 'Westin Hotel 7', 250.00, 6, 'Lake View', TRUE, NULL, TRUE),
(193, 39, 'Westin', 'Westin Hotel 7', 260.00, 7, 'City View', FALSE, NULL, TRUE),
(194, 39, 'Westin', 'Westin Hotel 7', 245.00, 5, 'Lake View', TRUE, NULL, TRUE),
(195, 39, 'Westin', 'Westin Hotel 7', 255.00, 6, 'City View', TRUE, NULL, TRUE),

-- Westin Hotel 8
(196, 40, 'Westin', 'Westin Hotel 8', 220.00, 5, 'Lake View', FALSE, NULL, TRUE),
(197, 40, 'Westin', 'Westin Hotel 8', 230.00, 6, 'City View', TRUE, NULL, TRUE),
(198, 40, 'Westin', 'Westin Hotel 8', 240.00, 7, 'Lake View', FALSE, NULL, TRUE),
(199, 40, 'Westin', 'Westin Hotel 8', 225.00, 5, 'City View', TRUE, NULL, TRUE),
(200, 40, 'Westin', 'Westin Hotel 8', 235.00, 6, 'Lake View', TRUE, NULL, TRUE);

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

