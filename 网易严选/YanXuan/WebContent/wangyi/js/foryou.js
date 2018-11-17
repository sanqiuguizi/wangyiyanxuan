$(function() {
	$("#tabnav").children("li").mouseenter(function(){
		$(this).children(".box").fadeIn();
		$(this).children(".box").css("z-index",5);
	});
	$("#tabnav").children("li").mouseleave(function(){
		$(this).children(".box").fadeOut();
	});
	$("#tabnav02").children("li").mouseenter(function(){
		$(this).children(".box").fadeIn();
		$(this).children(".box").css("z-index",5);
	});
	$("#tabnav02").children("li").mouseleave(function(){
		$(this).children(".box").fadeOut();
	});
	$('#tabnav02 li').hover(function(){
		var tabnavL=80*$(this).index()-$(this).children('.box').width()/2;
		console.log(tabnavL);
		if(tabnavL<0){
			tabnavL=0;
		}else if(tabnavL>200){
			tabnavL=200;
		}
		$(this).children('.box').css({'display':'block','left': tabnavL,'top':22});
	},function(){
		$(this).children('.box').css({'display':'none','left': 0,'top':22});
	});
	var num = 0;
	//初始化一个变量来装定时器
	var timer = null;
	function move(){
		if (num<2) {
			num++;
		}else{
			num=0;
		}
		$("#imgul li").eq(num).find("img").fadeIn().parent().siblings().find("img").fadeOut("img");
		$("#spanlist span").eq(num).addClass("active").siblings().removeClass("active");
	}
	function move1(){
		if (num==0) {
			num=2;
		} else{
			num--
		}
		$("#imgul li").eq(num).find("img").fadeIn().parent().siblings().find("img").fadeOut("img");
		$("#spanlist span").eq(num).addClass("active").siblings().removeClass("active");
	}
	timer = setInterval(move, 3000);
	$("#bannerbox").mouseenter(function(){
		$("#buttonleft").css("display","block");
		$("#buttonright").css("display","block");
		clearInterval(timer);
	});
	$("#bannerbox").mouseleave(function(){
		$("#buttonleft").css("display","none");
		$("#buttonright").css("display","none");
		timer = setInterval(move, 3000);
	});
	$("#buttonleft").click(function(){
		move();
	});
	$("#buttonright").click(function(){
		move1();
	});
	$("#spanlist span").click(function(){
		$("#imgul li").eq($(this).index()).find("img").fadeIn().parent().siblings().find("img").fadeOut("img");
		$("#spanlist span").eq($(this).index()).addClass("active").siblings().removeClass("active");
	});
	$(".TabList").click(function(){
		$(this).children().addClass("active01").parent().siblings().children().removeClass("active01");
		$(".tabcon").eq($(this).index()).css("display","block");
//		$(".tabcon").eq($(this).index()).css("display","block");
		$(".tabcon").eq($(this).index()).siblings(".tabcon").css("display","none");
	});
	$(".mainCont a").mouseenter(function(){
		$("button").css("display","block");
	});
	$(".mainCont a").mouseleave(function(){
		$("button").css("display","none");
	});
	
	
	
	
	
	//回到顶部
	$(window).scroll(function(){
		if($(window).scrollTop()>500){
			$('#footside .footside_up').css({'display':'block'});
		}else{
			$('#footside .footside_up').css({'display':'none'});
		}
	});
	$('#footside .footside_up').on('click',function(){
		var timer01 = null;
		timer01 = setInterval(move2,30);
			
		function move2(){
			if ($(window).scrollTop()>0) {
				$(window).scrollTop($(window).scrollTop()-50);
			} else{
				clearInterval(timer01);
			}
			
		}
		
	});
	$(window).scroll(function(){
		if($(window).scrollTop()>180){
			$('#headflo').css({'display':'block'});
		}else{
			$('#headflo').css({'display':'none'});
		}
	});
	
})