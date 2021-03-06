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
		<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>网易严选 - 以严谨的态度，为中国消费者甄选天下优品</title>
		<link rel="stylesheet" type="text/css" href="css/k_base.css" />
		<link rel="shortcut icon" type="image/x-icon" href='img/zt-img/favicon.ico' />
		<link rel="icon" type="image/x-icon" href='img/zt-img/favicon.ico' />
		<link rel="stylesheet" type="text/css" href="css/k_home.css"/>
		<link rel="stylesheet" type="text/css" href="css/k_clothes.css" />
		<script src="js/jQuery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/ShoeAndBag.js" type="text/javascript" charset="utf-8"></script>
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
				<c:choose>
					<c:when test="${empty sessionScope.cus}">
						<a href="register.html" id="res">注册</a>
						<a href="login.html" id="log">登录</a>
					</c:when>
					<c:otherwise>
						<a id="res">${sessionScope.cus.cusEmail }</a>
						<a id="log">欢迎</a>
						<script type="text/javascript">
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

		<div class="main">

			<div class="k_main">
				<div class="k_title">
					<p>
						<a href="#">首页</a><span></span>服装</p>
				</div>
				<div class="k_cllunbo">
					<ul class="k_cllist">
							<li>
							<a href="#"><img src="img/k_clothes0.jpg" /></a>
						</li>
						<li>
							<a href="#"><img src="img/k_clothes1.jpg" /></a>
						</li>
						<li>
							<a href="#"><img src="img/k_clothes2.png" /></a>
						</li>
						
					</ul>
					<p class="k_clprev"></p>
					<p class="k_clnext"></p>
					<ul class="k_clactive">
						<!--<li class="active"></li>
					<li></li>-->
					</ul>

				</div>
				<div class="k_clcontent">
					<div class="k_clnav">
						<div class="k_type">
							<dl class="k_typedl">
								<dt>分类 :</dt>
								<dd>
									<!--<a href="#" class="color">全部</a>
								<a href="#">毛衫</a>-->
								</dd>
							</dl>
						</div>
						<div class="k_area">
							<dl class="k_areadl">
								<dt>配送地区 :</dt>
								<dd>
									<!--<a href="#" class="color">全部</a>
								<a href="#">香港</a>-->
								</dd>
							</dl>
						</div>
						<div class="k_rank">
							<dl class="k_rankdl">
								<dt>排序 :</dt>
								<dd>
									<a class="color default">默认</a>
									<a class="price"><span class="rankprice">价格</span>
										<p><span class="k_rankup"></span><span class="k_rankdown"></span></p>
									</a>
									<a class="upTime">上架时间<span class="k_ranktime"></span></a>
								</dd>
							</dl>
						</div>
					</div>

					<div class="k_clcon">
						<div class="k_clcontitle">
							<h2>行李箱</h2>
							<p>带着梦想即刻出发</p>
						</div>

						<div class="k_data">
							<ul class="k_dataul clearfix">
								<!--<li>
									<p class="k_daimg">
										<a href="#"><img src="img/k_clothes3.png" /></a>
										<span>2色可选</span>
									</p>
									<div class="k_datext">
										<span>新品</span>
										<h4><a href="#">女式小香风针织羊毛套头衫</a></h4>
										<p class="k_daprice">￥269</p>
										<p class="k_daintr">尊重极简的优雅身上感</p>
									</div>
								</li>-->
							</ul>
						</div>

						<!-- <div class="k_clcontitle">
							<h2>羽绒</h2>
							<p>穿出时尚感，轻盈温暖一冬天</p>
						</div> -->

						<div class="k_data">
							<ul class="k_dataul clearfix">
								<!--<li>
									<p class="k_daimg">
										<a href="#"><img src="img/k_clothes3.png" /></a>
										<span>2色可选</span>
									</p>
									<div class="k_datext">
										<span>新品</span>
										<h4><a href="#">女式小香风针织羊毛套头衫</a></h4>
										<p class="k_daprice">￥269</p>
										<p class="k_daintr">尊重极简的优雅身上感</p>
									</div>
								</li>-->
							</ul>
						</div>
						
						<!-- <div class="k_clcontitle">
							<h2>牛仔裤</h2>
							<p>牛仔，时尚舒适</p>
						</div> -->

						<div class="k_data">
							<ul class="k_dataul clearfix">
								<!--<li>
									<p class="k_daimg">
										<a href="#"><img src="img/k_clothes3.png" /></a>
										<span>2色可选</span>
									</p>
									<div class="k_datext">
										<span>新品</span>
										<h4><a href="#">女式小香风针织羊毛套头衫</a></h4>
										<p class="k_daprice">￥269</p>
										<p class="k_daintr">尊重极简的优雅身上感</p>
									</div>
								</li>-->
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