SELECT * FROM countries;
SELECT region_id FROM regions WHERE region_name LIKE 'Europe';
DECLARE 
    vCountry varchar(2) := 'ES';
    vCountryName varchar2(15) := 'Spain';
    vRegionID number(10);
BEGIN
    DBMS_OUTPUT.PUT_LINE(vcountry);
    SELECT region_id INTO vRegionID FROM regions WHERE region_name LIKE 'Europe';
    INSER INTO Countries VALUES ('ES', 'Spain', 1);
    
END;