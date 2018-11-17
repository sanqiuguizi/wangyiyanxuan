$(function() {
	var reg = new RegExp(/^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/);
	var reg1 = new RegExp(/^(13[0-9]|15[012356789]|17[678]|18[0-9]|14[578])[0-9]{8}$/);
	var eisright = false;
	var pisright = false;
	var phisright = false;
	var cisright = false;
	$('#email').on('keyup', function() {
		var val = $(this).val().trim();
		if(val == '') {
			eisright = false;
			error(this);
			setmsg(this, '邮箱不能为空');
		} else {
			right(this);
			setmsg(this, '');
			var that = this;
			if(reg.test(val)) {
				$.ajax({
					type: "get",
					url: "../CheckEmailServlet",
					async: true,
					data: {
						"email": val
					},
					success: function(str) {
						var r = str;
						if(r == 'ok') {
							show(that);
							eisright = true;
						} else if(r == 'error') {
							eisright = false;
							show(that);
							error(that);
							setmsg(that, '邮箱已被注册');
						}
					}
				});
			} else {
				show(this);
				error(this);
				setmsg(this, '不符合邮箱规范');
			}
		}
	});


	$('#psw2').on('keyup', checkpsw);

	function checkpsw() {
		var val = $('#psw2').val().trim();
		var val1 = $('#psw1').val().trim();
		show($('#psw2')[0]);
		show($('#psw1')[0]);
		if(val != val1) {
			pisright = false;
			error($('#psw2')[0]);
			error($('#psw1')[0]);
			setmsg($('#psw2')[0], '两次密码不一致');
			setmsg($('#psw1')[0], '两次密码不一致');
		} else if(val1.length < 6 || val1.length > 12 || val.length < 6 || val.length > 12) {
			pisright = false;
			error($('#psw2')[0]);
			error($('#psw1')[0]);
			setmsg($('#psw2')[0], '密码长度不符合');
			setmsg($('#psw1')[0], '密码长度不符合');
		} else {
			pisright = true;
			right($('#psw2')[0]);
			right($('#psw1')[0]);
			setmsg($('#psw1')[0], '');
			setmsg($('#psw2')[0], '');
		}
	}

	$('#phone').on('keyup', function() {
		var val = $(this).val().trim();
		show($('#phone')[0]);
		if(val == '') {
			phisright = false;
			error(this);
			setmsg(this, '手机号不能为空')
		} else {

			var that = this;
			if(reg1.test(val)) {
				$.ajax({
					type: "get",
					url: "../CheckPhoneServlet",
					async: true,
					data: {
						'phone': val
					},
					success: function(str) {
						var r = str;
						console.log(r);
						if(r == 'ok') {
							show(that);
							right(that);
							setmsg(that, '');
							phisright = true;
						} else if(r == 'error') {
							phisright = false;
							show(that);
							error(that);
							setmsg(that, '手机已被注册');
						}
					}
				});
			} else {
				phisright = false;
				error(this);
				setmsg(this, '手机号不符合规范');
			}

		}
	});

	
	$('#checkbox').on('click',function(){
		if($(this).prop('checked')==true)
		{
			cisright = true;
		}
		else
		{
			cisright =false;
		}
	});
	
	$('button').on('click',function(){
		if(eisright&&pisright&&phisright&&cisright)
		{
			var phone = $('#phone').val().trim();
			var email = $('#email').val().trim();
			var psw = $('#psw1').val().trim();
				$.ajax({
					type: "get",
					url: "",
					async: true,
					data: {
						'phone': phone,
						'psw':psw,
						'email':email
					},
					success: function(str) {
						var r = str;
						if(r == 'ok') {
							location.href='login.html';
						} else if(r == 'error') {
							alert('注册失败');
						}
					}
				});
		}
		else
		{
			alert('请先填写正确信息');
		}
	});
	
	$('.clear').hide();
	$('.msg').children('i').hide();
	$('.clear').on('click', function() {
		$(this).siblings('input').val('');
		$(this).hide();
	})
	$('input').on('keyup', function() {
		$(this).siblings('.clear').show();
	});
	
});

function error(obj) {
	$(obj).siblings('.msg').children().each(function() {
		$(this).addClass('error');
	});
};

function right(obj) {
	$(obj).siblings('.msg').children().each(function() {
		$(this).removeClass('error');
	});
};

function setmsg(obj, str) {
	$(obj).siblings('.msg').children('span').text(str);
};

function hide(obj) {
	$(obj).siblings('.msg').children('i').hide();
};

function show(obj) {
	$(obj).siblings('.msg').children('i').show();
};