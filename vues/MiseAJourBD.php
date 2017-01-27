<script>
    // relie le bouton « mise-à-jour de la base de donnée» au controlleur adminAjax ou se trouve le code permettant la mise à jour.
    window.addEventListener("load", function () {
        //lorsque je clique sur btnAjoutFilm
        var btnImportation = document.getElementById("importer");
        btnImportation.addEventListener("click", function () {
            //déclaration de l'objet XMLHttpRequest
            var xhr;
            xhr = new XMLHttpRequest();
            //initialisation de la requête
            if (xhr) {
                //obtenir le nom du fichier à aller chercher.

                xhr.open("GET", "index.php?Admins&action=importation");
                //2ème étape - spécifier la fonction de callback
                xhr.addEventListener("readystatechange", function () {
                    //console.log("État de la requête : " + xhr.readyState);
                    //console.log("Code de status : " + xhr.status);
                    //traitement du résultat 
                    //if(xhr.readyState === XMLHttpRequest.DONE)
                    if (xhr.readyState === 4) {
                        //var conteneur = document.getElementById("conteneur");
                        if (xhr.status === 200) {
                            var msg = document.getElementById("conteneur")
                            msg.innerHTML = "La base de données a été mise à jour";
                        }
                        else if (xhr.status === 404) {
                            //la page demandée n'existe pas
                            alert("Erreur AJAX!");
                        }
                    }
                });
                //3ème étape - envoi de la requête
                xhr.send();
            }
        });
    });
</script>
<div class="boutonImp">
    <input type="hidden" name="action" value="updateImport" />
    <input id="importer" type="button" value="Mise à jour de la base de données" />
    <br> </div>
<br>
<div id="conteneur"> </div>