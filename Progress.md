<div align="center">
  <a href="https://github.com/ArvidWedtstein/Fagproove">
    <img src="https://content.energage.com/company-images/SE45893/SE45893_logo_orig.png" alt="Logo" width="200" height="200">
  </a>

  <h3 align="center">
    <ins>Progress</ins>
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
  <ul>
    <li>
      <a href="#onsdag">Onsdag (31.01)</a>
    </li>
    <li>
      <a href="#torsdag">Torsdag (01.02)</a>
    </li>
    <li>
      <a href="#fredag">Fredag (02.02)</a>
    </li>
    <li>
      <a href="#mandag">Mandag (05.02)</a>
    </li>
    <li>
      <a href="#tirsdag">Tirsdag (06.02)</a>
    </li>
    <li>
      <a href="#onsdag-1">Onsdag (07.02)</a>
    </li>
    <li>
      <a href="#torsdag-1">Torsdag (08.02)</a>
    </li>
  </ul>
</details>


<details open>
  <summary>
    <h2>Onsdag</h2> 
    <sub><sup>(31.01)</sup></sub>
  </summary>

  Laga [plan](https://github.com/ArvidWedtstein/Fagproove/blob/main/README.md).
</details>

<details open>
  <summary>
    <h2>Torsdag</h2> 
    <sub><sup>(01.02)</sup></sub>
  </summary>

  <table>
    <tr>
      <th colspan="3">Beskrivelse</th>
      <th>Bilde(r)</th>
    </tr>
    <tr>
      <td colspan="3">
        <b>Oppsummering</b><br><br>
        Laget fremside, lagt til funksjonalitet for å søke, dele og redigere handlelister.<br>
        La til plus knappen i bunnen åpner dialogen for å opprette ny handeliste på hovedsiden<br>
        La til meny gir mulighet for å slette og redigere handelister<br>
        La til mulighet for å se hvem du har delt med<br>
        Laget views og Stored procedures og fikset trigger security.<br>
        Ble hindret av Appframe 365 rammeverket da det oppsto problemer med publisering i tillegg til at det måtte publiseres for å se endringer.<br>
        <br>
        Hadde også problemer med å laste inn tilleggsfiler. Dermed ble jeg tvunget til å ha alt i en og samme fil (se bilde 2)
      </td>
      <td>
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/78b5664b-766b-4d11-add8-0d4aba1846ad">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/1cf9186f-edbe-4a79-b014-0cbcf72adc6a">
      </td>
    </tr>
    <tr>
      <td colspan="3">La til plus knappen i bunnen åpner dialogen for å opprette ny handeliste på hovedsiden</td>
      <td>
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/69c82ebd-0696-447c-b62f-040532d9134e">
      </td>
    </tr>
    <tr>
      <td colspan="3">La til meny gir mulighet for å slette og redigere handelister</td>
      <td>
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/0695db3f-fac6-4d3b-83f2-e5713aad82de">
      </td>
    </tr>
    <tr>
      <td colspan="3">La til mulighet for å se hvem du har delt med</td>
      <td>
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/3fe82d22-c7a0-49a8-aea9-76bc325bc5b8">
      </td>
    </tr>
  </table>
</details>

<details open>
  <summary>
    <h2>Fredag</h2> 
    <sub><sup>(02.02)</sup></sub>
  </summary>
  
  <table>
    <tr>
      <th colspan="3">Beskrivelse</th>
      <th>Bilde(r)</th>
    </tr>
    <tr>
      <td colspan="3">Laget ferdig details siden.</td>
      <td>
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/a5f0087c-39dd-4a78-8b9a-a600b42e8921">
      </td>
    </tr>
    <tr>
      <td colspan="3">Laget dialog for å opprette og redigere varer</td>
      <td>
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/cdc26d17-2109-4cb1-945f-bb7f5d383a33">
      </td>
    </tr>
    <tr>
      <td colspan="3">
        Lagt til funksjonalitet for at kategorien slås sammen når alle varene er avkrysset.<br>
        Anvendte litt custom css for å få en smooth checkmark og strek-ut animasjon.
      </td>
      <td>
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/513970ad-bda4-419c-95af-e0c4076652f8">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/82aa1b6b-4af3-407a-aa48-bc1cf098f12b">
      </td>
    </tr>
    <tr>
      <td colspan="3">
        La til mulighet for å lage nytt item ved å bruke switch "Create new item" som da vil opprette ett nytt item vis togglet<br>
        Input blir da byttet fra lookup til vanlig input da siden eg ikkje fant en løsning for å bruka Omega 365 lookupen sånn at man kan lage nytt item<br>
        Laget kode som oppretter nytt item, returnerer så IDen for å legge det nylig opprettede itemet i handlelisten
      </td>
      <td>
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/0c66f03d-de44-49dd-ac6c-e8ef20d7f780">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/a852f456-02bc-4930-8c8d-68120d01ef88">
      </td>
    </tr>
  </table>
</details>

<details open>
  <summary>
    <h2>Mandag</h2> 
    <sub><sup>(05.02)</sup></sub>
  </summary>

  <table>
    <tr>
      <th colspan="3">Beskrivelse</th>
      <th>Bilde(r)</th>
    </tr>
    <tr>
      <td colspan="3">
        Laget <a href="https://github.com/ArvidWedtstein/Fagproove/blob/main/Test_Report.md" target="_blank">testrapport</a> og testet løsningen
      </td>
      <td>
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/ac8209db-456a-43ea-96d4-94a5093482c4">
      </td>
    </tr>
  </table>
</details>

<details open>
  <summary>
    <h2>Tirsdag</h2> 
    <sub><sup>(06.02)</sup></sub>
  </summary>
  
  <table>
    <tr>
      <th colspan="3">Beskrivelse</th>
      <th>Bilde(r)</th>
    </tr>
    <tr>
      <td colspan="3">Gjort layout endringn på hovedsiden siden jeg ikke var fornøyd med hvordan det så ut og for å gjøre det mer oversiktlig og lesbart.</td>
      <td>
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/43391aca-38f7-43c1-a71a-101d2a42aa1d">
      </td>
    </tr>
    <tr>
      <td colspan="3">Begynt på <a href="https://github.com/ArvidWedtstein/Fagproove/wiki" target="_blank">wiki</a> og <a href="https://github.com/ArvidWedtstein/Fagproove/blob/main/System_Documentation.md" target="_blank">docs</a></td>
      <td></td>
    </tr>
    <tr>
      <td colspan="3">Gjort testrapport bildene litt mer leselig</td>
      <td>
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/4310262f-9cb2-45a2-af9b-9c9bdd4e9d3b">
      </td>
    </tr>
  </table>
</details>

<details open>
  <summary>
    <h2>Onsdag</h2> 
    <sub><sup>(07.02)</sup></sub>
  </summary>

  <table>
    <tr>
      <th colspan="3">Beskrivelse</th>
      <th>Bilde(r)</th>
    </tr>
    <tr>
      <td colspan="3">Finjustert på <a href="https://github.com/ArvidWedtstein/Fagproove/blob/main/System_Documentation.md" target="_blank">system dokumentasjon</a> og <a href="https://github.com/ArvidWedtstein/Fagproove/blob/main/Test_Report.md" target="_blank">testrapport</a></td>
      <td></td>
    </tr>
    <tr>
      <td colspan="3">Laget en <a href="https://omegaoffice-my.sharepoint.com/:p:/g/personal/arvid_wedtstein_omega365_com/EQXcYrracTdDkuHtCyjOdD8BTkAfLmdTyT0xFoIx3rsawA?e=nu2b1s" target="_blank">presentasjon</a> / plan om ka eg ska visa på torsdag</td>
      <td></td>
    </tr>
  </table>
</details>

<details open>
  <summary>
    <h2>Torsdag</h2> 
    <sub><sup>(08.02)</sup></sub>
  </summary>

  <table>
    <tr>
      <th colspan="3">Beskrivelse</th>
      <th>Bilde(r)</th>
    </tr>
    <tr>
      <td colspan="3">Hatt presentasjon</td>
      <td></td>
    </tr>
    <tr>
      <td colspan="3">Skrevet <a href="https://github.com/ArvidWedtstein/Fagproove/blob/main/Egenvurdering.md" target="_blank">egenvurdering</a></td>
      <td></td>
    </tr>
  </table>
</details>
