<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>产品管理</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/header.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/productManager.css">
</head>
<body>

	<jsp:include page="/admin/jsp/header.jsp"></jsp:include>

	<div id="background">
		<div id="topNavigation">
			<ol class="breadcrumb">
  				<li><a href="${pageContext.request.contextPath}/admin/showCategory.do?start=0">分类管理</a></li>
  				<li><a href="${pageContext.request.contextPath}/admin/showProduct.do?start=0&categoryId=${category.id}">${category.name}</a></li>
  				<li class="active">商品管理</li>
			</ol>
		</div>

		<div id="tableDiv">
			<table class="table table-striped table-bordered table-hover  table-condensed">
				<thead>
					<tr class="success">
						<td>ID</td>
						<td>图片</td>
						<td>产品名称</td>
						<td>产品小标题</td>
						<td>原价格</td>
						<td>优惠价格</td>
						<td>库存数量</td>
						<td>设置属性值</td>
						<td>图片管理</td>
						<td>编辑</td>
						<td>删除</td>
					</tr>
				</thead>
				<c:forEach items="${products}" var="product" varStatus="status">
					<tr>
						<td><span>${product.id}</span></td>
						<td><img src="${products[status.count-1].fiveImages[0].littleImageUri}" height="40px"></td>
						<td><span>${product.name}</span></td>
						<td><span>${product.subtitle}</span></td>
						<td><span>
<fmt:formatNumber type="number" value="${product.orignalPrice}" pattern="0.00" maxFractionDigits="2"/></span></td>
						<td><span>
<fmt:formatNumber type="number" value="${product.promotePrice}" pattern="0.00" maxFractionDigits="2"/></span></td>
						<td><span>${product.stock}</span></td>
						<td><a href="${pageContext.request.contextPath}/admin/propertyValueManage.do?categoryId=${category.id}&productId=${product.id}"><span class="glyphicon glyphicon-list"></span></a></td>
						<td><a href="${pageContext.request.contextPath}/admin/showImages.do?productId=${product.id}"><span class="	glyphicon glyphicon-picture"></span></a></td>
						<td><a href="" data-toggle="modal" data-target="#myModal" class="moTaiId"><span class="glyphicon glyphicon-edit"></span></a></td>
						<td><a href="${pageContext.request.contextPath}//admin/deleteProduct.do?categoryId=${category.id}&productId=${product.id}" onclick="return confirm('此表拥有多个子表的数据，确认删除后其子表下的数据也将删除。\n确认删除请点击确认，取消操作请点击取消')"><span class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<div id="fenYeDiv">
			<nav id="fenYe">
  				<ul class="pagination pagination-lg">
    				<li id="preLi">
      					<a href="${pageContext.request.contextPath}/admin/showProduct.do?start=${start-150}&categoryId=${category.id}" aria-label="Previous" id="preA">
        					<span aria-hidden="true">&laquo;</span>
      					</a>
    				</li>
    					<li><a href="#" class="numberLink">1</a></li>
    					<li><a href="#" class="numberLink">2</a></li>
    					<li><a href="#" class="numberLink">3</a></li>
    					<li><a href="#" class="numberLink">4</a></li>
    					<li><a href="#" class="numberLink">5</a></li>
    				<li id="nextLi">
      					<a href="${pageContext.request.contextPath}/admin/showProduct.do?start=${start+150}&categoryId=${category.id}" aria-label="Next" id="nextA">
        					<span aria-hidden="true">&raquo;</span>
      					</a>
    				</li>
 				</ul>
			</nav>
		</div>

		<div id="buttomDiv">
		<form method="get" action="${pageContext.request.contextPath}/admin/addProduct.do">
			<input type="hidden" value="${category.id}" name="categoryId">
			<table>
				<thead>
					<tr>
						<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;新增产品</td>
					</tr>
				</thead>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;产品名称</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="productName"></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;产品小标题</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="productSubtitle"></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;原价格</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="productOrignalPrice" min="0.00" step="0.01"></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;优惠价格</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="productPromotePrice" min="0.00" step="0.01"></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;库存</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="productStock"></td>
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
		<form method="get" action="${pageContext.request.contextPath}/admin/updateProduct.do">
			<input type="hidden" value="${start}" name="start">
			<input type="hidden" value="${category.id}" name="categoryId">
			<input type="hidden" value="" name="moTaiProductId" id="moTaiProductId">
			<table>
				<thead>
					<tr>
						<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;修改产品</td>
					</tr>
				</thead>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;产品名称</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="productName" id="moTaiProductName"></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;产品小标题</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="productSubtitle" id="moTaiProductSubtitle"></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;原价格</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="productOrignalPrice" min="0.00" step="0.01" id="moTaiProductOrignalPrice"></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;优惠价格</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="productPromotePrice" min="0.00" step="0.01" id="moTaiProductPromotePrice"></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;库存</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="productStock" id="moTaiProductStock"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><button id="submit" type="submit" class="btn-success">修改</button></td>
				</tr>
			</table>
			</form>
			</div>
		</div>

	</div>
</body>

