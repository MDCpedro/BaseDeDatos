--Sense JOIN
--1. Llista els llibres (títol) amb el seu gènere (nom).
SELECT LLIBRE.titol,
(SELECT nom_genere FROM LLIBRE_GENERE WHERE ID_llibre = LLIBRE.ID) as Genero
FROM LLIBRE;

--2. Llista els títols i autor (nom i llinatge) dels llibres d'autors espanyols.
--3. Llista els títols, el gènere (nom) i l'autor (nom i llinatges) de cada llibre. (Si un llibre té més d'un autor o gènere, el seu títol sortir repetit).
--4. Llista els llibres (títol) amb més d'un autor. (Pista: HAVING)
--5. Llista el nombre d'exemplars totals de l'autor "Federico García Lorca".
--6. Llista el nombre d'exemplars totals de cada autor.

--Amb JOIN
--1. Llista els autors (nom i llinatges) sense llibres.
SELECT autor.nom, autor.cognoms, count(autor_llibre.id_llibre) as Autor
FROM autor
LEFT JOIN autor_llibre on autor.id = autor_llibre.id_autor
GROUP BY autor_llibre.id_autor
HAVING autor = 0;

--2. Llista els llibres (títol) amb el seu gènere (nom).
SELECT llibre.titol, llibre_genere.nom_genere
FROM llibre
JOIN llibre_genere ON llibre.ID = llibre_genere.ID_llibre;

--3. Llista els llibres (títol) sense gènere.
SELECT llibre.titol
FROM llibre
JOIN llibre_genere ON llibre.ID = llibre_genere.ID_llibre
WHERE llibre_genere.nom_genere IS NULL;
--4. Llista els llibres (títol) sense autor.
SELECT llibre.titol
FROM llibre
JOIN autor_llibre ON llibre.ID = autor_llibre.ID_llibre
WHERE autor_llibre.id_autor IS NULL;
--5. Llista els títols i autor (nom i llinatge) dels llibres d'autors espanyols.
SELECT LLIBRE.titol, AUTOR.nom, AUTOR.cognoms
FROM LLIBRE
JOIN AUTOR_LLIBRE ON LLIBRE.ID = AUTOR_LLIBRE.ID_llibre
JOIN AUTOR ON AUTOR_LLIBRE.ID_autor = AUTOR.ID
WHERE AUTOR.nacionalitat = 'ESP';

--6. Llista els títols, el gènere (nom) i l'autor (nom i llinatges) de cada llibre. (Si un llibre té més d'un autor o gènere, el seu títol sortir repetit). Mostra només els que tenen autor conegut i gènere.
SELECT LLIBRE.titol, GENERE.nom AS nom_genere, AUTOR.nom, AUTOR.cognoms
FROM LLIBRE
JOIN LLIBRE_GENERE ON LLIBRE.ID = LLIBRE_GENERE.ID_llibre
JOIN AUTOR_LLIBRE ON LLIBRE.ID = AUTOR_LLIBRE.ID_llibre
JOIN AUTOR ON AUTOR_LLIBRE.ID_autor = AUTOR.ID
JOIN GENERE ON LLIBRE_GENERE.nom_genere = GENERE.nom;

--8. Repeteix la consulta anterior, però també han de poder sortir els llibres sense gènere ni autor.
SELECT LLIBRE.titol, GENERE.nom AS nom_genere, AUTOR.nom, AUTOR.cognoms
FROM LLIBRE
LEFT JOIN LLIBRE_GENERE ON LLIBRE.ID = LLIBRE_GENERE.ID_llibre
LEFT JOIN AUTOR_LLIBRE ON LLIBRE.ID = AUTOR_LLIBRE.ID_llibre
LEFT JOIN AUTOR ON AUTOR_LLIBRE.ID_autor = AUTOR.ID
LEFT JOIN GENERE ON LLIBRE_GENERE.nom_genere = GENERE.nom
WHERE (AUTOR.ID IS NOT NULL OR GENERE.nom IS NOT NULL);

--7. Llista els llibres (títol) amb més d'un autor. (Pista: HAVING)
SELECT LLIBRE.titol
FROM LLIBRE
JOIN AUTOR_LLIBRE ON LLIBRE.ID = AUTOR_LLIBRE.ID_llibre
GROUP BY LLIBRE.titol
HAVING COUNT(AUTOR_LLIBRE.ID_autor) > 1;

--8. Llista el nombre d'exemplars totals de l'autor "Federico García Lorca".
SELECT SUM(LLIBRE.exemplars) AS total_exemplars
FROM LLIBRE
JOIN AUTOR_LLIBRE ON LLIBRE.ID = AUTOR_LLIBRE.ID_llibre
JOIN AUTOR ON AUTOR_LLIBRE.ID_autor = AUTOR.ID
WHERE AUTOR.nom = 'Federico' AND AUTOR.cognoms = 'García Lorca';

--9. Llista el nombre d'exemplars totals de cada autor.
SELECT AUTOR.nom, AUTOR.cognoms, SUM(LLIBRE.exemplars) AS total_exemplars
FROM AUTOR
JOIN AUTOR_LLIBRE ON AUTOR.ID = AUTOR_LLIBRE.ID_autor
JOIN LLIBRE ON AUTOR_LLIBRE.ID_llibre = LLIBRE.ID
GROUP BY AUTOR.nom, AUTOR.cognoms;

-- EXTRA (Diapositivas)

-- Retorna els llibres que tenguin entre 5 i 10 exempalrs. Empra BETWEEN
SELECT titol, exemplars FROM llibre WHERE exemplars BETWEEN 5 AND 9;

-- Retorna el titol de cada llibre i el seu autor. Si no té autor, ha de sortir "Desconegut"

SELECT titol, nvl2(au.nom, au.nom||''||au.cognoms, 'Desconegut')
FROM llibre ll
LEFT JOIN autor_llibre al ON al.id_llibre = ll.id
LEFT JOIN autor au ON au.id = al.id_autor;

-- Retorna el nom de cada autor i si és europeu (ESP, GBR) o no (USA,JPN).
SELECT nom,
    CASE 
        WHEN nacionalitat in ('ESP', 'GBR') THEN 'EU'
        WHEN nacionalitat in ('USA', 'JPN') THEN 'NO EU'
    END
FROM autor

-- Retorna els llibres llançats a l’any de naixement de qualsevol autor. Empra IN.

SELECT titol, an FROM llibre WHERE an IN(SELECT EXTRACT(YEAR FROM data_naix) FROM AUTOR);
