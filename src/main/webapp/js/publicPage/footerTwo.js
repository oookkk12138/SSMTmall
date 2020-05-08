var b = document.getElementsByClassName("b");

for(var i = 0;i < b.length;i++){
	b[i].onclick = function(o){
		return function(){
			var message = confirm("此项目参照How2J！https://how2j.cn?p=35052\n点击确定进行跳转\n点击取消留在本页");
			if(message){
				window.open("https://how2j.cn?p=35052");
			}else{
				return false;
			}
		}
	}(b[i]);
}
