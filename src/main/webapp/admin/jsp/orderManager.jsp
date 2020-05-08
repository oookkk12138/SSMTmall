<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>订单管理</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/header.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/orderManager.css">
</head>
<body>

	<jsp:include page="/admin/jsp/header.jsp"></jsp:include>

	<div id="background">
		<div id="categoryManager">
			<span id="categoryManagerTopSpan">订单管理</span>
		</div>
		<div id="tableDiv">
			<table class="table table-striped table-bordered table-hover  table-condensed">
				<thead>
					<tr class="success">
						<td>ID</td>
						<td>状态</td>
						<td>订单号</td>
						<td>买家名称</td>
						<td>创建时间</td>
						<td>支付时间</td>
						<td>发货时间</td>
						<td>确实收货时间</td>
						<td>买家留言</td>
						<td>操作</td>
					</tr>
				</thead>
				
				<c:forEach items="${orders}" var="order" varStatus="status">
					<tr>
						<td><span>${order.id}</span></td>
						<td><span class="tableOrderStatus">${order.status}</span></td>
						<td><span>${order.orderCode}</span></td>
						<td><span>${users[status.count-1].name}</span></td>
						<td><span><fmt:formatDate value="${order.createDate}" pattern="yyyy-MM-dd hh:mm:ss"/></span></td>
						<td><span><fmt:formatDate value="${order.payDate}" pattern="yyyy-MM-dd hh:mm:ss"/></span></td>
						<td><span><fmt:formatDate value="${order.deliverDate}" pattern="yyyy-MM-dd hh:mm:ss"/></span></td>
						<td><span><fmt:formatDate value="${order.confirmDate}" pattern="yyyy-MM-dd hh:mm:ss"/></span></td>
						<td><span>${order.userMessage}</span></td>
						<td>
							<span><a href="" class="viewDetails" data-toggle="modal" data-target="#myModal">查看详情</a><br></span>
							<span><a href="${pageContext.request.contextPath}/admin/orderDeliverGoods.do?orderId=${order.id}" class="deliverGoods">发货</a><br></span>
						</td>
					</tr>
				</c:forEach>
				
			</table>
		</div>

		<div id="fenYeDiv">
			<nav id="fenYe">
  				<ul class="pagination pagination-lg">
    				<li id="preLi">
      					<a href="${pageContext.request.contextPath}/admin/showOrder.do?start=${start-5}" aria-label="Previous" id="preA">
        					<span aria-hidden="true">&laquo;</span>
      					</a>
    				</li>
    					<li><a href="#" class="numberLink">1</a></li>
    					<li><a href="#" class="numberLink">2</a></li>
    					<li><a href="#" class="numberLink">3</a></li>
    					<li><a href="#" class="numberLink">4</a></li>
    					<li><a href="#" class="numberLink">5</a></li>
    				<li id="nextLi">
      					<a href="${pageContext.request.contextPath}/admin/showOrder.do?start=${start+5}" aria-label="Next" id="nextA">
        					<span aria-hidden="true">&raquo;</span>
      					</a>
    				</li>
 				</ul>
			</nav>
		</div>
		
	<!-- 这是模态框 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div id="orders">
	<c:forEach items="${orders}" var="order" varStatus="i">
	<div class="order">
		<table>
			<tr class="first">
				<td width="15%"><fmt:formatDate value="${order.createDate}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
				<td width="45%">订单号:${order.orderCode}</td>
				<td width="10%">单价</td>
				<td width="10%">数量</td>
				<td width="10%">总价格</td>
				<td width=10%>状态</td>
			</tr>
			
			<c:forEach items="${orderItems[i.count-1]}" var="orderItem" varStatus="j">
			<tr class="second">
				<td style="border-right:1px solid #ececec"><img src="${products[i.count-1][j.count-1].fiveImages[0].bigImageUri}" width="80px" height="80px"></td>
				<td style="border-right:1px solid #ececec">
					<div>
						<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=${products[i.count-1][j.count-1].id}">${products[i.count-1][j.count-1].name}
						</a><br><br>
						<img src="${pageContext.request.contextPath}/image/anotherPage/creditcard.png" title="支持信用卡支付">
						<img src="${pageContext.request.contextPath}/image/anotherPage/7day.png" title="消费者保障服务,承诺7天退货">
						<img src="${pageContext.request.contextPath}/image/anotherPage/promise.png" title="消费者保障服务,承诺如实描述">
					</div>
				</td>
				<td style="border-right:1px solid #ececec">
					<span class="oldPrice">￥<fmt:formatNumber type="number" value="${products[i.count-1][j.count-1].orignalPrice}" pattern="0.00" maxFractionDigits="2"/></span><br>
					<span class="newPrice">￥<fmt:formatNumber type="number" value="${products[i.count-1][j.count-1].promotePrice}" pattern="0.00" maxFractionDigits="2"/></span>
				</td>
				<td style="border-right:1px solid #ececec"><span>${orderItems[i.count-1][j.count-1].number}</span></td>
				<td style="border-right:1px solid #ececec">
					<div style="color:#3c3c3c;font-size:14px;font-weight:bold;">￥<fmt:formatNumber type="number" value="${products[i.count-1][j.count-1].promotePrice * orderItems[i.count-1][j.count-1].number}" pattern="0.00" maxFractionDigits="2"/></div>
					<div style="color:#6c6c6c;">(含运费:￥0.00)</div>
				</td>
				<td><button class="operation">${order.status}</button></td>
			</tr>
			</c:forEach>
			
		</table>
	</div>
	</c:forEach>
	</div>
	<div style="height:200px;"></div>
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
			this.href = "${pageContext.request.contextPath}/admin/showOrder.do?start=" + beginNumber;
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

