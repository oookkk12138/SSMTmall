<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>我的订单</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/navigation.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/search.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/anotherPage/myOrder.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerOne.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerTwo.css">
</head>
<body>

	<jsp:include page="/jsp/publicPage/navigation.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/search.jsp"></jsp:include>

<div id="background">
	<div id="head">
		<a href=""><span id="allOrders">所有订单</span></a><a href=""><span id="pendingPayment">待付款</span></a><a href=""><span id="pendingShip">待发货</span></a><a href=""><span id="pendingReceive">待收货</span></a><a href=""><span id="pendingAssess">待评价</span></a>
		<!-- 注意:这里的a标签不按回车是因为内联元素是自带间隙(边距)的
		把元素之间的空白字符去掉就可以实现消除内联元素之间的间隙 -->
	</div>
	<div id="body">
		<table>
			<tr>
				<td width="60%">宝贝</td>
				<td width="10%">单价</td>
				<td width="10%">数量</td>
				<td width="10%">实付款</td>
				<td width="10%">交易操作</td>
			</tr>
		</table>
	</div>

	<div id="orders">
	<c:forEach items="${orderList}" var="order" varStatus="i">
	<div class="order">
		<table>
			<tr class="first">
				<td width="15%"><fmt:formatDate value="${order.createDate}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
				<td width="45%">订单号:${order.orderCode}</td>
				<td width="10%"><img src="${pageContext.request.contextPath}/image/anotherPage/orderItemTmall.png">天猫商城</td>
				<td width="10%"></td>
				<td width="10%"><a href="" onclick="alert('就不和你联系');"><div class="orderItemWangWangGif"></div></a></td>
				<td width=10%><a class="deleteOrder"><span class="orderListItemDelete glyphicon glyphicon-trash"></span></a></td>
			</tr>
			
			<c:forEach items="${orderItems[i.count-1]}" var="orderItem" varStatus="j">
			<tr class="second">
				<td><img src="${products[i.count-1][j.count-1].fiveImages[0].bigImageUri}" width="80px" height="80px"></td>
				<td>
					<div>
						<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=${products[i.count-1][j.count-1].id}">${products[i.count-1][j.count-1].name}
						</a><br><br>
						<img src="${pageContext.request.contextPath}/image/anotherPage/creditcard.png" title="支持信用卡支付">
						<img src="${pageContext.request.contextPath}/image/anotherPage/7day.png" title="消费者保障服务,承诺7天退货">
						<img src="${pageContext.request.contextPath}/image/anotherPage/promise.png" title="消费者保障服务,承诺如实描述">
					</div>
				</td>
				<td style="border-right:1px solid #ececec">
					<span class="oldPrice">￥<fmt:formatNumber type="number" value="${products[i.count-1][j.count-1].orignalPrice}" pattern="0.00" maxFractionDigits="2"/></span>
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
</div>

	<jsp:include page="/jsp/publicPage/footerOne.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/footerTwo.jsp"></jsp:include>

	<script src="${pageContext.request.contextPath}/js/anotherPage/myOrder.js"></script>
	
	<script src="${pageContext.request.contextPath}/js/publicPage/footerOne.js"></script>
	<script src="${pageContext.request.contextPath}/js/publicPage/footerTwo.js"></script>
	
