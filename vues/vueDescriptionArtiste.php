<!--commencer directement avec la div contenu-->
<section id="descriptionArtiste" class="descriptionArtiste flex column">
    <h1 class="bioArtiste">
			<?php 
				if (isset($data["prenom"]) && isset($data["nom"])){
					echo $data["prenom"] . " " . $data["nom"]; 	
				} elseif(isset($data["nomCollectif"])){
					echo $data["nomCollectif"];
				}
			?>
		</h1>
    <div id="infosMonArtiste" class="infosMonArtiste JCspace-around ACflex-start">
        <p>
            <?php echo $data["biographie"]; ?>
        </p>