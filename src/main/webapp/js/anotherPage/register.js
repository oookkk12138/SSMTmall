var firstInput = document.getElementById("firstInput");
var secondInput = document.getElementById("secondInput");
var thirdInput = document.getElementById("thirdInput");
var submit = document.getElementById("submit");

firstInput.onfocus = function(){
	firstInput.setAttribute("placeholder","");
}
firstInput.onblur = function(){
	firstInput.setAttribute("placeholder","会员名一旦设置成功,无法修改");
}
secondInput.onfocus = function(){
	secondInput.setAttribute("placeholder","");
}
secondInput.onblur = function(){
	secondInput.setAttribute("placeholder","设置你的登陆密码");
}
thirdInput.onfocus = function(){
	thirdInput.setAttribute("placeholder","");
}
thirdInput.onblur = function(){
	thirdInput.setAttribute("placeholder","请再次输入你的密码");
}
submit.onclick = function(){
	if(b.value != c.value){
		alert("两次密码不相同，请重新输入");
	}
}
