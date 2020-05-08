var a = document.getElementsByClassName("inputJS");
var b = document.getElementById("namberJS");
var c = document.getElementById("passwordJS");

for(var i = 0;i < a.length;i++){
	a[i].onfocus = function(o1){
		return function(){
			o1.setAttribute("placeholder","");
		}
	}(a[i]);
}

b.onblur = function(){
	b.setAttribute("placeholder","手机号/会员名/邮箱");
}

c.onblur = function(){
	c.setAttribute("placeholder","密码");
}