<select class=" tousEgal pas_Select" id="arrondissements">
    <option value="_">Lieu</option>
    <?php 
        foreach($data as $arrondissement){
        echo"<option value='{$arrondissement["id"]}'>{$arrondissement["nom"]}</option>";
        }
    ?>
</select>
<!--fin menu PAGE OEUVRES-->