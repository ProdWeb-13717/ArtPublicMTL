<div class="flex row JCflex-end ml50  ACcenter AIcenter tousEgal avecWrap JCspace-around" id="collectionOeuvres">
    <?php
    if($data){
                $cont=0;
        
                foreach($data as $oeuvres)
                {
                   // if (strpos($oeuvres["titre"], 'Non titré') === true) {
                    if($cont<15)
                    {
                        echo"<div class ='flex column ACcenter AIcenter avecWrap id='{$oeuvres["id"]}'>

                            <a href='./index.php?Public&action=details&id={$oeuvres["id"]}'>";

                            if($oeuvres["urlImage"]=="")
                            {
                                $oeuvres["urlImage"]="no-image-available.jpg";
                            }


                            "</a>"
                                "<div class='hoverPhoto flex row JCcenter'>
                                    <span class='titreOeuvres '><a href='./index.php?Public&action=details&id={$oeuvres["id"]}'> {$oeuvres["titre"]}</a>
                                </div>
                        </div>";
                        $cont++;
                    }	
                }
    }
    else{
        echo "Cette page n'existe pas.";
    }
            ?>
</div>
</section>
</section>
<!--fin Section Oeuvres-->