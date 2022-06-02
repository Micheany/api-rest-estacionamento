DROP DATABASE IF EXISTS parking;

CREATE DATABASE parking;

USE parking;

CREATE TABLE establishments (
    establishments_id INT NOT NULL auto_increment,
    name VARCHAR(30) NOT NULL,
    cnpj VARCHAR(30) NOT NULL,
    adress VARCHAR(30) NOT NULL,
    phone VARCHAR(30) NOT NULL,
    spaces_motorcycles INT NOT NULL,
    spaces_cars INT NOT NULL,
    PRIMARY KEY (establishments_id)
) ENGINE=INNODB;

CREATE TABLE vehicles (
    vehicles_id INT NOT NULL auto_increment,
    brand VARCHAR(30) NOT NULL,
    model VARCHAR(30) NOT NULL,
    color VARCHAR(30) NOT NULL,
    license_plate VARCHAR(30) NOT NULL,
    type VARCHAR(30) NOT NULL,
    PRIMARY KEY(vehicles_id)
) ENGINE=INNODB;

CREATE TABLE checking (
    checking_id INT NOT NULL auto_increment,
    vehicles_id INT NOT NULL,
    establishments_id INT NOT NULL,
    data_checkin DATETIME,
    data_checkout DATETIME,
    FOREIGN KEY (vehicles_id)
        REFERENCES vehicles (vehicles_id)
        ON DELETE CASCADE,
    FOREIGN KEY (establishments_id)
        REFERENCES establishments (establishments_id)
        ON DELETE CASCADE,
	PRIMARY KEY(checking_id)
)  ENGINE=INNODB;

SET SQL_SAFE_UPDATES = 0;

INSERT INTO parking.vehicles (brand, model, color, license_plate, type) VALUES
    ("toyota", "corolla", "cinza", "2341876", "carro"),
    ("honda", "HRV", "preto", "34234097", "carro"),
    ("honda", "cg", "cinza", "43875476", "moto");
    
INSERT INTO parking.establishments (name, cnpj, adress, phone,
spaces_motorcycles, spaces_cars) VALUES
    ("fogas", "46372090833", "laranjeiras 2097", "449999676", "35", "90"),
    ("restopark", "46354677453", "riachuelo 2097", "4487594676", "55", "20"),
    ("lytepark", "46372090833", "pederneiras 2097", "4496659676", "87", "10");
    
INSERT INTO parking.checking (vehicles_id,
    establishments_id,
    data_checkin,
    data_checkout) 
    VALUES
    (1, 2, "2022-02-21 10:32:12", "2022-02-21 14:30:32"),
    (2, 2, "2022-04-02 07:32:12", "2022-04-02 18:00:09"),
    (3, 3, "2022-03-12 09:00:12", null);