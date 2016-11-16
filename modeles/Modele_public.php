<?php
	class Modele_public extends TemplateDAO
	{
		public function getTable()
		{
			return "public";
		}

		public function recherche($strRecherche)
		{		
			try
			{
				$rechDebut = $strRecherche."%";
				$rechDans = "% ".$strRecherche."%";
				$rechDash = "%-".$strRecherche."%";
				/*
				$sqlStm =
					"SELECT 'lieu' as id, nom as resultat FROM arrondissement WHERE nom LIKE :rechDebut or nom LIKE :rechDans or nom LIKE :rechDash " .
					"UNION SELECT 'oeuvre' as id, titre as resultat from oeuvre where titre LIKE :rechDebut or titre LIKE :rechDans ".
					"UNION SELECT 'artiste' as id, concat(prenom, ' ', nom) as resultat FROM artiste WHERE nom LIKE :rechDebut or nom LIKE :rechDans or prenom LIKE :rechDebut or prenom LIKE :rechDans ".
					"UNION SELECT 'categorie' as id, nom as resultat FROM categorie WHERE nom LIKE :rechDebut or nom LIKE :rechDans";

				$stmt = $this->connexion->prepare($sqlStm);

				$stmt->execute(array(":rechDebut" => $strRecherche."%" ,":rechDans" => "% ".$strRecherche."%",":rechDash" => "%-".$strRecherche."%"));
				*/
				$sqlStm =
					"SELECT 'lieu' as id, nom as resultat FROM arrondissement WHERE nom LIKE '".$rechDebut."' or nom LIKE '". $rechDans. "' or nom LIKE '". $rechDash. "'".
					" UNION SELECT 'oeuvre' as id, titre as resultat from oeuvre where titre LIKE '".$rechDebut."' or titre LIKE '". $rechDans. "'".
					" UNION SELECT 'artiste' as id, concat(prenom, ' ', nom) as resultat FROM artiste WHERE nom LIKE '". $rechDebut."' or nom LIKE '". $rechDans."' or prenom LIKE '". $rechDebut."' or prenom LIKE '". $rechDans."'".
					" UNION SELECT 'categorie' as id, nom as resultat FROM categorie WHERE nom LIKE '".$rechDebut."' or nom LIKE '". $rechDans."'";
				$stmt = $this->connexion->prepare($sqlStm);
				$stmt->execute();
                $resultatRecherche = $stmt->fetchAll();
				//echo "recherche=".$strRecherche."<br>";
				//echo $sqlStm;
				
				return $resultatRecherche;
				
			}	
			catch(Exception $exc)
			{
				echo "ERROR:";
				echo $exc->getMessage();
				return null;
			}
		}
		public function nomOeuvre($id)
		{		
			try
			{
				$stmt = $this->connexion->prepare("select oeuvre.titre,oeuvre.categorieObjet,oeuvre.categorie,oeuvre.parc,oeuvre.materiaux,oeuvre.adresseCivique,oeuvre.urlImage,artiste.nom,artiste.prenom,artiste.nomCollectif, arrondissement.nom as nomArrondissement from oeuvre 
				join oeuvreartiste on oeuvre.id = oeuvreartiste.idOeuvre 
				join artiste on oeuvreartiste.idArtiste = artiste.id join arrondissement on oeuvre.arrondissement = arrondissement.nom where oeuvre.id = :id");
				
				$stmt->execute(array(":id" => $id));
				return $stmt->fetch();
				
			}	
			catch(Exception $exc)
			{
				return 0;
			}
		}
		
	}
?>