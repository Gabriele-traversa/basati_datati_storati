# Schema relazionale
UTENTE(<u>Username</u>, email, consenso);

ARTISTA(<u>Nome</u>, biografia, genere_musicale, provenienza, partecipazioni_passate);

SQUADRA(<u>Nome</u>, Budget, punteggio_squadra);

SERATA(<u>Numero</u>, ospiti, orario);

FORMAZIONE(<u>username<sup>utente</sup>, nome_squadra<sup>squadra</sup></u>);

LEGA(<u>Nome</u>, Tipo);

PARTECIPAZIONE(<u>username<sup>utente</sup>, nome_lega<sup>lega</sup></u>, ruolo);

COMPETE(<u>nome_squadra<sup>squadra</sup>, nome_lega<sup>lega</sup></u>);

BRANO(<u>Titolo</u>, autori, compositori, genere, durata);

ESIBIZIONE(<u>ruolo, nome_squadra<sup>squadra</sup>, nome_artista<sup>artista</sup>, titolo_brano<sup>brano</sup></u>);

ESECUZIONE(<u>numero_serata<sup>serata</sup>, titolo_brano<sup>brano</sup></u>);

ASSEGNAZIONE(<u>numero_serata<sup>serata</sup>, titolo_brano<sup>brano</sup></u>);

BONUS(<u>Nome</u>, valore, descrizione);

ASSEGNAZIONE_EXTRA(<u>numero_serata<sup>serata</sup>, nome_bonus<sup>bonus</sup></u>);

EXTRA(<u>Nome</u>, valore, descrizione).
