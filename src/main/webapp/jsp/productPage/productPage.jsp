<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>${product.name}</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/navigation.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/search.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/productPage/productPage.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/productPage/motaikuang.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerOne.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerTwo.css">
</head>
<body>

	<jsp:include page="/jsp/publicPage/navigation.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/search.jsp"></jsp:include>
	
	<!-- 设置令牌值，防止刷新页面导致表单重复提交 -->
	<c:set var="session_uuid" value="uuid" scope="session"></c:set>

	<div id="background">
		<div id="left">
			<div id="picture">
				<img src="${product.fiveImages[0].bigImageUri}" id="img">
			</div>
			<div id="pictures">
				<c:forEach items="${product.fiveImages}" var="fiveImage">
					<span><img src="${fiveImage.littleImageUri}" class="leftPicture"></span>
				</c:forEach>
				
			</div>
		</div>
	
		<form id="form">
		<input type="hidden" value="${product.id}" name="productId">
		<!-- 用于与session的uuid比较，令牌值 -->
		<input type="hidden" name="request_uuid" value="uuid"/>
		<div id="right">
			<p id="one">${product.name}</p>
			<p id="two">${product.subtitle}</p>
			<div id="green">
				<span id="juhuasuan">聚划算</span>此商品即将参加聚划算,<span id="time">1天19小时</span>后开始
			</div>
			<div id="gray">
				<img src="${pageContext.request.contextPath}/image/productPage/gouwujuan.png"> <span
					id="three">全天猫实物商品通用</span><br> <span id="four">价格</span> <span
					id="five"><span id="deletedPrice">
<fmt:formatNumber type="number" value="${product.orignalPrice}" pattern="0.00" maxFractionDigits="2"/></span></span><br> <span
					id="six">促销价</span> <span id="seven">
