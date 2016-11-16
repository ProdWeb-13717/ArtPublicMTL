<?php
	class Controleur_Public_AJAX extends Controleur_Public{	
		//la fonction qui sera appel�e par le routeur
		public function traite(array $params){				
			if(isset($params["action"]))
			{
				//mod�le et vue vides par d�faut
				$data = array();
				$vue = "";
				//switch en fonction de l'action qui nous est envoy�e
				//ce switch d�termine la vue $vue et obtient le mod�le $data
				switch($params["action"])
				{
					case "recherche":
						if(isset($params["recherche"])){
							//Verification si les champs sont remplis;
						$this->recherche($params["recherche"]);		
						}
						else{
							echo "ERROR Aucune valeur de recherche";
						}
						
						break;	

					case "telechargementImage":
						$this->telechargementImage();
						break;	
									
					default:
						echo "ERROR";		
				}						
			}
			else{
					//action par d�faut
					echo "ERROR";					
			}			
		}

		public function recherche($strRecherche){
			$modelePublic = new Modele_public();
			$resultatsRecherche = $modelePublic->recherche($strRecherche);
			echo "<resultatsRecherche>";

	       foreach($resultatsRecherche as $r){
				//g�n�rer le XML du contact
				echo "<resultatRecherche>";
				echo "<id>" . $r["id"] . "</id>";
				echo "<resultat>" . utf8_encode($r["resultat"]) . "</resultat>";
				echo "</resultatRecherche>";
			}
	
			echo "</resultatsRecherche>";
			
		}
		
		public function telechargementImage(){
			if ( 0 < $_FILES['file']['error'] ) {
				echo 'Error: ' . $_FILES['file']['error'] . '<br>';
			}
			else {
				// generation du nom du fichier
				//$nomDuFichier = 'uploads/' . $_FILES['file']['name'];
				$nomDuFichier = '../images/img' . uniqid() . '-' . $_FILES['file']['name'];
				
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
		
	}
?>