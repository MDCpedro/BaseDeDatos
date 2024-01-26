-- Consulta els noms dels llibres i la seva editorial
SELECT ll.titol, ed.nom FROM llibre, editorial ed WHERE ll.id_editorial = ed.id;
SELECT ll.titol, ed.nom FROM llibre ll JOIN editorial ed ON ll.id_editorial = ed.id;
-- Repeteix la consulta anterior excloent l'editorial Planeta
SELECT ll.titol, ed.nom FROM llibre ll JOIN editorial ed ON ll.id_editorial = ed.id;
WHERE ed.nom != "Planeta";

-- Consulta els noms dels llibres i el nom del seu autor
SELECT ll.titol, au.nom ||''|| FROM LLIBRE ll JOIN AUTOR au, AUTOR_LLIBRE ON ll.id = aull.id_llibre
JOIN AUTOR au aull.id_autor = au.id;
WHERE ll.an < 1950;

--• Consulta la concatenacióCT  del nom i l’autor de cada llibre, separats per ‘ - ‘.

--• Consulta els autors, però separant-los en noms i llinatges. Considera que estan separats pel primer espai.

--• Consulta, retornant-ho en majúscula, els 10 primers caràcters de cada autor. Abans, elimina els espais del nom.

--• Repeteix l’anterior consulta, però restringint-la a autors amb 12 caràcters o més i eliminant també els punts del nom.