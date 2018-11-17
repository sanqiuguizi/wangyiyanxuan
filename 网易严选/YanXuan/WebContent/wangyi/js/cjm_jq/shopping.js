$(function() {
	//计算总价
	var goods = 0;
	var all = 0;

	function count() {
		var ol = 0;
		all = 0;
		
		$('.w11').each(function() {
			ol = parseFloat($(this).siblings('.w10').children('.number').val().trim()) * parseFloat($(this).siblings('.w9').children('span').text().trim());
			ol = parseFloat(ol.toFixed(2));
			$(this).children('span').text(ol);
			if($(this).siblings('.w7').children('input').prop("checked")){
				all += ol;
			}
			
			$('#allmoney').text(all);
			$('.h5').children('span').text(all);
		});

		//一共多少件
		var go = 0;
		goods = 0;
		$('.number').each(function() {

			go = parseFloat($(this).val());
//			goods += go;
			if($('.w7').is(':checked')){
				goods += go;
			}

			$('.h2 span').html('(' + goods + ')');
		});

		//已选
		if(goods > 0) {
			$('#yixuan').parent('.h2').html('已选<span id="yixuan"></span>')
			$('#yixuan').text('(' + goods + ")").css({
				'display': 'block'
			});
			$('#yixuan').parent().siblings('.h7').css({
				'background': '#ef7777'
			});
			$('#yixuan').parent().siblings('.h1').children('input').prop('checked', true);
		} else if(goods == 0) {
			$('#yixuan').parent('.h2').html('全选<span id="yixuan"></span>')
			$('#yixuan').text('(' + goods + ")").css({
				'display': 'none'
			});
			$('#yixuan').parent().siblings('.h7').css({
				'background': '#999999'
			});
			$('#yixuan').parent().siblings('h1').children('input').attr('checked',false);
		}

	}
	count();

	//输入也计算总和
	$('.number').keyup(function() {
		$(this).parent().siblings('.w7').children('input').prop('checked', true);
		count();

	});

	function nocheck() {
		$('.number').each(function() {
			if($(this).val() == '0') {
				$(this).siblings('.reduce').prop('disabled', true);
			} else {
				$(this).siblings('.reduce').prop('disabled', false);

			}
		});
	}
	nocheck();

	//加
	$('.add').click(function() {
		$(this).siblings('.number').val(parseFloat($(this).siblings('.number').val()) + 1);

		$(this).siblings('.number').prop('disabled', false);

//		$(this).parent().siblings('.w7').children('input').prop('checked', true);
		nocheck();
		count();
	});

	//减
	$('.reduce').click(function() {
		$(this).siblings('.number').val(parseFloat($(this).siblings('.number').val()) - 1);
		if($(this).siblings('.number').val() == 0) {
			$(this).parent().siblings('.w7').children('input').prop('checked', false);
		}

		nocheck();
		count();
	});

	//设置不能修改
	//	$(":text").each(function() {
	//		this.disabled = true;
	//	});

	// 绑定选中
	$('.w7 input').click(function() {
		if($(this).prop('checked')) {
			//						$(this).prop('checked')
			if($(this).parent().siblings('.w10').children('.number').val() == 0) {
				$(this).parent().siblings('.w10').children('.number').val('1');
			}
		}
//		else {
//			$(this).parent().siblings('.w10').children('.number').val('0');
//		}
		count();
		nocheck();
	});
	//全选
//	$('#all').click(function](){
//		if($(this).prop('checked')) {
//			$('.w7 input').prop('checked',true);
//		}
//	});

	//点击删除操作
	$('.w12').click(function() {
		$(this).parent('ul').parent('.cart').remove();
		count();
		nocheck();
	});

	$('.h7').click(function() {
		var flag = false;
		var obj=$('.w7').children('input');
		SCId = [];
		SCNum = [];
	    for(var i=0;i<obj.length;i++){
	        if(obj.eq(i).prop('checked')){
	        	SCId.push(obj.eq(i).val());
	        	SCNum.push(obj.eq(i).parent().siblings('.w10').children('.number').val());
	        	flag = true;
	        }
	    }
	    if(flag){
	    	$.ajax({
				"async":true,
				"type":"GET",
				"url":"../OrderServlet",
				contentType: "application/json",
				"data":{
					"SCId":JSON.stringify(SCId),
					"SCNum":JSON.stringify(SCNum)
				},
				"dataType":"json",
				"success":function(obj){
					$(".trget").html("");
					for(i in obj.SCList){
						var str='<div class="cart"><ul><li class="w7"><input type="checkbox" name="" id="" value="'+obj.SCList[i].ShoppingCarId+'" /></li><li class="w8"><img src="'+obj.SCList[i].GoodImg+'"/><p>'+obj.SCList[i].GoodName+'</p><p>'+obj.SCList[i].Size+'&nbsp;&nbsp;&nbsp;'+obj.SCList[i].ColorName+'</p></li><li class="w9">￥<span>'+obj.SCList[i].GoodPrice+'</span></li><li class="w10"><input class="reduce" type="button" name="" id="" value="-" /><input class="number" type="text" name="" id="" value="'+obj.SCList[i].Num+'" onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'+');}).call(this)" onblur="this.v();"/><input class="add" type="button" name="" id="" value="+" /></li><li class="w11">￥<span>'+obj.SCList[i].Money+'</span></li><li class="w12">删除</li></ul></div>';
						$(".trget").append(str);
					}
					alert("下单成功");
				}
			});
	    }
		
	});
	
	
});