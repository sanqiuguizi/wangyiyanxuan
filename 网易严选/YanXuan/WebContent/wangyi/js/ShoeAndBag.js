$(function() {
	//start nav
	$(".k_clprev").hide();
	$(".k_clnext").hide();
	$(".tabnav li").mouseenter(function() {
		$(this).children(".box").fadeIn();

	});

	$(".tabnav li").mouseleave(function() {
		$(this).children(".box").fadeOut();

	});
	//end nav
	//start lunbo
	var timer = null;
	var index = 1;
	for(var i = 0; i < $(".k_cllist li").length; i++) {
		$(".k_cllist li").eq(i).hide();
		$(".k_cllist li").eq(0).show();
		$li = $("<li></li>");
		$(".k_clactive").append($li);
		$(".k_clactive li").eq(0).addClass("active");
	}

	function movenext() {
		index++;
		for(var i = 0; i < $(".k_cllist li").length; i++) {
			$(".k_cllist li").eq(index - 1).fadeIn().siblings().fadeOut();
			$(".k_clactive li").eq(i).removeClass();
			$(".k_clactive li").eq(index - 1).addClass("active");
		}
		if(index > $(".k_cllist li").length - 1) {
			index = 0;
		}
	}

	function moveprev() {
		index--;
		if(index < 0) {
			index = $(".k_cllist li").length - 1;
		}
		for(var i = 0; i < $(".k_cllist li").length; i++) {
			$(".k_cllist li").eq(index - 1).fadeIn().siblings().fadeOut();
			$(".k_clactive li").eq(index - 1).addClass("active").siblings().removeClass();
		}

	}
	$(".k_clactive li").click(function() {
		index++;
		for(var i = 0; i < $(".k_clactive li").length; i++) {
			$(".k_clactive li").eq(index - 1).addClass("active").siblings().removeClass();
			$(".k_cllist li").eq(index - 1).fadeIn().siblings().fadeOut();
		}
		if(index > $(".k_clactive li").length - 1) {
			index = 0;
		}
	});

	timer = setInterval(movenext, 3000);

	$(".k_cllunbo").mouseenter(function() {
		clearInterval(timer);
		$(".k_clprev").show();
		$(".k_clnext").show();
	});

	$(".k_cllunbo").mouseleave(function() {
		timer = setInterval(movenext, 3000);
		$(".k_clprev").hide();
		$(".k_clnext").hide();
	});

	$(".k_clnext").click(function() {
		movenext();
	});
	$(".k_clprev").click(function() {
		moveprev();
	});

	//end lunbo

	//start clnav
	var json = [{
			"type": "全部"
		}, {
			"type": "行李箱"
		},
		{
			"type": "女士包袋"
		}, {
			"type": "男士包袋"
		}, {
			"type": "钱包及小皮件"
		}, {
			"type": "女鞋"
		}, {
			"type": "男鞋"
		}, {
			"type": "拖鞋"
		}, {
			"type": "鞋配"
		}, {
			"type": "袜子"
		}, {
			"type": "丝袜"
		}, {
			"type": "围巾件套"
		}, {
			"type": "首饰"
		}, {
			"type": "配件"
		}, {
			"type": "眼镜"
		}
	];

	for(var i = 0; i < json.length; i++) {
		$a = $("<a class='type'>" + json[i].type + "</a>");
		$(".k_typedl dd").append($a);
	}
	$(".k_typedl a").eq(0).addClass("color");

	var json2 = [{
			"areas": "全部"
		},
		{
			"areas": "香港"
		},
		{
			"areas": "澳门"
		},
		{
			"areas": "台湾"
		},
		{
			"areas": "日韩"
		},
		{
			"areas": "亚洲"
		},
		{
			"areas": "欧洲"
		},
		{
			"areas": "美洲"
		}
	];
	for(var i = 0; i < json2.length; i++) {
		$a2 = $("<a>" + json2[i].areas + "</a>");
		$(".k_areadl dd").append($a2);
	}
	$(".k_areadl a").eq(0).addClass("color");
	//end cl nav

	//start img
	//add data
	showAll(0);
	/*for(var i = 0; i < 35; i++) {
		$li = $("<li><p class='k_daimg'><a href='k_clothesdetail.html'><img src='img/k_clothes3.png'/></a><span>2色可选</span></p><div class='k_datext'><span>新品</span><h4><a href='#'>女式小香风针织羊毛套头衫</a></h4><p class='k_daprice'>￥269</p><p class='k_daintr'>尊重极简的优雅身上感</p></div></li>")
		$(".k_dataul").eq(0).append($li);
		$li2 = $("<li><p class='k_daimg'><a href='#'><img src='img/k_clothes4.png'/></a><span>2色可选</span></p><div class='k_datext'><span>五折特惠区</span><h4><a href='#'>女式中长羽绒服</a></h4><p class='k_daprice'>￥284.5</p><p class='k_daintr'>完全不挑人的中长款</p></div></li>")
		$(".k_dataul").eq(1).append($li2);
	}*/
	$(".k_daimg").mouseenter(function() {
		var wValue = 1.1 * $(this).children("a").children("img").width();
		var hValue = 1.1 * $(this).children("a").children("img").height();
		$(this).children("a").children("img").css({
			"position": "absolute"
		});
		$(this).children("a").children("img").stop().animate({
			width: wValue,
			height: hValue,
			left: ("-" + (0.1 * $(this).children("a").children("img").width()) / 2),
			top: ("-" + (0.1 * $(this).children("a").children("img").height()) / 2)
		}, 800);
	}).mouseleave(function() {
		$(this).children("a").children("img").stop().animate({
			width: "245",
			height: "245",
			left: "0px",
			top: "0px"
		}, 800);
	});

	//end img

	//start scroll
	$(window).on("resize scroll", function() {
		if($(window).scrollTop() > 204) {
			$(".navul").css({
				"position": "fixed",
				"top": 0
			});
		} else {
			$(".navul").css({
				"position": "absolute",
				"top": "144px"
			});
		}

	});

	$(window).scroll(function() {
		if($(window).scrollTop() > 180) {
			$('#headflo').css({
				'display': 'block'
			});
		} else {
			$('#headflo').css({
				'display': 'none'
			});
		}
	});

	//回到顶部
	$(window).scroll(function() {
		if($(window).scrollTop() > 500) {
			$('#footside .footside_up').css({
				'display': 'block'
			});
		} else {
			$('#footside .footside_up').css({
				'display': 'none'
			});
		}
	});
	$('#footside .footside_up').on('click', function() {
		$(window).scrollTop(50);
		
	});

	//end scroll

	var fRank=0;
	var flagStr='全部';
	
	//点击切换商品类型
	$(".k_typedl a.type").click(function(){
		$(this).addClass("color").siblings().removeClass("color");
		fRank=0;
		$(".k_rankdl dd a").eq(0).addClass("color").siblings().removeClass("color");
		flagStr = $(this).text();
		if(flagStr=='全部'){
			showAll(fRank);
		}else{
			showByKind(flagStr,fRank);
		}
	});
	
	//点击排序事件
	$(".k_rankdl dd a").click(function(){
		var value = $(this).attr("class");
		switch (value){
		case "default":
			$(this).addClass("color").siblings().removeClass("color");
			fRank=0;
			break;
		case "price":
			$(this).addClass("color").siblings().removeClass("color");
			if(fRank==1){
				fRank=2;
			}else{
				fRank=1;
			}
			break;
		case "upTime":
			$(this).addClass("color").siblings().removeClass("color");
			fRank=3;
			break;
		}
		
		if(flagStr=='全部'){
			showAll(fRank);
		}else{
			showByKind(flagStr,fRank);
		}
		
	});
	
	//点击进入商品详情页
//	$(".k_data .k_dataul li").click(function(){
//		console.log("11111");
//		var value = $(this).attr("id");
//		var tourl = "GoodsDetailServlet?Id="+value;
//		location.href = tourl;
//	});

});

