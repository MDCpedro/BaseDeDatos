CREATE TABLE Indret (
    CodiPK number,
    Nom varchar2(50),
    TipusBioma varchar2(50),
    PRIMARY KEY (CodiPK)
);

CREATE TABLE Tipus (
    NomPK varchar2(50),
    PRIMARY KEY (NomPK)
);

CREATE TABLE Especie (
    NombreEspeciePK varchar2(50),
    NomTipusFK varchar2(50),
    PRIMARY KEY (NombreEspeciePK),
    FOREIGN KEY (NomTipusFK) REFERENCES Tipus(NomPK)
);

CREATE TABLE Indret_Especie (
    CodiPK number,
    NomEspeciePK varchar2(50),
    Nom varchar2(50),
    TipusBioma varchar2(50),
    NivelMax number,
    NivelMin number,
    PRIMARY KEY (CodiPK, NombreEspeciePK)
);

CREATE TABLE Criatura (
    CodiPK number,
    NomEspecieFK varchar2(50),
    NomPropi varchar2(50),
    Nivell number,
    MedallesEntrenador number,
    DNIEntrenador number,
    PRIMARY KEY (CodiPK),
    FOREIGN KEY (NomEspecieFK) REFERENCES Especie(NombreEspeciePK)
)