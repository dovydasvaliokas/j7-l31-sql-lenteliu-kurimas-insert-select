-- Sutvarkau neteisingą klientų lentelę
-- Pridedu du nauju stulpelius (telefonai ir uzsakymai)
-- Paredaguoju, kad id turi auto_increment (bet bet kokiu atveju reikia rašyti ir visus kitus parametrus)
-- paredaguoju adresų stulpelį (jis buvo double), tai tiesiog perrašau visą naują informaciją stulpelio teisingai
-- pridedu primary key (kadangi iš pradžių nebuvo pridėtas)
ALTER TABLE klientai
ADD COLUMN telefonai VARCHAR(60),
ADD COLUMN uzsakymai_id_kurie_priklauso VARCHAR(100),
MODIFY COLUMN id SMALLINT UNSIGNED AUTO_INCREMENT,
MODIFY COLUMN adresai VARCHAR(300) NOT NULL,
ADD PRIMARY KEY(id);
