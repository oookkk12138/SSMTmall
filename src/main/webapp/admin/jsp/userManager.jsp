<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>用户管理</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/header.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/userManager.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/motaikuang.css">
</head>
<body>

	<jsp:include page="/admin/jsp/header.jsp"></jsp:include>

	<div id="background">
		<div id="categoryManager">
			<span id="categoryManagerTopSpan">用户管理</span>
		</div>

		<div id="tableDiv">
			<table class="table table-striped table-bordered table-hover  table-condensed">
				<thead>
					<tr class="success">
						<td>ID</td>
						<td>用户名</td>
						<td>密码</td>
						<td>修改用户名</td>
						<td>修改密码</td>
						<td>最近一次登录时间</td>
						<td>删除</td>
					</tr>
				</thead>
				
				<c:forEach items="${users}" var="user">
					<tr>
						<td><span>${user.id}</span></td>
						<td><span>${user.name}</span></td>
						<td><span>${user.password}</span></td>
						<td><a href="" data-toggle="modal" data-target="#myModal" class="userNameLink"><span>修改用户名</span></a></td>
						<td><a href="" data-toggle="modal" data-target="#myModal2" class="userPasswordLink"><span>修改密码</span></a></td>
						<td><span><fmt:formatDate value="${user.loginTime}" pattern="yyyy-MM-dd HH:mm:ss" /></span></td>
						<td><a href="${pageContext.request.contextPath}/admin/deleteUser.do?userId=${user.id}" onclick="return confirm('此表拥有多张子表的数据，确认删除后其子表下的数据也将删除。\n确认删除请点击确认，取消操作请点击取消')"><span class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</c:forEach>
				
			</table>
		</div>

		<div id="fenYeDiv">
			<nav id="fenYe">
  				<ul class="pagination pagination-lg">
    				<li id="preLi">
      					<a href="${pageContext.request.contextPath}/admin/showUser.do?start=${start-5}" aria-label="Previous" id="preA">
        					<span aria-hidden="true">&laquo;</span>
      					</a>
    				</li>
    					<li><a href="#" class="numberLink">1</a></li>
    					<li><a href="#" class="numberLink">2</a></li>
    					<li><a href="#" class="numberLink">3</a></li>
    					<li><a href="#" class="numberLink">4</a></li>
    					<li><a href="#" class="numberLink">5</a></li>
    				<li id="nextLi">
      					<a href="${pageContext.request.contextPath}/admin/showUser.do?start=${start+5}" aria-label="Next" id="nextA">
        					<span aria-hidden="true">&raquo;</span>
      					</a>
    				</li>
 				</ul>
			</nav>
		</div>
	</div>
	
	<!--用户名模态窗-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
<div id="moTaiBackground">
	<form action="${pageContext.request.contextPath}/admin/updateUserName.do" method="get">
		<div id="topDiv">
			<input type="hidden" value="${start}" name="start">
			<input type="hidden" value="" id="moTaiHiddenInput" name="userId">
			<input type="hidden" value="${begin}" name="begin">
			<span class="glyphicon glyphicon-remove" id="moTaiClose"></span>
			<div id="topMessage">
				<h1>请输入用户名</h1>
				<p>此操作将会修改数据库信息，请谨慎操作</p>
			</div>
			<div id="buttomMessage">
				<div id="inputDiv"><br>
					<input type="text" name="userName"><br><br><br>
					<button class="btn-success">确认修改</button>
				</div>
			</div>
		</div>
	</form>
</div>
</div>

	<!--密码模态窗-->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
<div id="moTaiBackground">
	<form action="${pageContext.request.contextPath}/admin/updateUserPassword.do" method="get">
		<div id="topDiv">
			<input type="hidden" value="${start}" name="start">
			<input type="hidden" value="" id="moTaiHiddenInput2" name="userId">
			<input type="hidden" value="${begin}" name="begin">
			<span class="glyphicon glyphicon-remove" id="moTaiClose2"></span>
			<div id="topMessage">
				<h1>请输入用户密码</h1>
				<p>此操作将会修改数据库信息，请谨慎操作</p>
			</div>
			<div id="buttomMessage">
				<div id="inputDiv"><br>
					<input type="text" name="userPassword"><br><br><br>
					<button class="btn-success">确认修改</button>
				</div>
			</div>
		</div>
	</form>
</div>
</div>

	
</body>

<!-- 设置分页的数字跳转 -->
<script>
	var numberLink = document.getElementsByClassName("numberLink");
	var start = "${start}";
	for(var i = 0;i < numberLink.length;i++){
		numberLink[i].onclick = function(){
			var beginNumber = (parseInt(this.innerText) - 1) * 5;
			this.href = "${pageContext.request.contextPath}/admin/showUser.do?start=" + beginNumber;
		}
	}
	
	if(start > 100){
		numberLink[0].innerText = <fmt:formatNumber type="number" value="${start/5-1}" pattern="0" maxFractionDigits="2"/>
		numberLink[1].innerText = <fmt:formatNumber type="number" value="${start/5-0}" pattern="0" maxFractionDigits="2"/>
		numberLink[2].innerText = <fmt:formatNumber type="number" value="${start/5+1}" pattern="0" maxFractionDigits="2"/>
		numberLink[3].innerText = <fmt:formatNumber type="number" value="${start/5+2}" pattern="0" maxFractionDigits="2"/>
		numberLink[4].innerText = <fmt:formatNumber type="number" value="${start/5+3}" pattern="0" maxFractionDigits="2"/>
	}
</script>

<!-- 设置边界按钮不可点击 -->
<script>
	var start = "${start}";
	var total = "${total}";
	var preLi = document.getElementById("preLi");
	var next = document.getElementById("preLi");
	var preA = document.getElementById("preA");
	var nextA = document.getElementById("nextA");
	if(start <= 0){
		preLi.setAttribute("class","disabled");
		preA.removeAttribute("href");
	}
	if(start >= total-5){
		nextLi.setAttribute("class","disabled");
		nextA.removeAttribute("href");
	}
</script>

<!-- 设置模态框中隐藏的input -->
<script>
	//把用户Id保存到js数组
	var userIds = new Array(0);
	<c:forEach items="${users}" var="user">
		userIds.push(${user.id});
	</c:forEach>
	
	var userNameLink = document.getElementsByClassName("userNameLink");
	var moTaiHiddenInput = document.getElementById("moTaiHiddenInput");
	for(var i = 0;i < userNameLink.length;i++){
		userNameLink[i].onclick = function(o){
			return function(){
				moTaiHiddenInput.value = userIds[o];	
			}
		}(i);
	}
	
	var userPasswordLink = document.getElementsByClassName("userPasswordLink");
	var moTaiHiddenInput2 = document.getElementById("moTaiHiddenInput2");
	for(var i = 0;i < userPasswordLink.length;i++){
		userPasswordLink[i].onclick = function(o){
			return function(){
				moTaiHiddenInput2.value = userIds[o];
			}
		}(i);
	}
</script>

<!-- 点击模态框的X时关闭模态框 -->
<script>
	$("#moTaiClose").click(function(){
		$("#myModal").modal('hide');
	})
	$("#moTaiClose2").click(function(){
		$("#myModal2").modal('hide');
	})
</script>

<!-- 提示各种信息 -->
<script>
	var message = "${param.message}";
	if(message == "error"){
		alert("用户名有重复，无法进行修改，请更改用户名！")
	}
</script>

</html>