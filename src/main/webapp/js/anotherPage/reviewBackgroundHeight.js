window.onload = function(){
	var background = document.getElementById("background");
	var comments = document.getElementsByClassName("comments");
	var evaluation = document.getElementById("evaluation");
	var buttonDiv = document.getElementById("buttonDiv");
	
	var height = 540 + evaluation.offsetHeight  + buttonDiv.offsetHeight;
	background.style.height = height + "px";
}
