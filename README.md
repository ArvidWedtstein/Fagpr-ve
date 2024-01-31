# Fagprøve
Docs til fagprøven

## Målet med oppgaven:
Lage en handeliste app med registrering og innlogging for brukere.
Må være flere lister.
Må være lett for brukeren å vite hva som er handlet, og hva som gjenstår.

## Utstyr
- Laptop / PC
- Omega 365 Appframe rammeverket / Vue.js
- Internett
- DrawSQL for å tegne Tabellstruktur
- Fontawesome library for ikoner.
- SQL Server Management Studio for redigering/oppretting av tabeller og views.

## Fremgangsmåte:
Begynner med å planlegge og lage tabellstruktur.
Lager deretter tabellene og appene (hovedside og details)
Legger til planlagt funksjonalitet (se Skisse av løsningen) 
Tester gjennom appen(e) og dokumenterer dette.
Lager brukeranvisning.
Dokumenterer hva jeg har gjort
Lager presentasjon.

## Arbeidsoppgaver:

- Planlegge, lage tabellstruktur.
- Lage tabeller
- Inserte data i tabellene (tar meg friheten til å hente data og bilder for items fra mitt personlige prosjekt, ArkDashboard. Bildene her er lisensiert for non-commercial use, så i tilfelle dette hadde vært brukt til virkelig oppdrag, så hadde jeg gått for noe annet)
- Sette opp trigger security. Brukeren skal kun få redigere sine egne handleliste og de kan har fått delt
- Dokumentere dette underveis, lage brukerveiledning.
- Teste funksjonalitet, dokumentere testresultat

## Skisse av løsningen:
Main bilde
- Oversikt over brukerens handlelister
    - Oversikt over antall varer i hver liste.
    - BONUS:
        - Brukeren kan dele sine handlelister med andre. Vis brukeren har delt listen sin med en annen bruker, skal denne også få opp listen hos seg samt customitems, og kan da avhengig av readonly kolonnen redigere denne.)
        - Search bar. Brukeren kan søke på handlelister
        - "3 dotter" meny som gir mulighet til å dele lister etter at de har blitt opprettet, og slette denne.
- Header med Knapp for ny handleliste, som da åpner dialog for å lage ny handleliste

Detail bilde
- Oversikt over innholdet i handlelisten.
- Liste, checkbox til høyre, og antall av varen
    - Edit knapp til høyre, som åpner dialog for redigering av vare, antall og unit.
    - Checked items sorteres øverst
    - Kategorisert etter kategori for å gjøre handlingen enklere
    - Inline Lookup redigering med items
        - BONUS: Autocomplete når brukeren skriver inn item, vis itemet ikke eksister i listen, så kan brukeren opprette item selv (også kalt FreeSolo autocomplete)



## Tidsskjema:

### Onsdag: (Starta 11:30🕦, 5.5t)
- Planlegging (4.5t)
- Tabellstruktur (1t)
  
### Torsdag: (8.25t)
- Dokumentere dagens aktivteter (0.25t)
- Lage tabeller, inserte data (2t)
- Lage sider
    - Hoved (4.5t)
      - Dialog for ny liste (Bonus: Legge til mulighet for å dele denne med andre)
      - Sette opp datasources, sortering
    - Details (1t)
      - Sette opp datasources, sortering
      
### Fredag (8.5t):
- Dokumentere dagens aktivteter (0.25t)
- Change incomming

### Lørdag:

### Søndag:

### Mandag:

### Tirsdag:
- Dokumentere dagens aktivteter


### Onsdag:
- Dokumentere dagens aktivteter

### Torsdag:
- Presentering
- Egenvurdering
