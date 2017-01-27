<!--commencer directement avec la div contenu-->
<div class="contenu bordureDivContenu">
	<h1 class="titreModifAPropos">Modification À Propos</h1>
    <form id="formModification" action="index.php?Admins&action=insererPropos" method="POST">
        <label for="sommesT" class="elemSoumission">SommesT: </label>
        <input type="text" class="inputFormSoumission" name="sommesT" id="sommesT" value="<?php echo $data["sommesT"]?>" /><br>
        <label for="sommesD" class="elemSoumission">SommesD: </label>
        <textarea name="sommesD" class="inputTextAreaFormSoumission" id="sommesD" rows="5" cols="50"><?php echo $data["sommesD"]?> </textarea><br>
        <label for="missionT" class="elemSoumission">MissionT: </label>
        <input type="text" class="inputFormSoumission" name="missionT" id="missionT" value="<?php echo $data["missionT"]?>"><br>
        <label for="missionD" class="elemSoumission">MissionD: </label>
        <textarea name="missionD" class="inputTextAreaFormSoumission" id="missionD" rows="5" cols="50"><?php echo $data["missionD"]?> </textarea><br>
        <label for="joindreT" class="elemSoumission">JoindreT: </label>
        <input type="text" class="inputFormSoumission" name="joindreT" id="joindreT" value="<?php echo $data["joindreT"]?>"><br>
        <label for="joindreD" class="elemSoumission">JoindreD: </label>
        <textarea name="joindreD" class="inputTextAreaFormSoumission" id="joindreD" rows="5" cols="50"><?php echo $data["joindreD"]?></textarea><br>
        <label for="partenaireT" class="elemSoumission">PartenaireT: </label>
        <input type="text" class="inputFormSoumission" name="partenaireT" id="partenaireT" value="<?php echo $data["partenaireT"]?>"><br>
        <label for="partenaireD" class="elemSoumission">PartenaireD: </label>
        <textarea name="partenaireD" class="inputTextAreaFormSoumission" id="partenaireD" rows="5" cols="50"><?php echo $data["partenaireD"]?></textarea><br>
        
        <input type="hidden" name="action" value="modifierPagePropos"/>
		<input id="btnModifPropos" type="submit" name="modifier" value="Modifier la page"/>
    </form>
</div>	