<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>属性管理</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/header.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/paramaterManager.css">
</head>
<body>

	<jsp:include page="/admin/jsp/header.jsp"></jsp:include>

	<div id="background">
		<div id="topNavigation">
			<ol class="breadcrumb">
  				<li><a href="${pageContext.request.contextPath}/admin/showCategory.do?start=0">分类管理</a></li>
  				<li><a href="${pageContext.request.contextPath}/admin/showProperty.do?start=0&categoryId=${category.id}">${category.name}</a></li>
  				<li class="active">属性管理 </li>
			</ol>
		</div>

		<div id="tableDiv">
			<table class="table table-striped table-bordered table-hover  table-condensed">
				<thead>
					<tr class="success">
						<td>ID</td>
						<td>属性名称</td>
						<td>编辑</td>
						<td>删除</td>
					</tr>
				</thead>
				
				<c:forEach items="${properties}" var="property"> 
					<tr>
						<td><span>${property.id}</span></td>
						<td><span>${property.name}</span></td>
						<td><a href="" data-toggle="modal" data-target="#myModal" class="moTaiId"><span class="glyphicon glyphicon-edit"></span></a></td>
						<td><a href="${pageContext.request.contextPath}/admin/deleteProperty.do?propertyId=${property.id}&categoryId=${category.id}" onclick="return confirm('确定删除？')"><span class="glyphicon glyphicon-trash"></span></a></td>
				</tr>
				</c:forEach>
				
			</table>
		</div>

		<div id="fenYeDiv">
			<nav id="fenYe">
  				<ul class="pagination pagination-lg">
    				<li id="preLi">
      					<a href="${pageContext.request.contextPath}/admin/showProperty.do?start=${start-5}&categoryId=${category.id}" aria-label="Previous" id="preA">
        					<span aria-hidden="true">&laquo;</span>
      					</a>
    				</li>
    					<li><a href="#" class="numberLink">1</a></li>
    					<li><a href="#" class="numberLink">2</a></li>
    					<li><a href="#" class="numberLink">3</a></li>
    					<li><a href="#" class="numberLink">4</a></li>
    					<li><a href="#" class="numberLink">5</a></li>
    				<li id="nextLi">
      					<a href="${pageContext.request.contextPath}/admin/showProperty.do?start=${start+5}&categoryId=${category.id}" aria-label="Next" id="nextA">
        					<span aria-hidden="true">&raquo;</span>
      					</a>
    				</li>
 				</ul>
			</nav>
		</div>

		<div id="buttomDiv">
		<form action="${pageContext.request.contextPath}/admin/addProperty.do" method="get">
			<input type="hidden" value="${category.id}" name="categoryId">
			<table>
				<thead>
					<tr>
						<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;新增属性</td>
					</tr>
				</thead>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;属性名称</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="" name="propertyName"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><button id="submit" type="submit" class="btn-success">提交</button></td>
				</tr>
			</table>
			</form>
		</div>

	</div>
	
	<!-- 这是模态框 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div id="moTaiBackground">
		<form action="${pageContext.request.contextPath}/admin/updateProperty.do" method="get">
			<input type="hidden" value="${start}" name="start">
			<input type="hidden" value="" name="propertyId" id="moTaiPropertyId">
			<input type="hidden" value="${category.id}" name="categoryId">
			<table>
				<thead>
					<tr>
						<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;修改属性</td>
					</tr>
				</thead>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;属性名称</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="propertyName" id="moTaiPropertyName"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><button id="submit1" type="submit" class="btn-success">提交</button></td>
				</tr>
			</table>
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
			this.href = "${pageContext.request.contextPath}/admin/showProperty.do?start=" + beginNumber + "&categoryId=${category.id}";
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

<!-- 显示对应的提示信息 -->
<script>
	var message = "${param.message}";
	if(message == "success"){
		alert("添加属性完成");
	}
</script>

<!-- 点击修改图标就把propertyId和propertyName的值赋给模态框 -->
<script>
	var propertyIds = new Array(0);
	var propertyNames = new Array(0);
	<c:forEach items="${properties}" var="property">
		propertyIds.push(${property.id});
		propertyNames.push("${property.name}");
	</c:forEach>
	
	var moTaiId = document.getElementsByClassName("moTaiId");
	var moTaiPropertyId = document.getElementById("moTaiPropertyId");
	var moTaiPropertyName = document.getElementById("moTaiPropertyName");
	for(var i = 0;i < moTaiId.length;i++){
		moTaiId[i].onclick = function(o){
			return function(){
				moTaiPropertyId.value = propertyIds[o];
				moTaiPropertyName.value = propertyNames[o];
				moTaiPropertyName.onfocus = function(){
					moTaiPropertyName.value = "";
				}
				moTaiPropertyName.onblur = function(){
					if(moTaiPropertyName.value == ""){
						moTaiPropertyName.value = propertyNames[o];
					}
				}
				return false;
			}
		}(i);
	}
</script>

</html>