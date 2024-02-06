# Testrapport

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
        <table>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/acb438a5-a793-4f75-88a7-118c1f6c3aaf" width="60" /></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/6625344b-fbda-4b62-a1a3-906f02d796a3" width="60" /></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/3e7e9818-f546-46cc-a58d-28a86976987c" width="60" /></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/67ecfe09-1e8a-43f5-a66a-657331699a5e" width="60" /></th>
        </table>
      </td>
    </tr>
    <tr>
      <td>Redigere handleliste</td>
      <td>Kunne rediger handleliste og legge til/fjerne personer å dele handelisten med.</td>
      <td>Funket å redigere. Eneste som ikke funket helt er at "opprett ny" menyen forblir oppe etter at man har lagt til ny person (se siste bildet).</td>
      <td> 
        <table>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/3984c0cf-79b5-440a-bffe-fed7d67a4f63" width="60" /></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/d2d52a9a-5992-4f56-8536-698acc97c6ea" width="60" /></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/94b72b73-2186-4572-b568-10e064d79177" width="60" /></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/a2fcb650-ae96-4818-9ac2-a9de5e28d856" width="60" /></th>
        </table>
     </td>
    </tr>
    <tr>
      <td>Kunne slette handeliste.</td>
      <td>Ved sletting av handleliste skal handelistens innhold slettes og delte brukeren(e) som i tabellen for de som handlelisten var delt med.</td>
      <td>Funket, varer og personer fra handelisten ble slettet.</td>
      <td> 
        <table>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/fede27f0-e206-4ecc-aaae-7bb7fb102748" width="60" /></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/543ac939-e030-462c-aea3-8437314e20d8" width="60" /></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/4ad8e958-6cd2-453e-9b1e-e908ec6f0544" width="60" /></th>
        </table>
      </td>
    </tr>
   <tr>
      <td>Søkefelt</td>
      <td>Ved bruk av søktefeltet skal handlelistene filtreres på handelistens navn eller den som har laget handelisten eller den som er en del av handlelisten </td>
      <td>Funket å søke på både eier av handeliste, personer i handelisten og navn på handleliste</td>
      <td> 
        <table>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/b1e1e231-4a09-4a6e-b87f-0db280c32ec6" width="60" /></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/e5865e9d-a0f0-4418-aa6f-fe5e0fb17c82" width="60" /></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/e78e4e8f-12ee-4c63-a141-28a41ac93f52" width="60" /></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/6436301c-6a6c-4ddf-9b1a-a8ceb47806b9" width="60" /></th>
        </table>
      </td>
    </tr>
  <tr>
      <td>Dele handleliste</td>
      <td>Ved redigering av handeliste skal det kunne legge til personer som også skal kunne få tilgang til handlelisten, men ikke slette.</td>
      <td>Funket å dele med test bruker. Test Bruker fikk opp handlelisten hos seg og fikk ikke lov å slette den (som ønsket) (se bilde 5). Testbruker fikk også lov å redigere som ønsket.</td>
      <td> 
        <table>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/64b81af5-5860-4ec4-af77-d753b1201def" width="60"></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/a1d4dc5d-6370-44a6-835a-1ebc230c8361" width="60"></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/5f72ad0f-709a-4289-be2f-375f26f39f4f" width="60"></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/6e5a29f5-c24c-4e23-b9a6-9debeb9c2630" width="60"></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/867166d5-3cf9-4aa6-8bb8-44644cf8e704" width="60"></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/c152c3f1-62d9-45ab-b3e5-89f55c65f31e" width="60"></th>
        </table>
      </td>
    </tr>
</table>
</details>


<details open>
  <summary>
    <h3>Detalje Side</h3>
  </summary>

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
         <table>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/77b99e31-04c3-4674-82da-5f1d74c2a73b" width="60" /></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/794e30d6-f025-4296-a0a2-8878ea04a12d" width="60"></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/0ef658d4-e8b8-4df6-8b88-b097a37a6557" width="60"></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/001e2abb-622e-46b2-a9d7-73f106f259be" width="60"></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/f5d89137-e652-418d-9598-49f97575d48a" width="60"></th>
          <th><img src="https://github.com/ArvidWedtstein/Fagproove/assets/71834553/70cf9d8f-06ce-4e38-b09f-c6258b86815b" width="60"></th>
        </table>
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
      <td>Søk på navn, antall, kategori og enhet funket</td>
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
