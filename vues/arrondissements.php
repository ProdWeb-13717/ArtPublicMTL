<div class="flex column oeuvresParArrondissement ml50">
    <script>
        <?php
                echo "var donnees_carte =". json_encode($data);
            ?>
    </script>
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
       
            echo "<li class='titreOeuvres'><a id='{$oeuvres["id"]}' href='./index.php?public&action=details&id={$oeuvres["id"]}'>{$oeuvres["titre"]}</a></li>";
           
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
            
            <script async defer src='https://maps.googleapis.com/maps/api/js?key=AIzaSyC4QkcRKk6J15A3d0lLu8SZljq6opZkBMI'>
            </script>
    </section>
</div>
</section>
<!--fin Section Arrondisements-->