function showByKind(value,fRank) {
	$.ajax({
		"async":true,
		"type":"GET",
		"url":"../ShowCloByKindServlet",
		"dataType":"json",
		"data":{
			"type":value,
			"fRank":fRank
		},
		"success":function(obj){
			$(".k_dataul").html("");
			for(i in obj.TypeList){
				//拼接，新品标签,颜色个数标签
				var str1 = "<li id='"+obj.TypeList[i].GoodId+"'><p class='k_daimg'><a><img src='"+obj.TypeList[i].GoodImg+"'/></a><span>"+obj.TypeList[i].GoodColNum+"色可选</span></p><div class='k_datext'>";
				var str2 = "<h4><a>"+obj.TypeList[i].GoodName+"</a></h4><p class='k_daprice'>￥"+obj.TypeList[i].GoodPrice+"</p><p class='k_daintr'>"+obj.TypeList[i].GoodDescribe+"</p></div></li>";
				
				if(obj.TypeList[i].GoodColNum==1){
					str1 = "<li id='"+obj.TypeList[i].GoodId+"'><p class='k_daimg'><a><img src='"+obj.TypeList[i].GoodImg+"'/></a><span style='display: none;'></span></p><div class='k_datext'>";
				}
				
				if(obj.TypeList[i].GoodIsNew==1){
					$li = $(str1+"<span>新品</span>"+str2);
				}else{
					$li = $(str1+"<span style='background: none;'></span>"+str2);
				}
				//商品分类摆放
				switch (value){
				case "行李箱":
					$(".k_dataul").eq(0).append($li);
					break;
				
				}
			}
			//隐藏没有商品的标题
			$(".k_clcontitle").css("display","none");
			switch (value){
			case "行李箱":
				$(".k_clcontitle").eq(0).css("display","block");
				break;
			
			}
			$(".k_data .k_dataul li").click(function(){
				console.log("11111");
				var value = $(this).attr("id");
				var tourl = "../GoodsDetailServlet?Id="+value;
				location.href = tourl;
			});
		}
	});
}


