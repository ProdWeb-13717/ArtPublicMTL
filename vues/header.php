<script>

// Code pour presenter le caroussel en toile de fond.
$(document).ready(function(){
	
<?php
	//Generation du js des url de toile de fond: 
	//   ex: "var imagesArray = ["chromazone.JPG", "Havre.JPG","Rocket.JPG","paulemileborduas.JPG"];
	echo "	var imagesArray = [";
	$modeleCaroussel= new Modele_caroussel();
	$data = $modeleCaroussel->imagesCaroussel();
	$separateur = "";
	foreach($data as $imageCaroussel) {
		echo $separateur."'". $imageCaroussel["urlImage"] ."'"; 
		$separateur =",";
	}	
	echo "];";
?>
		var backgroundPath = "";	
		var usedImages = {};
		var usedImagesCount = 0;
		$("body").css("background-image", "url(" + backgroundPath + displayImage() + ")");

		// changement de toile de fond a tous les 6 secondes.
		var timer = setInterval(function() {
		   $("body").css("background-image", "url(" + backgroundPath + displayImage() + ")");		   
	   }, 6000);
	   
	   function displayImage(){
		    if (imagesArray.length==0) return ("images/translucide.JPG");
			var num = Math.floor(Math.random() * (imagesArray.length));
			//console.log ("num=" + num);
			if (!usedImages[num]){
				//document.canvas.src = imagesArray[num];
				usedImages[num] = true;
				usedImagesCount++;
				if (usedImagesCount === imagesArray.length){
					usedImagesCount = 0;
					usedImages = {};
				}
				//console.log ("numChoisi=" + num);
				return imagesArray[num];
			} else {
				return displayImage();
			}
		}
});


</script>

<!-- <body background=PHP echo $data[0]["urlImage"] ?> > -->
<body>
<!-- <body background="http://localhost/ArtPublicMTL/images/chromazone.JPG"> -->

	<div id ="global" >

		<!--Debut Section ENTÊTE-->
		<header class ="entete flex row JCflex-start">
			<a id="lienLogo" href="index.php">
				<img id="logo" src="images/logo.png" alt="logo" >
			</a>
			<div class="menu">
				<nav id="menuPrincipal">
					<ul>
						<li class="itemMenu"><a href="index.php?Public&action=listeOeuvres">OEUVRES</a></li>
						<li class="itemMenu"><a href="index.php?Public&action=listeArtistes">ARTISTES</a></li>
						<li class="itemMenu"><a href="index.php?Public&action=carte">CARTE</a></li>
						<li class="itemMenu"><a href="index.php?Public&action=aPropos">À PROPOS</a></li>
					</ul>
				</nav>
				<nav id="reseauxSociaux">
					<ul>
						<li class="icones" id="reseauFacebook">
							<a href="https://www.facebook.com/">
								<i class="fa fa-facebook-square" aria-hidden="true"></i>
							</a>
						</li>
						<li class="icones" id="reseauTwitter">
							<a href="https://www.twitter.com/">
								<i class="fa fa-twitter-square" aria-hidden="true"></i>
							</a>
						</li>
						<li class="icones" id="reseauInstragram">
							<a href="https://www.instagram.com/">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</a>
						</li>
					</ul>
				</nav>			
			</div>
		</header>
		<!--fin Section ENTÊTE-->