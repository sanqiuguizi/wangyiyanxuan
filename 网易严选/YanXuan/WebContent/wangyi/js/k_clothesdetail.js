$(function() {

	for(var i = 0; i < $(".k_buyul li").length; i++) {
		$(".k_buybig img").eq(i).hide();
		$(".k_buybig img").eq(0).show();
	}
	$(".k_buyul li").mouseenter(function() {
		$(this).addClass("border").siblings().removeClass();
		$(".k_buybig img").eq($(this).index()).show().siblings().hide();

	})

	var istrue = true;
	for(var i = 0; i < $(".k_dehotul").length; i++) {
		$(".k_dehotul").eq(i).hide();
		$(".k_dehotul").eq(0).show();
	}
	$(".k_hotnext").click(function() {
		$(".k_dehotul").eq(1).show();
		if(istrue) {
			$(".k_dehotul").eq(1).css({
				"left": "1090px"
			});
			$(".k_dehotul").eq(0).animate({
				left: "-1090px"
			}, 500);
			$(".k_dehotul").eq(1).animate({
				left: "0px"
			}, 500);
			istrue = !istrue;
		}
	})
	$(".k_hotprev").click(function() {
		if(!istrue) {
			$(".k_dehotul").eq(0).css({
				"-left": "1090px"
			});
			$(".k_dehotul").eq(1).animate({
				left: "1090px"
			}, 500);
			$(".k_dehotul").eq(0).animate({
				left: "0px"
			}, 500);
			istrue = !istrue;
		}

	})
	
	//start add
	var num=1;
	$(".fourth").click(function(){
		num++;
		$(".third").html(num);
	})
	$(".second").click(function(){
		if (parseInt($(".third").html())>1) {
			num--;
		$(".third").html(num);
		}
	})
	//end add
	
	//start k_hotimg
	$(".k_hotimg").mouseenter(function() {
		var wValue = 1.1 * $(this).children("img").width();
		var hValue = 1.1 * $(this).children("img").height();
		$(this).children("img").css({
			"position": "absolute"
		});
		$(this).children("img").stop().animate({
			width: wValue,
			height: hValue,
			left: ("-" + (0.1 * $(this).children("img").width()) / 2),
			top: ("-" + (0.1 * $(this).children("img").height()) / 2)
		}, 800);
	}).mouseleave(function() {
		$(this).children("img").stop().animate({
			width: "210",
			height: "210",
			left: "0px",
			top: "0px"
		}, 800);
	});

//end k_hotimg
})