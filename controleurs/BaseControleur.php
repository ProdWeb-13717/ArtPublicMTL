﻿<?php
	abstract class BaseControleur
	{
	
		//la fonction qui sera appel�e par le routeur
		public abstract function traite(array $params);
		
		protected function afficheVue($nomVue, $data = null)
		{

			$cheminVue = "./vues/" . $nomVue . ".php";
			
			if(file_exists($cheminVue))
			{
				include($cheminVue); 
			}
			else
			{
				die("Erreur 404! La vue n'existe pas.");				
			}
		}
	
	}
?>