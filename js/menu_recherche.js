/* function auto executante menu burger */
(function(){
	window.addEventListener("load", function(){
		elmBurger = document.getElementById("burger");
		elmBurger.addEventListener("click", function(){
			elmMenu = document.getElementById("menuPrincipal");
			this.classList.toggle("menuBurger");
			elmMenu.classList.toggle("voirMenu");
		});
	});

})();

/* function auto executante recherche */
(function(){
	window.addEventListener("load", function(){
		elmRecherche = document.getElementById("faSearch");
		elmRecherche.addEventListener("click", function(){
			elmForm = document.getElementById("formRecherche");
			elmForm2 = document.getElementById("resultatRecherche");
			this.classList.toggle("iconeFormRecherche");
			elmForm.classList.toggle("voirFormRecherche");
			elmForm2.classList.toggle("voirFormRecherche");
		});
	});

})();