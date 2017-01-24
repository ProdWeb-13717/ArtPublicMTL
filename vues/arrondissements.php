<div class="flex column oeuvresParArrondissement ml50">
    <section>
        <?php
           echo  "<h1 class='ligneBas'>" . $data[0]["arrondissement"] . "</h1>";
        ?> </section>
    <section class="flex row ">
        <?php
        $cont=0;
    ?>
            <script>
                var x = 0;
                var locations = [];
            </script>
            <ul class="listeOeuvreParArron">
                <?php
    foreach($data as $oeuvres){
       
            echo "<li class='titreOeuvres'><a id='{$oeuvres["id"]}' href='./index.php?Public&action=details&id={$oeuvres["id"]}'>{$oeuvres["titre"]}</a></li>";
            
            // fabrication de l'indoWindow du curseur de la map
            $divInfo = "<div class='infoWindow'>";
            //section de l'image
            if($oeuvres["urlImage"] !=""){ 
                $divInfo .= "<section>";
                $divInfo .= "<img style='height:100px' src='./images/";
                $divInfo .=  $oeuvres["urlImage"]; 
                $divInfo .= ".jpg' />";
                $divInfo .= "</section>";
            }
            //section du texte
            $divInfo .= "<section><a href='./index.php?public&action=details&id=" . $oeuvres["id"] . "'>";
            $divInfo .= $oeuvres["titre"];
            $divInfo .= "</a><br>";
            $divInfo .= "<a href='./index.php?Public&action=descriptionArtiste&id=" . $oeuvres["idArtiste"] . "'>";
            if(isset($oeuvres["prenom"])){
                $divInfo .= $oeuvres["prenom"] . " " . $oeuvres["nom"];
            }
            else{
                $divInfo .= $oeuvres["nomCollectif"];
            }
            $divInfo .= "</a></section>";
         
    //   https://developers.google.com/maps/documentation/javascript/adding-a-google-map
    //   comment mettre une map de google dans un site 
            if($oeuvres["coordonneeLatitude"]!=""){
                ?>
                    <script>
                        //rempli le tableau des locations
                        locations.push({
                            lat: <?php echo $oeuvres["coordonneeLatitude"] ?>
                            , lng: <?php echo $oeuvres["coordonneeLongitude"]?>
                            , titre: "<?php echo $oeuvres["
                            titre "] ?>"
                            , infoWindow: "<?php echo $divInfo ?>"
                        });
                    </script>
                    <?php
            }	//fin du if de la latitude
    } // fin de la boucle foreach
	?>
            </ul>
            <style>
                #map {
                    height: 400px;
                    width: 600px
                }
            </style>
            <div id="map"></div>
            <script>
                function initMap() {
                    var map = new google.maps.Map(document.getElementById('map'), {
                        zoom: 12
                            // met le centre de la map sur la dernière oeuvre entrée
                            
                        , center: {
                            lat: <?php echo $oeuvres["coordonneeLatitude"] ?>
                            , lng: <?php echo $oeuvres["coordonneeLongitude"] ?>
                        }
                    });
                    var b = 0;
                    // https://developers.google.com/maps/documentation/javascript/events
                    var markers = locations.map(function (location, i) {
                        var marker = new google.maps.Marker({
                            position: location
                            , map: map
                            , title: location.titre
                        });
                        attachSecretMessage(marker, location.infoWindow);
                        b++;
                        marker.addListener('click', function () {
                            map.setZoom(18);
                            map.setCenter(marker.getPosition());
                        });
                    });
                };
                // https://developers.google.com/maps/documentation/javascript/examples/event-closure
                function attachSecretMessage(marker, infoWindow) {
                    var infowindow = new google.maps.InfoWindow({
                        content: infoWindow
                    });
                    marker.addListener('click', function () {
                        infowindow.open(marker.get('map'), marker);
                    });
                }
            </script>
            <script async defer src='https://maps.googleapis.com/maps/api/js?key=AIzaSyC4QkcRKk6J15A3d0lLu8SZljq6opZkBMI&callback=initMap'>
            </script>
    </section>
</div>
</section>
<!--fin Section Arrondisements-->