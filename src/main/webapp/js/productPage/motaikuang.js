var inputJS = document.getElementsByClassName("inputJS");
var namberJS = document.getElementById("namberJS");
var passwordJS = document.getElementById("passwordJS");

for(var i = 0;i < inputJS.length;i++){
	inputJS[i].onfocus = function(o1){
		return function(){
			o1.setAttribute("placeholder","");
		}
	}(inputJS[i]);
}

namberJS.onblur = function(){
	namberJS.setAttribute("placeholder","手机号/会员名/邮箱");
}

passwordJS.onblur = function(){
	passwordJS.setAttribute("placeholder","密码");
}