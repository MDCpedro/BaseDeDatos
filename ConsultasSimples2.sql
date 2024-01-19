-- Consulta els noms dels llibres i la seva editorial
SELECT ll.titol, ed.nom FROM llibre, editorial ed WHERE ll.id_editorial = ed.id;
SELECT ll.titol, ed.nom FROM llibre ll JOIN editorial ed ON ll.id_editorial = ed.id;
-- Repeteix la consulta anterior excloent l'editorial Planeta
SELECT titol, id_editorial
FROM llibre
HAVING editorial <> 'Planeta';
--• Consulta la concatenació del nom i l’autor de cada llibre, separats per ‘ - ‘.

--• Consulta els autors, però separant-los en noms i llinatges. Considera que estan separats pel primer espai.

--• Consulta, retornant-ho en majúscula, els 10 primers caràcters de cada autor. Abans, elimina els espais del nom.

--• Repeteix l’anterior consulta, però restringint-la a autors amb 12 caràcters o més i eliminant també els punts del nom.