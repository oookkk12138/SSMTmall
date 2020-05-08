var td = document.getElementById("first").getElementsByTagName("td");

for(var i = 0;i < td.length;i++){
	td[i].onclick = function(o){
		return function(){
			for(var j = 0;j < td.length;j++){
					td[j].style.background = "";
			}

			if(o.style.background == "rgb(241, 237, 236)"){
				o.style.background = "";
			}else{
				o.style.background = "rgb(241, 237, 236)";
			}
			
		}
	}(td[i]);
}
