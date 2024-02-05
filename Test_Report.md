# Test Report

### Plan for testing
- Gå gjennom alle hovedfunksjonene, skrive ned eventuelle feil og resultat.
- Lage ny bruker og logge inn
  
<details open>
  <summary><h3>Hoved Side</h3></summary>

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


<details open>
  <summary><h3>Detalje Side</h3></summary>

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
      <td>På desktop funket det fint å bruke lookup. Lookupen har problemer med å laste inn slot på mobile view. Dette skyldes fordi lookupen bytter til mobile view som ikke har støtte for slots. NT issue. (Se bilde nr 3). Ellers så funker det som det skal. Fikk lagt til dennis uten problemer</td>
      <td> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/794e30d6-f025-4296-a0a2-8878ea04a12d" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/0ef658d4-e8b8-4df6-8b88-b097a37a6557" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/001e2abb-622e-46b2-a9d7-73f106f259be" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/f5d89137-e652-418d-9598-49f97575d48a" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/70cf9d8f-06ce-4e38-b09f-c6258b86815b" width="48">
      </td>
    </tr>
   <tr>
      <td>Opprette ny vare</td>
      <td>Brukeren skal kunne opprette ny vare ved å trykke på "create new item" checkboksen i ny vare dialogen. Brukeren skal ha kunne skrive inn navnet på ønsket vare og så fortsette som vanlig. Varen skal da være tilgjengelig når brukeren legger til nye varer i senere tid.</td>
      <td>Ny vare ble opprettet, kagt i handelisten og gjort tilgjengelig for senere bruk.</td>
      <td> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/3f8ff043-5961-44b8-8969-75f6c5df0484" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/2e29d3e4-8319-43f1-aa28-33f82ddd0710" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/7c938445-fc65-4476-b621-dadf76a5af80" width="48">
      </td>
    </tr>
  <tr>
      <td>Redigere vare</td>
      <td>Brukeren skal kunne redigere antall, vare og enhet ved redigering av varen.</td>
      <td></td>
      <td> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/fe44796c-b47b-494f-9720-36e0c9161fa7" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/524b598d-c5c1-49a2-a428-5cc9658e9cec" width="48"> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/8d7dc36f-94e0-4e04-b9d0-c9bc0b49225f" width="48"> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/7da88d81-49fe-45a5-877e-37998d11e0c3" width="48">
      </td>
    </tr>
  <tr>
      <td>Slette vare</td>
      <td>Brukeren skal kunne slette valgt vare via "3-dotter" menyen</td>
      <td>Gikk an å slette varen som forventet.</td>
      <td> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/18d328e2-fa31-42ca-b42e-5b08ca6cedbc" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/08a8ef3b-9db0-4db7-a592-ac501fd50c32" width="48">
      </td>
    </tr>
  <tr>
      <td>Krysse ut vare</td>
      <td>Brukeren skal kunne krysse ut vare og så få oppdatert handelistestatusen i footeren. Vis itemet er eneste i kategorien, skal kategorien slås sammen.</td>
      <td>Gikk å krysse ut vare, status og progress ble oppdatert og kategorien ble slått sammen siden det ikke var flere varer der. Vis det eksisterte flere enn en vare, slå forble kategorien åpen (se bilde 3)</td>
      <td> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/f4a798c0-711a-4199-878d-78d342929465" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/93ec77d6-1ec6-45ef-b2bd-affaf94be0f6" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/9f209cdd-3ab1-4e06-bd91-6ca5cda77e0a" width="48">
      </td>
    </tr>
     <tr>
      <td>Søkefelt</td>
      <td>Ved bruk av søktefeltet skal varene i handlelisten filtreres på navn, antall, kategori osv.</td>
      <td>Søk på navn, antall, kategori og enhet</td>
      <td> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/24c3e900-6529-4ddc-99ee-e0eab7b8b71b" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/e2bf7d70-0551-4f91-b462-f8b691f79545" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/7e1f8586-4a40-4050-b0bf-63563da6b091" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/c01e2f6e-e70e-4d76-9808-39d82fb18b30" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/9255288f-3d3a-4cde-8c74-4705dacd3406" width="48">
      </td>
    </tr>
</table>
</details>

 
<details open>
  <summary><h3>Registrering av ny bruker / innlogging</h3></summary>

<table>
    <tr>
      <th>Funksjoner</th>
      <th>Beskrivelse</th>
      <th>Resultat</th>
      <th>Bilder</th>
    </tr>
    <tr>
      <td>Opprette ny bruker</td>
      <td>Kunne opprette ny bruker gjennom traing login siden</td>
      <td>Funker, må bare grave frem tilfeldig telefonnummer.</td>
      <td> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/fa73f770-d4c7-4fc7-aa72-c27b77d1b830" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/948ccc1b-8f1a-4307-90da-984a132f0bd3" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/fc6474bd-2db2-405a-907e-75d7ed024394" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/ab2d4e85-9cc2-4c36-bc21-435676379441" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/217b1cdb-094b-416a-ad33-3f811db72e96" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/37e6e643-e7b5-47df-9b03-a3fa1353640f" width="48">
      </td>
    </tr>
    <tr>
      <td>Login bruker</td>
      <td>Kunne logge inn og havne direkte på siden</td>
      <td>Funker, fortutsett at du har redirect url med.</td>
      <td> 
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/a0403285-e6d5-4a91-a2f0-806ab6343445" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/48e65de3-99ac-4f76-80f4-d8f839feacb5" width="48">
        <img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/a2bc31de-12c4-4ae7-b42b-5d3c6abbc295" width="48">
      </td>
    </tr>
</table>
</details>
