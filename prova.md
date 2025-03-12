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
<!--- informazioni personali
    - nome 
    - cognome
    - anno di nascita
    - boh palle?<!--ci va altro???-->
- baudi

Artisti avranno i seguenti attributi:
- nome artista (identificatore)
- biografia
- genere musicale
- provenienza
- partecipazioni passate
- punteggio <!---Treiv: io li metterei in esibizione (che andrebbe al posto di brano) questa è versione Pipetta0.2-->

nota: se un artista ha feat o se è un gruppo il nome dell'artista sarà nome artista feat. x y z, o nome gruppo, poi i nomi dei singoli o informazioni personali saranno approfonditi in biografia

Squadra avrà i seguenti attributi:
- nomeSquadra(identificativo della squadre)

Brano avrà i seguenti attributi:
- titolo (identificatore)
- autori
- compositori
- durata
- genere

Serata avrà i seguenti argomenti:
- numero serata (prima/seconda/terza/palle) ID
- descrizione serata(serata cover, apertura, chiusura , giorno 1, giorno2)

dom numero serata(1°,5°)
<!--nel pdf della prof parlava di serata, magari non serve vediamo--> 


<!--fonte la repubblica: 
La prima sera vota la sala stampa e il suo voto vale il 100 per cento. 
Nella seconda e la terza si dividono la portata del voto le radio e il televoto, al 50 e 50 per cento,
nella serata dedicata alle cover i Big saranno votati attraverso la sala stampa, tv e web (33%), la giuria delle radio (33%) e il televoto (34%)    
nella sera della finale, i 29 sfidanti riproporranno le loro canzoni e saranno votati da tutte le giurie: televoto (34%), sala stampa, tv e web (33%), radio (33%)
-->

lega avrà i seguenti attributi:
- nome lega (identificatore)
- privata, segreta, pubblica (enum)

note:
ci sarà una lega default a cui tutte le squadre partecipano, il campionato mondiale, ovviamente pubblico e senza amministratori o admin

bonus/malus avrà i seguenti attributi:
- nome(identificatore)
- descrizione
- valore

note:
boh direi autoesplicativo🙌


## Associazioni:

Utente:
- Squadra 
    - associazione (0,n) in quanto un utente può creare più squadre 
- Leghe 
    - associazione (0,25) casino, se un utente non crea una squadra me lo puppa, massimo 25<!--Ogni utente può creare un numero limitato di leghe e partecipare a un massimo di venticinque leghe contemporaneamente-->
    - associazione (0,25) casino, se un utente non crea una squadra me lo puppa, massimo 25 

Squadra:
- utente 
    - associazione (1,1) perchè ogni squadra varia da utente a utente
- leghe 
    - associazione (1,25) perchè se la squadra è creata fa parte per forza del campionato mondiale e 25 perchè è il massimo di leghe a cui può partecipare un utente
- artista
    - associazione (1,7) in una squadra ci stanno 7 artisti(?)   

Lega:
- utente
    - associazione (1,n) metti che uno non ha amici, lega campionato palle mondiale
- squadra
    - associazione (1,n) metti che gioca a tutto il festival solo una persona con una squadra, in alternativa 1002012901920192 squadre  

Artista:
- squadra
    - associazione (0,n) non per forza un artista viene messo in una squadra, ma può stare in più squadre
- bonus/malus
    - associazione (0,n) non per forza ne riceve, in caso ne riceve più di uno
- brano
    - associazione (1,2) porta al più due brani al festival, uno nuovo e uno cover


Bonus/malus:
- artista:
    - associazione (0,n) boh mi gasava (non so come dirlo a parole[ci sto uscendo di testa])


Serata:
- Brano:
    - associazione (1,n) vengono eseguiti n brani
 
Brano:
- Artista
    - associazione (1,1) brano univoco per ogni artista
- Serata
    - associazione (1,5) massimo 5 sere (durata festival) minimo 1 (serata cover / muoio dopo la prima esibizione)(se uno si ritira il giorno prima viene rimosso completamente direi)

# Direi che ho palleggiato HARD trave gay
