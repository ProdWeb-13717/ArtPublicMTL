<?php
	class Controleur_Public_AJAX extends Controleur_Public{	
		//la fonction qui sera appelée par le routeur
		public function traite(array $params){	
            if($params["action"]){
				//modèle et vue vides par défaut
				$data = array();
				$vue = "";
				//switch en fonction de l'action qui nous est envoyée
				//ce switch détermine la vue $vue et obtient le modèle $data
				switch($params["action"]){	
					case "afficheOeuvrescategorie":
						if(isset($params["idValue"]) && ($params["idValue"])!=""){   
							if(($params["idValue"])=="_"){
								$this->afficheListeOeuvres();
							}
							else{
								$this->afficheOeuvreCategorie($params["idValue"]);		
							}
						}
					break;
				
					case "afficheOeuvreslieu":
						if(isset($params["idValue"])&& ($params["idValue"])!=""){
							if(($params["idValue"])=="_"){
								$this->afficheListeOeuvres();
							}
							else{ 
								$this->afficheOeuvreArrondissement($params["idValue"]);
							}
						}
						
					break;
					
	
					case "recherche":
						if(isset($params["recherche"])){
							//Verification si les champs sont remplis;
							$this->recherche($params["recherche"]);		
						}
						else{
							echo "ERROR Aucune valeur de recherche";
						}
						break;	
				
				    case "rechercheArtiste":
						if(isset($params["prenom"]) && isset($params["nom"])){
							//Verification si les champs sont remplis;
						$this->rechercheArtiste($params["prenom"], $params["nom"]);		
						}
						else{
							echo "ERROR Aucune valeur de recherche";
						}
						break;	
							
					case "envoieSoumission":
						if(isset($params["id"]) ){  // on assume ici que si on recoit le champ id on aurra tout les autres champs.
							//if ($params["id"]=="") {
								// on insere le record
								$modeleOeuvres = new Modele_oeuvres();
								$resultatsMAJ = $modeleOeuvres->oeuvreMAJ($params["id"], $params["titre"], $params["categorie"], $params["arrondissement"], $params["adresse"], $params["description"], $params["image"], $params["titreVariante"],
								$params["nomParc"], $params["batiment"], $params["prenomArtiste"], $params["nomArtiste"], $params["nomCollectif"], $params["bio"], $params["modeAcquisition"], $params["numeroAccession"], $params["dateAccession"], $params["materiaux"], 
								$params["support"], $params["technique"], $params["categorieObjet"], $params["dimensionGenerales"], $params["coordonneeLatitude"], $params["coordonneeLongitude"], $params["mediums"],  $params["nomCollection"], $params["valide"]);							 
								echo $resultatsMAJ;

						}
						else{
							echo "ERROR Aucune valeur de recherche";
						}
						break;		
					   
					case "rechercheCollectif":
						if(isset($params["nomCollectif"]) ){
							//Verification si les champs sont remplis;
						$this->rechercheCollectif($params["nomCollectif"]);		
						}
						else{
							echo "ERROR Aucune valeur de recherche";
						}
						break;	
						
					case "telechargementImage":
						$this->telechargementImage();
						break;	
						
						
					case "obtenirBio";
						$modeleOeuvres= new Modele_oeuvres();
			            $bio = $modeleOeuvres->obtenirBio($params["prenomArtiste"],$params["nomArtiste"],$params["nomCollectif"]);
						echo $bio;
						break;                       
									
					default:
						echo "ERROR";		
				}						
			}
			else{
                //action par défaut
                echo "ERROR";					
			}			
		}


		public function recherche($strRecherche){
			$modelePublic = new Modele_public();
			$resultatsRecherche = $modelePublic->recherche($strRecherche);
            echo "<resultatsRecherche>";
	       foreach($resultatsRecherche as $r){
				//générer le XML du contact
				echo "<resultatRecherche>";
				echo "<type>" . $r["type"] . "</type>";
				echo "<resultat>" . $r["resultat"] . "</resultat>";
				echo "<idArrondissement>" . $r["idArrondissement"] . "</idArrondissement>";
				echo "<id>" . $r["id"] . "</id>";
				echo "</resultatRecherche>";
			}
			echo "</resultatsRecherche>";
		}
		
		public function rechercheArtiste($strRecherchePrenom, $strRechercheNom){
			$modelePublic = new Modele_public();
			$resultatsRecherche = $modelePublic->rechercheArtiste($strRecherchePrenom, $strRechercheNom);
			echo "<resultatsRecherche>";

	       foreach($resultatsRecherche as $r){
				//générer le XML du contact
				echo "<resultatRecherche>";
				echo "<prenomArtiste>" . $r["prenom"]. "</prenomArtiste>";
				echo "<nomArtiste>" . $r["nom"]. "</nomArtiste>";
				echo "</resultatRecherche>";
			}
			echo "</resultatsRecherche>";
			
		}
		
		
		public function rechercheCollectif($strRechercheCollectif){
			$modelePublic = new Modele_public();
			$resultatsRecherche = $modelePublic->rechercheCollectif($strRechercheCollectif);
			echo "<resultatsRecherche>";

	       foreach($resultatsRecherche as $r){
				//générer le XML du contact
				echo "<resultatRecherche>";
				echo "<nomCollectif>" . $r["nomCollectif"]. "</nomCollectif>";
				echo "</resultatRecherche>";
			}
			echo "</resultatsRecherche>";
			
		}

		//References http://stackoverflow.com/questions/23980733/jquery-ajax-file-upload-php
		public function telechargementImage(){
			if ( 0 < $_FILES['file']['error'] ) {
				echo 'Error: ' . $_FILES['file']['error'] . '<br>';
			}
			else {
				// generation du nom du fichier
				//$nomDuFichier = 'uploads/' . $_FILES['file']['name'];
				$nomDuFichier = uniqid() . '-' . $_FILES['file']['name'];
				
				move_uploaded_file(
					 // this is where the file is temporarily stored on the server when uploaded
					// do not change this
					$_FILES['file']['tmp_name'],
					// this is where you want to put the file and what you want to name it
					// in this case we are putting in a directory called "uploads"
					// and giving it the original filename
					//'uploads/' . $_FILES['file']['name']
					$nomDuFichier
				);
				echo $nomDuFichier;
			}
		}
		
		//affiche les oeuvres du Select categorie
		public function afficheOeuvreCategorie($val){
			$modeleOeuvres= new Modele_oeuvres();
			$data=$modeleOeuvres-> obtenirOeuvresCategorie($val);
			$this->afficheVue("vueOeuvres", $data);
			
		} 
		
		//affiche les oeuvres du Select lieu
		public function afficheOeuvreArrondissement($val){
			$modeleOeuvres= new Modele_oeuvres();
			$data=$modeleOeuvres-> obtenirOeuvresArrondissement($val);
			$this->afficheVue("vueOeuvres", $data);
		}
	}
?>