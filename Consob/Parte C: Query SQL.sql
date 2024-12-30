--Parte C: Query SQL
--Usa le tabelle create per rispondere alle seguenti richieste:
--
--Determina l’elenco dei dipendenti che lavorano a più di 3 progetti, ordinati per numero di progetti.
--Calcola lo stipendio medio per ciascun dipartimento e mostra solo quelli con una media superiore a 50.000.
--Trova i progetti che coinvolgono almeno un dipendente con stipendio superiore a 70.000.
--Elenca i dipendenti che non lavorano su alcun progetto.
--Per ogni dipendente, calcola il numero totale di ore settimanali assegnate e verifica se ci sono violazioni del vincolo massimo (40 ore).


--Determina l’elenco dei dipendenti che lavorano a più di 2 progetti, ordinati per numero di progetti.

--SELECT D.nome, D.cognome, COUNT(AP.progetto) AS NUMERO_PROGETTI from Dipendente D
--INNER JOIN AssegnazioneProgetti AP ON AP.dipendente = D.Id_Dipendente
--GROUP BY D.Nome,D.Cognome
--HAVING COUNT(AP.progetto) >=2
--ORDER BY NUMERO_PROGETTI DESC

--Calcola lo stipendio medio per ciascun dipartimento e mostra solo quelli con una media superiore a 50.000.


--Trova i progetti che coinvolgono almeno un dipendente con stipendio superiore a 70.000.

SELECT p.id_progetto, P.Descrizione FROM Progetti P
inner join AssegnazioneProgetti AP on AP.progetto = P.id_progetto
inner join Dipendente D on D.Id_Dipendente = AP.dipendente
inner join Ruolo R on R.Id_Ruolo = D.Ruolo
WHERE R.Stipendio_Base >= 50000
GROUP BY p.id_progetto