<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>欢迎来到天猫</title>
<script src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/navigation.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/search.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index/index2.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index/index3.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerOne.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/publicPage/footerTwo.css">
</head>
<body>
	
	<jsp:include page="/jsp/publicPage/navigation.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/search.jsp"></jsp:include>
	
	<img src="${pageContext.request.contextPath}/image/index/catear.png" id="catear">
	<div id="headbar">
		<div id="left">
			<span class="glyphicon glyphicon-th-list"></span> <span>商品分类</span>
		</div>
		<div id="right">
			<span class="kk"><a href=""><img
					src="${pageContext.request.contextPath}/image/index/chaoshi.png"></a></span> <span class="kk"><a
				href=""><img src="${pageContext.request.contextPath}/image/index/guoji.png"></a></span> <span class="kk"><a
				href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=1">平板电视</a></span> <span
				class="kk"><a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=2">马桶</a></span>
			<span class="kk"><a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=3">沙发</a></span>
			<span class="kk"><a
				href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=4">电热水器</a></span>
		</div>
	</div>
	<!-- 这里是商品导航栏 -->

	<div id="picture-background">
		<div id="picture" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#picture" data-slide-to="0" class="active"></li>
				<li data-target="#picture" data-slide-to="1"></li>
				<li data-target="#picture" data-slide-to="2"></li>
				<li data-target="#picture" data-slide-to="3"></li>
			</ol>

			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="${pageContext.request.contextPath}/image/index/1.jpg">
				</div>
				<div class="item">
					<img src="${pageContext.request.contextPath}/image/index/2.jpg">
				</div>
				<div class="item">
					<img src="${pageContext.request.contextPath}/image/index/3.jpg">
				</div>
				<div class="item">
					<img src="${pageContext.request.contextPath}/image/index/4.jpg">
				</div>
			</div>
		</div>
	</div>
	<!-- 这里是轮播的图片 -->

	<div id="list">
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=1">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>平板电视</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=2">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>马桶</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=3">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>沙发</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=4">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>电热水器</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=5">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>平衡车</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=6">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>扫地机器人</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=7">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>原汁机</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=8">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>冰箱</span>
			</div>
		</a> <a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=9">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>空调</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=10">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>女表</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=11">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>男表</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=12">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>男士手拿包</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=13">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>男士西服</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=14">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>时尚男鞋</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=15">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>品牌女装</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=16">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>太阳镜</span>
			</div>
		</a> 
		<a href="${pageContext.request.contextPath}/category/showProducts.do?categoryId=17">
			<div class="list-left">
				<span class="glyphicon glyphicon-link"></span> <span>安全座椅</span>
			</div>
		</a>
	</div>
	<!-- 这里是左边的列表 -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=1">屏大影院</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=2">周末</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=3">新品特惠</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=4">32吋电视机</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=5">智能网络</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=6" style="color: rgb(135, 206, 250);">USB高清解</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=7">芒果TV在线</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=8">抢购价</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=9">USB解码</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=10">32英吋</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=11">10核</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=19">TCL品牌日</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=12">不要赠品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=13">新品上市</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=14">4K硬屏</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=15">领100元券</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=16">智能高清</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=17">8月，酷暑</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=18" style="color: rgb(135, 206, 250);">8月大促</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=19">天猫定制</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=20">智能操作系统</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=1">金色外观</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=2">三星屏幕</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=3"
				style="color: rgb(135, 206, 250);">客厅爆款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=4"
				style="color: rgb(135, 206, 250);">八核配置</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=5">限时特惠</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=6" style="color: rgb(135, 206, 250);">限时特惠</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=7">热销爆款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=8">4K全高清</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=9" style="color: rgb(135, 206, 250);">六核智能</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=10">14核4K</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=11">YUNOS</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=12">YUNOS</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=11">64位处理器</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=13" style="color: rgb(135, 206, 250);">YUNOS</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=14">微信电视</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=15"
				style="color: rgb(135, 206, 250);">4k超清</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=11">64位真4K</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=16">10核机芯</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=17">V字黑釉底座</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=18" style="color: rgb(135, 206, 250);">4K超清</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=19">64位14核</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=20">海量影视</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=1">人气爆款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=2">限时特惠</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=3" style="color: rgb(135, 206, 250);">真4K屏</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=4">65吋巨屏</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=5">4K超清视界</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=6" style="color: rgb(135, 206, 250);">限时特惠</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=7" style="color: rgb(135, 206, 250);">55寸旗舰</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=8">4K机皇</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=9">曲面机皇</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=10">轻薄4K</a></span>
		</div>
	</div>
	<!-- 这里是第一个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=21">高性价比</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=22">纳米自洁柚</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=23">盖板易拆</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=24">领券更优惠</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=25">全国联保</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=26">咨询大惊喜</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=27">咨询大惊喜</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=28">全自动感应</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=29">即热式功能</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=30">智能护理</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=31">官方正品</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=32">高效节水</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=33">立减300</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=34">官方正品</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=35">3秒速冲</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=36">送角阀软管</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=37">送角阀软管</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=38">12大中心仓</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=39">12大中心仓</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=40">蹲坐两用</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=21" style="color: rgb(135, 206, 250);">领券减50</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=22">全国联保</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=23">德国品牌</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=24">加购收藏</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=25">加长型缸体</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=26"
				style="color: rgb(135, 206, 250);">喷射虹吸</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=27"
				style="color: rgb(135, 206, 250);">家装狂欢节</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=28">AB1287</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=29">领券再减</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=30">千城入户</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=31">强劲冲力</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=32">包安装</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=33" style="color: rgb(135, 206, 250);">土豪直接付款</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=34">咨询在线客服</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=35">赠送原厂配件</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=36">新聚汇</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=37">吸力哥</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=38" style="color: rgb(135, 206, 250);">覆盖区域内</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=39">指定1800</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=40"
				style="color: rgb(135, 206, 250);">晒图返10元</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=21">1300城免</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=22">久坐舒适</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=23">晒图送20元</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=24"
				style="color: rgb(135, 206, 250);">摩普智能马桶</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=25">送空调扇</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=26">咨询大惊喜</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=27">节水小管家</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=28">高端大气</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=29" style="color: rgb(135, 206, 250);">科勒授权</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=30">超旋风系列</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=21">限时升级</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=31" style="color: rgb(135, 206, 250);">立减500</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=32">赠送角阀软管</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=33">法恩莎正品</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=34">12大中心仓</a></span>
		</div>
	</div>
	<!-- 这里是第二个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=41">热卖推荐</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=42">高档户型客厅</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=43">16CM坐垫</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=44">匠心独运</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=45">大小户型沙发</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=46" style="color: rgb(135, 206, 250);">USB高清解</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=47">8.23预售</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=48">热销爆款</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=49">高档进口牛皮</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=50">三位可躺</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=51">北美进口橡木</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=52">全香樟实木</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=53">厂家直销</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=54">可拆洗</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=55">4级抗污</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=56">多功能</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=57">全实木雕刻</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=58">3D玛雅绒</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=59">北美橡木</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=60" style="color: rgb(135, 206, 250);">防水防污</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=41">都市转角户型</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=42">多功能扶手</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=43">彼爱专利产品</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=44">国际设计师</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=45"
				style="color: rgb(135, 206, 250);">进口头层牛皮</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=46" style="color: rgb(135, 206, 250);">经典爆款</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=47">可拆洗设计</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=48">优质棉麻面料</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=49" style="color: rgb(135, 206, 250);">高档超柔绒布</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=50">进口橡木框架</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=51">欧洲白蜡木</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=52" style="color: rgb(135, 206, 250);">北美黑胡桃</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=53">质保3年</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=54" style="color: rgb(135, 206, 250);">8.29零点</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=55">头层牛皮</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=56"
				style="color: rgb(135, 206, 250);">实木雕花</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=57">全拆洗</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=58">大师设计</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=59">20-22号</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=60">北美黑胡桃</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=41">泰国进口实木</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=42">8.22聚价</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=43" style="color: rgb(135, 206, 250);">品质保证</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=44">优质绒布</a></span>
		</div>
	</div>
	<!-- 这里是第三个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=61">机控遥控</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=62">搪瓷超强内胆</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=63">阿里智能</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=64">3D速热</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=65">热水器狂欢</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=66">3D动态加热</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=67">金圭经典</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=68">一级能效</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=69" style="color: rgb(135, 206, 250);">三档功率可调</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=70">送双立人刀</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=71">全胆半胆加热</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=72">爆款低价购</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=73">4倍迅热增容</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=74">阿里智能</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=75">5昼夜保温</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=76">官方正品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=77">5昼夜保温</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=78">3KW速热</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=79">立减200</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=80">智能高清</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=61">全国服务热线</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=62" style="color: rgb(135, 206, 250);">8月26日</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=63">wifi智能</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=64">新品抢鲜购</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=65">新品上市</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=66">26号10点</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=67"
				style="color: rgb(135, 206, 250);">最后一天</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=68"
				style="color: rgb(135, 206, 250);">美的自营</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=69">限时48小时</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=70">准时预约</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=71">官方正品</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=72" style="color: rgb(135, 206, 250);">唱快淋漓</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=73">嗨爆8月</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=74">内胆自清洁</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=75" style="color: rgb(135, 206, 250);">8月26号</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=76">疯抢48小时</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=77">爆款预售</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=78">26号10点</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=79">双2100瓦</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=80" style="color: rgb(135, 206, 250);">全国服务热线</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=61">嗨爆8月</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=62"
				style="color: rgb(135, 206, 250);">高温抑菌</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=63">三档功率可调</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=64">全网爆款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=65">以旧换新</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=66" style="color: rgb(135, 206, 250);">8月暑促</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=67">整机8年保修</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=68">准时预约</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=69">WIFI智控</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=70">狂欢疯抢</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=71" style="color: rgb(135, 206, 250);">疯抢48小时</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=72">8年包修</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=73">每日前100</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=74" style="color: rgb(135, 206, 250);">8月26号</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=75" style="color: rgb(135, 206, 250);">每日前50</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=76">每日前100</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=77">限量抢熨烫机</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=78">品牌活动价</a></span>
		</div>
	</div>
	<!-- 这里是第四个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=81">可折叠</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=82">电动平衡</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=83">12期免息</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=84">续航持久</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=85">一年免费保修</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=86">快速充电</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=87">充气轮胎</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=88">两会品牌</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=89">速度可达25</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=90">免费试用</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=91">官方正品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=92">稳定系统</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=93">顺丰包邮</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=94">两会品牌</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=95">下单即送护具</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=96" style="color: rgb(135, 206, 250);">手机控制</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=97">更持久更安全</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=98">大人孩子可用</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=99">低碳出行</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=100"
				style="color: rgb(135, 206, 250);">官方正品</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=81" style="color: rgb(135, 206, 250);">天猫品质</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=82">厂家直销</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=83">16新款</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=84">蓝牙传感器</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=85"
				style="color: rgb(135, 206, 250);">10寸真空胎</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=86">豪华款平衡车</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=87">超长续航</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=88">爆款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=89">专利产品</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=90">工厂发货</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=91">中国人保</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=92">顺丰包邮</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=93">16年新品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=94">豪华版</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=95">16新款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=96">比米更好</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=97">电动平衡车</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=98">国际CE认证</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=99">中国人保</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=100">厂家直销</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=81">中国人保</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=82">爆品秒杀</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=83">赠送平安险</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=84">长续航</a></span>
		</div>
	</div>
	<!-- 这里是第五个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=101">拖地一体</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=102">新品上市</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=103" style="color: rgb(135, 206, 250);">仿人跪式</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=104">非常夏日</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=105">纯铜电机</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=106">保修3年</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=107">经典爆款</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=108">无刷电机</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=109">人气爆款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=110">热销爆款</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=111">预定省420</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=112"
				style="color: rgb(135, 206, 250);">源自美国</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=113">5000pa</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=114">意见清扫</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=115"
				style="color: rgb(135, 206, 250);">拍下减200</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=116" style="color: rgb(135, 206, 250);">领卷减50</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=117">强劲吸力</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=118">一千帕大吸力</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=119">天猫新风尚</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=120">智能规划清扫</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=101">8/22钜惠</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=102">8月24日</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=103">预定送配件</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=104">新品倾城</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=105">前七百名</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=106">预定送厨具</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=107">规划路径</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=108"
				style="color: rgb(135, 206, 250);">真正爆款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=109"
				style="color: rgb(135, 206, 250);">终身保修</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=110"
				style="color: rgb(135, 206, 250);">官方正品</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=111">爆款升级</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=112">咨询限量送</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=113">淘金币开抢</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=114"
				style="color: rgb(135, 206, 250);">阿里智能</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=115">iAdapt</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=116">仿人跪式</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=117">预定享特权</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=118">仿生学侦测</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=119">超薄静音</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=120">陀螺仪导航</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=101">吸扫拖同步</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=102">真省320</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=103">扫吸檫一体</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=104">8/29</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=105" style="color: rgb(135, 206, 250);">领卷立减50</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=106">千帕吸力</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=107">预定送陶瓷刀</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=108">机器人节</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=109" style="color: rgb(135, 206, 250);">千帕吸力</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=110">钟汉良推荐</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=111">咨询领卷</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=112">WiFi智控</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=113">数码无刷电机</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=114" style="color: rgb(135, 206, 250);">爆款升级</a></span>
		</div>
	</div>
	<!-- 这里是第六个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=121">大功率慢榨</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=122">新款上市</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=123">整投整榨</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=124">低静音</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=125">8厘米大口径</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=126">95%果汁率</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=127">新品上市</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=128">大口径免切</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=129">水果整个榨</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=130">方便实用</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=131">卧式螺旋</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=132">限时优惠</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=133">12分期</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=134">打开果蔬细胞</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=135">大口径免切</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=136" style="color: rgb(135, 206, 250);">立式原汁机</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=137" style="color: rgb(135, 206, 250);">【送】电烤箱</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=138">苏泊尔正品</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=139" style="color: rgb(135, 206, 250);">多功能原汁机</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=140">婴儿辅食</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=121">低至499</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=122">每天一杯</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=123">直降200</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=124">送20元</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=125">大口径</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=126">酵素原汁机</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=127">儿童零食机</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=128" style="color: rgb(135, 206, 250);">天猫定制</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=129">每天前10名</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=130">送豆腐盒</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=131">螺旋式挤压技术</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=132">96mm大口</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=133" style="color: rgb(135, 206, 250);">有口皆碑</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=134">飞利浦榨汁机</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=135">螺旋榨压技术</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=136">大扭力电机</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=137">倍汁多</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=138">限时聚汇</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=139">三年保修</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=140">小蛮腰</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=121">韩国原装进口</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=122"
				style="color: rgb(135, 206, 250);">美国品牌</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=123">全新升级</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=124">店长推荐</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=125">惠人三代</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=126">前20名</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=127"
				style="color: rgb(135, 206, 250);">韩国原装进口</a></span>
		</div>
	</div>
	<!-- 这里是第七个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=141">手机智能控制</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=142">风冷无霜</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=143">阿里云智能</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=144"
				style="color: rgb(135, 206, 250);">家用冰箱</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=145"
				style="color: rgb(135, 206, 250);">高端变频</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=146">APP智能</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=147">阿里云智能</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=148">天猫定制</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=149">阿里云系统</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=150">法式多门智能</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=151" style="color: rgb(135, 206, 250);">阿里云智能</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=152" style="color: rgb(135, 206, 250);">储蓄卡付款</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=153">咨询客服</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=154">淘金币来袭</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=155">每天前30名</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=156">分期购</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=157">三门占地</a></span>
		</div>
	</div>
	<!-- 这里是第八个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=161">原装压缩机</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=162">原装变频压缩</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=163">快速冷暖</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=164">二级变频</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=165">30秒速冷</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=166">精准变频</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=167" style="color: rgb(135, 206, 250);">二级能效</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=168">新品上市</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=169">二级变频</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=170"
				style="color: rgb(135, 206, 250);">智能云控温</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=171"
				style="color: rgb(135, 206, 250);">每天前10名</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=172">智能远程操控</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=173">三期免息</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=174">海尔集团出品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=175"
				style="color: rgb(135, 206, 250);">智能无氟变频</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=176" style="color: rgb(135, 206, 250);">阿里智能</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=177" style="color: rgb(135, 206, 250);">智能控制</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=178">25日</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=179">精确控温</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=180">青春时尚</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=161">强劲动力</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=162">一级能效</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=163" style="color: rgb(135, 206, 250);">阿里智能</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=164">高效静音</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=165">wifi控制</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=166">除甲醇</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=167">智能除甲醇</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=168">节能变频</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=169">阿里智能</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=170" style="color: rgb(135, 206, 250);">二级能效</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=171">二级变频</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=172">二级能效</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=173">强劲冷暖</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=174">大1.5匹</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=175">全直流变频</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=176">强劲冷暖</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=177">智能云</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=178">双模变频</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=179">智能操控</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=180">高效压缩机</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=161" style="color: rgb(135, 206, 250);">内外双静音</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=162" style="color: rgb(135, 206, 250);">热销5万台</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=163">双模变频</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=164">快速冷暖</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=165">智能变频</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=166">咨询客服</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=167">省电静音</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=168">阿里智能</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=169"
				style="color: rgb(135, 206, 250);">稀土压缩机</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=170">节能静音</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=711">静音除湿</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=172"
				style="color: rgb(135, 206, 250);">阿里智能</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=173">阿里智能</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=174">高效静音</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=175" style="color: rgb(135, 206, 250);">wifi控制</a></span>
		</div>
	</div>
	<!-- 这里是第九个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=181">陈小春代言</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=182">今日拍下</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=183">正品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=184">热销万只</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=185">时尚之选</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=186">全自动机械表</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=187">进口机芯</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=188">送三件套豪礼</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=189" style="color: rgb(135, 206, 250);">终身保修</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=190">吊牌价</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=191"
				style="color: rgb(135, 206, 250);">奢华镶钻</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=192">气质女神款</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=193">简约奢华</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=194">赠送原装电池</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=195">高贵而神秘</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=196">真皮表带</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=197">纯钨钢</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=198">【全国联保】</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=199"
				style="color: rgb(135, 206, 250);">华少代言</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=200">镂空表盘</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=181">进口机芯</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=182"
				style="color: rgb(135, 206, 250);">时尚简约</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=183"
				style="color: rgb(135, 206, 250);">智典陶瓷女表</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=184" style="color: rgb(135, 206, 250);">品牌直营</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=185">正品保证</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=186">送备用表带</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=187" style="color: rgb(135, 206, 250);">蓝宝石玻璃</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=188">官方授权</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=189">终身保修</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=190">超清晰大数字</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=191">品牌直营</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=192">吊牌价</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=193">手链显手瘦</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=194"
				style="color: rgb(135, 206, 250);">星辰手链女式</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=195"
				style="color: rgb(135, 206, 250);">优惠卷领取</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=196">简约超薄时尚</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=197">天然贝母表盘</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=198">送真皮表带</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=199"
				style="color: rgb(135, 206, 250);">官方授权</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=200">全国联保</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=181">全新上市</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=182"
				style="color: rgb(135, 206, 250);">赠送原装电池</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=183">官方授权</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=184"
				style="color: rgb(135, 206, 250);">品牌直供</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=185">不褪色</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=186">品牌直营</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=187">展示自信优雅</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=188">官方旗舰店</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=189">情人节特惠</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=190">机芯五年保修</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=191">浪漫时尚</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=192">走时精准</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=193">女神腕表</a></span>
		</div>
	</div>
	<!-- 这里是第十个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=201">正品进口机芯</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=202">终身保修</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=203">机构质检</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=204">全国联保</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=205">简约两针</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=206">自动机械</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=207">正品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=208">正品保证</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=209">50米防水</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=210">官方正品</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=211">明星代言品牌</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=212">三眼显示</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=213">超清晰大数字</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=214">必抢好货</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=215">钨钢情侣款</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=216">牛皮表带</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=217">全球联保</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=218">拍下任一项</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=219">顺丰包邮</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=220">酷黑表盘</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=201">名仕爵品牌</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=202">官方授权</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=203">送真皮表带</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=204">全国联保</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=205">天猫正品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=206">必抢爆款</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=207">意大利牛皮</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=208">商城正品</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=209" style="color: rgb(135, 206, 250);">⭐⭐⭐⭐⭐</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=210">终身保修</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=211">深度防水</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=212">送调表器</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=213" style="color: rgb(135, 206, 250);">官方授权店铺</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=214">【全国联保】</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=215">拒绝暴利</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=216">进口石英机芯</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=217"
				style="color: rgb(135, 206, 250);">百年传承系列</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=218">防水休闲男士</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=219">6期免息</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=220">高端正品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=201">【全国联保】</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=202">全自动机械</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=203"
				style="color: rgb(135, 206, 250);">拍下送</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=204">专柜正品</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=205">包邮</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=206">送18大礼</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=207">官方旗舰店</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=208">品牌直营</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=209">官方旗舰店</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=210">正品机械表</a></span>
		</div>
	</div>
	<!-- 这里是第十一个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=221">无理由退换货</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=222">专注品质领卷</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=223" style="color: rgb(135, 206, 250);">优质羊皮</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=224">意大利羊皮</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=225">牛皮手包</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=226">细腻纯牛皮</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=227"
				style="color: rgb(135, 206, 250);">头层牛皮</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=228">原创设计</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=229">袋鼠手包钱包</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=230">进口鳄鱼皮</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=231">头层软皮</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=232">头层牛皮</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=233">专柜正品</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=234">小号可放</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=235">优质牛皮</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=236">双拉链设计</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=237">尊贵牛皮手包</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=238">6花头骨</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=239"
				style="color: rgb(135, 206, 250);">礼盒包装</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=240"
				style="color: rgb(135, 206, 250);">29寸</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=226">头层牛皮</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=221">法国品牌</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=222">款式新颖</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=223"
				style="color: rgb(135, 206, 250);">小号可放</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=224">正品防伪</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=225">顺丰包邮</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=226"
				style="color: rgb(135, 206, 250);">美式高端潮牌</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=227">羊皮编制</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=228">限时特价</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=229">原创设计</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=230">信封包</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=231">七匹狼典款</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=232">正品防伪</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=233">头层小牛皮</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=234">七匹狼典款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=235">专柜正品</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=236">帕宾正品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=237">新款特惠</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=238">顺丰包邮</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=239">袋鼠专柜正品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=240">正品保证</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=221">秋冬风尚</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=222"
				style="color: rgb(135, 206, 250);">出门神器</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=223">柔软手感</a></span>
		</div>
	</div>
	<!-- 这里是第十二个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=241">包邮申通</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=242">韩国进口面料</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=243">亮眼帅气</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=244"
				style="color: rgb(135, 206, 250);">今赠马甲衬衫</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=245">比版型</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=246">高贵紫罗兰</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=247" style="color: rgb(135, 206, 250);">绅士儒雅</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=248" style="color: rgb(135, 206, 250);">魅力蓝色</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=249">绅士优雅</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=250">蓝色魅惑</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=251" style="color: rgb(135, 206, 250);">两件套装</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=252" style="color: rgb(135, 206, 250);">夏季清爽</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=253">款式简约</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=254">新品赠领带</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=255">免烫新郎结婚</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=256">职业正装</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=257">西装三件套</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=258">送衬衫领带</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=259">买就送精品</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=260">【放心购】</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=241">超值10件套</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=242">送衬衫领带</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=243">全国包邮身体</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=244">送精品胸针</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=245">镇店之宝</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=246" style="color: rgb(135, 206, 250);">宝蓝西装</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=247">红标修身版型</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=248">西服三件套</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=249">热卖</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=250">购买送衬衫</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=251">今日送衬衫</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=252">抗皱免烫</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=253" style="color: rgb(135, 206, 250);">今日送豪礼</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=254">免烫西服</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=255"
				style="color: rgb(135, 206, 250);">蓝紫混搭</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=253">今赠马甲衬衫</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=256">结婚宴会</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=257"
				style="color: rgb(135, 206, 250);">西服三件套</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=258">送衬衫领带</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=259">上衣+裤子</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=260">羊毛三件套</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=241" style="color: rgb(135, 206, 250);">修身显性</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=242">赠配饰礼盒</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=243">修身版型</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=244">买就送</a></span>
		</div>
	</div>
	<!-- 这里是第十三个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=261">头层牛皮</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=262"
				style="color: rgb(135, 206, 250);">高端大气</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=263"
				style="color: rgb(135, 206, 250);">天猫正品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=264">牛皮鞋面</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=265">2016新品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=266">真皮好品质</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=267">超流百搭</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=268">奥康秋季新品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=269"
				style="color: rgb(135, 206, 250);">确认后收款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=270">秋季新品</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=271">又要开学啦</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=272">2016</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=273">活动价</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=274">新品上市</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=275">韩版时尚</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=276">优雅休闲</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=277">奥康正品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=278"
				style="color: rgb(135, 206, 250);">秋季新品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=279"
				style="color: rgb(135, 206, 250);">穿上它</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=280">奥康英伦系列</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=261"
				style="color: rgb(135, 206, 250);">工厂直销</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=262">飞线飞织</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=263" style="color: rgb(135, 206, 250);">天猫5年老店</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=264">25日0点抢</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=265">奥康新品</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=266">【官方旗舰店】</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=267">夏季新品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=268">鞋履新风尚</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=269" style="color: rgb(135, 206, 250);">夏季新品</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=270">秋季新品</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=271">拍下联系客服</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=272">潮搭小白鞋</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=273">苹果男鞋</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=274">新品上市</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=275">头层牛皮</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=276">新品</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=277" style="color: rgb(135, 206, 250);">文艺格调</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=278">真皮透气</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=279">热卖推荐</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=280">时尚百搭</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=261">四季皆宜</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=262">经典正装</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=263" style="color: rgb(135, 206, 250);">热卖新款</a></span>
		</div>
	</div>
	<!-- 这里是第十四个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=281">帽里撞色</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=282">口袋特殊材质</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=284">女巫高端定制</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=283"
				style="color: rgb(135, 206, 250);">8月3日</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=285">女巫定制时装</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=286">时尚两件套装</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=287">6月8日</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=288">套件两件套</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=289">省时两件套</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=290">气质迷人</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=291">小脚裤设计</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=292">舒适面料</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=293">衬衫+阔脚裤</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=294">潮流个性设计</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=295">时尚开衫外套</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=296"
				style="color: rgb(135, 206, 250);">时尚条纹设计</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=297">时尚个性设计</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=298">手机买更便宜</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=299">秋季新款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=300">前200名送</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=281">假两件背带裤</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=282"
				style="color: rgb(135, 206, 250);">高端定制</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=284">潮色渐变</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=283" style="color: rgb(135, 206, 250);">春秋装新款</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=285">秋装新品</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=286">多变套裙</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=287">三件套装</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=288">【天猫正品】</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=289">高端定制</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=290">时尚刺绣印花</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=291"
				style="color: rgb(135, 206, 250);">新品上架</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=292">2016新款</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=293">精确的裁剪</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=294">3-5天发货</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=295" style="color: rgb(135, 206, 250);">时尚百搭</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=296">V领露肩上衣</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=297">6个码</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=298">16夏季新款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=299">时尚洋气</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=300">露肩棉T恤</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=281">真丝</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=282">高弹力</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=283">前4000名</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=284">时尚两件套</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=285" style="color: rgb(135, 206, 250);">复古套装</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=286" style="color: rgb(135, 206, 250);">一字肩领</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=287">侧拉链连帽</a></span>
		</div>
	</div>
	<!-- 这里是第十五个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=301">偏光</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=302">加拍镜片可配</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=303">镜片</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=304"
				style="color: rgb(135, 206, 250);">时尚新款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=305">百搭款式</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=306">单品包邮</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=307">实体专柜连锁</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=308" style="color: rgb(135, 206, 250);">雷朋正品授权</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=309">炫彩太阳镜</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=310">高清偏光</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=311">百搭墨镜</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=312"
				style="color: rgb(135, 206, 250);">轻奢有范儿</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=313">宝丽来偏光</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=314">专业定制</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=315">驾驶镜女</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=316">近视太阳镜</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=317">瘦脸效果</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=318">镂空水钻</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=301">航空铝镁合金</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=319">复古猫眼</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=302">送夜视夹片</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=320">跑男同款</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=303" style="color: rgb(135, 206, 250);">好先生</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=304">近视用墨镜</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=305">全国包邮</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=306" style="color: rgb(135, 206, 250);">出游防晒</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=307">核心偏光科技</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=308">男女通用</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=309">开车镜</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=310">新品偏光墨镜</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=311"
				style="color: rgb(135, 206, 250);">日夜两用</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=312">宝岛品质</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=313">超轻材质</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=314">专业网上定制</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=315">型酷来袭</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=316">正品验证码</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=317">美女最爱</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=318">优雅小框</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=319" style="color: rgb(135, 206, 250);">航天铝镁</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=320">品质保证</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=301">时尚版型设计</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=302">经典蛤蟆款式</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=303">城市时尚动感</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=304" style="color: rgb(135, 206, 250);">偏光太阳镜</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=305" style="color: rgb(135, 206, 250);">正品保证</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=306" style="color: rgb(135, 206, 250);">玻璃镜片</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=307">安妮.海瑟薇</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=308">经典黑超</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=309">淘抢购23号</a></span>
		</div>
	</div>
	<!-- 这里是第十六个分类推荐列表注意上面的display:none -->

	<div id="list-right" style="display: none" class="gg">
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=321">法国畅销品牌</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=322"
				style="color: rgb(135, 206, 250);">165度超大</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=323">皮皮虾定制款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=324">开团3秒半价</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=325" style="color: rgb(135, 206, 250);">双接口固定</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=326">全球销量爆款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=327">ECE</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=328">正品保证</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=329">意大利</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=330" style="color: rgb(135, 206, 250);">全车型通用</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=331" style="color: rgb(135, 206, 250);">isofix</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=332">165度可躺</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=333">英国原装进口</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=334">适配所有车型</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=335">分享奖50</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=336" style="color: rgb(135, 206, 250);">安全气囊</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=337">乘车居家二用</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=338">多重安全保护</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=339">初生宝宝专用</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=340">可拆洗</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=321">新款上线</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=322">新生儿适用</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=323">婴童推荐款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=324">前200名</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=325">赠送运费险</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=326">3C认证</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=327">百搭车型适配</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=328">第二件减</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=329">全球销量爆款</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=330">5点固定</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=331">可折叠便携带</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=332">送护肩垫</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=333">全新升级</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=334">特价促销</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=335"
				style="color: rgb(135, 206, 250);">舒适宽坐舱</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=336">反向舒适可躺</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=337">5点固定</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=338">增高80mm</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=339">胡可代言</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=340">晒图赢80元</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=321">符合3C认证</a></span>
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=322">高端大气</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=323">高速吸能</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=324" style="color: rgb(135, 206, 250);">酷暑出行</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=325">3C认证</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=326">婴儿提篮</a></span>
		</div>
		<div class="row">
			<span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=327">本产品划线价</a></span> <span><a href="${pageContext.request.contextPath}/product/showProduct.do?productId=328">超值豪礼</a></span> <span><a
				href="${pageContext.request.contextPath}/product/showProduct.do?productId=329">isoFix</a></span>
		</div>
	</div>
	<!-- 这里是第十七个分类推荐列表注意上面的display:none -->

	<div id="recommendedList">
		<div class="recommend">
			<span class="sign"></span> <span class="signName">平板电视</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=1"> <span> <img src="${pageContext.request.contextPath}/image/index/1big.jpg">
						<p>[热销]夏普屏PANDA/熊猫 LE39D71S</p>
						<p>￥3519.20</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=2"> <span> <img src="${pageContext.request.contextPath}/image/index/6big.jpg">
						<p>[热销]Changhong/长虹 65S1安卓智</p>
						<p>￥2659.05</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=3"> <span> <img src="${pageContext.request.contextPath}/image/index/11big.jpg">
						<p>[热销]Hisense/海信 LED40EC52</p>
						<p>￥1759.20</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=4"> <span> <img src="${pageContext.request.contextPath}/image/index/16big.jpg">
						<p>[热销]Hisense/海信 LED49EC32</p>
						<p>￥1614.06</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=5"> <span> <img src="${pageContext.request.contextPath}/image/index/21big.jpg">
						<p>[热销]Konka/康佳 LED32S1卧室32</p>
						<p>￥1019.15</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这里是第一个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">马桶</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=21"> <span> <img src="${pageContext.request.contextPath}/image/index/101big.jpg">
						<p>[热销]德国DGPOSY超漩式彩色马桶缓降坐便器</p>
						<p>￥1692.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=22"> <span> <img src="${pageContext.request.contextPath}/image/index/106big.jpg">
						<p>[热销]德国DGPOSY超漩式彩色马桶缓降坐便器</p>
						<p>￥3958.30</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=23"> <span> <img src="${pageContext.request.contextPath}/image/index/111big.jpg">
						<p>[热销]纳蒂兰卡1066卫浴漩冲虹吸式马桶350</p>
						<p>￥1501.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=24"> <span> <img src="${pageContext.request.contextPath}/image/index/116big.jpg">
						<p>[热销]箭牌马桶/ARROW AB1118脲醛盖</p>
						<p>￥1438.40</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=25"> <span> <img src="${pageContext.request.contextPath}/image/index/121big.jpg">
						<p>[热销]乐洁士智能马桶高品质全自动遥控感应一体式</p>
						<p>￥1298.70</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这里是第二个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">沙发</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=41"> <span> <img src="${pageContext.request.contextPath}/image/index/201big.jpg">
						<p>[热销]雅居汇欧式沙发组合实木雕花客厅高档奢华大</p>
						<p>￥5012.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=42"> <span> <img src="${pageContext.request.contextPath}/image/index/206big.jpg">
						<p>[热销]依然美佳欧式布艺沙发组合可拆洗新款实木雕</p>
						<p>￥5010.60</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=43"> <span> <img src="${pageContext.request.contextPath}/image/index/211big.jpg">
						<p>[热销]南台布艺沙发组合可拆洗简约现代客厅整装家</p>
						<p>￥4898.60</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=44"> <span> <img src="${pageContext.request.contextPath}/image/index/216big.jpg">
						<p>[热销]凯米蒂亚欧式真皮沙发组合客厅奢华转角皮艺</p>
						<p>￥4890.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=45"> <span> <img src="${pageContext.request.contextPath}/image/index/221big.jpg">
						<p>[热销]新款布艺沙发 可拆洗大小户型客厅简约家居</p>
						<p>￥4656.00</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第三个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">电热水器</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=61"> <span> <img src="${pageContext.request.contextPath}/image/index/301big.jpg">
						<p>[热销]Haier/海尔 EC8003-I/80</p>
						<p>￥699.30</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=62"> <span> <img src="${pageContext.request.contextPath}/image/index/306big.jpg">
						<p>[热销]Vanward/万和 DSCF50-C3</p>
						<p>￥839.40</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=63"> <span> <img src="${pageContext.request.contextPath}/image/index/311big.jpg">
						<p>[热销]哆啦A梦weber I2-80 威博电热</p>
						<p>￥959.20</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=64"> <span> <img src="${pageContext.request.contextPath}/image/index/316big.jpg">
						<p>[热销]Haier/海尔 EC6005-T+</p>
						<p>￥1139.40</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=65"> <span> <img src="${pageContext.request.contextPath}/image/index/321big.jpg">
						<p>[热销]Vatti/华帝 DDF60-i1400</p>
						<p>￥1424.05</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第四个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">平衡车</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=81"> <span> <img src="${pageContext.request.contextPath}/image/index/401big.jpg">
						<p>[热销]两轮平衡车双轮儿童思维漂移电动扭扭车智能</p>
						<p>￥1078.80</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=82"> <span> <img src="${pageContext.request.contextPath}/image/index/406big.jpg">
						<p>[热销]力达康成人电动滑板车折叠锂电池迷你型可折</p>
						<p>￥978.60</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=83"> <span> <img src="${pageContext.request.contextPath}/image/index/411big.jpg">
						<p>[热销]力达康成人电动滑板车折叠锂电池迷你型可折</p>
						<p>￥780.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=84"> <span> <img src="${pageContext.request.contextPath}/image/index/416big.jpg">
						<p>[热销]乐途智能电动悬浮滑板车太空轮平行车蓝牙自</p>
						<p>￥440.30</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=85"> <span> <img src="${pageContext.request.contextPath}/image/index/421big.jpg">
						<p>[热销]乐行天下R1N智能电动平衡车双轮成人思维</p>
						<p>￥3.50</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第五个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">扫地机器人</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=101"> <span> <img src="${pageContext.request.contextPath}/image/index/501big.jpg">
						<p>[热销]公众智能扫地机器人家用全自动电动清洁地毯</p>
						<p>￥2802.80</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=102"> <span> <img src="${pageContext.request.contextPath}/image/index/506big.jpg">
						<p>[热销]莱克扫地吸尘器 家用超薄拖地机器人WR1</p>
						<p>￥2399.40</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=103"> <span> <img src="${pageContext.request.contextPath}/image/index/511big.jpg">
						<p>[热销]洁霸BF522多功能洗地机刷地机酒店家用</p>
						<p>￥2005.15</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=104"> <span> <img src="${pageContext.request.contextPath}/image/index/516big.jpg">
						<p>[热销]海尔拖地机器人家用全自动擦地机湿拖扫洗地</p>
						<p>￥1234.56</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=105"> <span> <img src="${pageContext.request.contextPath}/image/index/521big.jpg">
						<p>[热销]海尔拖地机器人家用全自动擦地机湿拖扫洗地</p>
						<p>￥619.60</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第六个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">原汁机</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=121"> <span> <img src="${pageContext.request.contextPath}/image/index/601big.jpg">
						<p>[热销]惠而浦WJU-VS208J原汁机家用慢榨</p>
						<p>￥1035.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=122"> <span> <img src="${pageContext.request.contextPath}/image/index/606big.jpg">
						<p>[热销]惠而浦WJU-VS208J原汁机家用慢榨</p>
						<p>￥824.25</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=123"> <span> <img src="${pageContext.request.contextPath}/image/index/611big.jpg">
						<p>[热销]Ranbem/瑞本611原汁机大口径低慢</p>
						<p>￥629.30</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=124"> <span> <img src="${pageContext.request.contextPath}/image/index/616big.jpg">
						<p>[热销]惠而浦WJU-VS208J原汁机家用慢榨</p>
						<p>￥539.10</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=125"> <span> <img src="${pageContext.request.contextPath}/image/index/621big.jpg">
						<p>[热销]惠而浦WJU-VS208J原汁机家用慢榨</p>
						<p>￥273.60</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第七个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">冰箱</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=141"> <span> <img src="${pageContext.request.contextPath}/image/index/701big.jpg">
						<p>[热销]Haier/海尔 BCD-618WDVG</p>
						<p>￥3059.19</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=142"> <span> <img src="${pageContext.request.contextPath}/image/index/706big.jpg">
						<p>[热销]【阿里智能】Galanz/格兰仕 BCD</p>
						<p>￥2209.35</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=143"> <span> <img src="${pageContext.request.contextPath}/image/index/711big.jpg">
						<p>[热销]Konka/康佳 BCD-558WEGY</p>
						<p>￥1800.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=144"> <span> <img src="${pageContext.request.contextPath}/image/index/716big.jpg">
						<p>[热销]FRESTECH/新飞 BCD-286W</p>
						<p>￥2879.20</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=145"> <span> <img src="${pageContext.request.contextPath}/image/index/721big.jpg">
						<p>[热销]MeiLing/美菱 BCD-560WU</p>
						<p>￥1199.40</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第八个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">空调</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=161"> <span> <img src="${pageContext.request.contextPath}/image/index/801big.jpg">
						<p>[热销]Panasonic/松下 KFR-36G</p>
						<p>￥1869.15</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=162"> <span> <img src="${pageContext.request.contextPath}/image/index/806big.jpg">
						<p>[热销]Panasonic/松下 KFR-36G</p>
						<p>￥1739.40</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=163"> <span> <img src="${pageContext.request.contextPath}/image/index/811big.jpg">
						<p>[热销]TCL KFRd-35GW/EP13 大</p>
						<p>￥1679.30</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=164"> <span> <img src="${pageContext.request.contextPath}/image/index/816big.jpg">
						<p>[热销]Kelon/科龙 KFR-26GW/EF</p>
						<p>￥1559.40</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=165"> <span> <img src="${pageContext.request.contextPath}/image/index/821big.jpg">
						<p>[热销]AUX/奥克斯 KFR-26GW/BpT</p>
						<p>￥1299.35</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第九个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">女表</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=181"> <span> <img src="${pageContext.request.contextPath}/image/index/901big.jpg">
						<p>[热销]宾格手表正品女式精钢腕表大表盘全自动机械</p>
						<p>￥341.60</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=182"> <span> <img src="${pageContext.request.contextPath}/image/index/906big.jpg">
						<p>[热销]浪铂正品长方形手表女表皮带时尚潮流石英表</p>
						<p>￥246.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=183"> <span> <img src="${pageContext.request.contextPath}/image/index/911big.jpg">
						<p>[热销]罗宾 钢带女表 女士腕表 水钻夜光防水石</p>
						<p>￥193.80</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=184"> <span> <img src="${pageContext.request.contextPath}/image/index/916big.jpg">
						<p>[热销]正港手表女四叶草防水手链表简约潮流学生女</p>
						<p>￥159.60</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=189"> <span> <img src="${pageContext.request.contextPath}/image/index/941big.jpg">
						<p>[热销]正品雷克斯韩版简约时尚潮流真皮石英情侣表</p>
						<p>￥168.30</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第十个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">男表</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=201"> <span> <img src="${pageContext.request.contextPath}/image/index/1001big.jpg">
						<p>[热销]飞克手表 男表皮带手表 防水商务休闲男士</p>
						<p>￥574.40</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=202"> <span> <img src="${pageContext.request.contextPath}/image/index/1006big.jpg">
						<p>[热销]正品名仕爵手表男机械表夜光精钢防水大表盘</p>
						<p>￥418.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=203"> <span> <img src="${pageContext.request.contextPath}/image/index/1011big.jpg">
						<p>[热销]正品手表男精钢商务休闲男士手表石英表时尚</p>
						<p>￥278.80</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=204"> <span> <img src="${pageContext.request.contextPath}/image/index/1016big.jpg">
						<p>[热销]【入门】西铁城CITIZEN新品超值体验</p>
						<p>￥238.80</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=205"> <span> <img src="${pageContext.request.contextPath}/image/index/1021big.jpg">
						<p>[热销]依伦新款超薄手表 男表真皮带休闲时尚男士</p>
						<p>￥83.30</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第十一个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">男士手拿包</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=221"> <span> <img src="${pageContext.request.contextPath}/image/index/1101big.jpg">
						<p>[热销]MAXFEEL休闲男士手包真皮手拿包大容</p>
						<p>￥368.20</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=222"> <span> <img src="${pageContext.request.contextPath}/image/index/1106big.jpg">
						<p>[热销]宾度 男士手包真皮大容量手拿包牛皮个性潮</p>
						<p>￥306.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=223"> <span> <img src="${pageContext.request.contextPath}/image/index/1111big.jpg">
						<p>[热销]唯美诺新款男士手包男包真皮大容量小羊皮手</p>
						<p>￥268.20</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=224"> <span> <img src="${pageContext.request.contextPath}/image/index/1116big.jpg">
						<p>[热销]英伦邦纹男士手包牛皮大容量真皮手拿包手抓</p>
						<p>￥239.25</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=225"> <span> <img src="${pageContext.request.contextPath}/image/index/1121big.jpg">
						<p>[热销]劳迪莱斯男士手包休闲手拿包牛皮大容量钱包</p>
						<p>￥157.25</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第十二个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">男士西服</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=241"> <span> <img src="${pageContext.request.contextPath}/image/index/1201big.jpg">
						<p>[热销]惠而浦WJU-VS208J原汁机家用慢榨</p>
						<p>￥583.20</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=242"> <span> <img src="${pageContext.request.contextPath}/image/index/1206big.jpg">
						<p>[热销]三件套Actionmates新款韩版修身</p>
						<p>￥551.20</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=243"> <span> <img src="${pageContext.request.contextPath}/image/index/1211big.jpg">
						<p>[热销]西服套装男夏季新郎结婚礼服三件套伴郎服薄</p>
						<p>￥518.70</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=244"> <span> <img src="${pageContext.request.contextPath}/image/index/1216big.jpg">
						<p>[热销]男士西服套装修身英伦竖条纹休闲西装男套装</p>
						<p>￥444.80</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=245"> <span> <img src="${pageContext.request.contextPath}/image/index/1221big.jpg">
						<p>[热销]【新】罗蒙羊毛西服套装男修身商务职业装2</p>
						<p>￥273.60</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第十三个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">时尚男鞋</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=261"> <span> <img src="${pageContext.request.contextPath}/image/index/1301big.jpg">
						<p>[热销]木林森夏季男鞋休闲鞋男英伦真皮男士休闲皮</p>
						<p>￥246.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=262"> <span> <img src="${pageContext.request.contextPath}/image/index/1306big.jpg">
						<p>[热销]酷队秋季运动鞋情侣鞋跑步鞋潮男鞋子透气休</p>
						<p>￥220.50</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=263"> <span> <img src="${pageContext.request.contextPath}/image/index/1311big.jpg">
						<p>[热销]花花公子皮鞋男士商务休闲男鞋夏季英伦真皮</p>
						<p>￥202.30</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=264"> <span> <img src="${pageContext.request.contextPath}/image/index/1316big.jpg">
						<p>[热销]花花公子男鞋夏季小白鞋男士休闲鞋白鞋板鞋</p>
						<p>￥193.70</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=265"> <span> <img src="${pageContext.request.contextPath}/image/index/1321big.jpg">
						<p>[热销]DOGEXI透气真皮男鞋子雕花男士休闲鞋</p>
						<p>￥172.80</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第十四个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">品牌女装</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=281"> <span> <img src="${pageContext.request.contextPath}/image/index/1401big.jpg">
						<p>[热销]妖精的口袋P几枚礼物秋装甜美连帽短外套印</p>
						<p>￥379.05</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=282"> <span> <img src="${pageContext.request.contextPath}/image/index/1406big.jpg">
						<p>[热销]妖精的口袋P360度漂浮秋装欧美半身裙短</p>
						<p>￥229.50</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=283"> <span> <img src="${pageContext.request.contextPath}/image/index/1411big.jpg">
						<p>[热销]女巫2016欧洲站夏季新品欧美时尚绣花衬</p>
						<p>￥210.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=284"> <span> <img src="${pageContext.request.contextPath}/image/index/1416big.jpg">
						<p>[热销]拉夏贝尔 7m莫丽菲尔2016秋新款条纹</p>
						<p>￥193.70</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=285"> <span> <img src="${pageContext.request.contextPath}/image/index/1421big.jpg">
						<p>[热销]惠而浦WJU-VS208J原汁机家用慢榨</p>
						<p>￥172.80</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第十五个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">太阳镜</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=302"> <span> <img src="${pageContext.request.contextPath}/image/index/1506big.jpg">
						<p>[热销]好先生同款墨镜孙红雷偏光男士太阳镜韩明星</p>
						<p>￥193.50</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=303"> <span> <img src="${pageContext.request.contextPath}/image/index/1511big.jpg">
						<p>[热销]陌森太阳眼镜男女2016偏光定制驾驶近视</p>
						<p>￥170.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=304"> <span> <img src="${pageContext.request.contextPath}/image/index/1516big.jpg">
						<p>[热销]帕莎Prsr太阳镜女偏光镜潮范冰冰同款女</p>
						<p>￥109.85</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=305"> <span> <img src="${pageContext.request.contextPath}/image/index/1521big.jpg">
						<p>[热销]变色眼镜男女款半框太阳镜大框潮流防辐射防</p>
						<p>￥64.35</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=306"> <span> <img src="${pageContext.request.contextPath}/image/index/1526big.jpg">
						<p>[热销]新款男士偏光太阳镜日夜两用墨镜潮运动开车</p>
						<p>￥230.40</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第十六个推荐列表 -->

		<div class="recommend">
			<span class="sign"></span> <span class="signName">安全座椅</span>
			<div class="signList">
				<a href="${pageContext.request.contextPath}/product/showProduct.do?productId=321"> <span> <img src="${pageContext.request.contextPath}/image/index/1601big.jpg">
						<p>[热销]新生儿婴儿提篮式安全座椅汽车用车载儿童安</p>
						<p>￥858.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=322"> <span> <img src="${pageContext.request.contextPath}/image/index/1606big.jpg">
						<p>[热销]惠而浦WJU-VS208J原汁机家用慢榨</p>
						<p>￥666.00</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=323"> <span> <img src="${pageContext.request.contextPath}/image/index/1611big.jpg">
						<p>[热销]惠而浦WJU-VS208J原汁机家用慢榨</p>
						<p>￥523.50</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=324"> <span> <img src="${pageContext.request.contextPath}/image/index/1616big.jpg">
						<p>[热销]好孩子汽车儿童安全座椅goodbaby9</p>
						<p>￥411.60</p>
				</span>
				</a> <a href="${pageContext.request.contextPath}/product/showProduct.do?productId=325"> <span> <img src="${pageContext.request.contextPath}/image/index/1621big.jpg">
						<p>[热销]惠尔顿儿童安全座椅isofix硬接口汽车</p>
						<p>￥0.77</p>
				</span>
				</a>
			</div>
		</div>
		<!-- 这是第十七个推荐列表 -->
		<img src="${pageContext.request.contextPath}/image/index/end.png" id="end">
	</div>
	

	<jsp:include page="/jsp/publicPage/footerOne.jsp"></jsp:include>
	<jsp:include page="/jsp/publicPage/footerTwo.jsp"></jsp:include>

	<script src="${pageContext.request.contextPath}/js/index/index.js"></script>
	<script src="${pageContext.request.contextPath}/js/index/index2.js"></script>
	<script src="${pageContext.request.contextPath}/js/publicPage/footerOne.js"></script>
	<script src="${pageContext.request.contextPath}/js/publicPage/footerTwo.js"></script>

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