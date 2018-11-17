$(function() {
	
	$("#tabnav").children("li").mouseenter(function() {
		$(this).children(".box").fadeIn();
		$(this).children(".box").css("z-index", 5);
	});
	$("#tabnav").children("li").mouseleave(function() {
		$(this).children(".box").fadeOut();
	});
	$("#tabnav02").children("li").mouseenter(function() {
		$(this).children(".box").fadeIn();
		$(this).children(".box").css("z-index", 5);
	});
	$("#tabnav02").children("li").mouseleave(function() {
		$(this).children(".box").fadeOut();
	});
	$('#tabnav02 li').hover(function() {
		var tabnavL = 80 * $(this).index() - $(this).children('.box').width() / 2;
		console.log(tabnavL);
		if(tabnavL < 0) {
			tabnavL = 0;
		} else if(tabnavL > 200) {
			tabnavL = 200;
		}
		$(this).children('.box').css({ 'display': 'block', 'left': tabnavL, 'top': 22 });
	}, function() {
		$(this).children('.box').css({ 'display': 'none', 'left': 0, 'top': 22 });
	});
	//回到顶部
	$(window).scroll(function() {
		if($(window).scrollTop() > 500) {
			$('#footside .footside_up').css({ 'display': 'block' });
		} else {
			$('#footside .footside_up').css({ 'display': 'none' });
		}
	});
	$('#footside .footside_up').on('click', function() {
		var timer01 = null;
		timer01 = setInterval(move2, 30);

		function move2() {
			if($(window).scrollTop() > 0) {
				$(window).scrollTop($(window).scrollTop() - 50);
			} else {
				clearInterval(timer01);
			}

		}

	});
	$(window).scroll(function() {
		if($(window).scrollTop() > 180) {
			$('#headflo').css({ 'display': 'block' });
		} else {
			$('#headflo').css({ 'display': 'none' });
		}
	});
})