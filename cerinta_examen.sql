--- selectati numarul de inmatriculare al masinii cu care a fost livrat fiecare colet

SELECT 
    colet.id AS "ID Colet",
    masina.nr_inmatriculare AS "Numar inmatriculare"
FROM 
    colet
INNER JOIN 
    curier ON colet.id = curier.colet_id
INNER JOIN 
    masina ON curier.id = masina.curier_id;
