<article class="flex tousEgal column ml50 pageUneOeuvre">
    <script>
        <?php
                echo "var donnees_carte =". json_encode($data);
            ?>
    </script>
    <?php
   
        echo "<h1 class='ligneBas'>" . $data[0]["titre"] . "</h1>";
        
    ?>
        <section class="flex tousEgal">
            <section class="flex row">
                <section>
                    <?php

            if($data[0]["urlImage"]!=""){
                
        ?> <a href="images/<?php echo $data[0]["urlImage"]?>.jpg"><img class="photo" src=" ./images/<?php echo $data[0]["urlImage"]?>.jpg" alt = " <?php echo $data[0]["titre"] ?>"/></a>


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

            if(($data[0]["prenom"]&&$data[0]["nom"]!="")&&($data[0]["prenom"]!= null && $data[0]["nom"]!= null )){
                echo "<li><span>Artiste: <a href='./index.php?Public&action=descriptionArtiste&id=". $data[0]["idArtiste"] . "'>". $data[0]["prenom"]." ".$data[0]["nom"]. "</a></span></li>";

            }
            else{
                echo "<li><span>Atelier: ". $data[0]["nomCollectif"]."</span></li>";
            }

            if($data[0]["categorieObjet"]!=""){
                echo "<li><span>Catégorie: " . $data[0]["categorieObjet"]. "</span></li>";
            }	

            if($data[0]["categorie"]!=""){
                echo "<li><span>Sous-Catégorie: ". $data[0]["categorie"]. "</span></li>";
            }

            if($data[0]["parc"]!=""){
                echo "<li><span>Parc: ". $data[0]["parc"]. "</span></li>";
            }

            if($data[0]["materiaux"]!=""){
                echo "<li><span>Matériaux: ". $data[0]["materiaux"]. "</span></li>";
            }

            if($data[0]["adresseCivique"]!=""){
                echo "<li><span>Adresse :". $data[0]["adresseCivique"]. "</span></li>";
            }

            if($data[0]["nomArrondissement"]!=""){
                echo "<li><span>Arrondissement :<a href='./index.php?Public&action=afficheOeuvreslieu&idValue=". $data[0]["idArrondissement"]. "'>". $data[0]["nomArrondissement"]. "</a></span></li>";

            }	
            ?>
                </ul>
            </section>
            <section class="flex tousEgal">
                
                    <style>
                        #map {
                            height: 600px;
                            width: 800px
                        }
                    </style>
                    <div id="map"></div>
                    
                    <script async defer src='https://maps.googleapis.com/maps/api/js?key=AIzaSyC4QkcRKk6J15A3d0lLu8SZljq6opZkBMI'>
                    </script>
              
            </section>
        </section>
</article>