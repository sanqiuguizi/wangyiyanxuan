$(function(){
					//顶部轮播
				var o = 0;
				var t3 = null;
				t3 = setInterval(lb,3000);
				
				function lb()
				{
					++o>2?o=1:o=o;
					$('.lb').animate({'top':-o*36+'px'},function(){
						if(o==2)
						{
							$('.lb').css('top',0);
						}
					});
				}
				
				
				
				
				// 导航栏选显卡
				$('.tabnav').children('li').children('a').each(function() {
					$(this).on('mouseenter', function() {
							$(this).siblings('.box').show();
						}),
						$(this).on('mouseout', function() {
							$(this).siblings('.box').hide();
						})
				});
				$('.tabnav').children('li').children('.box').each(function() {
					$(this).on('mouseover', function() {
						$(this).show();
					});
					$(this).on('mouseout', function() {
						$(this).hide();
					});
				});

				//顶部固定导航栏
				var oldscro = 0;
				var isfix = false;
				$(document).off().on('scroll',function(){
					if($(this).scrollTop()>200)
					{
						$('#gotop').show();
					}
					else
					{
						$('#gotop').hide();
					}
					if($(this).scrollTop()>200&&isfix==false)
					{
						isfix=true;
						clearInterval($('#fixtop').attr('t'));
						$('#fixtop').attr('t',setInterval(function(){
							var top = parseInt($('#fixtop').css('top'));
							if(top<0)
							{
								$('#fixtop').css('top',top+3);
							}
							else if(top==0)
							{
								clearInterval($('#fixtop').attr('t'));
							}
						},20));
						
						
						
					}
					else if($(this).scrollTop()<200&&isfix==true)
					{
						isfix=false;
						clearInterval($('#fixtop').attr('t'));
						$('#fixtop').attr('t',setInterval(function(){
							var top = parseInt($('#fixtop').css('top'));
							if(top>-60)
							{
								$('#fixtop').css('top',top-3);
							}
							else if(top==-60)
							{
								clearInterval($('#fixtop').attr('t'));
								
							}
						},20));
						
					}
					console.log($(document).scrollTop());
					if($(document).scrollTop()>2330)
					{
						$('.pic').animate({'height':'505px'},1000);
//						$('.pic').height(505);
						$('.pic ul li').each(function(){
							$(this).children('img').attr('src',$(this).children('img').attr('_src'));
						});
					}
					
					
					
				$('.item1').each(function(){
				var tj1 = $(document).scrollTop()>=$(this).offset().top&&$(document).scrollTop()<=$(this).offset().top+$(this).height();
				var tj2 = $(document).scrollTop()+$(window).height()>=$(this).offset().top&&$(document).scrollTop()+$(window).height()<=$(this).offset().top+$(this).height();
				var tj3 = $(this).offset().top+$(this).height()>=$(document).scrollTop()&&$(this).offset().top+$(this).height()<=$(document).scrollTop()+$(window).height();
				if(tj1||tj2||tj3)
				{
					goin(this);
				}
				else
				{
					goout(this);							
				}
			});
				});
				
							$('#app').on('click',function(){
				location.href='app.html';
			});
				
				
			$('#gotop').off().on('click',function(){
				$(document).scrollTop(0);
			});
			
			
			//轮播
			var p = 0;
			setInterval(function(){
				++p>2?p=0:p=p;
				$('.p').eq(p).fadeIn('slow').siblings('.p').fadeOut('slow');
			},4000);
			
			
			//banner动画
			function goout(a)
			{
				$(a).removeAttr('f');
				$(a).children('.box').children('.title').stop().animate({'left':'1090px'});
				$(a).children('.box').children('.desr').stop().animate({'left':'1090px'});
			}
			
			
			function goin(a)
			{
				$(a).removeAttr('f');
				$(a).children('.box').children('.title').stop().animate({'left':'0'});
				$(a).children('.box').children('.desr').stop().animate({'left':'0'});
			}
			
			
			

})
