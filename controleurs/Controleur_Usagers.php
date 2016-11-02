<?php
	class Controleur_Usagers extends BaseControleur
	{
	
		//la fonction qui sera appel�e par le routeur
		public function traite(array $params)
		{
			//affichage du header
			$this->afficheVue("header");
			
			if(isset($params["action"]))
			{
				//mod�le et vue vides par d�faut
				$vue = "";
				//switch en fonction de l'action qui nous est envoy�e
				//ce switch d�termine la vue $vue et obtient le mod�le $data
				switch($params["action"])
				{
					
					case "afficheListeFilms":						
						$this->afficheListeFilms();	
						$this->afficheFormAjout();	
						break;
										
					default:
						$this->afficheListeFilms();		
						$this->afficheFormAjout();							
				}					
			}
			else
			{
					//actions par d�faut
					$this->afficheListeFilms();		
					$this->afficheFormAjout();		
			}
			
				
			//inclusion du footer dans le cas d'une requ�te qui n'est pas AJAX
			$this->afficheVue("footer");
		}
		
		
		
		public function afficheFormAjout()
		{
			$modeleRealisateurs = new Modele_Realisateurs();
			$data = $modeleRealisateurs->obtenirTous();
			$this->afficheVue("FormAjoutFilmAjax", $data);	
		}
	}
?>