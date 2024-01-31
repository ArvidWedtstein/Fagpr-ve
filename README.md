# Fagprøve
Docs til fagprøven

## Målet med oppgaven:
1. Lage en handeliste app med registrering og innlogging for brukere.
2. Må være flere lister.
3. Må være lett for brukeren å vite hva som er handlet, og hva som gjenstår.

## Utstyr
- Laptop / PC
- Omega 365 Appframe rammeverket / Vue.js
- Internett
- DrawSQL for å tegne Tabellstruktur
- Fontawesome library for ikoner.
- SQL Server Management Studio for redigering/oppretting av tabeller og views.
- Bootstrap 

## Fremgangsmåte:
Begynner med å planlegge og lage tabellstruktur.
Lager deretter tabellene og appene (hovedside, details og side for registrering.)
Legger til planlagt funksjonalitet (se Skisse av løsningen).
Registrering og pålogging løses i appframe (NT) rammeverket da dette eksisterer her fra før.
Legger eventuelt til bonusfunksjonalitet, avhengig av tid til overs.
Tester gjennom appen(e) og dokumenterer dette.
Lager brukeranvisning.
Dokumenterer hva jeg har gjort
Lager presentasjon.

## Arbeidsoppgaver:

- Planlegge, lage tabellstruktur.
- Lage tabeller, views og stored procedures.
- Inserte data i tabellene (tar meg friheten til å hente data og bilder for items fra mitt personlige prosjekt, ArkDashboard. Bildene her er lisensiert for non-commercial use, så i tilfelle dette hadde vært brukt til virkelig oppdrag, så hadde jeg gått for noe annet)
- Sette opp trigger security. Brukeren skal kun få redigere sine egne handleliste og de kan har fått delt
- Dokumentere dette underveis, lage brukerveiledning.
- Teste funksjonalitet, dokumentere testresultat
- Lage presentasjon

## Skisse av løsningen:
Main bilde
- Oversikt over brukerens handlelister
    - Oversikt over antall varer i hver liste.
    - BONUS:
        - Brukeren kan dele sine handlelister med andre. Vis brukeren har delt listen sin med en annen bruker, skal denne også få opp listen hos seg samt customitems, og kan da avhengig av readonly kolonnen redigere denne.)
        - Search bar. Brukeren kan søke på handlelister
        - "3 dotter" meny som gir mulighet til å dele lister etter at de har blitt opprettet, og slette denne.
        - Footer med oversikt over hvor mange varer du har igjen
- Header med Knapp for ny handleliste, som da åpner dialog for å lage ny handleliste

<details>
  <summary>Details Side</summary>

  - Oversikt over innholdet i handlelisten.
  - Liste, checkbox for å checke ut, og antall av varen
      - Edit knapp til høyre, som åpner dialog for redigering av vare, antall og unit
          - BONUS: Autocomplete når brukeren skriver inn item, vis itemet ikke eksister i listen, så kan brukeren opprette item selv (også kalt FreeSolo autocomplete)
      - Click på item, checker ut varen og markerer denne som "checked"
      - Kategorisert etter kategori for å gjøre handlingen enklere

</details>


Tabeller: [Tabellstruktur](https://drawsql.app/teams/arvid/diagrams/tabellstruktur)

## Tidsskjema:

### Onsdag: (Starta 11:30🕦, 5.75t)
- Planlegging (4.5t)
- Tabellstruktur (1t)
- Dokumentere dagens aktivteter (0.25t)
  
### Torsdag: (8.5t)
- Dokumentere dagens aktivteter (0.25t)
- Lage tabeller, inserte data (1.5t)
- Lage views og stored procedures (2.25t)
    - LookupItems
          - BONUS: filter på hvilke items brukeren har fått tilgang til gjennom delt handleliste
    - Handelister
    - HandleListeItems
    - Stored Procedure for å lage ny handleliste og ny handlelistevare og for å redigere varen
- Lage Hoved Side (4.5t)
    - Dialog for ny liste (Bonus: Legge til mulighet for å dele denne med andre)
    - Sette opp datasources, sortering
      
### Fredag (8.5t):
- Dokumentere dagens aktivteter (0.25t)
- Justere app(ene), tilrettelegge for eventuelle endringer i scopet.
- Lage details Details siden (8.25t)
  - Legge til liste med varer, legge til funksjonalitet for å checke ut varer.
  - Dialog for å redigere vare.

### Lørdag:
- Dokumentere dagens aktivteter (0.25t)
- 
### Søndag:
- Dokumentere dagens aktivteter (0.25t)
- 
### Mandag:
- Dokumentere dagens aktivteter (0.25t)
- 
### Tirsdag:
- Dokumentere dagens aktivteter (0.25t)
- Finjustere eventuelle mangler og feil (7.5)

### Onsdag:
- Dokumentere dagens aktivteter (0.25t)
- Lage presentasjon. (7.25t)
### Torsdag:
- Presentering
- Egenvurdering
