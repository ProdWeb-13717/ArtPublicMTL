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
		//(min-width: 600px)
		//Commencer la page d'accueil avec le fond de page blac pour les mobiles et donner le carrousel pour les écrans plus grands que 600px
		if(window.screen.width > 600){
			$("body").css("background-image", "url(" + backgroundPath + displayImage() + ")");
		} else{
			$("body").css("background-image", "none");
		}
		// changement de toile de fond a tous les 6 secondes.
		var timer = setInterval(function() {
			//Ne pas continuer le carrousel pour les écrans plus petit que 600px
			if(window.screen.width > 600)
			{
				$("body").css("background-image", "url(" + backgroundPath + displayImage() + ")");
			}
			else
			{
				$("body").css("background-image", "none");
			}
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
<!--debut du conteneur GLOBAL-->
	<div id ="global">
		<div class="ombreTop"></div>
		<!--Debut Section ENTÊTE-->
		<header class ="entete flex row JCflex-start">
			<a id="lienLogo" href="index.php">
				<img id="logo" src="images/logo+blanc3.png" alt="logo" alt="Logo ArtPublicMTL">
				<div class="ligne_logo"></div>
				<div class="cacheElem"><img class="ligne_noire" src="images/lignes_haut_gaucheMOB.png" alt="lignes_haut_gauche"></div>
			</a>
			<div class="menu">
				<div id="burger" class="burger">
					<span></span>
					<span></span>
					<span></span>
				</div>
				<nav id="menuPrincipal" class="menuPrincipal">
					<ul>
						<li class="itemMenu"><a href="index.php?Public&action=listeOeuvres">OEUVRES</a></li>
						<li class="itemMenu"><a href="index.php?Public&action=listeArtistes">ARTISTES</a></li>
						<li class="itemMenu"><a href="index.php?Public&action=carte">CARTE</a></li>
						<li class="itemMenu"><a href="index.php?Public&action=aPropos">À PROPOS</a></li>
						<li class="itemMenu cacheElem"><a href="index.php?Public&action=soumission">SOUMISSION</a></li>
					</ul>
				</nav>
				<nav id="reseauxSociaux" class="reseauxSociauxHeader">
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