$(function(){
	
	
	//经过改变
	$('#broad').hover(function(){
		$('#front').css('display','block');
		$('#next').css('display','block');
	},function(){
		$('#next').css('display','none');
		$('#front').css('display','none');
	});
	
	$('#front').hover(function(){
		$('#front').css('opacity','1');
		
	},function(){
		$('#front').css('opacity','0.8');
	});
	
	$('#next').hover(function(){
		$('#next').css('opacity','1');
		
	},function(){
		$('#next').css('opacity','0.8');
	});
	
	//动态生成焦点
	$('#broad ul li').each(function(){
			$('<span></span>').appendTo('#light');
		});
	
	//定位中间
	var lightL=($('#broad').width()-$('#light').width())/2;
	$('#light').css('left',lightL);
	
	//鼠标经过高亮
	$('#light span').hover(function(){
		$(this).addClass('alight').siblings('span').removeClass('alight');
	});
	
	//自动轮播
	var num=0;
	//开启定时器
	var timer=null;
	
	timer=setInterval(autoplay,3000);
//	clearInterval(timer);
//  经过停止，离开继续
	$("#broad").on('mouseenter',function(){
		clearInterval(timer);
	});
	$("#broad").on('mouseleave',function(){
		clearInterval(timer);
	  	timer=setInterval(autoplay,3200);
	});
//	
	//第一个图片先显示出来
	$('#broad ul li').eq(num).stop().fadeIn('fast').siblings('li').stop().fadeOut('fast');
	//显示第一个高亮焦点
	$('#light span').eq(num).addClass('alight');
	//焦点跟随
	function light(){
		$('#light span').eq(num).addClass('alight').siblings('span').removeClass('alight');
	}
	//点击焦点进行切换
	$('#light span').hover(function(){
		lightsmall=$('#light span').index(this);
		$('#broad ul li').eq(lightsmall).stop().fadeIn('fast').siblings('li').stop().fadeOut('fast');
		num=lightsmall;
		light();
	});
	
	//轮播运动
	function autoplay(){
		num=++num>$('#broad ul li').length-1?0:num;
		$('#broad ul li').eq(num).stop().fadeIn('fast').siblings('li').stop().fadeOut('fast');
		light();
	}
	
	//点击左右切换轮播
	$('#next').click(function(){
		autoplay();
	});
	$('#front').click(function(){
		num=--num<0?$('#broad ul li').length-1:num;
		$('#broad ul li').eq(num).stop().fadeIn('fast').siblings('li').stop().fadeOut('fast');
		light();
	});
	
	//轮播图结束
	
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
	
	//鼠标经过图片放大
	$('.main_prod').hover(function(){
		$(this).children('.main_hd').children('a').children('img').stop().animate({'width':251,'height':251,'margin-left':-3,'margin-top':-3});
		$(this).siblings('.main_prod').children('.main_hd').children('a').children('img').stop().css({'width':245,'height':245,'margin-left':0,'margin-top':0});
	},function(){
		$(this).children('.main_hd').children('a').children('img').stop().animate({'width':245,'height':245,'margin-left':0,'margin-top':0});
	});
	
	
});
