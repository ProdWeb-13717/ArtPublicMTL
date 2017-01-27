<?php

	class Modele_admins extends TemplateDAO
    {
		public function getTable()
		{

			return "admins";
		}
        
        //insère une oeuvre dans la table oeuvre
		public function insereOeuvre($noInterne, 
                                     $titre, 
                                     $titreVariante, 
                                     $nomCollection, 
                                     $categorieObjet, 
                                     $modeAcquisition, 
                                     $dateAccession, 
                                     $materiaux, 
                                     $support, 
                                     $technique, 
                                     $dimensionsGenerales, 
                                     $parc, 
                                     $batiment, 
                                     $adresseCivique, 
                                     $coordonneeLatitude, 
                                     $coordonneeLongitude, 
                                     $numeroAccession, 
                                     $description, 
                                     $urlImage,
                                     $idArtiste,
                                     $valide
                                     )

		{		
			// j'ai trouvé la sous-requête «ON DUPLICATE KEY UPDATE » sur le site sql.sh/cours/insert-into/on-duplicate-key, avec l'aide de Jonhatan. Je l'utilise dans l'importation des oeuvres et des artistes.

            try
		      {
				$stmt = $this->connexion->prepare("INSERT INTO oeuvre 
                (noInterne, 
                titre, titreVariante, 
                nomCollection, 
                categorieObjet, 
                modeAcquisition, 
                dateAccession, 
                materiaux, 
                support,
                technique, 
                dimensionsGenerales, 
                parc, 
                batiment, 
                adresseCivique, 
                coordonneeLatitude,
                coordonneeLongitude, 
                numeroAccession,
                description, 
                urlImage, 
                idArtiste,
                valide)
                VALUES (:noInterne, 
                :titre, 
                :titreVariante, 
                :nomCollection,
                :categorieObjet,
                :modeAcquisition,
                :dateAccession, 
                :materiaux,
                :support,
                :technique, 
                :dimensionsGenerales, 
                :parc, 
                :batiment, 
                :adresseCivique,
                :coordonneeLatitude,
                :coordonneeLongitude, 
                :numeroAccession, 
                :description,
                :urlImage, 
                :idArtiste,
                :valide)
                ON DUPLICATE KEY UPDATE 
                noInterne = :noInterne, 
                titre = :titre, 
                titreVariante = :titreVariante, 
                nomCollection = :nomCollection,
                categorieObjet = :categorieObjet, 
                modeAcquisition = :modeAcquisition,
                dateAccession =:dateAccession,
                materiaux = :materiaux,
                support = :support,
                technique =:technique,
                dimensionsGenerales = :dimensionsGenerales,
                parc = :parc,
                batiment = :batiment,
                adresseCivique = :adresseCivique,
                coordonneeLatitude = :coordonneeLatitude,
                coordonneeLongitude  = :coordonneeLongitude, 
                numeroAccession  = :numeroAccession, 
                description = :description,
                urlImage = :urlImage, 
                idArtiste = :idArtiste,
                valide = :valide"
                                                 );
              
               
        
				$stmt->execute(array("noInterne" => $noInterne, 
                                     ":titre" => $titre, 
                                     ":titreVariante" => $titreVariante, 
                                     ":nomCollection" => $nomCollection, 
                                     ":categorieObjet" => $categorieObjet, 
                                     ":modeAcquisition" => $modeAcquisition, 
                                     ":dateAccession" => $dateAccession, 
                                     ":materiaux" => $materiaux,  
                                     ":support" => $support, 
                                     ":technique" => $technique, 
                                     ":dimensionsGenerales" => $dimensionsGenerales, 
                                     ":parc" => $parc, 
                                     ":batiment" => $batiment, 
                                     ":adresseCivique" => $adresseCivique, 
                                     ":coordonneeLatitude" => $coordonneeLatitude, 
                                     ":coordonneeLongitude" => $coordonneeLongitude, 
                                     ":numeroAccession" => $numeroAccession, 
                                     ":description" => $description, 
                                     ":urlImage" => $urlImage,
                                     ":idArtiste" => $idArtiste,
                                     ":valide" => $valide
                                     ));
              
             
				return 1;
                 
          
			}
			catch(Exception $exc)
			{
				
                return 0;

			}
		}
        //insère un artiste dans la table artiste
         public function insereArtiste($noInterne, $nom, $prenom, $nomCollectif) 
		{	
			try
			{
             
				$stmt = $this->connexion->prepare("INSERT INTO artiste (noInterne, nom, prenom, nomCollectif) VALUES (:noInterne, :nom, :prenom, :nomCollectif) ON DUPLICATE KEY UPDATE noInterne = :noInterne, nom = :nom, prenom = :prenom, nomCollectif =:nomCollectif ");
                
			
				$stmt->execute(array(":noInterne" => $noInterne, 
                                     ":nom" => $nom, 
                                     ":prenom" => $prenom, 
                                     ":nomCollectif" => $nomCollectif
                                ));
                return 1;
		
			}	
			catch(Exception $exc){
				return 0;
			}
             
		}
        
        //insère une catégorie dans la table catégorie
        public function insereCategorie($nom) {		
			try{
				$stmt = $this->connexion->prepare("INSERT INTO `categorie` ( `nom`) VALUES (:nom)");   
				$stmt->execute(array(":nom" => $nom));
				return 1;
			}	
			catch(Exception $exc){
				return 0;
			}
		}
		
        //insère un arrondissement dans la table arrondissement
		public function insereArrondissement($nom) {		
			try{
				$stmt = $this->connexion->prepare("INSERT INTO `arrondissement` (`nom`) VALUES (:nom)");
				$stmt->execute(array(":nom" => $nom));
				return 1;
			}	
			catch(Exception $exc){
				return 0;
			}
        }
		
        // retourne l'id de l'oeuvre selon le numéro interne passé en paramètre
		public function getIdSelonNoInterneO($noInterne) {		
			try{
				$stmt = $this->connexion->prepare("SELECT id FROM oeuvre where noInterne = :noInterne ");
				$stmt->execute(array(":noInterne" => $noInterne));
				return $stmt->fetch();
			}	
			catch(Exception $exc){
				return 0;
			}
		}
			
        // retourne l'id de l'artiste selon le numéro interne passé en paramètre
		public function getIdSelonNoInterneA($noInterne) {		
			try{
				$stmt = $this->connexion->prepare("SELECT id FROM artiste where noInterne = :noInterne ");
				$stmt->execute(array(":noInterne" => $noInterne));
				return $stmt->fetch();
			}	
			catch(Exception $exc){
				return 0;
			}
        }
		
		//retourne le mot de passer selon le nom de usager
		public function getMotDePasse($nomUsager){
			try{
				$stmt = $this->connexion->prepare("SELECT motDePasse FROM administrateur WHERE nom = :nomUsager");
				$stmt->bindParam(":nomUsager", $nomUsager);
				$stmt->execute();
				return $stmt->fetch();
				
			}
			catch(Exception $exc){
				return 0;	
			}
		}
        
        public function selectIdCategorie($categorie){
          try{
				$stmt = $this->connexion->prepare("SELECT * from categorie WHERE nom =:categorie");
				$stmt->bindParam(":categorie", $categorie);
				$stmt->execute();
				return $stmt->fetch();
				
			}
			catch(Exception $exc){
				return 0;	
			}
         
         
        }
        
        public function selectIdArrondissement($arron){
            try{
				$stmt = $this->connexion->prepare("SELECT * from arrondissement WHERE nom =:arron");
				$stmt->bindParam(":arron", $arron);
				$stmt->execute();
				return $stmt->fetch();
				
			}
			catch(Exception $exc){
				return 0;	
			}
           
            
        }
        
          public function updateCategorieArrondissement($idCategorie, $idArrondissement, $noInterne){
              try{

                $stmt = $this->connexion->prepare("UPDATE oeuvre SET categorie = :idCategorie, arrondissement = :idArrondissement WHERE noInterne =". $noInterne);
                $stmt->bindParam(":idCategorie", $idCategorie);
                $stmt->bindParam(":idArrondissement", $idArrondissement);
				$stmt->execute();
				return 1;
              }
			catch(Exception $exc){
				return 0;	
			}
			
        }
        
	}
?>