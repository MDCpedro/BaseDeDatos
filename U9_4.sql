begin
  for employees in (select * from employees where job_title = 'Programmer') loop
    IF emp.hire_date beetween date'2016-01-01' and date '2016-03-31' then
        dbms_output.put_line(emp.first_name||'')    
  end loop
end;

DECLARE

  TYPE t_cursor IS REF CURSOR RETURN PRODUCTS%ROWTYPE;
  v_cursor t_cursor;
  FUNCTION buscar_productos_nombre (name varchar2) RETURN t_cursor IS
    l_cursor t_cursor;

  BEGIN

    OPEN l_cursor FOR SELECT * FROM PRODUCTS WHERE UPPER(product_name) LIKE '%'||UPPER(name)||'%';
      ORDER BY product_name ASC; 
    RETURN l_cursor; 

  END;

BEGIN
  v_cursor := buscar_productos_nombre('GTX 1080 Ti');
  FETCH v_cursor BULK COLLECT INTO c_products;
  FOR I IN c_products.FIRST .. c_products.COUNT loop
    dbms_output.put_line(c_products(i).product_name);
  end loop
  
  FETCH v_cursor INTO
END;

