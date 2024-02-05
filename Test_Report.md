# Test Report


<details>
  <summary>Hoved Side</summary>

<table>
    <tr>
      <th>Funksjoner</th>
      <th>Beskrivelse</th>
      <th>Resultat</th>
      <th>Bilder</th>
    </tr>
    <tr>
      <td>Opprette ny handleliste</td>
      <td>Kunne opprette ny handleliste</td>
      <td>Funket. Handelisten ble sortert øverst sli kden skal.</td>
      <td> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/0da5018b-e808-4175-8760-a1d4f1ef26db" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/54504e25-327b-41a7-882f-655ba58521e8" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/084497fa-64c4-493d-aafb-babf1261a1c2" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/3012eb71-ba13-4c74-b8fb-398c4d633f3f" width="48">
      </td>
    </tr>
    <tr>
      <td>Redigere handleliste </td>
      <td>Kunne rediger handleliste og legge til/fjerne personer å dele handelisten med.</td>
      <td>Funket å redigere. Eneste som ikke funket helt er at "opprett ny" menyen forblir oppe etter at man har lagt til ny person (se siste bildet). Dette er en feil i rammeverket.</td>
      <td> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/c78bce06-b51e-4664-81ce-bd59797676a3" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/8222b7f4-1c07-43ef-8bef-5bc514e5ea5d" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/8142659b-ea2f-407b-89db-227c635bb02d" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/8142659b-ea2f-407b-89db-227c635bb02d" width="48">
 </td>
    </tr>
    <tr>
      <td>Kunne slette handeliste.</td>
      <td>Ved sletting av handleliste skal handelistens innhold slettes og delte brukeren(e) som i tabellen for de som handlelisten var delt med.</td>
      <td>Funket, varer og personer fra handelisten ble slettet.</td>
      <td> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/a6c8d8d0-d0f5-442b-b6fe-e8bd493b8ca7" width="48"> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/2e6a912c-9351-4d41-b9ca-5c3db071880f" width="48">
      </td>
    </tr>
   <tr>
      <td>Søkefelt</td>
      <td>Ved bruk av søktefeltet skal handlelistene filtreres på handelistens navn eller den som har laget handelisten eller den som er en del av handlelisten </td>
      <td>Funket å søke på både eier av handeliste, personer i handelisten og navn på handleliste</td>
      <td> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/426b1b4a-5bb8-4d6c-8fc1-97fad9141e97" width="48"> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/30559206-592f-462b-8441-84e3257efa27" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/80db6e94-da5f-4ca3-9350-a78abedfdefe" width="48"> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/15f7fd52-8bae-4999-9229-c197d30e443e" width="48">
      </td>
    </tr>
</table>
</details>


<details>
  <summary>Detalje Side</summary>

<table>
    <tr>
      <th>Funksjoner</th>
      <th>Beskrivelse</th>
      <th>Resultat</th>
      <th>Bilder</th>
    </tr>
  <tr>
      <td>Legge til ny vare</td>
      <td>Brukeren skal kunne legge til ny vare via "+" knappen i footeren.</td>
      <td>På desktop funket dette fint. Lookup har problemer med å laste inn slot på mobile view. Dette skyldes fordi lookupen bytter til mobile view som ikke har støtte for slots. NT issue. (Se bilde nr 3)</td>
      <td> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/794e30d6-f025-4296-a0a2-8878ea04a12d" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/0ef658d4-e8b8-4df6-8b88-b097a37a6557" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/001e2abb-622e-46b2-a9d7-73f106f259be" width="48">
        <img src="" width="48"> 
      </td>
    </tr>
   <tr>
      <td>Opprette ny vare</td>
      <td></td>
      <td></td>
      <td> 
        <img src="" width="48"> 
      </td>
    </tr>
  <tr>
      <td>Redigere vare</td>
      <td></td>
      <td></td>
      <td> 
        <img src="" width="48"> 
      </td>
    </tr>
  <tr>
      <td>Slette vare</td>
      <td></td>
      <td></td>
      <td> 
        <img src="" width="48"> 
      </td>
    </tr>
  <tr>
      <td>Krysse ut vare</td>
      <td></td>
      <td></td>
      <td> 
        <img src="" width="48"> 
      </td>
    </tr>
  <tr>
      <td>Handeliste progress</td>
      <td>Progressbaren skal automatisk oppdatere seg ved avkryssing av varer og når det legges til ny vare.</td>
      <td></td>
      <td> 
        <img src="" width="48"> 
      </td>
    </tr>
     <tr>
      <td>Søkefelt</td>
      <td>Ved bruk av søktefeltet skal varene i handlelisten filtreres på navn, antall, kategori osv. </td>
      <td></td>
      <td> 
        <img src="" width="48"> 
      </td>
    </tr>
</table>
 

</details>
