DECLARE
    id_trabajo varchar2(20);
    salario number;
    id_empleado CONSTANT number := 10;
BEGIN
    SELECT JOB_ID INTO id_trabajo FROM employees WHERE employee_id = id_empleado;
        IF <id_trabajo != 'IT_PROG'> then
        DBMS_OUTPUT.PUT_LINE('SSS');
        ELSE
            SELECT SALARY INTO salario FROM employee WHERE id_empleado = 
            CASE
        END IF;
END


DECLARE
    vCLIENT_DNI VARCHAR(9) := '0000000A'
    vLLIBRE_ID CONSTANT NUMBER := 1;
    vEXEMPLARS NUMBER;
    
    CREATE TABLE VENDA (
    DNI_client VARCHAR(9), 
    ID_llibre INT,            
    data_venda TIMESTAMP,
    preu DECIMAL(10, 2),     
    FOREIGN KEY (ID_llibre) REFERENCES LLIBRE(ID)
);


BEGIN
    SELECT EXEMPLARS UBTI vEXEMPLARS FROM LLIBRE WHERE ID = vLLIBRE_ID;
    FOR idx IN 1..vEXEMPLARS LOOP
        UPDATE LLIBRE SET EXEMPLARS = EXEMPLARS -1; WHERE ID_LLIBRE = vLLIBRE_ID
        INSER INTO VENDA(DNI_CLIENT, ID_LLIBRE, DATA_VENDA, PREU) VALUES (vDNI_CLIENT)
        vDNI_CLIENT, vID_LLIBRE, SYSTEMSTAND,10);
        
    END LOOP;
END