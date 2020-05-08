<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>找回密码</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/anotherPage/findPassword.css">
</head>
<body>
	<div id="background">
		<img src="${pageContext.request.contextPath}/image/anotherPage/DragonBall.jpg" id="DragonBall" data-toggle="modal" data-target="#myModal">
	</div>

	<!-- 这是模态框 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog">
    	<div class="modal-body">
            <div id="logIn">
            	<div id="warning">账号不存在</div>
      			<div id="title">请输入账号进行查询</div>
      			<div id="accountNumber">
          		<span id="accountNumberGlyphicon">
          			<span class="glyphicon glyphicon-user"></span>
       			 </span>
       			 <input type="text" placeholder="手机/会员名/邮箱" class="inputJS" id="namberJS" onfocus="this.placeholder=''" onblur="this.placeholder='手机/会员名/邮箱'">
      			</div>
      		<div id="password">
       			<span id="passwordGlyphicon">
          			<span class="glyphicon glyphicon-lock"></span>
        		</span>
        		<input type="text" placeholder="密码" class="inputJS" id="passwordJS">
      		</div>
      		<div style="clear:both"></div>
      		<button class="btn btn-block redButton" id="findPassword">查询密码</button>
      		<button class="btn btn-block blueButton" id="index">返回主页</button>
      		<button class="btn btn-block greenButton" id="login">返回登录</button>
    	</div>
	</div>
    </div>
</div>
</body>

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/anotherPage/findPassword.js"></script>

</html>
