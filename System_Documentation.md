# System Dokumentasjon

<details>
  <summary>
    <b>Table of Contents / Innhold</b>
  </summary>
  <ol>
    <li>
      <a href="#funksjonelle-krav">Funksjonelle krav</a>
    </li>
    <li>
      <a href="#teknologier">Teknologier</a>
    </li>
    <li>
      <a href="#teknologier">Arkitektur</a>
       <ul>
        <li>
          <a href="#tabeller">Tabeller</a>
          <ul>
            <li>
              <a href="#sikkerhet-i-tabeller">Sikkerhet i Tabeller</a>
            </li>
          </ul>
        </li>
        <li>
          <a href="#views">Views</a>
        </li>
      </ul>
    </li>
    <li>
      <a href="#sikkerhet">Sikkerhet</a>
    </li>
    <li>
      <a href="#testing">Testing</a>
    </li>
    <li>
      <a href="#grensesnittbeskrivelse">Grensesnittbeskrivelse</a>
    </li>
    <li>
      <a href="#hindringer-under-utviklingen">Hindringer under utviklingen</a>
    </li>
    <li>
      <a href="#avvik-fra-plan">Avvik fra plan</a>
    </li>
    <li>
      <a href="#kilder">Kilder / Ressurser</a>
    </li>
  </ol>
</details>


<details open>
  <summary>
    <h2>Funksjonelle krav</h2>
  </summary>
    
- Mulighet for registrering og innlogging for brukere.
- Støtte for flere lister.
- Må være lett for brukeren å vite hva som er handlet, og hva som gjenstår.
<hr>
</details>
<details open>
  <summary>
    <h2>Teknologier</h2>
  </summary>
    