<!-- 模态框中获取到的是5个order，需要把不相关的order隐藏掉 -->
<script>
	var order = document.getElementsByClassName("order");
	var viewDetails = document.getElementsByClassName("viewDetails");
	for(var i = 0;i < viewDetails.length;i++){
		viewDetails[i].onclick = function(o){
			return function(){
				for(var j = 0;j < order.length;j++){
					order[j].style.display = "none";
				}
				order[o].style.display = "block";
				return false;
			}
		}(i);
	}
</script>

<!-- 设置不同状态的样式 -->
<script>
var order = document.getElementsByClassName("order");
var operation = document.getElementsByClassName("operation");
for(var i = 0;i < operation.length;i++){
	if(operation[i].innerText == "待付款"){
		operation[i].style.background = "#66b6ff";
		operation[i].style.borderRadius = "2px";
		operation[i].style.color = "white";
		operation[i].style.fontWeight = "blod";
		operation[i].style.padding = "6px 12px";
		operation[i].style.borderWidth = "0px";
	}
	if(operation[i].innerText == "已付款"){
		operation[i].innerText == "待发货"
		operation[i].style.background = "#66b6ff";
		operation[i].style.borderRadius = "2px";
		operation[i].style.color = "white";
		operation[i].style.fontWeight = "blod";
		operation[i].style.padding = "6px 12px";
		operation[i].style.borderWidth = "0px";
	}
	if(operation[i].innerText == "待收货"){
		operation[i].style.background = "#66b6ff";
		operation[i].style.borderRadius = "2px";
		operation[i].style.color = "white";
		operation[i].style.fontWeight = "blod";
		operation[i].style.padding = "6px 12px";
		operation[i].style.borderWidth = "0px";
	}
	if(operation[i].innerText == "待评价"){
		operation[i].style.border = "1px solid #dcdcdc";
		operation[i].style.background = "#fff";
		operation[i].style.borderRadius = "2px";
		operation[i].style.fontWeight = "bold";
		operation[i].style.padding = "6px 12px";
	}
	if(operation[i].innerText == "已评价"){
		operation[i].style.background = "gray";
		operation[i].style.borderRadius = "2px";
		operation[i].style.color = "white";
		operation[i].style.fontWeight = "blod";
		operation[i].style.padding = "6px 12px";
		operation[i].style.borderWidth = "0px";
	}
	if(operation[i].innerText == "已删除"){
		operation[i].style.background = "gray";
		operation[i].style.borderRadius = "2px";
		operation[i].style.color = "white";
		operation[i].style.fontWeight = "blod";
		operation[i].style.padding = "6px 12px";
		operation[i].style.borderWidth = "0px";
	}
}
</script>

<!-- 隐藏掉不能发货订单中的发货 -->
<script>
	var deliverGoods = document.getElementsByClassName("deliverGoods");
	var tableOrderStatus = document.getElementsByClassName("tableOrderStatus");
	for(var i = 0;i < tableOrderStatus.length;i++){
		if(tableOrderStatus[i].innerText != "已付款"){
			deliverGoods[i].style.display = "none";
		}
	}
</script>

<!-- 点击发货的提示信息 -->
<script>
	var message = "${param.message}";
	if(message != ""){
		alert("订单Id：" + message + "已完成发货");
	}
</script>

</html>