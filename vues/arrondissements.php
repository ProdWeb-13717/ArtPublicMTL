<div class="oeuvresParArrondissement">
    <?php
        $cont=0;
    ?>
    <script>
        var x = 0;
        var locations = [];
    </script>
    <ul class="listeOeuvreParArron">
    <?php
    foreach($data as $oeuvres)
    {
      if ($cont<=4){
         $cont++;

        echo "<li class='titreOeuvres'><a id='{$oeuvres["id"]}' href='./index.php?public&action=details&id={$oeuvres["id"]}'>{$oeuvres["titre"]}</a></li>";
            /*
            <div class='hoverPhoto'>
                <span class='titreOeuvres'><a href='./index.php?public&action=details&id={$oeuvres["id"]}'>Titre: {$oeuvres["titre"]}</a></span>
                <span class='nomArtistes'><a href='./index.php?public&action=descriptionArtiste&id={$oeuvres["idArtiste"]}'>Artiste: {$oeuvres["prenom"]} {$oeuvres["nom"]}</a></span>
            </div>
        */

//   https://developers.google.com/maps/documentation/javascript/adding-a-google-map
//   comment mettre une map de google dans un site 
    if($oeuvres["coordonneeLatitude"]!=""){
?>
        <script>
            //rempli le tableau des locations
            locations.push({
                lat: <?php echo $oeuvres["coordonneeLatitude"] ?>
                , lng: <?php echo $oeuvres["coordonneeLongitude"]?>
            });
        </script>
        <?php
        }	//fin du if de la latitude
    } // fin du if du compteur
} // fin de la boucle foreach
	?>
    </ul>
    <style>
        #map {
            height: 400px;
            width: 800px
        }
    </style>
    <div id="map"></div>
    <script>
        function initMap() {
                var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 12
                , center: {
                    lat: <?php echo $oeuvres["coordonneeLatitude"] ?>
                    , lng: <?php echo $oeuvres["coordonneeLongitude"] ?>
                }
            });
            var b = 0;
            var markers = locations.map(function (location, i) {
                    var idDeLOeuvreMarquee= document.querySelectorAll(".listeOeuvreParArron >li")[b].firstChild.getAttribute("id").toString() //c'est ghetto en saperlipopette   
                    
                    
                    // https://developers.google.com/maps/documentation/javascript/events
                    //lire ça
                    // fabrique un beau petit div à partir de idDeLOeuvreMarquee pour mettre sur le hover de l'oeuvre et le plugger dans "title"
                    
                    
                    
                    
                    
                var marker = new google.maps.Marker({
                    position: location,
                    map: map,
                    title: idDeLOeuvreMarquee
                    //title: document.querySelectorAll(".listeOeuvreParArron >li")[b].firstChild.innerHTML.toString() //c'est ghetto en saperlipopette   
                });
                b++;
               
            });
          
        };
    </script>
    <script async defer src='https://maps.googleapis.com/maps/api/js?key=AIzaSyC4QkcRKk6J15A3d0lLu8SZljq6opZkBMI&callback=initMap'>
    </script>
</div>
</section>
<!--fin Section Arrondisements-->