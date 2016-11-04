<?php
	class Controleur_Admins_AJAX extends Controleur_Admins        
	{	
		//la fonction qui sera appel�e par le routeur
		public function traite(array $params)
		{				
			if(isset($params["action"]))
			{
				//mod�le et vue vides par d�faut
				$data = array();
				$vue = "";
				//switch en fonction de l'action qui nous est envoy�e
				//ce switch d�termine la vue $vue et obtient le mod�le $data
				switch($params["action"])
				{
					case "afficheListeFilms":						
						$this->afficheListeFilms();	
						break;						
					case "insereFilm":
						$modeleFilms = new Modele_Films();	
						if(isset($params["titre"]) && isset($params["description"]) && isset($params["idRealisateur"]))
						{
							$valide = $modeleFilms->insereFilm($params["titre"], $params["description"], $params["idRealisateur"] );
							if($valide)
							{									
								$this->afficheListeFilms();		
							}
							else
							{
								echo "ERROR";
							}
						}
						else
						{													
							echo "ERROR";
						}
						break;										
					default:
						echo "ERROR";		
				}						
			}
			else
			{
					//action par d�faut
					echo "ERROR";					
			}			
		}	
	}
?>