CREATE TABLE ChainesHotels (
    IDChaineHotel INT PRIMARY KEY,
    NomChaineHotel VARCHAR(100),
    AdresseBureauCentral VARCHAR(255),
    EmailContact VARCHAR(100),
    TelephoneContact VARCHAR(20)
);

-- Table Hotels
CREATE TABLE Hotels (
    IDHotel INT PRIMARY KEY,
    NomChaineHotel VARCHAR(100),
    NomHotel VARCHAR(100),
    AdresseHotel VARCHAR(255),
    EmailContact VARCHAR(100),
    TelephoneContact VARCHAR(20),
    Classement INT
    --FOREIGN KEY (NomChaineHotel) REFERENCES ChainesHotels(NomChaineHotel)
);

-- Table Chambres
CREATE TABLE Chambres (
    IDChambre INT PRIMARY KEY,
    IDHotel INT,
    NomChaineHotel VARCHAR(100),
	  NomHotel VARCHAR(100),
    Prix DECIMAL(10,2),
    Capacite VARCHAR(20),
    Vue VARCHAR(50),
    Extensible BOOLEAN,
    ProblemesDommages TEXT
    --FOREIGN KEY (NomHotel) REFERENCES Hotels(NomHotel)
);

-- Table Clients
CREATE TABLE Clients (
    IDClient INT PRIMARY KEY,
    NomComplet VARCHAR(100),
    Adresse VARCHAR(255),
    NumeroSecuriteSociale VARCHAR(20),
    DateEnregistrement DATE
);

-- Table Employes
CREATE TABLE Employes (
    IDEmploye INT PRIMARY KEY,
    NomComplet VARCHAR(100),
    Adresse VARCHAR(255),
    NumeroSecuriteSociale VARCHAR(20),
    RolePoste VARCHAR(100)
);


-- Table Reservations
CREATE TABLE Reservations (
    IDReservation INT PRIMARY KEY,
    IDClient INT,
    IDChambre INT,
    DateReservation DATE,
    DateDebut DATE,
    DateFin DATE,
    FOREIGN KEY (IDClient) REFERENCES Clients(IDClient),
    FOREIGN KEY (IDChambre) REFERENCES Chambres(IDChambre)
);

-- Table Locations
CREATE TABLE Locations (
    IDLocation INT PRIMARY KEY,
    IDReservation INT,
    IDEmploye INT,
    DateLocation DATE,
    FOREIGN KEY (IDReservation) REFERENCES Reservations(IDReservation),
    FOREIGN KEY (IDEmploye) REFERENCES Employes(IDEmploye)
);



-- Table delete
-- Drop all tables in the schema
DROP TABLE IF EXISTS Locations;
DROP TABLE IF EXISTS Reservations;
DROP TABLE IF EXISTS Employes;
DROP TABLE IF EXISTS Clients;
DROP TABLE IF EXISTS Chambres;
DROP TABLE IF EXISTS Hotels;
DROP TABLE IF EXISTS ChainesHotels;
