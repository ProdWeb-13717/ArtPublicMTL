<article class="flex tousEgal column ml50">
    <?php
   
        echo "<h1 class='ligneBas'>" . $data["titre"] . "</h1>";
        
    ?>
        <section class="flex tousEgal">
            <section class="flex row">
                <section>
                    <?php
            if($data["urlImage"]!=""){
               
        ?> <a href="images/<?php echo $data["urlImage"];?>"><img class="photo" src=" images/<?php echo $data["urlImage"]?>" alt = " <?php echo $data["titre"] ?>"/></a>
                    
                        <?php
            }
            else{
        ?> <img class="photo" src="./images/no-image-available.jpg" alt="aucune image" />
                            <?php
            }
        ?>
                </section>
                <ul>
                    <?php
                    
            if(($data["prenom"]&&$data["nom"]!="")&&($data["prenom"]!= null && $data["nom"]!= null )){
                echo "<li><span>Artiste: <a href='./index.php?Public&action=descriptionArtiste&id=". $data["idArtiste"] . "'>". $data["prenom"]." ".$data["nom"]. "</a></span></li>";
               
            }
            else{
                echo "<li><span>Atelier: ". $data["nomCollectif"]."</span></li>";
            }

            if($data["categorieObjet"]!=""){
                echo "<li><span>Catégorie: " . $data["categorieObjet"]. "</span></li>";
            }	

            if($data["categorie"]!=""){
                echo "<li><span>Sous-Catégorie: ". $data["categorie"]. "</span></li>";
            }

            if($data["parc"]!=""){
                echo "<li><span>Parc: ". $data["parc"]. "</span></li>";
            }

            if($data["materiaux"]!=""){
                echo "<li><span>Matériaux: ". $data["materiaux"]. "</span></li>";
            }

            if($data["adresseCivique"]!=""){
                echo "<li><span>Adresse :". $data["adresseCivique"]. "</span></li>";
            }

            if($data["nomArrondissement"]!=""){
                echo "<li><span>Arrondissement :<a href='./index.php?Public&action=afficheOeuvreslieu&idValue=". $data["nomArrondissement"]. "'>". $data["nomArrondissement"]. "</span></li>";
            }	
            ?>
                </ul>
            </section>
            <section class="flex tousEgal">
                <?php

            if($data["coordonneeLatitude"]!=""){
                // affiche la map goole
                //    https://developers.google.com/maps/documentation/javascript/adding-a-google-map
                //   comment mettre une map de google dans un site 
                 ?>
                    <style>
                        #map {
                            height: 600px;
                            width: 800px
                        }
                    </style>
                    <div id="map"></div>
                    <script>
                        function initMap() {
                            var uluru = {
                                lat: <?php echo $data["coordonneeLatitude"] ?>
                                , lng: <?php echo $data["coordonneeLongitude"] ?>
                            };
                            var map = new google.maps.Map(document.getElementById('map'), {
                                zoom: 16
                                , center: uluru
                            });
                            var marker = new google.maps.Marker({
                                position: uluru
                                , map: map
                                , title: <?php echo "'" . $data["titre"] ."'"?>
                            });
                        }
                    </script>
                    <script async defer src='https://maps.googleapis.com/maps/api/js?key=AIzaSyC4QkcRKk6J15A3d0lLu8SZljq6opZkBMI&callback=initMap&zoom=14'>
                    </script>
                    <?php
            }
        ?>
            </section>
        </section>
</article>