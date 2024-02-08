<div align="center">
  <a href="https://github.com/ArvidWedtstein/Fagproove">
    <img src="https://content.energage.com/company-images/SE45893/SE45893_logo_orig.png" alt="Logo" width="200" height="200">
  </a>

  <h3 align="center">
    <ins>Egenvurdering</ins>
  </h3>

  <p align="center">
    <b>Test-Fagprøve</b>
    <br />
    <sub>31.01.24 - 08.02.24</sub>
  </p>
</div>

<details>
  <summary>
    <b>Table of Contents</b>
  </summary>
  <ol>
    <li>
      <a href="#oppsummering">Oppsummering</a>
      <ul>
        <li>
          <a href="#egenevaluering-av-fremgangsmåte">Egenevaluering av fremgangsmåte</a>
        </li>
      </ul>
    </li>
    <li>
      <a href="#utført-arbeid-under-fagprøven">Utført arbeid under fagprøven</a>
      <ul>
        <li>
          <a href="#utfordringer">Utfordringer</a>
        </li>
      </ul>
    </li>
    <li>
      <a href="#avvik-i-løsning-i-forhold-til-plan-eller-oppdrag">Avvik i løsning i forhold til plan eller oppdrag</a>
    </li>
    <li>
      <a href="#ka-kunne-jeg-gjort-annerledes-eller-bedre">Hva jeg ville gjort annerledes eller bedre</a>
    </li>
  </ol>
</details>

## Oppsummering

Alt i alt så har ting egentlig gått ganske greit.<br>
Har vært litt utfordringer her og der, men klarte stortsett å løsa dei.<br>
Kunne lest meg mer opp på ting som sikkerhet.

### Egenevaluering av fremgangsmåte:

