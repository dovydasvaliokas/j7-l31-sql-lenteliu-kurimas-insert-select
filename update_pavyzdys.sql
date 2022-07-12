-- Atnaujinu pirmos prekės kainą
UPDATE preke
SET kaina = 59.99
WHERE id = 1;


-- Atnaujinu visų prekių, kurios kainuoja mažiau nei 100 aprašymus
UPDATE preke
SET aprasymas = "IŠPARDAVIMAS"
WHERE kaina < 100;