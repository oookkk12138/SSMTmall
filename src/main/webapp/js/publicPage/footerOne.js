var divA = document.getElementsByClassName("a");

for(var i = 0;i < divA.length;i++){
	var a = divA[i].getElementsByTagName("a");
	for(var j = 0;j < a.length;j++){
		a[j].onclick = function(){
			var message = confirm("此项目参照How2J！https://how2j.cn?p=35052\n点击确定进行跳转\n点击取消留在本页");
			if(message){
				window.open("https://how2j.cn?p=35052");
			}else{
				return false;
			}
		}
	}
}