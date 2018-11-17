$(function() {
	//start nav
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
	});

	$(".k_cllunbo").mouseleave(function() {
		timer = setInterval(movenext, 3000);
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
			"type": "文具"
		},
		{
			"type": "运动户外"
		}, {
			"type": "乐器唱片"
		}, {
			"type": "礼品卡"
		}, {
			"type": "云音乐周边"
		}, {
			"type": "游戏点卡"
		}, {
			"type": "暴雪周边"
		}, {
			"type": "我的世界"
		}, {
			"type": "梦幻西游"
		}, {
			"type": "大话西游"
		}, {
			"type": "阴阳师"
		}, {
			"type": "游戏表情"
		}, {
			"type": "文创周边"
		}, {
			"type": "影视周边"
		}, {
			"type": "动漫电玩"
		}
	];


	for(var i = 0; i < json.length; i++) {
		$a = $("<a href='#'>" + json[i].type + "</a>");
		$(".k_typedl dd").append($a);
		$(".k_typedl a").eq(0).addClass("color");
	}

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
		$a2 = $("<a href='#'>" + json2[i].areas + "</a>");
		$(".k_areadl dd").append($a2);
		$(".k_areadl a").eq(0).addClass("color");
	}
	//end cl nav

	//start img
	//add data
	for(var i = 0; i < 35; i++) {
		$li = $("<li><p class='k_daimg'><a href='k_stationerydetail.html'><img src='img/k_station3.png'/></a><span>2色可选</span></p><div class='k_datext'><span>新品</span><h4><a href='#'>仲秋·拾月 布纹笔记本</a></h4><p class='k_daprice'>￥29</p><p class='k_daintr'>书写月夜的思绪万千</p></div></li>")
		$(".k_dataul").eq(0).append($li);
		$li2 = $("<li><p class='k_daimg'><a href='#'><img src='img/k_station4.png'/></a></p><div class='k_datext'><span>n元任选</span><h4><a href='#'>2只装 轻灵碳素羽毛球拍</a></h4><p class='k_daprice'>￥279</p><p class='k_daintr'>超轻球拍，运动随心</p></div></li>")
		$(".k_dataul").eq(1).append($li2);
	}
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
				if($(window).scrollTop() >204) {
					$(".navul").css({"position":"fixed","top":0});
				} else {
					$(".navul").css({"position":"absolute","top":"144px"});
				}

			});
	//end scroll

});