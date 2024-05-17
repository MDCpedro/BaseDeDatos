
DECLARE
VariableNum NUMERIC
VariableString VARCHAR2(50);
BEGIN
VariableNum := 4;
SELECT llibre.titol INTO VariableString from llibre WHERE llibre.id = 4
dbms_output.put_line(VariableString);
END;

// Crear varray con 10 varchars de 50 
DECLARE
TYPE variable is varray(10) OF VARCHAR2(50);
varray tarray;

//coger titulo de los 10 libros con mas ejemplares y meterlos en un varray

DECLARE
TYPE vArray is varray(10) OF VARCHAR2(50);
vArray tArray;
begin
  SELECT titol BULK COLLECT into vArray
  FROM llibre ORDER BY exemplars desc FETCH FIRST 10 ROWS ONLY;
  for index in vArray first..vArray.Count loop
    dbms_output.put_line(index)
    
  end loop    
end;

DECLARE
    PROCEDURE print_llibre_titol (p_llibre_id number) IS
        vTitol varchar2(50);
    BEGIN
        SELECT titol INTO vTitol FROM llibre where id = p_llibre_id;
        dbms_output.put_line(vTitol);    
    END;
BEGIN
    print_llibre_titol(6);
END;

DECLARE
    //declaramos tipos
    TYPE tTableString IS TABLE OF VARCAHR2(50);
    vTitol tTableString;
    //creamos index para el bucle
    index PLS_INTEGER;
    //creamos la funcion 
    FUNCTION omplir_array_llibres_mes_exemplars(p_nombre_llibres NUMBER) return tTableString
    IS
        vAux tTableString;
    BEGIN
        SELECT titol BULK COLLECT INTO vAux FROM LLIBRE ORDER BY exemplars DESC
        FETCH FIRST p_nombre_llibres ROWS ONLY;
        RETURN vAux;        
    END;
BEGIN
    vTitol := omplir_array_llibres_mes_exemplars(10);
    index := vTitol.first;
    loop
      dbms_output.put_line(vTitol(index));
      index := vTitol.next(index);
      exit when index is NULL;
    end loop
END;


//delara a un bloc anonim una variable autor que sigui un record de un autor 

DECLARE
    vAutor AUTOR%ROWTYPE;
    FUNCTION get_autor_by_llibre(p_id_llibre llibre.id%type) return AUTOR%ROWTYPE is
    vAutorTipo AUTOR%ROWTYPE;
    begin
      select into vAutorTipo from autor_llibre 
      JOIN autor autor on al.id_autor  = p_id_llibre;
      RETURN vAutorTipo;
    end;

BEGIN 
    vAutor .= get_autor_by_llibre(7);
END;

DECLARE
    CURSOR cCursor IS select * from autor where nacionalitat = 'ESP';
    vAutor AUTOR%ROWTYPE;
BEGIN
    OPEN cCursor;
    FETCH cCursor into vAutor;
    WHILE cCursor%notfound loop
      dbms_output.put_line(vAutor.nom);
      fetch cCursor INTO vAutor;
    end loop
    
    for autor in cCursor loop
      dbms_output.put_line(autor.nom)
    end loop
    
    loop
      fetch cCursor into vAutor;
      exit when cCursor%notfound;
      dbms_output.put_line(vAutor.nom)
    end loop
END;

DECLARE
    type tTableString is TABLE of varchar2(50);
    vTable tTableString;
    vEditorials SYS_REFCURSOR;
    index PLS_INTEGER;
begin
    open vEditorials FOR select nom FROM editorial;
    fetch vEditorials BULK collect into vTable;
    index := vTable.first;
    loop
      dbms_output.put_line(vTable(index))
      index := vTable.next(index);
      exit when index is null;
    end loop
    close vEditorials;
end;


DECLARE
    TYPE vlibros is TABLE OF LLIBRE%ROWTYPE;
    vTablaLibros vlibros;
    
    TYPE cLibres IS REF CURSOR RETURN LLIBRE%ROWTYPE;
    vcLibres cLibres;
    
    FUNCTION get_llibres_by_autor (p_id_autor AUTOR.ID%TYPE) RETURN cLibres IS 
        l_llibresReturn vcLibres;
    BEGIN
        OPEN l_llibresReturn FOR
        SELECT llibre.* FROM llibre
        JOIN AUTOR_LLIBRE ON autor_llibre.id_llibre = llibre.id
        WHERE autor_llibre.id_autor = p_id_autor;
        RETURN l_llibresReturn;
    END;
BEGIN
    vclibres := get_llibres_by_autor(1);
    FETCH vcLibres BULK COLLECT INTO vTablaLibros;
END;

DECLARE
    TYPE tLlibres IS TABLE OF LLIBRE%ROWTYPE;
    vLlibres tLlibres;
    
    FUNCTION get_llibres_exemplars(p_min_exemplars number) RETURN tLlibres IS
    librosEjemplares tLlibres;
    
    BEGIN
        SELECT llibre.* BULK COLLECT INTO librosEjemplares FROM llibre WHERE llibre.exemplars <= p_min_exemplars;
        RETURN librosEjemplares; 
    END;
BEGIN
    vLlibres := get_llibres_exemplars(5);
    
    FOR idx in vLlibres.first..vLlibres.last loop
        dbms_output.put_line(vllibres(idx).titol);
    end loop;
END;

DECLARE
    TYPE tLlibres IS TABLE OF LLIBRE%ROWTYPE;
    vLlibres tLlibres;
    
    PROCEDURE get_llibres_exemplars(p_min_exemplars number, librosEjemplares OUT tLlibres) IS
    
    BEGIN
        SELECT llibre.* BULK COLLECT INTO librosEjemplares FROM llibre WHERE llibre.exemplars <= p_min_exemplars;
    END;
BEGIN
    get_llibres_exemplars(5, vllibres);
    
    FOR idx in vLlibres.first..vLlibres.last loop
        dbms_output.put_line(vllibres(idx).titol);
    end loop;
END;

DECLARE
    TYPE arrayID IS VARRAY(10) OF llibre.id;
    suma number;
    num_actual number;
    FUNCTION compta_exemplars_id(arrayID) RETURN arra
BEGIN

END;


CREATE PROCEDURE nou_llibre(p_titulo llibre.titol%type, llibre.an%type, id_editorial llibre.id_editorial%type) IS

    BEGIN
        INSERT INTO LLIBRE(titol, an, id_editoria)
        VALUES
            (p_titol, p_an, p_editorial)
    END;
