CREATE TABLE UTENTE(
    Username varchar(20) primary key;
    email varchar(30) not null;
    consenso ENUM('SI','NO') not null;
);