function showAll(fRank) {
$.ajax({
	"async":true,
	"type":"GET",
	"url":"../ShowAllClothesServlet",
	"data":{
		"fRank":fRank,
		"bigKind":"鞋包"
	},
	"dataType":"json",
	"success":function(obj){
		$(".k_dataul").html("");
		$(".k_clcontitle").css("display","block");
		for(i in obj.Goodslist){
			//拼接，新品标签，颜色个数标签
			var str1 = "<li id='"+obj.Goodslist[i].GoodId+"'><p class='k_daimg'><a><img src='"+obj.Goodslist[i].GoodImg+"'/></a><span>"+obj.Goodslist[i].GoodColNum+"色可选</span></p><div class='k_datext'>";
			var str2 = "<h4><a>"+obj.Goodslist[i].GoodName+"</a></h4><p class='k_daprice'>￥"+obj.Goodslist[i].GoodPrice+"</p><p class='k_daintr'>"+obj.Goodslist[i].GoodDescribe+"</p></div></li>";
			
			if(obj.Goodslist[i].GoodColNum==1){
				str1 = "<li id='"+obj.Goodslist[i].GoodId+"'><p class='k_daimg'><a><img src='"+obj.Goodslist[i].GoodImg+"'/></a><span style='display: none;'></span></p><div class='k_datext'>";
			}
			
			if(obj.Goodslist[i].GoodIsNew==1){
				$li = $(str1+"<span>新品</span>"+str2);
			}else{
				$li = $(str1+"<span style='background: none;'></span>"+str2);
			}
			//商品分类摆放
			switch (obj.Goodslist[i].GoodKind){
			case "行李箱":
				$(".k_dataul").eq(0).append($li);
				break;
			
			}
		}
		$(".k_data .k_dataul li").click(function(){
			var value = $(this).attr("id");
			var tourl = "../GoodsDetailServlet?Id="+value;
			location.href = tourl;
		});
	}
});
}