<?php
	class Controleur_Usagers extends BaseControleur
	{
	
<<<<<<< HEAD
		//la fonction qui sera appelée par le routeur
=======
		//la fonction qui sera appel�e par le routeur
>>>>>>> b4ecc2583e7d4d92c0898063955483724ea16963
		public function traite(array $params)
		{
			//affichage du header
			$this->afficheVue("header");
			
			if(isset($params["action"]))
			{
<<<<<<< HEAD
				//modèle et vue vides par défaut
				$vue = "";
				//switch en fonction de l'action qui nous est envoyée
				//ce switch détermine la vue $vue et obtient le modèle $data
				switch($params["action"])
				{
					//cette action permet d'afficher la liste de tous les oeuvres avec le nom de artiste
					case "afficheListeOeuvres":						
						$this->afficheListeOeuvres();	
						break;
										
					default:
						$this->afficheListeOeuvres();		
						//$this->afficheFormAjout();
	
				}
					
			}
			else
			{
					//actions par défaut
					//$this->afficheOptionArtistes();		
					//$this->afficheOptionArrondissements();
                    //$this->afficheOptionSelectes();
					//$this->afficheOptionCategories();
				    //$this->afficheVue("pageAccueil",$data);					
			}
			
				
			//inclusion du footer dans le cas d'une requête qui n'est pas AJAX
			$this->afficheVue("footer");
		}
		
		///--fonction qui affiche la vue des oeuvres avec le nom de l'artiste--///
		public function afficheListeOeuvres()
		{
			$modeleOeuvres= new Modele_Oeuvres();
			$data = $modeleOeuvres->obtenirTousOeuvresArtistes();
			$this->afficheVue("vueOeuvres", $data);
		}
		
		
=======
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
>>>>>>> b4ecc2583e7d4d92c0898063955483724ea16963
	}
?>