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
--2. Llista els llibres (títol) amb el seu gènere (nom).
--3. Llista els llibres (títol) sense gènere.
--4. Llista els llibres (títol) sense autor.
--5. Llista els títols i autor (nom i llinatge) dels llibres d'autors espanyols.
--6. Llista els títols, el gènere (nom) i l'autor (nom i llinatges) de cada llibre. (Si un llibre té més d'un autor o gènere, el seu títol sortir repetit). Mostra només els que tenen autor conegut i gènere.
--8. Repeteix la consulta anterior, però també han de poder sortir els llibres sense gènere ni autor.
--7. Llista els llibres (títol) amb més d'un autor. (Pista: HAVING)
--8. Llista el nombre d'exemplars totals de l'autor "Federico García Lorca".
--9. Llista el nombre d'exemplars totals de cada autor.