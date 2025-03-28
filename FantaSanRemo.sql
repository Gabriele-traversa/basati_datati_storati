CREATE TABLE UTENTE(
    Username varchar(20) primary key;
    email varchar(30) not null;
    consenso ENUM('SI','NO') not null;
);
CREATE TABLE ARTISTA(
    nome varchar(20) primary key;
    biografia CLOB not null;
    genere_musicale varchar(15) not null;
    provenienza varchar(15) not null;
    partecipazioni_passate varchar(40);
);
CREATE TABLE SQUADRA(
    nome varchar(20) primary key;
    Budget SMALLINTEGER not null;
    Punteggio_squadra INTEGER not null:
);
CREATE TABLE SERATA(
    numero ENUM('apertura','seconda','terza','cover','finale') primary key;
    ospiti varchar(100);
    orario TIME not null;
);
CREATE TABLE FORMAZIONE(
    
);