- Appframe 365 (NT)
- [Bootstrap](https://getbootstrap.com/docs/5.0/getting-started/introduction/)
- [Bootstrap Icons](https://icons.getbootstrap.com)
- Vue
- ArkDashboard Database (for bilder)
<hr>
</details>
<details open>
  <summary>
    <h2>Arkitektur</h2>
  </summary>
  
 <ul>
    <li>
      <details>
          <summary>
            <h4>Tabeller</h4>:
          </summary>
        
  [Tabellstruktur](https://drawsql.app/teams/arvid/diagrams/tabellstruktur)
        
   <details>
      <summary>
        <h4>Sikkerhet i Tabeller</h4>:
      </summary>

  For tilgangsstyring så er sql triggere brukt.<br>
  Disse sørger for at ikke hvem som helst får lov å legge til, oppdatere eller slette rader.

  <table>
        <tr>
          <th>Tabell Navn</th>
          <th>Regler Insert</th>
          <th>Regler Update</th>
          <th>Regler Delete</th>
          <th>Bilder</th>
        </tr>
        <tr>
          <td>atbl_ArvidWedtstein_Goods</td>
          <td>
            Kun brukere som har tabellen i permissiontables får lov å slette/redigere/legge til her.
          </td>
          <td>
            Kun brukere som har tabellen i permissiontables får lov å slette/redigere/legge til her.
          </td>
          <td>
            Kun brukere som har tabellen i permissiontables får lov å slette/redigere/legge til her.
          </td>
          <td>
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/2873e437-e421-4458-9430-ba7c4a84ec3e" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/633879f7-b9e1-4496-aa92-c3ce4f9fac41" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/d2f2a337-c603-4263-8f64-2d90ffae3293" width="60" />
              </th>
            </table>
          </td>
        </tr>
        <tr>
          <td>atbl_ArvidWedtstein_ShoppingLists</td>
          <td>
          <p>
            Kun brukere som har tabellen i permissiontables får lov å legge til her.
          </p>
          </td>
          <td>
          <p>
            For oppdatering så må du eie handelisten som oppdateres, eller ha fått den tildelt i tillegg til å ha tilgang til å gjøre endringer her.<br>
          </p>
          </td>
          <td>
          <p>
            For å slette må du eie handelisten.
          </p>
          </td>
          <td>
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/f6b4e821-d8fc-4dd1-9c82-d10f34640797" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/ad05a4e4-7203-4428-a7f2-cc4725b8f09c" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/a336b9dd-d08b-4f91-85e5-c8fed418ea0c" width="60" />
              </th>
            </table>
          </td>
        </tr>
        <tr>
          <td>atbl_ArvidWedtstein_ShoppingListsItems</td>
          <td>
           For å kunne legge til her må brukeren være en del av handelisten eller fått den tildelt og i tillegg ha tilgang til å gjøre endringer.<br>
          </td>
           <td>
            For å kunne legge til her må brukeren være en del av handelisten eller fått den tildelt og i tillegg ha tilgang til å gjøre endringer.<br>
          </td>
           <td>
           For å kunne legge til her må brukeren være en del av handelisten eller fått den tildelt og i tillegg ha tilgang til å gjøre endringer gjennom permissiontables
          </td>
          <td>
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/45b96cc2-70db-4237-a26c-0cdef9045487" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/fafacb52-2b96-49e8-b5f6-2cbed1a1b3c2" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/dbb916e3-f86d-4276-bc18-7009d7eeaead" width="60" />
              </th>
            </table>
          </td>
        </tr>
        <tr>
          <td>atbl_ArvidWedtstein_ShoppingListsSharedWith</td>
          <td>
            Bare brukere som eier handelisten kan dele den videre.
          </td>
          <td>
             Bare brukere som eier handelisten kan oppdatere hvem som skal kunne se den.
          </td>
          <td>
            Bare brukere som eier handelisten kan fjerne delte folk.
          </td>
          <td>
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/235ab8bc-1b15-440f-98cb-6d934c7adefd" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/07b90565-1e37-436d-812c-8bcbdfb9be80" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/dac51ae5-5540-4e60-bdb5-f7a31f3c0a78" width="60" />
              </th>
            </table>
          </td>
        </tr>
      </table>
  </details>
      </details>
    </li>
    <li>
      <details>
          <summary>
            <h4>Views</h4>:
          </summary>
        
  <table>
  <tr>
    <th>View Navn</th>
    <th>Beskrivelse</th>
    <th>Kode</th>
  </tr>
  <tr>
    <td>aviw_ArvidWedtstein_MyShoppingLists</td>
    <td>
      View for å begrense hvem som ser hvilke handelister.<br>
      Dette viewet tar med seg prosent fullført, hvem listen har blitt delt med for å vise "Shared with" på fremsiden som JSON.<br>
      Legger også til alle som har fått tildelt handelisten i søkekolonnen.
    </td>
    <td>
     <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/78e0cd7e-7fe2-4b99-acac-f2afabc8d5be" width="60" />
    </td>
  </tr>
  <tr>
    <td>aviw_ArvidWedtstein_ShoppingListsItems</td>
    <td>
      Eksisterer for å få med de siste relevante kolonnene for Søke kolonnen, i tilleg til å få med bilde, navn og kategori på varen.<br>
      Brukes på siden for å vise handelistens innhold.
    </td>
    <td>
      <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/c363a359-f5e9-4d78-bbd4-8a770cb1223d" width="48" />
    </td>
  </tr>
  <tr>
    <td>aviw_ArvidWedtstein_ShoppingListsSharedWith</td>
    <td>
      Dette viewet eksisterer bare for å få med navn på hvem handelisten(e) er delt med.
    </td>
    <td>
     <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/2227c50f-03d3-442e-bb12-4c9148468b34" width="48" />
    </td>
  </tr>
  <tr>
    <td>aviw_ArvidWedtstein_GoodsLkp</td>
    <td>
      Dette viewet eksisterer bare som datasource for lookupen til å legge til ny vare.<br>
      Viewet tar seg seg dine "personlige" varer so mdu har laget, samt de som eventuelt ble laget av noen i samme handleliste som du er en del av.</td>
    <td>
     <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/c3ef58bb-21f0-4365-803a-30da0d99d051" width="48" />
    </td>
  </tr>
</table>
      </details>
    </li>
  </ul>
  
  <hr />
</details>
<details open>
  <summary>
    <h2>Sikkerhet</h2>
  </summary>
    
  Sikkerhet er løst ved hjelp av Appframe roller og moduler.
  Bruker får tildelt en rolle. Rollen er koblet til en egen modul som da gir brukeren tilgang til appen(e) og tabellene.
  
  ![image](https://github.com/ArvidWedtstein/Fagproove/assets/71834553/0a9f2864-7bc9-4ea0-9a3f-412339a1ea1f)
  ![image](https://github.com/ArvidWedtstein/Fagproove/assets/71834553/8647a516-2559-4f8b-9969-6d4cdfa02892)

<hr />
</details>
<details open>
  <summary>
    <h2>Testing</h2>
  </summary>
    
For å sikre kvalitet på appen(e), har jeg laget en [Testrapport](https://github.com/ArvidWedtstein/Fagproove/blob/main/Test_Report.md) der jeg har gått over funksjonene i appen.

<hr />
</details>
<details open>
  <summary>
    <h2>Grensesnittbeskrivelse</h2>
  </summary>

- For beskrivelse hvordan applikasjonen brukes se:
  [Brukerveiledning](https://github.com/ArvidWedtstein/Fagproove/wiki)

- Under finner du beskrivelse av funksjonaliteten sammen med litt kode:

    <details>
      <summary>
        <h5>Hoved Side</h5>
      </summary>
      <table>
        <tr>
          <th>Funksjoner</th>
          <th>Beskrivelse</th>
          <th>Kode</th>
          <th>Bilder</th>
        </tr>
        <tr>
          <td>Opprette ny handleliste</td>
          <td>
          <p>
            Her vil bruker kunne opprette ny handeliste. <br>
            Dette er løst med å kalle på en funksjon med -1 index for å lage ny rad. (Bilde 1).<br>
            Funksjonen setter da indeksen på datasourcen til indeksen fra parameteren og setter CreateNewRef verdien til true.<br>
            Indeksen settes for å kunne redigere rett rad i modalen eller for at den ikke skal vise en annen verdi når en lager ny liste siden denne funksjonen brukes til å både opprette og redigere handeliste (bilde 2). <br>
            CreateNewRef brukes for å justere på modal tittel og lagringsknappen avhengig om bruker skal opprette eller redigere (bilde 3).
          </p>
          </td>
          <td>
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/b947ce12-290c-414b-aceb-fc4d5aa65b3e" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/a666985a-2cd5-4afc-b32b-540a0de20924" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/188f3c55-8baa-47da-bdc3-b784847bae06" width="60" />
              </th>
            </table>
          </td>
          <td>
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/0e7025e5-3653-4cb3-8b30-7a2a24dc85a4" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/54504e25-327b-41a7-882f-655ba58521e8" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/084497fa-64c4-493d-aafb-babf1261a1c2" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/3012eb71-ba13-4c74-b8fb-398c4d633f3f" width="60" />
              </th>
            </table>
          </td>
        </tr>
        <tr>
          <td>Redigere handleliste</td>
          <td>
            Redigering av handeliste gjøres gjennom en dropdown meny (bilde 1).<br>
            Denne kaller på samme funksjon som når en lager ny handeliste, bare med indeksen til nåværende rad (bilde 2).<br>
            En modal med mulighet for å redigere navn og delte personer åpnes (se bilde 3). 
          </td>
          <td>
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/d2a2591d-0be2-4e27-aac4-cd32a208e47c" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/a1588061-4658-4a0f-85db-fd64211f927e" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/277a1761-802b-46fe-b010-97547a613129" width="60" />
              </th>
            </table>
          </td>
          <td>
           <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/c78bce06-b51e-4664-81ce-bd59797676a3" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/8222b7f4-1c07-43ef-8bef-5bc514e5ea5d" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/8142659b-ea2f-407b-89db-227c635bb02d" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/8142659b-ea2f-407b-89db-227c635bb02d" width="60" />
              </th>
            </table>
          </td>
        </tr>
        <tr>
          <td>Slette handeliste.</td>
          <td>
            Sletting av handeliste foregår gjennom en dropdown (samme som brukes for å redigere) (se bilde 1).<br>
            Delete knappen i dropdownen trigger en funksjon som ber brukeren bekrefte sletting av handelisten (for å unngå sletting med uhell) (se bilde 2).<br>
            Trykker brukeren ok, så slettes raden fra tabellen.
          </td>
          <td>
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/2026915c-2eee-4520-a18f-eef57390b681" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/368ee55d-433a-406a-beb4-25cb107fde52" width="60" />
              </th>
            </table>
          </td>
          <td>
           <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/a6c8d8d0-d0f5-442b-b6fe-e8bd493b8ca7" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/2e6a912c-9351-4d41-b9ca-5c3db071880f" width="60" />
              </th>
            </table>
          </td>
        </tr>
        <tr>
          <td>Søkefelt</td>
          <td>
            Til søkefelt brukte jeg SearchInput componenten til appframe rammeverket.<br>
            Når inputen i søkefeltet endres kjøres en funksjon som setter filterobject på søkekolonnen til handeliste datasourcen.
            Søkekolonnen er de relevante feltene joinet sammen til en string i MyShoppingLists viewet.
          </td>
          <td>
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/8fff3a3c-fce1-4247-9530-26d6cb5f4d3e" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/3db02a23-8c26-461e-a683-aff983e289e2" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/7ec1ebcd-7f0e-4cec-b43a-c8d1913ba65f" width="60" />
              </th>
            </table>
          </td>
          <td>
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/426b1b4a-5bb8-4d6c-8fc1-97fad9141e97" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/30559206-592f-462b-8441-84e3257efa27" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/80db6e94-da5f-4ca3-9350-a78abedfdefe" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/15f7fd52-8bae-4999-9229-c197d30e443e" width="60" />
              </th>
            </table>
          </td>
        </tr>
      </table>
    </details>

  <details>
    <summary><h5>Detalje Side</h5></summary>

    <table>
        <tr>
          <th>Funksjoner</th>
          <th>Beskrivelse</th>
          <th>Kode</th>
          <th>Bilder</th>
        </tr>
      <tr>
          <td>Legge til ny vare</td>
          <td></td>
          <td></td>
          <td> 
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/794e30d6-f025-4296-a0a2-8878ea04a12d" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/0ef658d4-e8b8-4df6-8b88-b097a37a6557" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/001e2abb-622e-46b2-a9d7-73f106f259be" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/f5d89137-e652-418d-9598-49f97575d48a" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/70cf9d8f-06ce-4e38-b09f-c6258b86815b" width="60" />
              </th>
            </table>
          </td>
        </tr>
       <tr>
          <td>Opprette ny vare</td>
          <td>Brukeren skal kunne opprette ny vare ved å trykke på "create new item" checkboksen i ny vare dialogen. Brukeren skal ha kunne skrive inn navnet på ønsket vare og så fortsette som vanlig. Varen skal da være tilgjengelig når brukeren legger til nye varer i senere tid.</td>
          <td></td>
          <td> 
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/3f8ff043-5961-44b8-8969-75f6c5df0484" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/2e29d3e4-8319-43f1-aa28-33f82ddd0710" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/7c938445-fc65-4476-b621-dadf76a5af80" width="60" />
              </th>
            </table>
          </td>
        </tr>
      <tr>
          <td>Redigere vare</td>
          <td>Brukeren skal kunne redigere antall, vare og enhet ved redigering av varen.</td>
          <td></td>
          <td> 
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/fe44796c-b47b-494f-9720-36e0c9161fa7" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/524b598d-c5c1-49a2-a428-5cc9658e9cec" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/8d7dc36f-94e0-4e04-b9d0-c9bc0b49225f" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/7da88d81-49fe-45a5-877e-37998d11e0c3" width="60" />
              </th>
            </table>
          </td>
        </tr>
      <tr>
          <td>Slette vare</td>
          <td>
             Sletting av vare foregår gjennom en dropdown (samme som brukes for å redigere) (se bilde 1).<br>
            Delete knappen i dropdownen trigger en funksjon som ber brukeren bekrefte sletting av varen (for å unngå sletting med uhell) (se bilde 2).<br>
            Trykker brukeren ok, så slettes raden fra tabellen.
          </td>
          <td>
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/8f49989f-0c0e-4d92-8522-737951d06b91" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/3760300e-13d3-4357-b4c4-4b816a2f4ef1" width="60" />
              </th>
            </table>
          </td>
          <td> 
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/18d328e2-fa31-42ca-b42e-5b08ca6cedbc" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/08a8ef3b-9db0-4db7-a592-ac501fd50c32" width="60" />
              </th>
            </table>
          </td>
        </tr>
      <tr>
          <td>Krysse ut vare</td>
          <td>
            Utkryssing av varer skjer gjennom checkbox input som trigger checkItem funksjonen (se bilde 1).<br>
            Funksjonen sjekker om resten av varene i kategorien også er huket av, vis dette skulle være tilfellet, så slås kategorien sammen (se bilde 2)
          </td>
          <td>
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/a6e5e885-54dc-460f-95d9-1320ec01c750" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/b74640e5-c974-4ed4-9336-1d6b40ad2d81" width="60" />
              </th>
            </table>
          </td>
          <td> 
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/f4a798c0-711a-4199-878d-78d342929465" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/93ec77d6-1ec6-45ef-b2bd-affaf94be0f6" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/9f209cdd-3ab1-4e06-bd91-6ca5cda77e0a" width="60" />
              </th>
            </table>
          </td>
        </tr>
         <tr>
          <td>Søkefelt</td>
          <td>
            Til søkefelt brukte jeg SearchInput componenten til appframe rammeverket (se bilde 1).<br>
            Når inputen i søkefeltet endres kjøres en funksjon som setter filterobject på søkekolonnen til handeliste datasourcen. (se bilde 2)<br>
            Søkekolonnen er de relevante feltene fra Goods tabellen joinet sammen til en string som en computed column (se bilde 3).<br>
            Denne kolonnen er videre joinet med andre relevante felt fra ShoppingListsItems tabellen (se bilde 4).
          </td>
          <td>
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/e8c5e29f-f5d3-43db-8f13-b9095579308c" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/c9ce4ff5-95ab-450c-974e-bed835144a77" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/ba1b8179-46b6-4d4f-a1b4-b71f72bccbab" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/87a1a057-7b47-4dcf-b021-e4c50b8919d8" width="60" />
              </th>
            </table>
          </td>
          <td> 
            <table>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/24c3e900-6529-4ddc-99ee-e0eab7b8b71b" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/e2bf7d70-0551-4f91-b462-f8b691f79545" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/7e1f8586-4a40-4050-b0bf-63563da6b091" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/c01e2f6e-e70e-4d76-9808-39d82fb18b30" width="60" />
              </th>
              <th>
                <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/9255288f-3d3a-4cde-8c74-4705dacd3406" width="60" />
              </th>
            </table>
          </td>
        </tr>
      </table>
    </details>
    
<hr />
</details>
<details open>
  <summary>
    <h2>Hindringer under utviklingen</h2>
  </summary>

  <ol>
    <li>
      <p>
        Under utviklingen så møtte jeg på NT bug der jeg ikke fikk lagt til custom components i koden. (Disallowed MIME type error) (se bilde 1)<br>
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
  </ol>
<hr />
</details>
<details open>
  <summary>
    <h2>Avvik fra plan</h2> (Endringer under utvikling)
  </summary>

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
  </ol>
 
<hr />
</details>
<details open>
  <summary>
    <h2>Kilder</h2>
  </summary>

  <ol>
    <li>
      <a href="https://vuejs.org/guide/introduction.html" title="Vue Docs">Vue Docs</a>
    </li>
    <li>
      <a href="https://getbootstrap.com/docs/5.0/getting-started/introduction/">Bootstrap Docs</a>
    </li>
    <li>
      <a href="#">Sitesetup</a>
    </li>
    <li>
      <a href="#">Sitesetup</a>
    </li>
    <li>
      <a href="#">Code search</a>
    </li>
    <li>
      Dennis (Erstattning for Omegas mangel på docs)
    </li>
  </ol>
 
<hr />
</details>