Laget en solid [plan](https://github.com/ArvidWedtstein/Fagproove/blob/main/README.md) for kossen eg tenkte å utføra oppgavå.<br />

Syns fremgangsmåten min var helt ok. <br>
Kunne perfektsjonert testrapporten, dokumentasjonen og brukerveiledningen første gang, så hadde jeg ikke måttet finjustere den i etterkant.

Vurderte å bruka R4 Web i starten sammen med npm pakkene til Ølen Betong og react siden jeg har mest kjennskap til det fra før,<br>
men siden node pakkene til Ølen Betong var begrenset til .obet.no domenet og eg fekk beskjed om at det ikke var greit å laga fagprøven i kundens devmiljø så ble det uaktuelt.<br>
Så andrevalget blei Omega 365 (NT), selv om jeg hadde begrenset kunnskap til det.<br>
Dennis blei så å sei erstattning for det snippets, code search eller sitesetup ikke hadde av dokumentasjon (eksempel: disabling av filter på kolonne i datagrid komponenten).




## Utført arbeid under fagprøven

Gjennomføringen av oppgaven gikk stort sett bra. <br>
Klarte stortsett å holda meg til tidsplanen, med unntak av når eg estimerte litt for lite tid til testing. 

[Progressjon under fagprøven / utført arbeid under fagprøven](https://github.com/ArvidWedtstein/Fagproove/blob/main/Progress.md)

Kunne lest meg mer opp på sikkerhet, slik at jeg hadde kunne gi mer utfyllende svar under presentasjonen.

### Utfordringer

 <ol>
    <li>
      <p>
        Under utviklingen så møtte jeg på en NT bug der jeg ikke fikk lagt til custom components i koden. (Disallowed MIME type error) (se bilde 1)<br />
        Dette resulterte i at all koden måtte ligge i samme filen. Har prøvd å holde orden alikevel ved å markere start og slutt på det som ellers hadde blitt en component (se bilde 3)
      </p>
      <table>
        <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/bf3a069d-426a-4754-9824-80efc8b597d2" width="60"></th>
        <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/af97cd91-8b90-4491-8e62-49795f95f486" width="60"></th>
        <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/92b6bbd7-289d-4d28-9208-1715400fb68b" width="60"></th>
      </table>    
    </li>
    <li>
      <p>
        Fant bug i ODataLookup. På mobil så bytter den til MobileLookup. MobileLookup render ikke ikke v-slot inne i ocolumn, så derfor er bildene bare i tekst på mobil (se bilde 1)<br>
        Løsningen her var å bare fjerne kolonnen for bilde når mobile view er aktiv ved hjelp av isMobile (se bilde 2). 
      </p>
      <table>
        <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/e8dec4d3-ec48-456e-9672-ecd2fdff2346" width="60"></th>
        <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/6800d777-9f58-4d25-b961-8b8ae7d8d186" width="60"></th>
      </table>    
    </li>
    <li>
      <p>
        NT i training har i seg sjøl vært en stor hindring.<br>
        Å måtta publisera hver einaste gang for å se hver bittelille endring, e litt for mye forlangt.<br>
        Føle eg e bedre off med å bruka R4 Web og bare importa noen libraries neste gang istedenfor.
      </p>
    </li>
    <li>
      <p>
        Hadde under utviklingen problem med at "0 records" blei affecta ved update.<br>
        Etter en liten teams gjennomgang med Tor og Mr Hoff, <br>
        så viste det seg at eg e blind og ikke klarte å se at det sto at an bruke view istedenfor atbl.
        Siå atbv'en kom med "WHERE 1=2" som default, så kunne det ikkje funka.
      </p>
      <table>
        <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/41984788-66c4-4755-b1a6-da0c55806a26" width="60"></th>
      </table> 
    </li>
    <li>
      <p>
        Har hatt litt problemer med ODataGrid componenten.<br/>
        Dialogen for å oppretta ny row forblir åpen når modalen lukkes og lukker da åpnet opp igjen vis man redigerer en annen handeliste
      </p>
      <table>
        <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/6cb76787-d89f-4607-99fa-bcb2c8396980" width="60"></th>
        <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/172f11f8-9c9d-499c-9625-65178fde918e" width="60"></th>
      </table> 
    </li>
    <li>
      <p>
        Hadde også delvis publiseringsproblemer (i tillegg til å måtte publisere hver gang)<br>
        Såg ut som Appframe ikkje klarte å setta versjon sjøl til tider.<br>
        Va visst et common problem, så endte opp med å bare manuelt updata versjonsnummeret noen hakk opp fra det an va tidligere
      </p>
      
  ```sql
  UPDATE V
  SET V.Version = 42069
  FROM dbo.stbl_o365_apps AS V
  WHERE V.PrimKey = '2056efbd-687c-4a99-9419-cf89ba6f2393'
  ```
  <table>
    <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/7d391b1d-0d30-4dce-a51f-59d9b0b54377" width="60"></th>
  </table>
    </li>
  </ol>

## Avvik i løsning i forhold til plan eller oppdrag

<ol>
  <li>
    <p>
      Ble aldri helt fornøyd med layoutet jeg planla på planleggingsdagen, så endte opp med å komme opp med ett nytt midt på natten på dag 5. <br>
      Dette er bare endringer i layout, så testrapport bilder kan delvis vise gammel layout til tider.
    </p>
  </li>
  <li>
    <p>
      Gikk litt utover det jeg hadde planlagt og la til søkefelt for handelister og collapsing av kategorier inne i selve handelisten
    </p>
  </li>
  <li>
    <p>
      Planen var egentlig å ha en autocomplete / freesolo lookup for å lage nye varer som ikke eksisterte fra før.<br>
      Fikk ikke ODataLookup til å fungere som jeg ville, så løsningen ble å toggle mellom et vanlig input felt og lookupen.
      Like fortsatt ikkje den løsningen 100%, men følte det va bedre enn å begynna med slappa inn mye kode i hoved vue filen, siden eg ikke kunne laga components. 
    </p>
  </li>
</ol>

## Ka kunne eg gjort annerledes eller bedre

1. Ville lagt til veiledning for innlogging og registrering
2. Kunne ha fiksa noe bedre istedenfor den lookup / input felt toggle greiå.
3. Hadde eg visst at NT i training har så mangen problemer som an hadde nå (og hatt samme medge erfaring som eg hadde med NT nå), så hadde eg nok gått for R4 Web istedenfor og bare brukt Ølen Betongs rammeverk.
4. Hadde lest meg mer opp på kossen Omega 365 (Appframe) (NT) faktisk fungere.


