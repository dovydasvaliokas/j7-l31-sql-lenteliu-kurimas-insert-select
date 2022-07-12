-- Darbuotojų lentelės sukūrimas
CREATE TABLE IF NOT EXISTS darbuotojas (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    vardas VARCHAR(30) NOT NULL,
    pavarde VARCHAR(30) NOT NULL,
    pareigos VARCHAR(30),
    alga DECIMAL(7,2) UNSIGNED NOT NULL,
    PRIMARY KEY(id)
);

-- Klientų tyčia klaidingos lentelės sukūrimas
CREATE TABLE IF NOT EXISTS klientai (
    id SMALLINT UNSIGNED NOT NULL, -- trūksta auto_increment
    vardas VARCHAR(30) NOT NULL,
    pavarde VARCHAR(30) NOT NULL,
    adresai DOUBLE UNSIGNED NOT NULL -- tyčia klaidingai padarytas
    -- dar trūksta telefonų ir užsakymų stulpelių
    -- taip pat trūksta ir primary key
    );


    