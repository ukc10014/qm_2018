// JavaScript Document

/*		<!--//--><![CDATA[//><!-- */
			var images = new Array()
		
		/*Preloads the images*/
		function preload() {
				for (i = 0; i < preload.arguments.length; i++) {
					images[i] = new Image()
					images[i].src = preload.arguments[i]
					/* document.getElementById("imgs"+i).innerHTML = images[i]; */
				}
			}
		
		/*Pulls the images*/
		function retrieve(inum) {
				/*	document.getElementById("imgs"+inum).innerHTML = images[inum]; */
				document.getElementById('imgs'+inum).src = images[inum].src;
		}
		
		function img_num() {
			/* Returns size of preload array */
			return images.length;
		}
			preload(
				"images/xwindows.jpg",
				"images/cde_files.jpg",
				"images/cde_xcalc.jpg",
				"images/cde_menu.jpg",
				"images/shots/soviet_montage_vertov.png",
				"images/shots/conway.jpg",
				"images/shots/giscard.jpg",
				"images/shots/runit_gregnelson.jpg",
				"images/shots/derrida_noapocalypse.png",
				"images/shots/soylent.jpg",
				"images/shots/maxplanck_3",
				"images/shots/maxplanck_2",
				"images/shots/maxplanck_1"
				"images/shots/houses.jpg",
				"images/shots/commie_hysteria.jpg"
				
			)
		//--><!]]>


// When the user clicks on div, open the popup
function myFunction() {
    var popup = document.getElementById("myPopup");
    popup.classList.toggle("show");
}


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
	$(function () {
    "use strict";
    
    $(".popup img").click(function () {
        var $src = $(this).attr("src");
        $(".show").fadeIn();
        $(".img-show img").attr("src", $src);
    });
    
    $("span, .overlay").click(function () {
        $(".show").fadeOut();
    });
    
});
		/*This script pulls all the images up which are then referenced through the document as id="imgs0-45"*/
		for (j=0;img_num();j++) {
			// console.log(j);
			retrieve(j);
		}
