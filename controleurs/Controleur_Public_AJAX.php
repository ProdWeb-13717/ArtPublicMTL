﻿<?php
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
				echo "<resultat>" . $r["resultat"] . "</resultat>";
				echo "</resultatRecherche>";
			}
	
			echo "</resultatsRecherche>";
			
		}
	}
?>