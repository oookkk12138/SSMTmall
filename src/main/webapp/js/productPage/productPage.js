var goods = document.getElementById("goods");
var comment = document.getElementById("comment");
var productParameters = document.getElementById("productParameters");
var bottomImg = document.getElementById("bottom-img");
var topBorderFirst = document.getElementById("topBorder-first");
var triangleFirst = document.getElementById("triangle-first");
var topBorderSecond = document.getElementById("topBorder-second");
var triangleSecond = document.getElementById("triangle-second");
var evaluation = document.getElementById("evaluation");

comment.onclick = function(){
	productParameters.style.display = "none";
	bottomImg.style.display = "none";
	topBorderFirst.style.display = "none";
	triangleFirst.style.display = "none";
	topBorderSecond.style.visibility = "visible";
	triangleSecond.style.visibility = "visible";
	evaluation.style.display = "block";
	comment.style.color = "#c40000";
	goods.style.color = "black";
	comment.style.fontSize = "12.5px";
	goods.style.fontSize = "12px";
	return false;
}
goods.onclick = function(){
	topBorderSecond.style.visibility = "hidden";
	triangleSecond.style.visibility = "hidden";
	productParameters.style.display = "block";
	bottomImg.style.display = "block";
	topBorderFirst.style.display = "block";
	triangleFirst.style.display = "block";
	evaluation.style.display = "none";
	comment.style.color = "black";
	goods.style.color = "#c40000";
	comment.style.fontSize = "12px";
	goods.style.fontSize = "12.5px";
	return false;
}

var leftPicture = document.getElementsByClassName("leftPicture");
var img = document.getElementById("img");

////自动增加那5个小图片
//for(var i = 0;i < leftPicture.length;i++){
//	var src;
//	var image;
//	src = img.src;
//	image = src.replace("1big.jpg","");
//	src = image + (i+1) + ".jpg";
//	leftPicture[i].setAttribute("src",src);
//}

//leftPicture[0].onmouseover = function(){
//	var src = leftPicture[0].src;
//	src = src.replace("1.jpg","1big.jpg");
//	img.setAttribute("src",src);
//}
//leftPicture[1].onmouseover = function(){
//	var src = leftPicture[1].src;
//	src = src.replace("2.jpg","2big.jpg");
//	img.setAttribute("src",src);
//}
//leftPicture[2].onmouseover = function(){
//	var src = leftPicture[2].src;
//	src = src.replace("3.jpg","3big.jpg");
//	img.setAttribute("src",src);
//}
//leftPicture[3].onmouseover = function(){
//	var src = leftPicture[3].src;
//	src = src.replace("4.jpg","4big.jpg");
//	img.setAttribute("src",src);
//}
//leftPicture[4].onmouseover = function(){
//	var src = leftPicture[4].src;
//	src = src.replace("5.jpg","5big.jpg");
//	img.setAttribute("src",src);
//}


var inputnum = document.getElementById("inputnum");
var increase = document.getElementById("increase");
var decrease = document.getElementById("decrease");
//这两个变量是获取库存数量的
var stockNumberId = document.getElementById("stockNumber");
var stockNumber = stockNumberId.innerText;

var num = 1;
//inputnum.onchange = function(){
//	num = inputnum.value;
//	if(isNaN(num)) num = 1;
//	if(num <= 1) num = 1;
//	if(num > stockNumber) num =  stockNumber;
//	inputnum.value = num;
//}
increase.onclick = function(){
	num = parseInt(num);
	num = num + 1;
	inputnum.value = num;
	if(num >= stockNumber){
		num = stockNumber;
		inputnum.value = num;
	}
	return false;
}
decrease.onclick = function(){
	num = parseInt(num);
	num = num - 1;
	inputnum.value = num;
	if(num <= 1){
		num = 1;
		inputnum.value = num;
	}
	return false;
}

////自动增加下面评论的图片
//var bottomImg = document.getElementById("bottom-img");
//var bottomImgs = bottomImg.getElementsByTagName("img");
//for(var i = 0;i < bottomImgs.length;i++){
//	var src;
//	var image;
//	src = img.src;
//	image = src.replace("1big.jpg","");
//	src = image + i + i + ".jpg";
//	bottomImgs[i].setAttribute("src",src);
//}
