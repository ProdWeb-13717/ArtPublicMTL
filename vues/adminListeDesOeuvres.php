<?php	
    $section = "";
	$sousSection = "";
	$uneFois = true;
	foreach($data as $oeuvres) {
		if ($oeuvres["sousSection"]!= "") {
			// BOUCLE des soumission (ayant section sous section)
			// fermeture des divisions
			echo "<div id='idListeDesOeuvres'>";
			if ($oeuvres["sousSection"] != $sousSection && $sousSection != "") echo "</ul></div>";  // fermeture de la sous section
			if ($oeuvres["section"] != $section && $section != "") echo "</div>";  // fermeture de la section.
			
			// ouverture des divisions
			if ($oeuvres["section"] != $section) {
				$section = $oeuvres["section"];
				echo "<div id='". $section . "'>";
				echo "<h1>".$section."</h1>";
			}
			if ($oeuvres["sousSection"]!="") {
				if ($oeuvres["sousSection"] != $sousSection) {
					$sousSection = $oeuvres["sousSection"];
					echo "<div id='". $sousSection . "'>";			
					echo "<h3>".$sousSection."</h3>";
					echo "<ul>";
				}
			}
			
			// creation du lien dans l'oeuvre
			echo "<li>";
			echo "<a href='./index.php?Admins&action=soumission&id=" .$oeuvres["id"]."'>". $oeuvres["titre"]."</a>";		
			echo "</li>";
		}
		
		else {
			if ($uneFois) {
				echo "</div>";
				$uneFois = false;
			}
			// BOUCLE donnee publique (ayant seulement une section)
			//if ($oeuvres["section"] != $section && $section != "") echo "</div>";  // fermeture de la section.
			// ouverture des divisions
			if ($oeuvres["section"] != $section) {
				$section = $oeuvres["section"];
				echo "<div id='". $section . "'  class='bordureDivContenu'>";
				echo "<h1 class='titreModifAPropos'>".$section."</h1>";
				echo "<ul>";
			}	
			// creation du lien dans l'oeuvre
			echo "<li>";
			echo "<a href='./index.php?Admins&action=soumission&id=" .$oeuvres["id"]."'>". $oeuvres["titre"]."</a>";		
			echo "</li>";					
		}

	}
	echo "</ul></div></div>";

?>