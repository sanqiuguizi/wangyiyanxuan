$(function() {
	//顶部轮播
	var o = 0;
	var t3 = null;
	t3 = setInterval(lb, 3000);

	function lb() {
		++o > 2 ? o = 1 : o = o;
		$('.lb').animate({
			'top': -o * 36 + 'px'
		}, function() {
			if(o == 2) {
				$('.lb').css('top', 0);
			}
		});
	}

	$('#app').on('click', function() {
		location.href = 'app.html';
	});

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
	$(document).off().on('scroll', function() {
		if($(this).scrollTop() > 200) {
			$('#gotop').show();
		} else {
			$('#gotop').hide();
		}
		if($(this).scrollTop() > 200 && isfix == false) {
			isfix = true;
			clearInterval($('#fixtop').attr('t'));
			$('#fixtop').attr('t', setInterval(function() {
				var top = parseInt($('#fixtop').css('top'));
				if(top < 0) {
					$('#fixtop').css('top', top + 3);
				} else if(top == 0) {
					clearInterval($('#fixtop').attr('t'));
				}
			}, 20));

		} else if($(this).scrollTop() < 200 && isfix == true) {
			isfix = false;
			clearInterval($('#fixtop').attr('t'));
			$('#fixtop').attr('t', setInterval(function() {
				var top = parseInt($('#fixtop').css('top'));
				if(top > -60) {
					$('#fixtop').css('top', top - 3);
				} else if(top == -60) {
					clearInterval($('#fixtop').attr('t'));

				}
			}, 20));

		}

	});
	//回到顶部
	$('#gotop').off().on('click', function() {
		$(document).scrollTop(0);
	});

	var isclick = false;
	var str = 'qwertyuioplkjhgfdsazxcvbnm123654789';
	var oldtime = null;
	var pisright = false;
	var yisright = false;
	$('#getyzm').off().on('click', function() {
		var str1 = '';
		for(var i = 0; i < 6; i++) {
			var index = Math.ceil(Math.random() * (str.length - 1));
			str1 += str[index];
		}
		$(this).text(str1);
		isclick = true;
		oldtime = new Date().getTime();
	});

	var reg = new RegExp(/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/);
	$('#phone').off().on('keyup', function() {
		var val = $(this).val().trim();
		if(!val) {
			$('.msg').text('手机号不能为空');
			$('.msg').css('color', 'red');
			pisright = false;
		} else {

			if(reg.test(val)) {
				$.ajax({
					type: "get",
					url: "http://localhost/wy/login.php",
					async: true,
					data: {
						'phone': val
					},
					success: function(str) {
						var r = str;
						if(r == 'ok') {
							pisright = true;
							$('.msg').text('号码正确');
							$('.msg').css('color', 'green');
						} else if(r == 'error') {
							$('.msg').text('号码错误或者不存在');
							$('.msg').css('color', 'red');
						}
					}
				});

			} else {
				$('.msg').text('手机号不符合规范');
				$('.msg').css('color', 'red');
				pisright = false;
			}
		}
	});
	var sisright = false;

	$('.move').on('mousedown', function() {
		var x = event.clientX - $(this).offset().left;

		$(document).on('mousemove', function() {
			var x1 = event.clientX - x - $('.scrollbar').offset().left;
			$('.move').css('left', x1 + 'px');
			var left = parseInt($('.move').css('left'));
			var maxleft = $('.scrollbar').width() - $('.move').width();
			if(left < 0) {
				left = 0;
				sisright = false;
				$('.move').css('left', 0);
			} else if(left > maxleft) {
				left = maxleft;
				$('.move').css('left', maxleft + 'px');
			}

			if(left == maxleft) {
				sisright = true;
			} else {
				sisright = false;
			}
		});
		$(document).on('mouseup', function() {
			if(sisright == false) {
				$('.msg').text('请滑动滑块到最右边');
				$('.msg').css('color', 'red');
				$('.move').css('left', 0);
			} else {
				$('.msg').text('滑块位置符合要求');
				$('.msg').css('color', 'green');
			}
			$(document).off('mousemove');
			$(document).off('mouseup');
		});
	});

	$('#yzm').on('keyup', function() {
		if(isclick == true) {
			var val = $(this).val().trim()
			var newtime = new Date().getTime();
			if(!val) {
				$('.msg').text('验证码不能为空');
				$('.msg').css('color', 'red');
			} else {
				if(val == $('#getyzm').text()) {
					$('.msg').text('验证码正确');
					$('.msg').css('color', 'green');
					if((newtime - oldtime) / 1000 > 20) {
						$('.msg').text('验证码超时');
						$('.msg').css('color', 'red');
						isclick = false;
						$('#getyzm').text('点击获取验证码');
					} else {
						yisright = true;
					}
				} else {
					$('.msg').text('验证码不正确');
					$('.msg').css('color', 'red');
				}
			}
		} else {
			$('.msg').text('请先获取验证码');
			$('.msg').css('color', 'red');
		}
	});

	$('.login').on('click', function() {
		if(pisright == false) {
			$('.msg').text('请先完成手机号输入验证');
			$('.msg').css('color', 'red');
		} else if(sisright == false) {
			$('.msg').text('请先完成滑块验证');
			$('.msg').css('color', 'red');
		} else if(yisright == false) {
			$('.msg').text('请先完成验证码验证');
			$('.msg').css('color', 'red');
		} else if(pisright && sisright && yisright) {
			localStorage.user = $('#phone').val().trim();
			location.href = 'personal.html';
		}
	});

	
	//注册登录
	var use=document.getElementById("user");
	var pwd=document.getElementById("pwd");
	var pp=document.getElementById("pp");
	var img=document.getElementById("!");
	var user=document.getElementsByClassName("user")[0];
	var pass=document.getElementsByClassName("password")[0];
	var isUse=false;
	var isPwd=false;
	var sum=document.getElementById("sum");
	var Mess=document.getElementsByClassName("Message")[0];
	//		Mess.style.display="block";
	function checkUse(){
		if(use.value.length>1&&use.value.length<6){
			Mess.style.display="block";
			Mess.getElementsByTagName("p")[0].innerText="请输入6-10位账号";
			setTimeout(function(){
				Mess.style.display="none";
			},2000);
	//		document.onclick=function(){
	//			Mess.style.display="none";
	//		}
		}
	}

	use.onblur=function(){
		if(use.value.length==0)
		{
			user.style.border="1px solid red";
			pp.innerHTML="<img id='!' src='img/ban.png' style='display: inline-block;'/>"+"请输入账号!";
			isUse=false;
			sum.style.cursor="not-allowed";
			checkUse();
		}
		else{
			user.style.border="1px solid #CCCCCC";
			pp.innerHTML="";
			isUse=true;
			sum.style.cursor="pointer";
			checkUse();
			user.getElementsByClassName("sp1")[0].style.display="block";
	//		Mess.style.display="none";
		}
	}
	//sum.style.cursor="not-allowed";
	pwd.onblur=function(){
		if(pwd.value.length==0){
		pass.style.border="1px solid red";
		pp.innerHTML="<img id='!' src='img/ban.png' style='display: inline-block;'/>"+"&nbsp;请输入密码!";
		sum.style.cursor="not-allowed";
		isPwd=false;
		}
		else{
			pass.style.border="1px solid #CCCCCC";
			pp.innerHTML="";
			sum.style.cursor="pointer";
			isPwd=true;
			pass.getElementsByClassName("sp1")[0].style.display="block";
	//		Mess.style.display="none";
		}
	}
	 function check(){
		if(isUse&&isPwd){
			return true;
		}
		else{
			return false;
		}
	 }
	
	
});




