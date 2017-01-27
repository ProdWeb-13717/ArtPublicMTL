<?php
			foreach ($data as $imagesOeuvre) { 
				if($imagesOeuvre["urlImage"]== ""){
					$imagesOeuvre["urlImage"] = "no-image-available.jpg";
				}
?> 

		<img src="images/<?php echo $imagesOeuvre["urlImage"]; ?>" class="photosOeuvreUnArtiste">
		<?php		
			}
		?>
        </div><!--fermeture div infosMonArtiste-->
		<section class="btnRetournerListeArtistes">
			<a href="index.php?Public&action=listeArtistes"><img src="./images/triangle-select.png" alt="Retourner à la liste des artistes" class="btnRetourner">
			Retourner à la liste des artistes</a>
		</section>
    </section>
