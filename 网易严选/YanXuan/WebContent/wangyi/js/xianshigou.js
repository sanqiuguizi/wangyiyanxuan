$(function() {
	var myDate = new Date();
	var day = myDate.getDate();
	var h = myDate.getHours();
	var m = myDate.getMinutes();
	var s = myDate.getSeconds();
	var timer = null;
	if (10-h<= 4 &&10-h>=0 ) {
		num = (10-h)*3600-m*60-s;
		timer = setInterval(move, 1000);
		if (day == 19) {
			$(".sessionItem").eq(6).css("background","#d25a5a").siblings(".sessionItem").css("background","#333");
			$(".bottomline").eq(6).css("background","#ab2b2a").siblings(".bottomline").css("background","#333");	
			
		}
	}
	if ( 14-h<= 4 &&14-h>=0  ) {
		num = (14-h)*3600-m*60-s;
		timer = setInterval(move, 1000);
	}
	if ( 18-h<= 4 &&18-h>=0  ) {
		num = (18-h)*3600-m*60-s;
		timer = setInterval(move, 1000);
		if (day == 18) {
			$(".sessionItem").eq(4).css("background","#d25a5a").siblings(".sessionItem").css("background","#333");
			$(".bottomline").eq(4).css("background","#ab2b2a").siblings(".bottomline").css("background","#333");	
			
		}
	}
	if ( 22-h<= 4 &&22-h>=0  ) {
		num = (22-h)*3600-m*60-s;
		timer = setInterval(move, 1000);
		if (day == 18) {
			$(".sessionItem").eq(5).css("background","#d25a5a").siblings(".sessionItem").css("background","#333");
			$(".bottomline").eq(5).css("background","#ab2b2a").parent().siblings(".sessionItem").children(".bottomline").css("background","#333");	
		}
	}
	else{
		clearInterval(timer);
	}
	function move(){
		
		console.log(num);
		h1 = parseInt(num/3600);
		m1 = parseInt(((num/3600)-h1)*60);
		s1 = parseInt((((num/3600)-h1)*60 - m1)*60) ;
		$(".hour2").html(h1);
		$(".min").html(m1);
		$(".s").html(s1);
		num--;
	}
	
	
})