<fmt:formatNumber type="number" value="${product.promotePrice}" pattern="0.00" maxFractionDigits="2"/></span>
			</div>

			<div id="div-a">
				<div class="div-b">
					销量<span class="span-c">${product.saleCount}</span>
				</div>
				<div class="div-b">
					累计评价<span class="span-c">${total}</span>
				</div>
			</div>
			<!-- 这里分写三个div，定义不同的高度使中间的那条实线边显示出来 -->

			<div id="eight">
				<div id="num-btn">
					<span>数量</span> <input type="text" placeholder="1" id="inputnum" onfocus="this.placeholder=''" onblur="this.placeholder='1'" name="number">
				</div>
				<div id="button">
					<a href=""> <span id="increase"> <img
							src="${pageContext.request.contextPath}/image/productPage/increase.png">
					</span>
					</a> <a href=""> <span id="decrease"> <img
							src="${pageContext.request.contextPath}/image/productPage/decrease.png">
					</span>
					</a>
				</div>
				<span id="stock">件 库存<span id="stockNumber">${product.stock}</span>件</span>
			</div>

			<div id="night">
				<span>服务承诺</span> <a href="">正品保证</a> <a href="">极速退款</a> <a href="">赠运费险</a>
				<a href="">七天无理由退换</a><br>
				<button id="purchase" data-toggle="modal" data-target="#myModal" type="button">立即购买</button>
				<button id="cart" data-toggle="modal" data-target="#myModal" type="button">
					<span class="glyphicon glyphicon-shopping-cart"></span>加入购物车
				</button>
			</div>
		</div>
		</form>
		<div style="clear: both;"></div>
		<!-- 这个clear:both能使下面的div不会往上移。 -->
		<!-- 这里使右边部分 -->

		<div id="commodityDetails">
			<div id="selectedBar">
				<a href=""><span id="goods">商品详情</span></a> <a href=""><span
					id="comment">累计评价<span style="color: blue">${total}</span></span></a>
				<div id="topBorder-first"></div>
				<div id="triangle-first"></div>
				<div id="topBorder-second"></div>
				<div id="triangle-second"></div>
			</div>
		</div>
		<div id="productParameters">
			<table align="center">
				<tr>
					<td><span style="font-size:20px;">产品参数：</span></td>
				</tr>
				<tr>
					<c:forEach items="${properties}" var="property" begin="0" end="2" varStatus="status">
						<td>${property.name}：${propertyValues[status.count-1+0].value}</td>
					</c:forEach>
				</tr>
				<tr>
					<c:forEach items="${properties}" var="property" begin="3" end="5" varStatus="status">
						<td>${property.name}：${propertyValues[status.count-1+3].value}</td>
					</c:forEach>
				</tr>
				<tr>
					<c:forEach items="${properties}" var="property" begin="6" end="8" varStatus="status">
						<td>${property.name}：${propertyValues[status.count-1+6].value}</td>
					</c:forEach>
				</tr>
				<tr>
					<c:forEach items="${properties}" var="property" begin="9" end="11" varStatus="status">
						<td>${property.name}：${propertyValues[status.count-1+9].value}</td>
					</c:forEach>
				</tr>
				<tr>
					<c:forEach items="${properties}" var="property" begin="12" end="14" varStatus="status">
						<td>${property.name}：${propertyValues[status.count-1+12].value}</td>
					</c:forEach>
				</tr>
				<tr>
					<c:forEach items="${properties}" var="property" begin="15" end="17" varStatus="status">
						<td>${property.name}：${propertyValues[status.count-1+12].value}</td>
					</c:forEach>
				</tr>
				<tr>
					<c:forEach items="${properties}" var="property" begin="18" end="20" varStatus="status">
						<td>${property.name}：${propertyValues[status.count-1+12].value}</td>
					</c:forEach>
				</tr>
				<tr>
					<c:forEach items="${properties}" var="property" begin="21" end="23" varStatus="status">
						<td>${property.name}：${propertyValues[status.count-1+12].value}</td>
					</c:forEach>
				</tr>
				<tr>
					<c:forEach items="${properties}" var="property" begin="24" end="26" varStatus="status">
						<td>${property.name}：${propertyValues[status.count-1+12].value}</td>
					</c:forEach>
				</tr>
				
			</table>
		</div>
		<div id="bottom-img">
			<c:forEach items="${product.sixImages}" var="sixImage">
				<img src="${sixImage.imageUri}">
			</c:forEach>
		</div>
		<!-- 这里使商品详情的页面 -->

		<div id="evaluation">
			<c:forEach items="${reviews}" var="review" varStatus="status">
				<div class="comments">
				<p>${review.content}</p>
				<span class="comments-left"><fmt:formatDate value="${review.createDate}" pattern="yyyy-MM-dd HH:mm:ss" /></span> <span
					class="comments-right">${review.user.anonymousName}<span style="color:#cccccc;">
						(匿名)</span></span>
			</div>
			</c:forEach>	
		</div>
		</div>
		<!-- 这里是评论板块 -->
	
<!-- 这是模态框 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog">
    	<div class="modal-body">
            <div id="logIn">
            	<div id="warning">账号密码错误</div>
      			<div id="title">账号登陆</div>
      			<div id="accountNumber">
          		<span id="accountNumberGlyphicon">
          			<span class="glyphicon glyphicon-user"></span>
       			 </span>
       			 <input type="text" placeholder="手机/会员名/邮箱" class="inputJS" id="namberJS">
      			</div>
      		<div id="password">
       			<span id="passwordGlyphicon">
          			<span class="glyphicon glyphicon-lock"></span>
        		</span>
        		<input type="text" placeholder="密码" class="inputJS" id="passwordJS">
      		</div>
      		<div id="tis">
        		<div id="leftFlow"><a href="${pageContext.request.contextPath}/jsp/anotherPage/findPassword.jsp">忘记登陆密码</a></div>
        		<div id="rightFlow"><a href="${pageContext.request.contextPath}/jsp/anotherPage/register.jsp">免费注册</a></div>
      		</div>
      		<div style="clear:both"></div>
      		<button class="btn btn-block redButton" id="moTaiLogin">登陆</button>
    	</div>
	</div>
    </div>
