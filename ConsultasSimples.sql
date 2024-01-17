-- 1. Llistar la quantitat de llibres agrupats per editorial:
SELECT Editorial, COUNT(*) as CantidadDeLibros 
FROM llibres 
GROUP BY Editorial

-- 2. Llistar la quantitat de llibres agrupats per editorial, però només els grups editorials que tenen més de quatre llibres:
SELECT Editorial, COUNT(*) as CantidadDeLibros
FROM llibres
GROUP BY Editorial
HAVING count(*) > 4;

-- 3. Llistar la mitjana dels preus dels llibres agrupats per editorial i ordenats per preu descendent:
SELECT AVG(Preu) as MediaDePrecio
FROM llibres
GROUP BY editorial
ORDER BY MediaDePrecio DESC;

-- 4. Llistar la mitjana dels preus dels llibres agrupats per editorial, però només aquells la mitjana dels quals superi els 25 euros:
SELECT AVG(Preu) as MediaDePrecio25
FROM llibres
GROUP BY editorial
HAVING AVG(Preu) > 25;

-- 5. Llistar nombre de llibres agrupats per editorial sense tenir en compte l'editorial "Planeta":
SELECT titol
FROM llibres
GROUP BY editorial
HAVING editorial <> 'Planeta';

-- 6. Llistar nombre de llibres agrupats per editorial sense tenir en compte l'editorial "Planeta" ni els llibres amb preu nul:
SELECT titol
GROUP BY editorial
FROM llibres
WHERE editorial <> 'Planeta' AND preu IS NOT NULL;

-- 7. Llistar mitjana dels preus agrupats per editorial d'aquelles editorials que tenen més de 2 llibres:
SELECT AVG(preu) as MediaDePrecio
FROM llibres
GROUP BY editorial
HAVING COUNT(editorial) > 2;

-- 8. Llistar el preu més gran d'un llibre per editorial i ordenat per preu descendent:
SELECT MAX(preu) as PrecioMasGrande
FROM llibres
GROUP BY editorial
ORDER BY PrecioMasGrande DESC;

-- 9. Llistar el preu més gran d'un llibre per editorial d'aquelles que tinguin, almenys, un llibre que superi els 30 euros:
SELECT MAX(preu) as PrecioMasGrande
FROM llibres
WHERE preu IS NOT NULL
GROUP BY editorial
HAVING preu > 30;

-- 10. Llistar el títol i l'autor dels llibres que comencin per la lletra "M" i l'autor dels quals contingui la lletra "h":
SELECT titol, autor
FROM llibres
WHERE titol LIKE 'M%' AND autor LIKE '%h%';


-- 11. Llistar la quantitat de llibres agrupats per autor, ordenat per quantitat descendent:
SELECT autor, count(*) as NumLibros
FROM llibres
GROUP BY autor
ORDER BY NumLibros DESC, autor;


-- 12. Llista les diferents lletres inicials dels titols dels llibres i el preu promig dels llibres amb un títol que comenci per aquesta lletra. 
SELECT LEFT(titol, 1) AS Inicial, AVG(preu) AS PrecioPromedio
FROM llibres
GROUP BY LEFT(titol, 1);

