# Analisi Progetto BD
guardare file raw / aprire con vscode per vedere i commenti
<!---modificate file se non vi piace qualcosa-->

Viene richiesta la creazione di una base di dati che gestisca il fantasanremo.
Sono state individuate le seguenti entità:
- Utenti
- Artista
- Squadra
- Serata
- Brano
- Lega
- bonus/malus

Utenti avranno i seguenti attributi:
- nome_utente (identificatore)
- mail

note: sul sito ufficiale non chiede altro che la mail e il nome utente

Artisti avranno i seguenti attributi:
- nome artista (identificatore)
- biografia
- genere musicale
- provenienza
- partecipazioni passate
- costo
- punteggio bunus 
- punteggio bonus extra<!---Treiv: io li metterei in esibizione (che andrebbe al posto di brano) questa è versione Pipetta0.2-->

nota: se un artista ha feat o se è un gruppo il nome dell'artista sarà nome artista feat. x y z, o nome gruppo, poi i nomi dei singoli o informazioni personali saranno approfonditi in biografia

Squadra avrà i seguenti attributi:
- nomeSquadra(identificativo della squadre)
- punteggioSquadra
- budget

brano avrà i seguenti attributi:
- titolo (identificatore)
- autori
- compositori
- durata
- genere

Serata avrà i seguenti argomenti:
- numero serata ID
- descrizione serata

dom numero serata(1-5)
dom descruzione serata(serata cover, apertura, chiusura , giorno 1, giorno2)


<!--fonte la repubblica: 
La prima sera vota la sala stampa e il suo voto vale il 100 per cento. 
Nella seconda e la terza si dividono la portata del voto le radio e il televoto, al 50 e 50 per cento,
nella serata dedicata alle cover i Big saranno votati attraverso la sala stampa, tv e web (33%), la giuria delle radio (33%) e il televoto (34%)    
nella sera della finale, i 29 sfidanti riproporranno le loro canzoni e saranno votati da tutte le giurie: televoto (34%), sala stampa, tv e web (33%), radio (33%)
-->

lega avrà i seguenti attributi:
- nome lega (identificatore)
- tipo (enum)
dom tipo (segreta,privata,pubblica);

note:
ci sarà una lega default a cui tutte le squadre partecipano, il campionato mondiale, ovviamente pubblico e senza amministratori o admin

bonus/malus avrà i seguenti attributi:
- nome(identificatore)
- extra (bool)
- descrizione
- valore

note:
ci saranno tutti i bonus/malus, compreso il punteggio top 5 per ogni serata, extra segna se sono o non sono bonus extra


## Associazioni:

Utente:
- Squadra 
    - associazione (0,n) [formazione] in quanto un utente può creare più squadre 
- Leghe 
    - associazione (0,n) [partecipazione] perchè non per forza partecipo a una lega e posso partecipare a 26 leghe (si conta anche il campionato mondiale)(specificato in vincolo)si aggiunge un attributo string in cui si specifica se l'utente è base, amministratore o creatore

Squadra:
- utente 
    - associazione (1,1) [formazione] perchè ogni squadra varia da utente a utente
- leghe 
    - associazione (1,n) [compete] perchè se la squadra è creata fa parte per forza del campionato mondiale e n (26) perchè è il massimo di leghe a cui può partecipare un utente
- artista
    - associazione (7,7) [unione] in una squadra ci stanno 7 artisti (obbligatoriamente)

Lega:
- utente
    - associazione (1,n) [partecipazione] c'è la possibilità che un utente crei una lega e che sia da solo, n = numero squadre per campionato mondiale
- squadra
    - associazione (1,n) [compete] se la lega è stata creata c'è almeno una squadra, in alternativa ci stanno n squadre  

Artista:
- squadra
    - associazione (0,n) [unione] non per forza un artista viene messo in una squadra, ma può stare in più squadre
- bonus/malus e serata
    - associazione (1,n) [assegnazione] almeno un punteggio lo riceve (ultimo punto), partecipa a più di una serata,  in caso ne riceve più di uno
- brano
    - associazione (2,2) [porta] porta al più due brani al festival, uno nuovo e uno cover


Bonus/malus:
- artista e serata
    - associazione (0,n) [assegnazione] perchè non per forza un bonus/malus viene assegnato in una serata o ad un artista, in più può assegnato più volte

Brano:
- Artista
    - associazione (1,2) [porta] brano univoco per ogni artista
- Serata
    - associazione (1,3) [esecuzione] massimo 3 sere (prima, seconda o terza e ultima serata) minimo 1 

Serata:
- Brano:
    - associazione (1,n) [esecuzione] perchè non possono non essere cantati brani in una serata, massimo n 
- artista e bonus/malus
    - associazione (1,n) [assegnazione] almeno un artista e un bonus saranno assegnati, più di uno sicuramente   


# discorso immo