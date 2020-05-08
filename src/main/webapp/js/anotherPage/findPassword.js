$(function(){
	$('#myModal').modal('show')
});

var index = document.getElementById("index");
index.onclick = function(){
	window.location.href = "/SSMTmall/index.jsp";
}

var login = document.getElementById("login");
login.onclick = function(){
	window.location.href = "/SSMTmall/jsp/anotherPage/login.jsp";
}

var findPassword = document.getElementById("findPassword");
var namberJS = document.getElementById("namberJS");
findPassword.onclick = function(){
	var ajax;
    try {
        ajax = new XMLHttpRequest();
    } catch (e) {
        ajax = new ActiveXObject("microsoft.xmlhttp");
    }
    ajax.open("post","/SSMTmall/user/findPassword.do", true);
    ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	 ajax.send('name=' + namberJS.value);
	 ajax.onreadystatechange = function () {
        if (ajax.readyState == 4 && ajax.status == 200) {
            var message = ajax.responseText;
            if(message == "NotExist"){
           	 	var warning = document.getElementById("warning");
				warning.style.visibility = "visible";
				var password = document.getElementById("password");
				password.style.display = "none";
				var title = document.getElementById("title");
				title.innerText = "请输入账号进行查询";
            }else{
            	var warning = document.getElementById("warning");
				warning.style.visibility = "hidden";
				var title = document.getElementById("title");
				title.innerText = "你的账号密码如下";
				var password = document.getElementById("password");
				password.style.display = "block";
				var passwordJS = document.getElementById("passwordJS");
				passwordJS.value = message;
            }
        }
	 }
}