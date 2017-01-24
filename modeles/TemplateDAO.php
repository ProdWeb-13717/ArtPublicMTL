<?php
	
	abstract class TemplateDAO{
		protected $connexion;
		protected function getPrimaryKey(){
			return "id";			
		}
		abstract protected function getTable();
		
		public function __construct(){
			try{

          /*    $this->connexion = new PDO("mysql:dbname=e1595071;host=localhost", "e1595071", "850921");*/
				$this->connexion = new PDO("mysql:dbname=artpublicmtl;host=localhost", "root", "");
                $this->connexion -> exec("SET CHARACTER SET utf8");
				$this->connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
			}
			catch(Exception $exc){
				die("Connexion à la base de données impossible.");

			}
		}
	
		public function obtenir($valeur, $cle = null){
			try{	
				if($cle == null){
					$cle = $this->getPrimaryKey();
				}
				$stmt = $this->connexion->prepare("select * from " . $this->getTable() . " where " . $cle . " = :valeur");
				$stmt->bindParam(":valeur", $valeur);
				$stmt->execute();
				return $stmt->fetch();
			}
			catch(Exception $exc){
				return false;
			}
		}
		
		public function obtenirTous(){
			try{	
				$stmt = $this->connexion->prepare("select * from " . $this->getTable());
				$stmt->execute();
				return $stmt->fetchAll();
			}
			catch(Exception $exc){
				return false;
			}
		}
      
	}
?>