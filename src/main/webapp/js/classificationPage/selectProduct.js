var begin = document.getElementById("begin");
var end = document.getElementById("end");
var commodity = document.getElementsByClassName("commodity");
var h = document.getElementsByTagName("h4");

begin.onchange = function(){
	var num = begin.value;
	if(isNaN(num)) num = 1;
	if(num < 1) num = 1;
	begin.value = num;

	end.onchange = function(){
		var numm = end.value;
		if(isNaN(numm)) numm = 1;
		if(numm < 1) numm = 1;
		end.value = numm;

	for(var i = 0;i < h.length;i++){
	var g = h[i].innerText.replace("￥","");
	commodity[i].style.display = "none";
	g = parseFloat(g);
	if(g >= num && g <= numm) commodity[i].style.display = "inline";
	}
	
	var background = document.getElementById("background");
	var commodityNotNone = 0;
	var height = 250;
	
	for(var j = 0;j < commodity.length;j++){
		if(commodity[j].style.display != "none"){
			commodityNotNone++;
		}
	}
	
	
	for(var j = 0;j < commodityNotNone;j = j + 5){
		height = height + 371;
	}
	background.style.height = height + "px";
	
}
}