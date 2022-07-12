-- Paimu visų darbuotojų vardą ir pavardę iš darbuotojų lentelės
SELECT vardas, pavarde
FROM darbuotojas;

-- Paimu darbuotojų, kurių alga didesnė už 2000, pareigų stulpelį
SELECT pareigos
FROM darbuotojas
WHERE alga > 2000;

-- Paimu darbuotojų, kurių alga didesnė už 2000, pareigų stulpelį, bet tik unikalias to stulpelio reikšmes (nekartoja tos pačios pareigos kelis kartus)
SELECT DISTINCT pareigos
FROM darbuotojas
WHERE alga > 2000;

-- Paimu darbuotojus nuo 2 id iki 4 id (imtinai)
SELECT *
FROM darbuotojas
WHERE id >= 2 AND id <= 4

-- Grąžinu visas kėdes iš prekių 
SELECT * 
FROM preke
WHERE pavadinimas = "Kėdė";

-- Grąžina visas medines kėdes
SELECT *
FROM preke
WHERE pavadinimas = "Kėdė" AND medziaga = "medis";

-- Grąžina visus stalus ir visas metalines prekes
SELECT *
FROM preke
WHERE pavadinimas = "Stalas" OR medziaga = "metalas";



-- SELECT AGREGATINĖS FUNKCIJOS
-- Grąžina brangiausios prekės kainą
SELECT MAX(kaina)
FROM preke;

-- Grąžina pigiausios prekės kainą
SELECT MIN(kaina)
FROM preke;

-- Grąžina prekių kainų vidurkį
SELECT AVG(kaina)
FROM preke;

-- Grąžina kiek iš viso yra visų prekių sandėlyje
SELECT SUM(kiekis)
FROM preke;


-- Grąžina darbuotojo visus stulpelius, kuris uždirba daugiausiai (naudojant sub-užklausą)
SELECT
    *
FROM
    darbuotojas
WHERE
    alga =(
    SELECT
        MAX(alga)
    FROM
        darbuotojas
);


-- Grąžina visus darbuotojus, kurie uždirba daugiau nei įmonės darbuotojų atlyginimo vidurkis
SELECT
    *
FROM
    darbuotojas
WHERE
    alga >(
    SELECT
        AVG(alga)
    FROM
        darbuotojas
);

-- Surikiuoja visus darbuotojus pagal algą didėjančia tvarka
SELECT *
FROM darbuotojas
ORDER BY alga ASC;

-- Surikiuoja visus darbuotojus, kurie uždirba daugiau nei 1500, priešingai abėcėlės tvarkai (z-a) 
SELECT *
FROM darbuotojas
WHERE alga > 1500
ORDER BY vardas DESC;

-- Grąžinu tris daugiausiai uždirbančius darbuotojus
SELECT *
FROM darbuotojas
ORDER BY alga DESC
LIMIT 3;

