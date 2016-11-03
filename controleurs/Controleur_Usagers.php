<?php
	class Controleur_Usagers extends BaseControleur
	{
	
		//la fonction qui sera appel�e par le routeur
		public function traite(array $params)
		{
			//affichage du header
			//$this->afficheVue("header");
			
			if(isset($params["action"]))
			{
				//mod�le et vue vides par d�faut
				$vue = "";
				//switch en fonction de l'action qui nous est envoy�e
				//ce switch d�termine la vue $vue et obtient le mod�le $data
				switch($params["action"])
				{
					
					case "afficheDetails":						
						$this->afficheDetails();	
							
						break;
										
					default:
						$this->afficheDetails();		
											
				}					
			}
			else
			{
					//actions par d�faut
					//$this->afficheDetails();			
					//$this->afficheFormAjout();*/		
			}
			
				
			//inclusion du footer dans le cas d'une requ�te qui n'est pas AJAX
			//$this->afficheVue("footer");
		}
		
		
		
		public function afficheDetails()
		{
			$modeleUsagers = new Modele_Usagers();
			$data = $modeleUsagers->obtenirTous();
			$this->afficheVue("AfficheDetails", $data);	
		}
	}
?>