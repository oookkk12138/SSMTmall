var c = document.getElementsByClassName("list-left");
var d = document.getElementsByClassName("gg");
for(var i = 0;i < c.length;i++){
	c[i].onmouseover = function(o1,o2){
		return function(){
			o1.style.background = "white";
			o2.style.display = "block";
		}
	}(c[i],d[i]);
	c[i].onmouseout = function(o1,o2){
		return function(){
			o1.style.background = "#e2e2e3";
			o2.style.display = "none";
		}
	}(c[i],d[i]);
}

for(var i = 0;i < d.length;i++){
	d[i].onmouseover = function(o3){
		return function(){
			o3.style.display = "block";
		}
	}(d[i]);
	d[i].onmouseout = function(o3){
		return function(){
			o3.style.display = "none";
		}
	}(d[i]);
}