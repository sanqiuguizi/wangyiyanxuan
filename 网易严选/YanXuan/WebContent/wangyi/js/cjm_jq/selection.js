$(function(){
	//动态生成焦点
	$('#slide ul li').each(function(){
			$('<span></span>').appendTo('#slight');
		});
	
	//定位中间
	var lightL=($('#slide').width()-$('#slight').width())/2;
	$('#slight').css('left',lightL);
	
	//鼠标经过高亮
	$('#slight span').hover(function(){
		$(this).addClass('alight').siblings('span').removeClass('alight');
	});
	
	//自动轮播
	var num=0;
	//开启定时器
	var timer=null;
	
	timer=setInterval(autoplay,3000);
//	clearInterval(timer);
//  经过停止，离开继续
	$("#slide").on('mouseenter',function(){
		clearInterval(timer);
	});
	$("#slide").on('mouseleave',function(){
		clearInterval(timer);
	  	timer=setInterval(autoplay,3200);
	});
//	
	//第一个图片先显示出来
	$('#slide ul li').eq(num).stop().fadeIn('fast').siblings('li').stop().fadeOut('fast');
	//显示第一个高亮焦点
	$('#slight span').eq(num).addClass('alight');
	//焦点跟随
	function light(){
		$('#slight span').eq(num).addClass('alight').siblings('span').removeClass('alight');
	}
	//点击焦点进行切换
	$('#slight span').hover(function(){
		lightsmall=$('#slight span').index(this);
		$('#slide ul li').eq(lightsmall).stop().fadeIn('fast').siblings('li').stop().fadeOut('fast');
		num=lightsmall;
		light();
	});
	
	//轮播运动
	function autoplay(){
		num=++num>$('#slide ul li').length-1?0:num;
		$('#slide ul li').eq(num).stop().fadeIn('fast').siblings('li').stop().fadeOut('fast');
		light();
	}
	
	//选项卡
	$('.tabnav li').hover(function(){
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
	
	$(window).scroll(function(){
		if($(window).scrollTop()>180){
			$('#headflo').css({'display':'block'});
		}else{
			$('#headflo').css({'display':'none'});
		}
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
		$(window).scrollTop(50);
	});
	
	//7/1
	var windowW=$(window).width();
	$('#s_nav').css({'left':windowW/7})
	
	
	//经过出现
	$('.likeArea').each(function(){
		$(this).hover(function(){
			$(this).children('.likeArea_top').stop().animate({'opacity':0}).siblings('.likeArea_bot').stop().animate({'opacity':1});
		},function(){
			$(this).children('.likeArea_top').stop().animate({'opacity':1}).siblings('.likeArea_bot').stop().animate({'opacity':0});
		});
		
	});
	$('.imgWrapper').each(function(){
		$(this).hover(function(){
			$(this).children('.imgWrapper_bg').css({'display':'block'});
		},function(){
			$(this).children('.imgWrapper_bg').css({'display':'none'});
		});
	});
});
