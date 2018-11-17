			$(function() {
				
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
				
				
				//轮播图
				
				var n = 0; 
				clearInterval(timer);
				function mq()
				{
					++n>5?n=0:n=n;
					$('.banner div').eq(n).fadeIn().siblings('div').fadeOut();
					$('.nav li').eq(n).addClass('active').siblings().removeClass('active');
				}
				var timer = setInterval(mq,3000);
				
				$('.nav li').each(function(){
					$(this).off().on('click',function(){
						clearInterval(timer);
						n = $(this).index();
						$('.banner div').eq(n).fadeIn().siblings('div').fadeOut();
						$('.nav li').eq(n).addClass('active').siblings().removeClass('active');
						timer = setInterval(mq,3000);
					})
				})
				
				
				$('.left').off().on('click',function(){
					clearInterval(timer);	
					--n<0?n=5:n=n;
					$('.banner div').eq(n).fadeIn().siblings('div').fadeOut();
					$('.nav li').eq(n).addClass('active').siblings().removeClass('active');
					timer = setInterval(mq,3000);
				});
				
				$('.right').off().on('click',function(){
					clearInterval(timer);
					mq();
					timer = setInterval(mq,3000);
				});
				
				/*$('.itemlist li').each(function(){
					$(this).on('mouseenter',function(){
						$(this).children('img').attr('src','img/zt-img/1b.jpg');
					});
					$(this).on('mouseout',function(){
						$(this).children('img').attr('src','img/zt-img/1a.png');
					});					
				});	*/
				
				
				$('.banner').on('mouseenter',function(){
					clearInterval(timer);
				});
				
				$('.banner').on('mouseout',function(){
					clearInterval(timer);
					timer = setInterval(mq,3000);
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
				
				$('.text1').each(function(){
					$(this).off().on('click',function(){
						$(this).parent('.itemhead').siblings('.pitemcontent').eq($(this).index()-1).show().siblings('.pitemcontent').hide();
						$(this).attr('id','active').siblings('.text1').removeAttr('id');
					});
				});
				
				function check(str)
				{
					if(str<10)
					{
						str = '0'+str;
					}
					return str;
				}				
				
				var t3 = null;
				clearInterval(t3);
				
				t3 = setInterval(function(){
					var enddate = new Date('2018/11/11');
					var nowdate = new Date();
					var sec = (enddate.getTime()-nowdate.getTime())/1000;
					var hour =Math.floor(sec/60/60);
					var min = Math.floor(sec/60%60);
					sec = Math.floor(sec%60);
					hour = check(hour);
					min = check(min);
					sec = check(sec);
					var arr = [hour,min,sec];
					$('.time1').each(function(index){
						$(this).text(arr[index]);
					})
				},1000);

			$('.buynow').each(function(){
				$(this).off().on('click',function(){
					var str = $(this).siblings('.pro').children('.number').text().substring(3,5);
					var num = parseInt(str);
					if(num-1>=0)
					{
						$(this).siblings('.pro').children('.max').children('.now').width(num);
						$(this).siblings('.pro').children('.number').text("剩余："+(num-1)+"件")
					}
					else
					{
						console.log('卖完了');
					}
				})
			});
			
			
			//回到顶部
			$('#gotop').off().on('click',function(){
				$(document).scrollTop(0);
			});
			
			$('#app').on('click',function(){
				location.href='app.html';
			});
			
			$.ajax({
				"async":true,
				"type":"GET",
				"url":"../IndexImgsServlet",
				"dataType":"json",
				"success":function(obj){
					for(var i=0;i<6;i++){
						$(".banner div").eq(i).css({"background-image":"url("+obj.ImgList[i].ImgURL+")"});
					}
				}
				
			});
			
			});