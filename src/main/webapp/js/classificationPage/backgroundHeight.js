window.onload = function(){
	var background = document.getElementById("background");
	var height = document.getElementsByClassName("commodity")[0];
	var commodity = document.getElementsByClassName("commodity");
	
	height = 250;
	for(var i = 0;i < commodity.length;i = i + 5){
		height = height + 371;
	}
	background.style.height = height + "px";
}