<!-- 修改订单对应的状态 -->
<script>
	//把orderList的id保存到js中(数组长度与operation的长度一致)
	var orderIds = new Array(0);
	<c:forEach items="${orderList}" var="order" varStatus="i">
		<c:forEach items="${orderItems[i.count-1]}" var="orderItem" varStatus="j">
			orderIds.push(${order.id});
		</c:forEach>
	</c:forEach>

	//把productId保存到js中
	var productIds = new Array(0);
	<c:forEach items="${orderList}" var="order" varStatus="i">
		<c:forEach items="${orderItems[i.count-1]}" var="orderItem" varStatus="j">
			productIds.push(${products[i.count-1][j.count-1].id});
		</c:forEach>
	</c:forEach>
	
	var order = document.getElementsByClassName("order");
	var operation = document.getElementsByClassName("operation");
	for(var i = 0;i < operation.length;i++){
		if(operation[i].innerText == "待付款"){
			operation[i].innerText = "付款";
			operation[i].style.background = "#66b6ff";
			operation[i].style.borderRadius = "2px";
			operation[i].style.color = "white";
			operation[i].style.fontWeight = "blod";
			operation[i].style.padding = "6px 12px";
			operation[i].style.borderWidth = "0px";
			operation[i].onmouseover = function(){
				this.style.background = "#118ADB";
			}
			operation[i].onmouseout = function(){
				this.style.background = "#66b6ff";
			}
			operation[i].onclick = function(o){
				return function(){
					window.location.href="${pageContext.request.contextPath}/order/myOrderPayment.do?orderId=" + orderIds[o];
				}
			}(i);
		}
		if(operation[i].innerText == "已付款"){
			operation[i].innerText = "催卖家发货";
			operation[i].style.background = "#66b6ff";
			operation[i].style.borderRadius = "2px";
			operation[i].style.color = "white";
			operation[i].style.fontWeight = "blod";
			operation[i].style.padding = "6px 12px";
			operation[i].style.borderWidth = "0px";
			operation[i].onmouseover = function(){
				this.style.background = "#118ADB";
			}
			operation[i].onmouseout = function(){
				this.style.background = "#66b6ff";
			}
			operation[i].onclick = function(o){
				return function(){
					alert("卖家已秒发,点击待收货查看");
					window.location.href="${pageContext.request.contextPath}/order/myOrderAlreadyPayment.do?orderId=" + orderIds[o];
				}
			}(i);
		}
		if(operation[i].innerText == "待收货"){
			operation[i].innerText = "确认收货";
			operation[i].style.background = "#66b6ff";
			operation[i].style.borderRadius = "2px";
			operation[i].style.color = "white";
			operation[i].style.fontWeight = "blod";
			operation[i].style.padding = "6px 12px";
			operation[i].style.borderWidth = "0px";
			operation[i].onmouseover = function(){
				this.style.background = "#118ADB";
			}
			operation[i].onmouseout = function(){
				this.style.background = "#66b6ff";
			}
			operation[i].onclick = function(o){
				return function(){
					window.location.href="${pageContext.request.contextPath}/order/myOrderConfirmPay.do?orderId=" + orderIds[o];
				}
			}(i);
		}
		if(operation[i].innerText == "待评价"){
			operation[i].innerText = "评价";
			operation[i].style.border = "1px solid #dcdcdc";
			operation[i].style.background = "#fff";
			operation[i].style.borderRadius = "2px";
			operation[i].style.fontWeight = "bold";
			operation[i].style.padding = "6px 12px";
			operation[i].onmouseover = function(){
				this.style.borderColor = "#c40000";
				this.style.color = "#c40000";
			}
			operation[i].onmouseout = function(){
				this.style.borderColor = "#dcdcdc";
				this.style.color = "black";
			}
			operation[i].onclick = function(o){
				return function(){
					window.location.href="${pageContext.request.contextPath}/order/myOrderReview.do?productId=" + productIds[o] + "&orderId=" + orderIds[o];
				}
			}(i);
		}
		if(operation[i].innerText == "已评价"){
			operation[i].innerText = "已评价";
			operation[i].style.background = "gray";
			operation[i].style.borderRadius = "2px";
			operation[i].style.color = "white";
			operation[i].style.fontWeight = "blod";
			operation[i].style.padding = "6px 12px";
			operation[i].style.borderWidth = "0px";
		}
	}
	
	var deleteOrder = document.getElementsByClassName("deleteOrder");
	//把orderList的id保存到js中(数组长度与orderList的长度一致)
	var deleteOrderIds = new Array(0);
	<c:forEach items="${orderList}" var="order">
		deleteOrderIds.push(${order.id});
	</c:forEach>
	
	for(var i = 0;i < deleteOrderIds.length;i++){
		deleteOrder[i].onclick = function(o){
			return function(){
				var HelloWorld = confirm("确定删除此商品");
				if(HelloWorld){
					var ajax;
		             try {
		                 ajax = new XMLHttpRequest();
		             } catch (e) {
		                 ajax = new ActiveXObject("microsoft.xmlhttp");
		             }
		             ajax.open("post","${pageContext.request.contextPath}/order/deleteOrder.do", true);
		             ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
					 ajax.send('orderId=' + deleteOrderIds[o]);
					 ajax.onreadystatechange = function () {
		                 if (ajax.readyState == 4 && ajax.status == 200) {
		                     var message = ajax.responseText;
		                     if(message == "deleteSuccessful"){
		                    	 order[o].style.display = "none";
		                     }else{
		                    	 window.location.reload();
		                     }
		                 }
					 }
				}
			}
		}(i);
	}
</script>
	
<!-- 用于判断是否登录了，修改对应位置的字体和样式 -->
<script>
	var userName = "${sessionScope.user.name}";
	var orderItemNumber = "${sessionScope.orderItemNumber}";
	var login = document.getElementById("login");
	var register = document.getElementById("register");
	var logout = document.getElementById("logout");
	var loginA = document.getElementById("loginA");
	var shoppingCartStrong = document.getElementById("shoppingCartStrong");
		
	if(userName != ""){
		login.innerText = userName;
		shoppingCartStrong.innerText = orderItemNumber;
		shoppingCartStrong.style.color = "#c40000";
		login.style.color = "#c40000";
		register.innerText = "退出";
		loginA.removeAttribute("href");
		loginA.style.cursor = "default";
		logout.href = "${pageContext.request.contextPath}/user/logout.do";
	}
		
	logout.onclick = function(){
		if(login.innerText == ""){
			login.innerText = "请登录";
			register.innerText = "免费注册";
			logout.href = "${pageContext.request.contextPath}/jsp/anotherPage/register.jsp";
		}
	}
</script>
	
	
</body>
</html>