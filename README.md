#Bienvenue sur Simple MVC Structure
Simple MVC Structure n'est pas un framework, mais seulement une structure de base qui permet de monter un MVC rapidement en php. Il suffit de forker le <a href="https://github.com/JonathanMartel/simpleMVCStructure">dépot Github</a> et de dupliquer les classes vues et modele afin d'en disposer à votre convenance. Il s'adresse principalement à mes étudiants.


##Structure des dossiers et des fichiers
### Dossiers et fichiers du MVC
Le MVC utilise les fichiers index.php, initialisation.php, configuration.php, Controleur.class.php et ajaxControleur.php ainsi que les dossiers /lib, /modeles et /vues.

#### index.php
Ce fichier sert de porte d'entrée du MVC, les requêtes HTTP se font à travers ce fichier. Celui-ci fait les inclusion (required) nécessaires au chargement des fichiers de configuration (config.php), de traitement des variables de requêtes (var.init.php). Il permet aussi l'appel de la classe Controler. 

#### configuration.php
Fichier de configuration appelé par index.php. Initialement, celui-ci contient la fonction d'autoload (spl_autoload) qui permet l'inclusion dynamique des classes lors des instanciations. Notez que la fonction doit être actualisée en cas de modification de la structure des dossiers.

#### initialisation.php
Fichier d'initialisation des valeur de GET et POST. Ce fichier permet de valider les valeurs de la requête HTTP pour limiter les erreurs de lecture de valeurs non définies. 

#### Controleur.class.php
La classe Controler est instanciée par index.php. Celle-ci traite la requête HTTP et appel les modèles et les vues appropriées. Celui-ci contient initialement la méthode gerer() qui traite la requête de base (Initialement : $_GET['requete']).

#### ajaxControleur.php
Controleur de requête ajax. Ce fichier servira à gérer les requêtes ajax et sera appelé directement par ajax. Ce fichier fait appel à configuration.php. 

#### /modeles
Dossier qui contiendra les modèles. Dans la version initiale, ce dossier contient une classe Modele de base. Vous n'avez qu'à dupliquer le fichier et remplacer "Modele" (nom du fichier et nom de la classe) par le nom de votre modèle. 

#### /vues
Contiendra les classes de Vues. La classe Vue qui contient une simple fonction statique pour l'affichage de la page d'accueil peut être dupliqué afin de créer l'ensemble des vues.

#### /lib
Ce dossier contiendra les classes personnalisées (accès SQL, traduction, classe de gestion des exceptions) que vous pourriez ajouter au projet (autres que les vues et les modèles). Notez qu'il faut mettre à jour la fonction d'autoload dans le fichier config.php afin de tenir compte de l'ajout de dossier. 

## Licence
The MIT License (MIT)

Copyright (c) 2016 Jonathan Martel  
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal 
in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
