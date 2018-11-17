$(function() {

	var num = 0;
	//初始化一个变量来装定时器
	var timer = null;

	function move() {
		if(num < 1) {
			num++;
		} else {
			num = 0;
		}
		$("#lunbo-ul1 li").eq(num).find("img").fadeIn().parent().siblings().find("img").fadeOut("img");
		$("#lunbo-ul2 li").eq(num).addClass("active").siblings().removeClass("active");
	}
	timer = setInterval(move, 3000);
	$("#lunbo").mouseenter(function() {
		$("#buttonleft").fadeIn();
		$("#buttonright").fadeIn();
		clearInterval(timer);
	});
	$("#lunbo").mouseleave(function() {
		$("#buttonleft").fadeOut();
		$("#buttonright").fadeOut();
		timer = setInterval(move, 3000);
	});
	$("#buttonleft").click(function() {
		move();
	});
	$("#buttonright").click(function() {
		move();
	});
	$("#lunbo-ul2 li").click(function() {
		move();
	});
	$("#ljj-ul0 li").eq(0).addClass("liactive");
	$("#ljj-ul1 li").eq(0).addClass("liactive");
	$("#ljj-ul2 li").eq(0).addClass("liactive");
	$("#ljj-ul0 li").click(function() {
		$(this).addClass("liactive").siblings().removeClass("liactive");
	});
	$("#ljj-ul1 li").click(function() {
		$(this).addClass("liactive").siblings().removeClass("liactive");
	});
	$("#ljj-ul2 li").click(function() {
		$(this).addClass("liactive").siblings().removeClass("liactive");
	});
	console.log($("#tabnav").children("li"));
	var w = $(document.body).outerWidth()
	$("#tabnav").children("li").mouseenter(function(){
		$(this).children(".box").fadeIn();
		$(this).children(".box").css("z-index",5);
	});
	$("#tabnav").children("li").mouseleave(function(){
		$(this).children(".box").fadeOut();
	});
	console.log($(document.body).width());
	console.log($("#tabnav").children("li").children(".box").width())
	
	
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