CREATE TABLE ARTISTA(
    nome varchar(20) primary key;
    biografia CLOB not null;
    genere_musicale varchar(15) not null;
    provenienza varchar(15) not null;
    partecipazioni_passate varchar(40);
);