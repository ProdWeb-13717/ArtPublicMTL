<?php
	
	abstract class TemplateDAO
	{
		protected $connexion;
		
		protected function getPrimaryKey()
		{
			return "id";			
		}
		
		abstract protected function getTable();
		
		public function __construct()
		{
			try
			{


				$this->connexion = new PDO("mysql:dbname=demoartpublic;host=localhost", "root", "");

			}
			catch(Exception $exc)
			{
				die("Connexion � la base de donn�es impossible.");
			}
		}
	
		public function obtenir($valeur, $cle = null)
		{
			try
			{	
				if($cle == null)
				{
					$cle = $this->getPrimaryKey();
				}
				$stmt = $this->connexion->prepare("select * from " . $this->getTable() . " where " . $cle . " = :valeur");
				$stmt->bindParam(":valeur", $valeur);
				$stmt->execute();
				return $stmt->fetch();
			}
			catch(Exception $exc)
			{
				return false;
			}
		}
		
		public function obtenirTous()
		{
			try
			{	
				$stmt = $this->connexion->prepare("select * from " . $this->getTable());
				$stmt->execute();
				return $stmt->fetchAll();
			}
			catch(Exception $exc)
			{
				return false;
			}
		}
	}

		
		/*public function supprimer($valeur, $cle = null)
		{
			try
			{
				if($cle == null)
				{
					$cle = $this->getPrimaryKey();
				}
				$stmt = $this->connexion->prepare("delete from " . $this->getTable() . " where " . $cle . " = :valeur");
				$stmt->bindParam(":valeur", $valeur);
				$stmt->execute();
				return true;
			}
			catch(Exception $exc)
			{
				return false;
			}
		}
	
	*/
	}
?>