<div class="flex row JCflex-end ml50  ACcenter AIcenter tousEgal avecWrap JCspace-around" id="collectionOeuvres">
    <?php
                $cont=0;
                foreach($data as $oeuvres)
                {
                   // if (strpos($oeuvres["titre"], 'Non titré') === true) {
                    if($cont<15)
                    {
                        echo"<div class ='flex column ACcenter AIcenter avecWrap id='{$oeuvres["id"]}'>

                            <a href='./index.php?public&action=details&id={$oeuvres["id"]}'>";

                            if($oeuvres["urlImage"]=="")
                            {
                                $oeuvres["urlImage"]="no-image-available";
                            }
                            echo "<img class='photo' src='./images/{$oeuvres["urlImage"]}.jpg'alt='{$oeuvres["titre"]}'/>

                            </a>
                                <div class='hoverPhoto flex row JCcenter '>
                                    <span class='titreOeuvres '><a href='./index.php?public&action=details&id={$oeuvres["id"]}'> {$oeuvres["titre"]}</a></span>
                                    <span class='nomArtistes '><a href='./index.php?public&action=descriptionArtiste&id={$oeuvres["idArtiste"]}'>, {$oeuvres["prenom"]} {$oeuvres["nom"]}</a></span>
                                </div>
                        </div>";
                        $cont++;
                    }	
                }
            ?>
</div>
</section>
</section>
<!--fin Section Oeuvres-->