$(function(){
				
				
				
				$('#res').on('click',function(){
					localStorage.user='';
					location.href='login.html';
				})
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

				});	
	
	
	
	//新品首发
	
				var n1 = 0 //当前页数
				var t2 = null;
				$('.listbtr').off().on('click',function(){
					++n1>2?n1=2:n1=n1;
					var l = 1100*n1
					clearInterval(t2);
					t2 = setInterval(function(){
						if($('.itemlistbox').scrollLeft()<l)
						{
							$('.itemlistbox').scrollLeft($('.itemlistbox').scrollLeft()+10);
						}
						else
						{
							clearInterval(t2);
						}
					})			
				});
				$('.listbtl').off().on('click',function(){
					--n1<0?n1=0:n1=n1;
					var l = 1100*n1
					clearInterval(t2);
					t2 = setInterval(function(){
						if($('.itemlistbox').scrollLeft()>l)
						{
							$('.itemlistbox').scrollLeft($('.itemlistbox').scrollLeft()-10);
						}
						else
						{
							clearInterval(t2);
						}
					})			
				});	
				
							$('#app').on('click',function(){
				location.href='app.html';
			});
				
							$('#gotop').off().on('click',function(){
				$(document).scrollTop(0);
			});
});