</div>
	
	<jsp:include page="/jsp/publicPage/footerOne.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/footerTwo.jsp"></jsp:include>

	<script src="${pageContext.request.contextPath}/js/productPage/productPage.js"></script>
	<script src="${pageContext.request.contextPath}/js/productPage/motaikuang.js"></script>
	<script src="${pageContext.request.contextPath}/js/publicPage/footerOne.js"></script>
	<script src="${pageContext.request.contextPath}/js/publicPage/footerTwo.js"></script>

<!-- 鼠标放在5个小图片上面就显示大图片 -->	
<script>
	leftPicture[0].onmouseover = function(){
		img.setAttribute("src","${product.fiveImages[0].bigImageUri}");
	}
	leftPicture[1].onmouseover = function(){
		img.setAttribute("src","${product.fiveImages[1].bigImageUri}");
	}
	leftPicture[2].onmouseover = function(){
		img.setAttribute("src","${product.fiveImages[2].bigImageUri}");
	}
	leftPicture[3].onmouseover = function(){
		img.setAttribute("src","${product.fiveImages[3].bigImageUri}");
	}
	leftPicture[4].onmouseover = function(){
		img.setAttribute("src","${product.fiveImages[4].bigImageUri}");
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
	
<!-- 实时监控inputnum的数字 -->
<script>
	var inputnum = document.getElementById("inputnum");	
	if("oninput" in inputnum){
		//支持谷歌等浏览器
		 inputnum.addEventListener("input",getWord,false);
	}else{
		//支持IE浏览器
	    inputnum.onpropertychange = getWord;
	}
	function getWord(){
		if(inputnum.value > ${product.stock}) {
			inputnum.value = ${product.stock};
	    }
		if(inputnum.value < 1) {
			inputnum.value = 1;
	    } 
	}
</script>

<!-- 点击立即购买和加入购物车进行对应的事件处理 -->
<script>
	var userName = "${sessionScope.user.name}";
	var purchase =  document.getElementById("purchase");
	var cart = document.getElementById("cart");
	var myModal = document.getElementById("myModal");
	var inputnum = document.getElementById("inputnum");
		
	//如果登录了就把模态窗体删除,并把立即购买和加入购物车的action指定
	if(userName != ""){
		myModal.remove();
		purchase.type = "submit";
		cart.type = "submit";
		purchase.onclick = function(){
			form.method = "post";
			form.action = "${pageContext.request.contextPath}/orderItem/addOrderItem.do";
		}
		cart.onclick = function(){
				
			<!-- 加入购物车 -->
			var ajax;
	        try {
	        	ajax = new XMLHttpRequest();
	       	} catch (e) {
	        	ajax = new ActiveXObject("microsoft.xmlhttp");
	        }
	        ajax.open("post","${pageContext.request.contextPath}/orderItem/addToShoppingCart.do", true);
	            
	        ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			ajax.send('number=' + inputnum.value + '&productId=' + ${product.id});
			ajax.onreadystatechange = function () {
	        if (ajax.readyState == 4 && ajax.status == 200) {
	        	var message = ajax.responseText;
	            if(message == "AddToShoppingCartSuccessful"){
	            	alert("加入购物车成功");
	            }
	       	}
		}
	}
}
</script>
	
<!-- 模态框登录 -->
<script>
	var namberJSLogin = document.getElementById("namberJS");
	var passwordJSLogin = document.getElementById("passwordJS");
	var moTaiLogin =  document.getElementById("moTaiLogin");
	moTaiLogin.onclick = function(){
		var ajax;
        	try {
                ajax = new XMLHttpRequest();
            } catch (e) {
                ajax = new ActiveXObject("microsoft.xmlhttp");
            }
            ajax.open("post","${pageContext.request.contextPath}/user/moTaiLogin.do", true);
            ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			ajax.send('name=' + namberJSLogin.value + '&password=' + passwordJSLogin.value + '&productId=' + ${product.id});
			ajax.onreadystatechange = function () {
                if (ajax.readyState == 4 && ajax.status == 200) {
                    var message = ajax.responseText;
                    if(message == "error"){
                    	var warning = document.getElementById("warning");
         				warning.style.visibility = "visible";
                	}else{
                	window.location.reload();
            	}
        	}
		}
	}
</script>
	
	
	
</body>
</html>