var viewDetails = document.getElementsByClassName("viewDetails");
var hiddenTables = document.getElementsByClassName("hiddenTable");

for(var i = 0;i < viewDetails.length;i++){
	viewDetails[i].onclick = function(o){
		return function(){
			if(hiddenTables[o].style.display == "none" || hiddenTables[o].style.display == ""){
				hiddenTables[o].style.display = "table";
				return false;
			}else{
				hiddenTables[o].style.display = "none";
				return false;
			}
		}
	}(i);
}