<!-- 设置分页的数字跳转 -->
<script>
	var numberLink = document.getElementsByClassName("numberLink");
	var start = "${start}";
	for(var i = 0;i < numberLink.length;i++){
		numberLink[i].onclick = function(){
			var beginNumber = (parseInt(this.innerText) - 1) * 150;
			this.href = "${pageContext.request.contextPath}/admin/showProduct.do?start=" + beginNumber + "&categoryId=${category.id}";
		}
	}
	
	if(start > 150){
		numberLink[0].innerText = <fmt:formatNumber type="number" value="${start/150-1}" pattern="0" maxFractionDigits="2"/>
		numberLink[1].innerText = <fmt:formatNumber type="number" value="${start/150-0}" pattern="0" maxFractionDigits="2"/>
		numberLink[2].innerText = <fmt:formatNumber type="number" value="${start/150+1}" pattern="0" maxFractionDigits="2"/>
		numberLink[3].innerText = <fmt:formatNumber type="number" value="${start/150+2}" pattern="0" maxFractionDigits="2"/>
		numberLink[4].innerText = <fmt:formatNumber type="number" value="${start/150+3}" pattern="0" maxFractionDigits="2"/>
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
	if(start >= total-150){
		nextLi.setAttribute("class","disabled");
		nextA.removeAttribute("href");
	}
</script>

<script>
	var message = "${param.message}";
	if(message == "success"){
		alert("添加商品完成");
	}
	if(message == "updateFail"){
		alert("为保证数据完整性，id<=340的商品不支持修改");
	}
	if(message == "updateSuccess"){
		alert("修改成功");
	}
	if(message == "deleteFail"){
		alert("为保证数据完整性，id<=340的商品不支持删除");
	}
	if(message == "deleteSuccess"){
		alert("删除完成");
	}
</script>

<!-- 点击修改图标就把propertyId的值赋给模态框 -->
<script>
	//保存productId和productNames和productSubtitles和productOrignalPrices和productOrignalPrices和productStocks
	var productIds = new Array(0);
	var productNames = new Array(0);
	var productSubtitles = new Array(0);
	var productOrignalPrices = new Array(0);
	var productPromotePrices = new Array(0);
	var productStocks = new Array(0);
	<c:forEach items="${products}" var="product">
		productIds.push(${product.id});
		productNames.push("${product.name}");
		productSubtitles.push("${product.subtitle}");
		productOrignalPrices.push(${product.orignalPrice});
		productPromotePrices.push(${product.promotePrice});
		productStocks.push(${product.stock});
	</c:forEach>
	
	var moTaiId = document.getElementsByClassName("moTaiId");
	var moTaiProductId = document.getElementById("moTaiProductId");
	var moTaiProductName = document.getElementById("moTaiProductName");
	var moTaiProductSubtitle = document.getElementById("moTaiProductSubtitle");
	var moTaiProductOrignalPrice = document.getElementById("moTaiProductOrignalPrice");
	var moTaiProductPromotePrice = document.getElementById("moTaiProductPromotePrice");
	var moTaiProductStock = document.getElementById("moTaiProductStock");
	
	var placeHolderName;
	var placeHolderSubtitle;
	var placeHolderOrignalPrice;
	var placeHolderPromotePrice;
	var placeHolderStock;
	
	for(var i = 0;i < moTaiId.length;i++){
		moTaiId[i].onclick = function(o){
			return function(){
				moTaiProductId.value = productIds[o];
				moTaiProductName.value = productNames[o];
				placeHolderName = productNames[o];
				moTaiProductSubtitle.value = productSubtitles[o];
				placeHolderSubtitle = productSubtitles[o];
				moTaiProductOrignalPrice.value = productOrignalPrices[o].toFixed(2);
				placeHolderOrignalPrice = productOrignalPrices[o];
				moTaiProductPromotePrice.value = productPromotePrices[o].toFixed(2);
				placeHolderPromotePrice = productPromotePrices[o];
				moTaiProductStock.value = productStocks[o];
				placeHolderStock = productStocks[o];
				
				moTaiProductName.onfocus = function(){
					moTaiProductName.value = "";
				}
				moTaiProductName.onblur = function(){
					if(moTaiProductName.value == ""){
						moTaiProductName.value = productNames[o];
					}
				}
				moTaiProductSubtitle.onfocus = function(){
					moTaiProductSubtitle.value = "";
				}
				moTaiProductSubtitle.onblur = function(){
					if(moTaiProductSubtitle.value == ""){
						moTaiProductSubtitle.value = productSubtitles[o];
					}
				}
				moTaiProductOrignalPrice.onfocus = function(){
					moTaiProductOrignalPrice.value = "";
				}
				moTaiProductOrignalPrice.onblur = function(){
					if(moTaiProductOrignalPrice.value == ""){
						moTaiProductOrignalPrice.value = productOrignalPrices[o].toFixed(2);
					}
				}
				moTaiProductPromotePrice.onfocus = function(){
					moTaiProductPromotePrice.value = "";
				}
				moTaiProductPromotePrice.onblur = function(){
					if(moTaiProductPromotePrice.value == ""){
						moTaiProductPromotePrice.value = productPromotePrices[o].toFixed(2);
					}
				}
				moTaiProductStock.onfocus = function(){
					moTaiProductStock.value = "";
				}
				moTaiProductStock.onblur = function(){
					if(moTaiProductStock.value == ""){
						moTaiProductStock.value = productStocks[o];
					}
				}
				return false;
			}
		}(i);
	}
</script>

</html>