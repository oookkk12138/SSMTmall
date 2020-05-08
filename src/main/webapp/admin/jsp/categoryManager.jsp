<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>分类管理</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/header.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/categoryManager.css">
</head>
<body>

	<jsp:include page="/admin/jsp/header.jsp"></jsp:include>

	<div id="background">
		<div id="categoryManager">
			<span id="categoryManagerTopSpan">分类管理</span>
		</div>
		<div id="tableDiv">
			<table class="table table-striped table-bordered table-hover  table-condensed">
				<thead>
					<tr class="success">
						<td>ID</td>
						<td>图片</td>
						<td>分类名称</td>
						<td>属性管理</td>
						<td>产品管理</td>
						<td>编辑</td>
						<td>删除</td>
					</tr>
				</thead>
				
				<c:forEach items="${categorys}" var="category">
					<tr>
						<td><span>${category.id}</span></td>
						<td><img src="${category.picture}" height="40px"></td>
						<td><span>${category.name}</span></td>
						<td><a href="${pageContext.request.contextPath}/admin/showProperty.do?categoryId=${category.id}&start=0"><span class="glyphicon glyphicon-th-list"></span></a></td>
						<td><a href="${pageContext.request.contextPath}/admin/showProduct.do?categoryId=${category.id}&start=0"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>
						<td><a href="" data-toggle="modal" data-target="#myModal" class="moTaiId"><span class="glyphicon glyphicon-edit"></span></a></td>
						<td><a href="${pageContext.request.contextPath}/admin/deleteCategory.do?categoryId=${category.id}" onclick="return confirm('此表拥有子表[product]的数据，确认删除后其子表下的数据也将删除。\n确认删除请点击确认，取消操作请点击取消')" data-toggle="tooltip"><span class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<div id="fenYeDiv">
			<nav id="fenYe">
  				<ul class="pagination pagination-lg">
    				<li id="preLi">
      					<a href="${pageContext.request.contextPath}/admin/showCategory.do?start=${start-5}" aria-label="Previous" id="preA">
        					<span aria-hidden="true">&laquo;</span>
      					</a>
    				</li>
    					<li><a href="#" class="numberLink">1</a></li>
    					<li><a href="#" class="numberLink">2</a></li>
    					<li><a href="#" class="numberLink">3</a></li>
    					<li><a href="#" class="numberLink">4</a></li>
    					<li><a href="#" class="numberLink">5</a></li>
    				<li id="nextLi">
      					<a href="${pageContext.request.contextPath}/admin/showCategory.do?start=${start+5}" aria-label="Next" id="nextA">
        					<span aria-hidden="true">&raquo;</span>
      					</a>
    				</li>
 				</ul>
			</nav>
		</div>

		<div id="buttomDiv">
		<form action="${pageContext.request.contextPath}/admin/addCategory.do" method="post" enctype="multipart/form-data">
			<table>
				<thead>
					<tr>
						<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;新增分类(分辨率为1080*113为佳)</td>
					</tr>
				</thead>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;分类名称</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="categoryName"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="file" name="categoryPicture" style="margin-left:20px;">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><button id="submit" type="submit" class="btn-success">提交</button></td>
				</tr>
			</table>
			</form>
		</div>
		
		<!-- 这是模态框 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div id="moTaiBackground">
		<form action="${pageContext.request.contextPath}/admin/updateCategory.do" method="get">
			<input type="hidden" name="start" value="${start}">
			<input type="hidden" name="categoryId" id="moTaiCategoryId">
			<table>
				<thead>
					<tr>
						<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;修改名称</td>
					</tr>
				</thead>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;分类名称</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="categoryName" id="moTaiCategoryName"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><button id="submit" type="submit" class="btn-success">提交</button></td>
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
			this.href = "${pageContext.request.contextPath}/admin/showCategory.do?start=" + beginNumber;
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

<!-- 显示各种提示信息 -->
<script>
	var message = "${param.message}";
	if(message == "success"){
		alert("添加分类完成");
	}
	if(message == "error"){
		alert("文件格式需要为jpg或png格式");
	}
</script>

<!-- 把对应的categoryId和categoryName加到模态框中 -->
<script>
	//保存categoryId和categoryName
	var categoryIds = new Array(0);
	var categoryNames = new Array(0);
	<c:forEach items="${categorys}" var="category">
		categoryIds.push(${category.id});
		categoryNames.push("${category.name}");
	</c:forEach>
	
	var moTaiId = document.getElementsByClassName("moTaiId");
	var moTaiCategoryId = document.getElementById("moTaiCategoryId");
	var moTaiCategoryName = document.getElementById("moTaiCategoryName");
	for(var i = 0;i < moTaiId.length;i++){
		moTaiId[i].onclick = function(o){
			return function(){
				moTaiCategoryId.value = categoryIds[o];
				moTaiCategoryName.value = categoryNames[o];
				moTaiCategoryName.onfocus = function(){
					moTaiCategoryName.value = "";
				}
				moTaiCategoryName.onblur = function(){
					if(moTaiCategoryName.value == ""){
						moTaiCategoryName.value = categoryNames[o];
					}
				}
			}
		}(i);
	}
</script>

</html>