--4. Obtener el nombre de las asignaturas junto al número de alumnos matriculados en el curso actual (curso 2021-2022) por cada asignatura.
SELECT asignatura.nombre, COUNT(matricula.id_persona) FROM asignatura
JOIN matricula ON asignatura.id = matricula.id_asignatura
JOIN curso_escolar ON matricula.id_curso_escolar = curso_escolar.id
WHERE curso_escolar.anyo_inicio = 2021
GROUP BY asignatura.nombre;

--5. Obtener un listado que muestre el número de alumnos matriculados en alguna
--asignatura en cada uno de los cursos escolares. El resultado deberá mostrar dos
--columnas, una columna con el año de inicio del curso escolar y otra con el número
--de alumnos matriculados.

SELECT curso_escolar.anyo_inicio, COUNT(DISTINCT matricula.id_persona) FROM curso_escolar
JOIN matricula ON matricula.id_curso_escolar = curso_escolar.id
GROUP BY curso_escolar.anyo_inicio;

--6. Obtener todos los datos personales de los alumnos matriculados en cualquier curso
--distinguiendo por los siguientes rangos de edad: Nacidos a partir del 2000, Nacidos
--a partir del 1990, Nacidos anteriormente a 1990.

SELECT 
    CASE 
        WHEN persona.fecha_nacimiento >= '2000-01-01' THEN 'A_Partir_de_2000' 
        WHEN persona.fecha_nacimiento >= '1990-01-01' THEN 'A_partir_de_1990' 
        ELSE 'Antes_de_1990' 
    END AS fecha_categoria,
    COUNT(*) AS cantidad
FROM 
    persona 
JOIN  
    matricula ON matricula.id_persona = persona.id
GROUP BY 
    fecha_categoria;

-- 7. Obtener los nombres de los departamentos que no tienen profesores asociados.
    SELECT nombre FROM departamento
    LEFT JOIN profesor ON profesor.id_departamento = departamento.id
    WHERE profesor.id IS NULL;

--8. Obtener un listado con todos los datos personales de los profesores y los
--matriculados en cualquier curso ordenados por nif. El resultado deberá mostrar
--todos los campos de la tabla persona (id, nif, nombre, apellido1,...) junto a un campo
--que indique si la persona es profesor o alumno. Este último campo sirve entre otras
--cosas para detectar personas que sean tanto alumno como profesor, por ejemplo, el
--caso de la persona con id 8, que debería salir dos veces en el listado.

SELECT 'PROFESSOR', per.* FROM persona per
    JOIN profesor pro on pro.id_persona = per.id
UNION
SELECT 'ALUMNE', per.* FROM persona per
    JOIN matricula mat ON mat.id_persona = per.id
    ORDER BY nif

-- 9. Obtener el nif, el nombre y los apellidos de las *alumnas* (M) que se han  matriculado alguna vez en el Grado en Matemáticas (Plan 2010). 
SELECT DISTINCT per.nif, per.nombre,
    per.apellido1||''||per.apellido2 as apellidos FROM persona per
    JOIN matricula mat ON mat.id_persona = per.id
    JOIN asignatura asi ON mat.id_asignatura = asi.id
    JOIN estudio est ON asi.id_estudio = est-id
    WHERE per.sexo = 'M' AND est.nombre = 'Grado en Matemáticas (Plan 2010)';

--10. Obtener un listado con el nombre de todos los departamentos que tienen profesores  que imparten alguna asignatura en el Grado en Ingeniería Informática (Plan 2015).
SELECT DISTINCT dep.nombre FROM departamento dep
    JOIN profesor pro ON pro.id_departamento = dep.id
    JOIN asignatura asi ON asi.id_profesor = est.id
    WHERE est.nombre = 'Grado en Ingeniería Informática (Plan 2015)';