
Table PERSONAS creado.


Error que empieza en la línea: 26 del comando :
CREATE TABLE Mutlas (
    NumRef number PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number,
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef number PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number,
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 1 del comando :
CREATE TABLE Personas (
    DNI number PRIMARY KEY,
    Nombre varchar(50),
    Apellido varchar(50),
    Direccion varchar(50),
    CodigoPostal number(5),
    Telefono number(9)
)
Informe de error -
ORA-00955: este nombre ya lo está utilizando otro objeto existente
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Error que empieza en la línea: 10 del comando :
CREATE TABLE Accidentes (
    num_referencia VARCHAR(20) PRIMARY KEY,
    fecha DATE,
    hora TIME,
    sitio VARCHAR(100)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 17 del comando :
CREATE TABLE Vehiculos (
    Matricula varchar(7) PRIMARY KEY,
    DNIPersona varchar(9),
    Marca varchar(50),
    Modelo varchar(50),
    NumRefAccidente number,
    FOREIGN KEY (NumRefAccidente) REFERENCES Accidentes(num_referencia)
)
Informe de error -
ORA-00942: la tabla o vista no existe
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef number PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number,
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef varchar(20) PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number,
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number,
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 1 del comando :
CREATE TABLE Personas (
    DNI number PRIMARY KEY,
    Nombre varchar(50),
    Apellido varchar(50),
    Direccion varchar(50),
    CodigoPostal number(5),
    Telefono number(9)
)
Informe de error -
ORA-00955: este nombre ya lo está utilizando otro objeto existente
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Error que empieza en la línea: 10 del comando :
CREATE TABLE Accidentes (
    num_referencia VARCHAR(20) PRIMARY KEY,
    fecha DATE,
    hora TIME,
    sitio VARCHAR(100)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 17 del comando :
CREATE TABLE Vehiculos (
    Matricula varchar(7) PRIMARY KEY,
    DNIPersona varchar(9),
    Marca varchar(50),
    Modelo varchar(50),
    NumRefAccidente number,
    FOREIGN KEY (NumRefAccidente) REFERENCES Accidentes(num_referencia)
)
Informe de error -
ORA-00942: la tabla o vista no existe
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number,
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number,
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number,
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number,
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 2 del comando :
CREATE TABLE Accidentes (
    num_referencia VARCHAR(20) PRIMARY KEY,
    fecha DATE,
    hora TIME,
    sitio VARCHAR(100)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 2 del comando :
CREATE TABLE Accidentes (
    num_referencia VARCHAR(20) PRIMARY KEY,
    fecha DATE,
    hora TIME,
    sitio VARCHAR(100)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 9 del comando :
CREATE TABLE Vehiculos (
    Matricula varchar(7) PRIMARY KEY,
    DNIPersona varchar(9),
    Marca varchar(50),
    Modelo varchar(50),
    NumRefAccidente number,
    FOREIGN KEY (NumRefAccidente) REFERENCES Accidentes(num_referencia)
)
Informe de error -
ORA-00942: la tabla o vista no existe
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Error que empieza en la línea: 18 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number,
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 1 del comando :
CREATE TABLE Personas (
    DNI number PRIMARY KEY,
    Nombre varchar(50),
    Apellido varchar(50),
    Direccion varchar(50),
    CodigoPostal number(5) CHECK (CodigoPostal <> '07430'),
    Telefono number(9)
)
Informe de error -
ORA-00955: este nombre ya lo está utilizando otro objeto existente
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Error que empieza en la línea: 10 del comando :
CREATE TABLE Accidentes (
    num_referencia VARCHAR(20) PRIMARY KEY,
    fecha DATE,
    hora TIME,
    sitio VARCHAR(100)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

Error que empieza en la línea: 17 del comando :
CREATE TABLE Vehiculos (
    Matricula varchar(7) PRIMARY KEY,
    DNIPersona varchar(9),
    Marca varchar(50),
    Modelo varchar(50) CHECK (Modelo <> 'RB19'),
    NumRefAccidente number,
    FOREIGN KEY (NumRefAccidente) REFERENCES Accidentes(num_referencia)
)
Informe de error -
ORA-00942: la tabla o vista no existe
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Error que empieza en la línea: 26 del comando :
CREATE TABLE Multas (
    NumRef NUMBER PRIMARY KEY,
    MatriculaCoche varchar(9),
    Fecha DATE,
    Hora TIME,
    Sitio varchar(100),
    Importe number CHECK (Importe >= 100),
    FOREIGN KEY (MatriculaCoche) REFERENCES Vehiculos(Matricula)
)
Informe de error -
ORA-00902: tipo de dato no válido
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:
