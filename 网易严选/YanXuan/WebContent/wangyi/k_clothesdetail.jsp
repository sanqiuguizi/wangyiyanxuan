<%@page import="java.util.*"%>
<%@page import="com.icss.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/wangyi/";
%>
<base href="<%=basePath%>">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>网易严选 - 以严谨的态度，为中国消费者甄选天下优品</title>
		<link rel="stylesheet" type="text/css" href="css/k_base.css" />
		<link rel="shortcut icon" type="image/x-icon" href='img/zt-img/favicon.ico' />
		<link rel="icon" type="image/x-icon" href='img/zt-img/favicon.ico' />
		<link rel="stylesheet" type="text/css" href="css/k_clothesdetail.css" />
		<link rel="stylesheet" type="text/css" href="css/k_home.css"/>
		<script src="js/jQuery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/k_clothes.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/k_clothesdetail.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<!--
        	顶部
        -->
		<div class="head">
			<div class="box w">
				<a href="###" class="slogan">好的生活，没那么贵</a>
				<img class="horn" src="img/zt-img/d132c2561f18f1149d566a60d05fd9b7.gif" />
				<ul class="lb">
					<li>
						<a href="###">【福利】下载严选APP，抢1元包邮团，领...</a>
					</li>
					<li>
						<a href="###">【严选x中行联名卡】达标领80元礼品卡></a>
					</li>
				</ul>
				<span><i></i>APP</span>
				<ul class="list">
					<li>|</li>
					<li>
						<a href="personal.html">我的订单</a>
					</li>
					<c:if test="${not empty sessionScope.cus}">
						<script type="text/javascript">
						console.log("1");
							$("ul.list li a").eq(0).click(function(){
								console.log("2");
								var url = "../ShowOrderServlet?id="+cusId;
								location.href = url;
							});
						</script>
					</c:if>
					<li>|</li>
					<li>
						<a href="###">会员</a>
					</li>
					<li>|</li>
					<li>
						<a href="selection.html">甄选家</a>
					</li>
					<li>|</li>
					<li>
						<a href="###">企业采购</a>
					</li>
					<li>|</li>
					<li>
						<a href="###">客户服务</a>
					</li>
					<li>|</li>
				</ul>
				<script type="text/javascript">
					$(function () {
						var flag=true;
					});
				</script>
				
				<c:choose>
					<c:when test="${empty sessionScope.cus}">
						<a href="register.html" id="res">注册</a>
						<a href="login.html" id="log">登录</a>
						<script type="text/javascript">
							flag=true;
						</script>
					</c:when>
					<c:otherwise>
						<a id="res">${sessionScope.cus.cusEmail }</a>
						<a id="log">欢迎</a>
						<script type="text/javascript">
							flag=false;
							var cusId = ${sessionScope.cus.cusId };
						</script>
					</c:otherwise>
				</c:choose>
				
			</div>
		</div>

		<!--
        	顶部内容
        -->
		<div class="headmain">
			<div class="w">
				<a href="#" class="logo"></a>
				<div class="ic1"></div>
				
				<div class="ic2"></div>
			<c:if test="${not empty sessionScope.cus}">
				<script type="text/javascript">
					$(".ic1").click(function(){
						var url = "../ShowSCarServlet?id="+cusId;
						location.href = url;
					});
				</script>
			</c:if>
			<form action="../SearchServlet" method="get">
				<input name="searchStr" type="text" placeholder="日式水洗棉条纹四件套" />
				<input name="flag" type="hidden" value="1" />
				<input name="byForm" type="hidden" value="1" />
			</form>
			<script type="text/javascript">
				$(".ic2").click(function() {
					$("form").submit();
				});
			</script>
			</div>
			<div class="navul">
				<ul class="tabnav w">
					<li>
						<a href="index.jsp">首页</a>
					</li>
					<li>
						<a href="home.html" id="select">居家</a>
						<div class="box">
							<ul>
								<li class="title">床品</li>
								<li>
									<img src="img/zt-img/gc1.png" />
									<a href="###">床品件套</a>
								</li>
								<li>
									<img src="img/zt-img/gc2.png" />
									<a href="###">被枕</a>
								</li>
							</ul>
							<ul>
								<li class="title">家具家装</li>
								<li>
									<img src="img/zt-img/gc3.png" />
									<a href="###">家具</a>
								</li>
								<li>
									<img src="img/zt-img/gc4.png" />
									<a href="###">灯具</a>
								</li>
								<li>
									<img src="img/zt-img/gc5.png" />
									<a href="###">布艺软装</a>
								</li>
								<li>
									<img src="img/zt-img/gc6.png" />
									<a href="###">家饰</a>
								</li>
							</ul>
							<ul>
								<li class="title">收纳</li>
								<li>
									<img src="img/zt-img/gc7.png" />
									<a href="###">收纳</a>
								</li>
								<li>
									<img src="img/zt-img/gc8.png" />
									<a href="###">旅行用品</a>
								</li>
								<li>
									<img src="img/zt-img/gc9.png" />
									<a href="###">晒凉除味</a>
								</li>
							</ul>
							<ul>
								<li class="title">医疗宠物</li>
								<li>
									<img src="img/zt-img/gc10.png" />
									<a href="###">家庭医疗</a>
								</li>
								<li>
									<img src="img/zt-img/gc11.png" />
									<a href="###">宠物</a>
								</li>
							</ul>
						</div>
					</li>
					<li>
						<a href="ShoeAndBag.jsp">鞋包配饰</a>
						<div class="box">
							<ul>
								<li class="title">床品</li>
								<li>
									<img src="img/zt-img/gc1.png" />
									<a href="###">床品件套</a>
								</li>
								<li>
									<img src="img/zt-img/gc2.png" />
									<a href="###">被枕</a>
								</li>
							</ul>
							<ul>
								<li class="title">家具家装</li>
								<li>
									<img src="img/zt-img/gc3.png" />
									<a href="###">家具</a>
								</li>
								<li>
									<img src="img/zt-img/gc4.png" />
									<a href="###">灯具</a>
								</li>
								<li>
									<img src="img/zt-img/gc5.png" />
									<a href="###">布艺软装</a>
								</li>
								<li>
									<img src="img/zt-img/gc6.png" />
									<a href="###">家饰</a>
								</li>
							</ul>
							<ul>
								<li class="title">收纳</li>
								<li>
									<img src="img/zt-img/gc7.png" />
									<a href="###">收纳</a>
								</li>
								<li>
									<img src="img/zt-img/gc8.png" />
									<a href="###">旅行用品</a>
								</li>
								<li>
									<img src="img/zt-img/gc9.png" />
									<a href="###">晒凉除味</a>
								</li>
							</ul>
							<ul>
								<li class="title">医疗宠物</li>
								<li>
									<img src="img/zt-img/gc10.png" />
									<a href="###">家庭医疗</a>
								</li>
								<li>
									<img src="img/zt-img/gc11.png" />
									<a href="###">宠物</a>
								</li>
							</ul>
						</div>
					</li>
					<li>
						<a href="k_clothes.jsp">服装</a>
						<div class="box">
							<ul>
								<li class="title">床品</li>
								<li>
									<img src="img/zt-img/gc1.png" />
									<a href="###">床品件套</a>
								</li>
								<li>
									<img src="img/zt-img/gc2.png" />
									<a href="###">被枕</a>
								</li>
							</ul>
							<ul>
								<li class="title">家具家装</li>
								<li>
									<img src="img/zt-img/gc3.png" />
									<a href="###">家具</a>
								</li>
								<li>
									<img src="img/zt-img/gc4.png" />
									<a href="###">灯具</a>
								</li>
								<li>
									<img src="img/zt-img/gc5.png" />
									<a href="###">布艺软装</a>
								</li>
								<li>
									<img src="img/zt-img/gc6.png" />
									<a href="###">家饰</a>
								</li>
							</ul>
							<ul>
								<li class="title">收纳</li>
								<li>
									<img src="img/zt-img/gc7.png" />
									<a href="###">收纳</a>
								</li>
								<li>
									<img src="img/zt-img/gc8.png" />
									<a href="###">旅行用品</a>
								</li>
								<li>
									<img src="img/zt-img/gc9.png" />
									<a href="###">晒凉除味</a>
								</li>
							</ul>
							<ul>
								<li class="title">医疗宠物</li>
								<li>
									<img src="img/zt-img/gc10.png" />
									<a href="###">家庭医疗</a>
								</li>
								<li>
									<img src="img/zt-img/gc11.png" />
									<a href="###">宠物</a>
								</li>
							</ul>
						</div>
					</li>
					<li>
						<a href="electrical.html">电器</a>
						<div class="box">
							<ul>
								<li class="title">床品</li>
								<li>
									<img src="img/zt-img/gc1.png" />
									<a href="###">床品件套</a>
								</li>
								<li>
									<img src="img/zt-img/gc2.png" />
									<a href="###">被枕</a>
								</li>
							</ul>
							<ul>
								<li class="title">家具家装</li>
								<li>
									<img src="img/zt-img/gc3.png" />
									<a href="###">家具</a>
								</li>
								<li>
									<img src="img/zt-img/gc4.png" />
									<a href="###">灯具</a>
								</li>
								<li>
									<img src="img/zt-img/gc5.png" />
									<a href="###">布艺软装</a>
								</li>
								<li>
									<img src="img/zt-img/gc6.png" />
									<a href="###">家饰</a>
								</li>
							</ul>
							<ul>
								<li class="title">收纳</li>
								<li>
									<img src="img/zt-img/gc7.png" />
									<a href="###">收纳</a>
								</li>
								<li>
									<img src="img/zt-img/gc8.png" />
									<a href="###">旅行用品</a>
								</li>
								<li>
									<img src="img/zt-img/gc9.png" />
									<a href="###">晒凉除味</a>
								</li>
							</ul>
							<ul>
								<li class="title">医疗宠物</li>
								<li>
									<img src="img/zt-img/gc10.png" />
									<a href="###">家庭医疗</a>
								</li>
								<li>
									<img src="img/zt-img/gc11.png" />
									<a href="###">宠物</a>
								</li>
							</ul>
						</div>
					</li>
					<li>
						<a href="washing.html">洗护</a>
						<div class="box">
							<ul>
								<li class="title">床品</li>
								<li>
									<img src="img/zt-img/gc1.png" />
									<a href="###">床品件套</a>
								</li>
								<li>
									<img src="img/zt-img/gc2.png" />
									<a href="###">被枕</a>
								</li>
							</ul>
							<ul>
								<li class="title">家具家装</li>
								<li>
									<img src="img/zt-img/gc3.png" />
									<a href="###">家具</a>
								</li>
								<li>
									<img src="img/zt-img/gc4.png" />
									<a href="###">灯具</a>
								</li>
								<li>
									<img src="img/zt-img/gc5.png" />
									<a href="###">布艺软装</a>
								</li>
								<li>
									<img src="img/zt-img/gc6.png" />
									<a href="###">家饰</a>
								</li>
							</ul>
							<ul>
								<li class="title">收纳</li>
								<li>
									<img src="img/zt-img/gc7.png" />
									<a href="###">收纳</a>
								</li>
								<li>
									<img src="img/zt-img/gc8.png" />
									<a href="###">旅行用品</a>
								</li>
								<li>
									<img src="img/zt-img/gc9.png" />
									<a href="###">晒凉除味</a>
								</li>
							</ul>
							<ul>
								<li class="title">医疗宠物</li>
								<li>
									<img src="img/zt-img/gc10.png" />
									<a href="###">家庭医疗</a>
								</li>
								<li>
									<img src="img/zt-img/gc11.png" />
									<a href="###">宠物</a>
								</li>
							</ul>
						</div>
					</li>
					<li>
						<a href="###">饮食</a>
						<div class="box">
							<ul>
								<li class="title">床品</li>
								<li>
									<img src="img/zt-img/gc1.png" />
									<a href="###">床品件套</a>
								</li>
								<li>
									<img src="img/zt-img/gc2.png" />
									<a href="###">被枕</a>
								</li>
							</ul>
							<ul>
								<li class="title">家具家装</li>
								<li>
									<img src="img/zt-img/gc3.png" />
									<a href="###">家具</a>
								</li>
								<li>
									<img src="img/zt-img/gc4.png" />
									<a href="###">灯具</a>
								</li>
								<li>
									<img src="img/zt-img/gc5.png" />
									<a href="###">布艺软装</a>
								</li>
								<li>
									<img src="img/zt-img/gc6.png" />
									<a href="###">家饰</a>
								</li>
							</ul>
							<ul>
								<li class="title">收纳</li>
								<li>
									<img src="img/zt-img/gc7.png" />
									<a href="###">收纳</a>
								</li>
								<li>
									<img src="img/zt-img/gc8.png" />
									<a href="###">旅行用品</a>
								</li>
								<li>
									<img src="img/zt-img/gc9.png" />
									<a href="###">晒凉除味</a>
								</li>
							</ul>
							<ul>
								<li class="title">医疗宠物</li>
								<li>
									<img src="img/zt-img/gc10.png" />
									<a href="###">家庭医疗</a>
								</li>
								<li>
									<img src="img/zt-img/gc11.png" />
									<a href="###">宠物</a>
								</li>
							</ul>
						</div>
					</li>
					<li>
						<a href="###">餐厨</a>
						<div class="box">
							<ul>
								<li class="title">床品</li>
								<li>
									<img src="img/zt-img/gc1.png" />
									<a href="###">床品件套</a>
								</li>
								<li>
									<img src="img/zt-img/gc2.png" />
									<a href="###">被枕</a>
								</li>
							</ul>
							<ul>
								<li class="title">家具家装</li>
								<li>
									<img src="img/zt-img/gc3.png" />
									<a href="###">家具</a>
								</li>
								<li>
									<img src="img/zt-img/gc4.png" />
									<a href="###">灯具</a>
								</li>
								<li>
									<img src="img/zt-img/gc5.png" />
									<a href="###">布艺软装</a>
								</li>
								<li>
									<img src="img/zt-img/gc6.png" />
									<a href="###">家饰</a>
								</li>
							</ul>
							<ul>
								<li class="title">收纳</li>
								<li>
									<img src="img/zt-img/gc7.png" />
									<a href="###">收纳</a>
								</li>
								<li>
									<img src="img/zt-img/gc8.png" />
									<a href="###">旅行用品</a>
								</li>
								<li>
									<img src="img/zt-img/gc9.png" />
									<a href="###">晒凉除味</a>
								</li>
							</ul>
							<ul>
								<li class="title">医疗宠物</li>
								<li>
									<img src="img/zt-img/gc10.png" />
									<a href="###">家庭医疗</a>
								</li>
								<li>
									<img src="img/zt-img/gc11.png" />
									<a href="###">宠物</a>
								</li>
							</ul>
						</div>
					</li>
					<li>
						<a href="###">婴童</a>
						<div class="box">
							<ul>
								<li class="title">床品</li>
								<li>
									<img src="img/zt-img/gc1.png" />
									<a href="###">床品件套</a>
								</li>
								<li>
									<img src="img/zt-img/gc2.png" />
									<a href="###">被枕</a>
								</li>
							</ul>
							<ul>
								<li class="title">家具家装</li>
								<li>
									<img src="img/zt-img/gc3.png" />
									<a href="###">家具</a>
								</li>
								<li>
									<img src="img/zt-img/gc4.png" />
									<a href="###">灯具</a>
								</li>
								<li>
									<img src="img/zt-img/gc5.png" />
									<a href="###">布艺软装</a>
								</li>
								<li>
									<img src="img/zt-img/gc6.png" />
									<a href="###">家饰</a>
								</li>
							</ul>
							<ul>
								<li class="title">收纳</li>
								<li>
									<img src="img/zt-img/gc7.png" />
									<a href="###">收纳</a>
								</li>
								<li>
									<img src="img/zt-img/gc8.png" />
									<a href="###">旅行用品</a>
								</li>
								<li>
									<img src="img/zt-img/gc9.png" />
									<a href="###">晒凉除味</a>
								</li>
							</ul>
							<ul>
								<li class="title">医疗宠物</li>
								<li>
									<img src="img/zt-img/gc10.png" />
									<a href="###">家庭医疗</a>
								</li>
								<li>
									<img src="img/zt-img/gc11.png" />
									<a href="###">宠物</a>
								</li>
							</ul>
						</div>
					</li>
					<li>
						<a href="k_stationery.html">文体</a>
						<div class="box">
							<ul>
								<li class="title">床品</li>
								<li>
									<img src="img/zt-img/gc1.png" />
									<a href="###">床品件套</a>
								</li>
								<li>
									<img src="img/zt-img/gc2.png" />
									<a href="###">被枕</a>
								</li>
							</ul>
							<ul>
								<li class="title">家具家装</li>
								<li>
									<img src="img/zt-img/gc3.png" />
									<a href="###">家具</a>
								</li>
								<li>
									<img src="img/zt-img/gc4.png" />
									<a href="###">灯具</a>
								</li>
								<li>
									<img src="img/zt-img/gc5.png" />
									<a href="###">布艺软装</a>
								</li>
								<li>
									<img src="img/zt-img/gc6.png" />
									<a href="###">家饰</a>
								</li>
							</ul>
							<ul>
								<li class="title">收纳</li>
								<li>
									<img src="img/zt-img/gc7.png" />
									<a href="###">收纳</a>
								</li>
								<li>
									<img src="img/zt-img/gc8.png" />
									<a href="###">旅行用品</a>
								</li>
								<li>
									<img src="img/zt-img/gc9.png" />
									<a href="###">晒凉除味</a>
								</li>
							</ul>
							<ul>
								<li class="title">医疗宠物</li>
								<li>
									<img src="img/zt-img/gc10.png" />
									<a href="###">家庭医疗</a>
								</li>
								<li>
									<img src="img/zt-img/gc11.png" />
									<a href="###">宠物</a>
								</li>
							</ul>
						</div>
					</li>
					<li>
						<a href="ljj-texie.html">特色区</a>
					</li>
					<li>|</li>
					<li>
						<a href="foryou.html">为你严选</a>
					</li>
					<li>
						<a href="zhong.html">众筹</a>
					</li>
				</ul>
			</div>

		</div>
		<div class="k_demain">
			<div class="k_decontent">
				<div class="k_detitle">
					<p>
						<a href="#">首页</a><span></span>${goods.goodBigKind }<span></span>${goods.goodKind }<span></span>${goods.goodName }</p>
				</div>
				<div class="k_debuy">
					<div class="k_buyleft">
						<div class="k_buybig">
							<img src="${goodsDetail.img1 }" class="firstimg" />
							<img src="${goodsDetail.img2 }" class="firstimg" />
							<img src="${goodsDetail.img3 }" class="firstimg" />
							<img src="${goodsDetail.img4 }" class="firstimg" />
							<img src="${goodsDetail.img5 }" class="firstimg" />
						</div>
						<div class="k_buysmall">
							<ul class="k_buyul">
								<li><img src="${goodsDetail.img1 }" class="firstimg" /></li>
								<li><img src="${goodsDetail.img2 }" /></li>
								<li><img src="${goodsDetail.img3 }" /></li>
								<li><img src="${goodsDetail.img4 }" /></li>
								<li class="last"><img src="${goodsDetail.img5 }" /></li>
							</ul>
						</div>
					</div>
					<div class="k_buyright">
						<p class="k_buyone">
							<a>新品</a>
						</p>
						<c:if test="${!(goods.goodIsNew eq 1)}">
							<script type="text/javascript">
								$(".k_buyone a").html("");
								$(".k_buyone").css({"background":"none","border":"none"});
							</script>
						</c:if>
						
						<p class="k_buytwo">${goods.goodName }</p>
						<p class="k_buythree">${goods.goodDescribe }</p>
						<div class="k_buyprice">
							<div class="k_buyup">
								<ul class="k_buyupul">
									<li class="k_butlione">
										<span class="k_spanone">价格</span>
										<span class="k_spantwo">￥<span class="k_spanthree">${goods.goodPrice }</span></span>
										<span class="k_spanfour"><span class="k_spanfive"></span>超级会员专享价¥${goodsDetail.VIPPrice }</span>
										<span class="k_spansix"><a href="#">开通即享 ></a></span>

									</li>
									<li class="k_butlitwo">
										<span class="k_spanseven">领券</span>
										<span class="k_spaneighrt">全场每满199减30</span><span class="k_spanicon">2</span><span class="k_spanten">领取</span>
										<span class="k_spaneighrt">全场每满499减30</span><span class="k_spanicon">2</span><span class="k_spanten">领取</span>
										<span class="k_spaneighrt">每满699减115</span><span class="k_spanicon">2</span><span class="k_spanten">领取</span>
									</li>
									<li class="k_bulithree">
										<span class="k_spanele">积分</span>
										<span class="k_spantw">购买最高可得${goods.goodScore }积分</span>
									</li>
									<li class="k_buysever">
										<p class="k_pone"><span class="k_spanele k">服务</span></p>
										<p class="k_ptwo">
											<span class="k_spanthir">･ </span>
											<span class="k_spanfourt">支持三十天无忧退换货</span>
											<span class="k_width"></span>
										</p>

										<p class="k_ptwo">
											<span class="k_spanthir">･ </span>
											<span class="k_spanfourt">48小时快速退款</span>
										</p>

										<p class="k_ptwo">
											<span class="k_spanthir">･ </span>
											<span class="k_spanfourt">满88元免邮费</span>
										</p>
										<p class="k_ptwo">
											<span class="k_spanthir">･ </span>
											<span class="k_spanfourt">网易自营品牌</span>
										</p>
										<p class="k_ptwo">
											<span class="k_spanthir">･ </span>
											<span class="k_spanfourt">国内部分地区无法配送</span>
										</p>

									</li>
								</ul>

							</div>

						</div>
						<div class="k_clcolor">
							<ul class="k_colorul">
								<li class="first">颜色</li>
								<c:forEach items="${ColorList}" var="color">
									<li id="${color.colorId}"><img src="${color.imgUrl}" /></li>
								</c:forEach>
							</ul>
						</div>
						<div class="k_ruler">
							<ul class="k_rulerul">
								<li class="first">尺码</li>
								<c:forEach items="${sizeList }" var="list">
									<li id="${list.sizePriId }" value="${list.sizePrice }">${list.size }</li>
								</c:forEach>
							</ul>
						</div>
						
						<script type="text/javascript">
							var color="";
							var ruler="";
							$(function (){
								$(".k_colorul :not(:first-child)").click(function(){
									  $(this).addClass("colactive").siblings().removeClass("colactive");
									  color= $(this).attr("id");//颜色
								});
								$(".k_rulerul :not(:first-child)").click(function(){
									  $(this).addClass("rulactive").siblings().removeClass("rulactive");
									  $(".k_buyup .k_spanthree").html($(this).attr("value"));
									  ruler= $(this).attr("id");//尺寸
								});
								
							});
						</script>
						<div class="k_num">
							<ul class="k_numul">
								<li class="first">数量</li>
								<li class="second">-</li>
								<li class="third">1</li>
								<li class="fourth">+</li>
								<li class="fifth"><span class="img"></span><span class="text">尺码助手</span></li>
							</ul>
						</div>
						<div class="k_buycar">
							<ul class="k_buycarul">
								<li class="first">
									<a>立即购买</a>
								</li>
								<script type="text/javascript">
									$(".k_buycar .first").click(function(){
										var url = "../ShowSCarServlet?id="+cusId;
										location.href = url;
									});
								</script>
								<li class="second"><span></span>
									<a>加入购物车</a>
								</li>
							</ul>
							<%-- <c:if test="${empty cus }"></c:if> --%>
							<script type="text/javascript">
							$(".k_buycarul li").click(function(){
								var goodId = ${goodsDetail.goodId };
								var num = $(".k_num .third").html();
								var money = $(".k_buyup .k_spanthree").html();
								if(flag){
									alert("请先登录");
									var tourl = "login.html";
									location.href = tourl;
								}else{
									if(color!=""&&ruler!=""){
										  $.ajax({
												"async":true,
												"type":"GET",
												"url":"../ShoppingCarServlet",
												"data":{
													"cusId":cusId,
													"goodId":goodId,
													"colorId":color,
													"rulerId":ruler,
													"num":num,
													"money":money
												},
												"success":function(obj){
													alert(obj);
												}
											});
									  }
								}
							});
							</script>
							<div class="k_collect">
								<p class="k_collecticon"><span></span></p>
								<p class="k_collecttext">收藏</p>
							</div>
						</div>
					</div>

				</div>

				<div class="k_dehot">
					<div class="k_dehottitle">
						大家都在看
					</div>
					<div class="k_dehotmess">
						<ul class="k_dehotul">
							<li>
								<p class="k_hotimg"><img src="img/k_hot.png" /></p>
								<span class="k_hotcolor">2色可选</span>
								<span class="k_hotdu">断码清仓</span>
								<h4><span class="k_hotname">女式小香风短款针织开衫</span></h4>
								<span class="k_hotprice">￥349</span>
								<span class="k_hoticon"></span>
							</li>
							<li>
								<p class="k_hotimg"><img src="img/k_hot.png" /></p>
								<span class="k_hotcolor">2色可选</span>
								<span class="k_hotdu">断码清仓</span>
								<h4><span class="k_hotname">女式小香风短款针织开衫</span></h4>
								<span class="k_hotprice">￥349</span>
								<span class="k_hoticon"></span>
							</li>
							<li>
								<p class="k_hotimg"><img src="img/k_hot.png" /></p>
								<span class="k_hotcolor">2色可选</span>
								<span class="k_hotdu">断码清仓</span>
								<h4><span class="k_hotname">女式小香风短款针织开衫</span></h4>
								<span class="k_hotprice">￥349</span>
								<span class="k_hoticon"></span>
							</li>
							<li>
								<p class="k_hotimg"><img src="img/k_hot.png" /></p>
								<span class="k_hotcolor">2色可选</span>
								<span class="k_hotdu">断码清仓</span>
								<h4><span class="k_hotname">女式小香风短款针织开衫</span></h4>
								<span class="k_hotprice">￥349</span>
								<span class="k_hoticon"></span>
							</li>
						</ul>
						<ul class="k_dehotul">
							<li>
								<p class="k_hotimg"><img src="img/k_buy1.png" /></p>
								<span class="k_hotcolor">2色可选</span>
								<span class="k_hotdu">断码清仓</span>
								<h4><span class="k_hotname">女式小香风短款针织开衫</span></h4>
								<span class="k_hotprice">￥349</span>
								<span class="k_hoticon"></span>
							</li>
							<li>
								<p class="k_hotimg"><img src="img/k_buy1.png" /></p>
								<span class="k_hotcolor">2色可选</span>
								<span class="k_hotdu">断码清仓</span>
								<h4><span class="k_hotname">女式小香风短款针织开衫</span></h4>
								<span class="k_hotprice">￥349</span>
								<span class="k_hoticon"></span>
							</li>
							<li>
								<p class="k_hotimg"><img src="img/k_buy1.png" /></p>
								<span class="k_hotcolor">2色可选</span>
								<span class="k_hotdu">断码清仓</span>
								<h4><span class="k_hotname">女式小香风短款针织开衫</span></h4>
								<span class="k_hotprice">￥349</span>
								<span class="k_hoticon"></span>
							</li>
							<li>
								<p class="k_hotimg"><img src="img/k_buy1.png" /></p>
								<span class="k_hotcolor">2色可选</span>
								<span class="k_hotdu">断码清仓</span>
								<h4><span class="k_hotname">女式小香风短款针织开衫</span></h4>
								<span class="k_hotprice">￥349</span>
								<span class="k_hoticon"></span>
							</li>
						</ul>
						<p class="k_hotprev"></p>
						<p class="k_hotnext"></p>
					</div>
				</div>

				<div class="k_demessage">
					<div class="k_demeleft">
						<div class="k_demetitle">
							<ul class="k_demeul">
								<li class="active">详情</li>
								<li>评价<span class="spanactive">(3)</span></li>
								<li>尺码表</li>
								<li>常见问题</li>
							</ul>
						</div>
						<div class="k_demetext">
								<ul class="k_demetextul">
									
								<c:if test="${not empty goodsDetail.title01 }">
									<li><span class="name">${goodsDetail.title01 }</span><span class="value">${goodsDetail.msg01 }</span></li>
								</c:if>
								<c:if test="${not empty goodsDetail.title02 }">
									<li><span class="name">${goodsDetail.title02 }</span><span class="value">${goodsDetail.msg02 }</span></li>
								</c:if>
								<c:if test="${not empty goodsDetail.title03 }">
									<li><span class="name">${goodsDetail.title03 }</span><span class="value">${goodsDetail.msg03 }</span></li>
								</c:if>
								<c:if test="${not empty goodsDetail.title04 }">
									<li><span class="name">${goodsDetail.title04 }</span><span class="value">${goodsDetail.msg04 }</span></li>
								</c:if>
								<c:if test="${not empty goodsDetail.title05 }">
									<li><span class="name">${goodsDetail.title05 }</span><span class="value">${goodsDetail.msg05 }</span></li>
								</c:if>
								<c:if test="${not empty goodsDetail.title06 }">
									<li><span class="name">${goodsDetail.title06 }</span><span class="value">${goodsDetail.msg06 }</span></li>
								</c:if>
								<c:if test="${not empty goodsDetail.title07 }">
									<li><span class="name">${goodsDetail.title07 }</span><span class="value">${goodsDetail.msg07 }</span></li>
								</c:if>
								
								<li class="k_buysevice">
									<span class="name names">售后服务</span>
									<span class="value">${goodsDetail.afterSale }</span>
								</li>
							</ul>
							<div class="k_bigimg">
								<c:forEach items="${imgesList}" var="img">
									<img src="${img.goodImgUrl }" />
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="k_demeright">
						<div class="k_hotrank">
							<div class="k_demetitle">
								<h2>24小时热销榜</h2>
							</div>
							<div class="k_hotrankimg">
								<ul>
									<li>
										<img src="img/k_hotrank.png" />
										<div class="k_rankcon">
											<p class="k_rankname">大丈夫冻干牛肉面 6杯装</p>
											<p class="k_rankprice">￥33.9<span></span></p>
										</div>
									</li>
									<li>
										<img src="img/k_hotrank.png" />
										<div class="k_rankcon">
											<p class="k_rankname">大丈夫冻干牛肉面 6杯装</p>
											<p class="k_rankprice">￥33.9<span></span></p>
										</div>
									</li>
									<li>
										<img src="img/k_hotrank.png" />
										<div class="k_rankcon">
											<p class="k_rankname">大丈夫冻干牛肉面 6杯装</p>
											<p class="k_rankprice">￥33.9<span></span></p>
										</div>
									</li>
									<li>
										<img src="img/k_hotrank.png" />
										<div class="k_rankcon">
											<p class="k_rankname">大丈夫冻干牛肉面 6杯装</p>
											<p class="k_rankprice">￥33.9<span></span></p>
										</div>
									</li>
									<li>
										<img src="img/k_hotrank.png" />
										<div class="k_rankcon">
											<p class="k_rankname">大丈夫冻干牛肉面 6杯装</p>
											<p class="k_rankprice">￥33.9<span></span></p>
										</div>
									</li>
									<li>
										<img src="img/k_hotrank.png" />
										<div class="k_rankcon">
											<p class="k_rankname">大丈夫冻干牛肉面 6杯装</p>
											<p class="k_rankprice">￥33.9<span></span></p>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="k_recom">
							<div class="k_demetitle">
								<h2>专题推荐</h2>
							</div>
							<div class="k_recomimg">
								<ul class="k_recomul">
									<li><img src="img/k_recom.jpg" />
										<p>严选爆品进化论</p>
									</li>
									<li><img src="img/k_recom.jpg" />
										<p>严选爆品进化论</p>
									</li>
									<li><img src="img/k_recom.jpg" />
										<p>严选爆品进化论</p>
									</li>
									<li><img src="img/k_recom.jpg" />
										<p>严选爆品进化论</p>
									</li>
									<li><img src="img/k_recom.jpg" />
										<p>严选爆品进化论</p>
									</li>
								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>

		<!--
        	底部
        -->
		<div class="foot w">
			<div>
				<h4>客户服务</h4>
				<div class="serviceTel">
					<div class="kefuBtn">
						<div class="ic3"></div>
						<span class="msg">在线客服</span>
					</div>
					<div class="feedbackBtn">
						<div class="ic4"></div>
						<span class="msg">用户反馈</span>
					</div>
				</div>
			</div>
			<div>
				<h4>为何严选</h4>
				<p>网易原创生活类电商品牌，秉承网易一贯的严谨态度，我们深入世界各地，从源头全程严格把控商品生产环节，力求帮消费者甄选到优质的商品</p>
				<div class="connect">
					<div class="title">
						关注我们 :
					</div>
					<div class="ic5"></div>
					<div class="ic6"></div>
					<div class="ic7"></div>
				</div>
			</div>
			<div>
				<h4>扫码下载严选APP</h4>
				<img src="img/zt-img/ewm.png" />
				<span>下载领1000元新人礼包</span>
			</div>
		</div>
		<div class="foot1">
			<div class="box w">
				<ul class="foot1-list1">
					<li>
						<span class="img1"></span>
						<span class="text">
        					30天无忧退换货
        				</span>
					</li>
					<li>
						<span class="img2"></span>
						<span class="text">
        					满88元免邮费
        				</span>
					</li>
					<li>
						<span class="img3"></span>
						<span class="text">
        					网易品质保证
        				</span>
					</li>
				</ul>
				<div class="bottom">
					<div class="nav">
						<a href="###">关于我们</a>
						<a href="###">|</a>
						<a href="###">帮助中心</a>
						<a href="###">|</a>
						<a href="###">售后服务</a>
						<a href="###">|</a>
						<a href="###">配送与验收</a>
						<a href="###">|</a>
						<a href="###">商务合作</a>
						<a href="###">|</a>
						<a href="###">企业采购</a>
						<a href="###">|</a>
						<a href="###">开放平台</a>
						<a href="###">|</a>
						<a href="###">推荐搜索</a>
						<a href="###">|</a>
						<a href="###">友情链接</a>
					</div>
					<div class="copyright">
						<span>网易公司版权所有 © 1997-2018   食品经营许可证：JY13301080111719 出版物经营许可证：新出发滨字第0132号 单用途商业预付卡备案证：330100AAC0024</span>
					</div>
					<img src="img/zt-img/cpr.gif" />
				</div>
			</div>
		</div>
		<div id="footside">
			<div class="footside_img">
				<img src="img/cjm_img/listGIF.gif"/>
			</div>
			<div class="footside_new">
				<i></i>
				<a href="###">新人有礼</a>
			</div>
			<div class="footside_canvas">
				<img src="img/cjm_img/canvas.png"/>
			</div>
			<div class="footside_canvas">
				<span>扫码领</span>APP1000元新人奖
			</div>
			<div class="footside_new footside_read">
				<i></i>
				<a href="###">订阅电子刊</a>
			</div>
			<div class="footside_new footside_xian">
				<i></i>
				<a href="###">在线客服</a>
			</div>
			<div class="footside_new footside_up">
				<i></i>
				<a href="###">回到顶部</a>
			</div>
			
		</div>
	</body>

</html>