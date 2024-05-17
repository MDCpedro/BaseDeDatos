//1
DECLARE
    PROCEDURE UPDATE_LLIBRE_EXEMPLARS(in_llibre_id NUMBER, in_exemplars NUMBER) IS
    BEGIN
        UPDATE llibre SET exemplars = in_exemplars WHERE ID = in_llibre_id;
    END;
    
    FUNCTION QUEDEN_EXISTENCIES(in_llibre_id NUMBER) RETURN BOOLEAN IS
        vExemplars NUMBER;
    BEGIN
        SELECT exemplars INTO vExemplars FROM LLIBRE WHERE ID  = in_llibre_id;
        RETURN NOT (vExemplars = 0);
    END;

//2
BEGIN
    UPDATE_LLIBRE_EXEMPLARS(2,8);
    IF QUEDEN_EXISTENCIAS(2) THEN
        dbms_output.put_line('Queden existencies');
    ELSE
        dbms_output.put_line('No queden existencies');
    END IF;
END;

//3
CREATE PROCEDURE UPDATE_LLIBRE_EXEMPLARS(in_llibre_id NUMBER, in_exemplars NUMBER) IS
    BEGIN
        UPDATE llibre SET exemplars = in_exemplars WHERE ID = in_llibre_id;
    END;

//4
CREATE PROCEDURE modificar_titutlo(id_libro NUMBER, nombre_libro VARCHAR2(30)) IS
    BEGIN
        UPDATE llibre SET titol = nombre_libro WHERE ID = id_libro;
    END;

//5
CREATE FUNCTION modificar_titutlo2(id_libro llibre.id%TYPE, nombre_libro LLIBRE.TITOL%TYPE)
    RETURN LLIBRE.TITOL%TYPE IS
    vTitolAnt LLIBRE.TITOL%TYPE;
    BEGIN
        SELECT TITOL INTO VTITULANT FROM LLIBRE WHERE ID = nombre_libro
        UPDATE llibre SET titol = nombre_libro WHERE ID = id_libro;
    END;

//1. Declara una funció que retorni el job_title d’un empleat (EMPLOYEES),
donat el seu FIRST_NAME i LAST_NAME.

CREATE FUNCTION devolver_trabajo(vnombre1 VARCHAR2, vnombre2 VARCHAR2)
    RETURN JOBS.JOB_TITLE IS
    BEGIN
        SELECT JOBS.JOB_TITLE FROM EMPLOYEES
        JOIN JOBS ON jobs.job_id = employees.job_id WHERE employees.first_name = vnombre1 AND employees.last_name = vnombre2
        
    END; 

//6

DECLARE 
    TYPE t_varr IS VARRAY(100) OF LLIBRES%ROWTYPE;
    l_varr t_varr;
    function cantEjemplares(cantidad_libros NUMBER) return t_varr IS
    variable t_varr;

    begin

    select *
      into variable
      from LLIBRE
     where llibre.exemplars <= cantidad_libros;
    return variable;
    
    end;
begin
l_varr:= cantEjemplares(10);
end;

//7
DECLARE
    vNumber NUMBER;
BEGIN
    vNumber := 1/0;
EXCEPTION
    WHEN ZERO_DIVIDE THEN
        dbms_output.put_line('Division por 0');
END;

//8
DECLARE
    v_concatResult varchar(255);
    PROCEDURE PRINT(MSG VARCHAR2 := 'Praise the Sun!') IS BEGIN
        DBMS_OUTPUT.put_line(MSG);
    END;
    FUNCTION CONCAT(MSG VARCHAR2, MSG2 VARCHAR2) RETURN VARCHAR2 IS BEGIN
        RETURN MSG||MSG2;
    END;
BEGIN
    PRINT;
    PRINT();
    PRINT('Hola');
    
    v_concatResult := CONCAT('A', 'B');
    SELECT CONCAT('A', 'C') INTO v_concatResult;
    PRINT(CONCAT('Hola', ' i adeu'));
END;

