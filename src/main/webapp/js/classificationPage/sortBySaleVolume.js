var sortBySaleVolume = document.getElementById("sortBySaleVolume");
var deal = document.getElementsByClassName("deal");
var commodity =document.getElementsByClassName("commodity");
var commodityNumber = commodity.length;
var recommendedList = document.getElementById("recommended-list");
var listdeal = new Array(deal.length);//用来控制新的节点排序
var listCommodity = new Array(commodity.length);

sortBySaleVolume.onclick = function(){
	//获取价格数，同时把commodity加入到数组中
	for(var i = 0;i < listdeal.length;i++){
		var message = deal[i].getElementsByTagName("strong")[0].innerText;
		var g = Number(message);
		listdeal[i] = g;
		listCommodity[i] = commodity[i];
	}

	//把被删的commodity排序并加入到listCommodity中,冒泡算法
	for(var i = 0;i < listCommodity.length;i++){
		for(var j = 0;j < listCommodity.length-i-1;j++){
			if(listdeal[j] < listdeal[j+1]){
				var t = listdeal[j];
				var tt = listCommodity[j]
				listdeal[j] = listdeal[j+1];
				listCommodity[j] = listCommodity[j+1];
				listdeal[j+1] = t;
				listCommodity[j+1] = tt;
			}	
		}
	}

	//删除节点，从后面往前删（从前往后删容易报错）
	for(var i = commodity.length-1;i >= 0;i--){
		commodity[i].remove();
	}

	//增加新的listCommodity
	for(var i = 0;i < commodityNumber;i++){
		recommendedList.append(listCommodity[i]);
	}
}