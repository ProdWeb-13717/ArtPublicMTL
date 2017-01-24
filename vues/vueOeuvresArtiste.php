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
    </section>