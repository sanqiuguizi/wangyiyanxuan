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
		<link rel="stylesheet" type="text/css" href="css/base.css" />
		<link rel="shortcut icon" type="image/x-icon" href='img/zt-img/favicon.ico' />
		<link rel="icon" type="image/x-icon" href='img/zt-img/favicon.ico' />
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<script type="text/javascript" src="js/jQuery-1.12.4.js" ></script>
		<script type="text/javascript" src="js/index.js"></script>
	</head>

	<body>
		<div class="side">
			<img src="img/zt-img/side.gif" />
			<ul>
				<li>
					<span class="img1"></span>
					<span class="kf">在线客服</span>
				</li>
				<li>
					<span class="img2"></span>
					<span class="kf">订阅电子刊</span>
				</li>
				<li id="gotop" style="display: none;">
					<span class="img3"></span>
					<span class="kf">回到顶部</span>
				</li>
			</ul>
		</div>
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
					<li>
						<a href="###">【福利】下载严选APP，抢1元包邮团，领...</a>
					</li>					
				</ul>
				<span id="app"><i></i>APP</span>
				<ul class="list">
					<li>|</li>
					<li>
						<a>我的订单</a>
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
        	固定顶部导航
        -->
		<div class="fixtop" id="fixtop">
			<div class="box w">
				<ul class="tabnav">
					<li>
						<a href="###" id="select">首页</a>
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
						<a href="home.html">居家</a>
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
					</li>
					<li>
						<a href="###">婴童</a>
					</li>
					<li>
						<a href="k_stationery.html">文体</a>
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
		</div>
		<!--
        	顶部内容
        -->
		<div class="headmain w">
			<a href="###" class="logo"></a>
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
			<ul class="tabnav">
				<li>
					<a href="###">首页</a>
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
				</li>
				<li>
					<a href="###">婴童</a>
				</li>
				<li>
					<a href="k_stationery.html">文体</a>
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
		<!--
        	轮播图
        -->
		<div class="banner">
			<button class="left"></button>
			<button class="right"></button>
			<div class="bn1"></div>
			<div class="bn2"></div>
			<div class="bn3"></div>
			<div class="bn4"></div>
			<div class="bn5"></div>
			<div class="bn6"></div>
			<div class="bn7"></div>
			<div class="bn8"></div>
			<ul class="nav">
				<li class="active"></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div>
		<!--
        	品牌制造商
        -->
		<div class="item w">
			<div class="itemhead">
				<span class="title">
        			品牌制造商
        		</span>
				<span class="text">工厂直达消费者，剔除品牌溢价</span>
				<a href="###" class="more">更多制作商 ></a>
			</div>
			
			<div class="itemcontent">
				<!-- <div class="left">
					<div class="mask m1"></div>
					<div class="name">
						海外制造商
					</div>
					<div class="price">
						9.9元起
					</div>
				</div>
				<div class="center">
					<div class="mask m2"></div>
					<div class="name">
						CK制造商
					</div>
					<div class="price">
						25元起
					</div>
				</div>
				<div class="right">
					<div class="ritem">
						<div class="mask m3"></div>
						<div class="name">新秀丽制造商</div>
						<div class="price">159元起</div>
					</div>
					<div class="ritem item2">
						<div class="mask m4"></div>
						<div class="name">Nine West制造商</div>
						<div class="price">209元起</div>
					</div>
				</div> -->
			</div>
			
			<script type="text/javascript">
			$.ajax({
				"async":true,
				"type":"GET",
				"url":"../IndexBrandServlet",
				"dataType":"json",
				"success":function(obj){
					$(".itemcontent").eq(0).html("");
					var strBrand = '<div class="left"><div class="mask m1"></div><div class="name">'+obj.BrandList[0].BrandName+'</div><div class="price">'+obj.BrandList[0].Price+'元起</div></div><div class="center"><div class="mask m2"></div><div class="name">'+obj.BrandList[1].BrandName+'</div><div class="price">'+obj.BrandList[1].Price+'元起</div></div><div class="right"><div class="ritem"><div class="mask m3"></div><div class="name">'+obj.BrandList[2].BrandName+'</div><div class="price">'+obj.BrandList[2].Price+'元起</div></div><div class="ritem item2"><div class="mask m4"></div><div class="name">'+obj.BrandList[3].BrandName+'</div><div class="price">'+obj.BrandList[3].Price+'元起</div></div></div>';
					$(".itemcontent").eq(0).append(strBrand);
					$(".item .itemcontent .left .m1").css({"background-image":"url("+obj.BrandList[0].ImgURL+")"}).click(function(){
						location.href = obj.BrandList[0].URL;
					});
					$(".item .itemcontent .center .m2").css({"background-image":"url("+obj.BrandList[1].ImgURL+")"}).click(function(){
						location.href = obj.BrandList[1].URL;
					});
					$(".item .itemcontent .right .ritem .m3").css({"background-image":"url("+obj.BrandList[2].ImgURL+")"}).click(function(){
						location.href = obj.BrandList[2].URL;
					});
					$(".item .itemcontent .right .ritem .m4").css({"background-image":"url("+obj.BrandList[3].ImgURL+")"}).click(function(){
						location.href = obj.BrandList[3].URL;
					});
					
				}
			});
			
			</script>
			
		</div>

		<div class="item w" id="other">
			<div class="itemhead">
				<span class="title">
        			新品首发
        		</span>
				<span class="text">为你寻觅世间好物</span>
				<a href="###" class="more">更多新品 ></a>
			</div>
			<div class="itemcontent">
					<div class="listbtl"></div>
					<div class="listbtr"></div>				
				<div class="itemlistbox">
					<ul class="itemlist">
						<li>
							<img src="img/zt-img/1a.png" />
							<span class="tags">
        						<span class="hot">中秋推荐</span>
							<span class="tag">三石福利价</span>
							</span>
							<a href="###">仲秋·拾月 茗月夜月饼礼盒 60克*8枚</a>
							<span class="price">￥128</span>
						</li>
					</ul>
					<script type="text/javascript">
					$.ajax({
						"async":true,
						"type":"GET",
						"url":"../IndexNewGServlet",
						"dataType":"json",
						"success":function(obj){
							$(".itemlist").eq(0).html("");
							for(var i in obj.NewGList){
								var strNewG = '<li><img src="'+obj.NewGList[i].GoodImg+'" /><span class="tags"><span class="hot">品牌专享</span><span class="tag">三石福利价</span></span><a href="../GoodsDetailServlet?Id='+obj.NewGList[i].GoodId+'">'+obj.NewGList[i].GoodName+'</a><span class="price">￥'+obj.NewGList[i].GoodPrice+'</span></li>';
								$(".itemlist").eq(0).append(strNewG);
							}
						}
					});
						
					</script>
				</div>
			</div>
		</div>

		<!--
        	人气商品
        -->
		<div class="popularitem">
			<div class="box w">
				<div class="itemhead">
					<span class="title">
        			人气推荐
        			</span>
					<span class="text1" id="active">编辑推荐</span>
					<span class="text1" >热销总榜</span>
					<a href="###" class="more">更多推荐></a>
				</div>
				<div class="pitemcontent">
					<div class="left">
						<div class="imgbox">
							<img src="img/zt-img/p1.png" />
						</div>
						<div class="msg">
							<span class="tags">
        						<span class="hot">中秋推荐</span>
							<span class="tag">三石福利价</span>
							</span>
							<a href="###">智能马桶盖</a>
							<span class="price">￥1399</span>
						</div>
					</div>
					<div class="right">
						<ul>
							<li>
								<div class="imgbox">
									<img src="img/zt-img/p2.png" />
								</div>
								<div class="msg">
									<span class="tags">
        						<span class="hot">爆品</span>
									<span class="tag">限时购</span>
									</span>
									<a href="###">AB面独立弹簧床垫 进口乳胶</a>
									<span class="price">￥2209.2</span>
								</div>
							</li>
							<li>
								<div class="imgbox">
									<img src="img/zt-img/p2.png" />
								</div>
								<div class="msg">
									<span class="tags">
        						<span class="hot">爆品</span>
									<span class="tag">限时购</span>
									</span>
									<a href="###">AB面独立弹簧床垫 进口乳胶</a>
									<span class="price">￥2209.2</span>
								</div>
							</li>
							<li>
								<div class="imgbox">
									<img src="img/zt-img/p2.png" />
								</div>
								<div class="msg">
									<span class="tags">
        						<span class="hot">爆品</span>
									<span class="tag">限时购</span>
									</span>
									<a href="###">AB面独立弹簧床垫 进口乳胶</a>
									<span class="price">￥2209.2</span>
								</div>
							</li>
							<li>
								<div class="imgbox">
									<img src="img/zt-img/p2.png" />
								</div>
								<div class="msg">
									<span class="tags">
        						<span class="hot">爆品</span>
									<span class="tag">限时购</span>
									</span>
									<a href="###">AB面独立弹簧床垫 进口乳胶</a>
									<span class="price">￥2209.2</span>
								</div>
							</li>
							<li>
								<div class="imgbox">
									<img src="img/zt-img/p2.png" />
								</div>
								<div class="msg">
									<span class="tags">
        						<span class="hot">爆品</span>
									<span class="tag">限时购</span>
									</span>
									<a href="###">AB面独立弹簧床垫 进口乳胶</a>
									<span class="price">￥2209.2</span>
								</div>
							</li>
							<li>
								<div class="imgbox">
									<img src="img/zt-img/p2.png" />
								</div>
								<div class="msg">
									<span class="tags">
        						<span class="hot">爆品</span>
									<span class="tag">限时购</span>
									</span>
									<a href="###">AB面独立弹簧床垫 进口乳胶</a>
									<span class="price">￥2209.2</span>
								</div>
							</li>
						</ul>
						
						<script type="text/javascript">
							$.ajax({
								"async":true,
								"type":"GET",
								"url":"../IndexPopularServlet",
								"dataType":"json",
								"success":function(obj){
									$(".pitemcontent .left").eq(0).html("");
									$(".pitemcontent .right ul").eq(0).html("");
									
									var strAnli = '<div class="imgbox"><img src="'+obj.AnLiList[0].GoodImg+'" /></div><div class="msg"><span class="tags"><span class="hot">中秋推荐</span><span class="tag">三石福利价</span></span><a href="../GoodsDetailServlet?Id='+obj.AnLiList[0].GoodId+'">'+obj.AnLiList[0].GoodName+'</a><span class="price">￥'+obj.AnLiList[0].GoodPrice+'</span></div>';
									$(".pitemcontent .left").eq(0).append(strAnli);
									
									for(var i in obj.AnLiList){
										if(i==0){
											continue;
										}
										var strAnli2 = '<li><div class="imgbox"><img src="'+obj.AnLiList[i].GoodImg+'" /></div><div class="msg"><span class="tags"><span class="hot">爆品</span><span class="tag">限时购</span></span><a href="../GoodsDetailServlet?Id='+obj.AnLiList[i].GoodId+'">'+obj.AnLiList[i].GoodName+'</a><span class="price">￥'+obj.AnLiList[i].GoodPrice+'</span></div></li>';
										$(".pitemcontent .right ul").eq(0).append(strAnli2);
									}
								}
							});
						</script>
					</div>
				</div>
				<!-- -------------------------------------------------- -->
				<div class="pitemcontent" style="display: none;">
					<div class="left">
						<!-- <div class="imgbox">
							<img src="img/zt-img/p3.png" />
						</div>
						<div class="msg">
							<span class="tags">
        						<span class="hot">中秋推荐</span>
							<span class="tag">三石福利价</span>
							</span>
							<a href="###">智能马桶盖</a>
							<span class="price">￥1399</span>
						</div> -->
					</div>
					<div class="right">
						<ul>
							<li>
								<div class="imgbox">
									<img src="img/zt-img/p2.png" />
								</div>
								<div class="msg">
									<span class="tags">
        						<span class="hot">爆品</span>
									<span class="tag">限时购</span>
									</span>
									<a href="###">AB面独立弹簧床垫 进口乳胶</a>
									<span class="price">￥2209.2</span>
								</div>
							</li>
						</ul>
						<script type="text/javascript">
							$.ajax({
								"async":true,
								"type":"GET",
								"url":"../IndexPopularServlet",
								"dataType":"json",
								"success":function(obj){
									$(".pitemcontent .left").eq(1).html("");
									$(".pitemcontent .right ul").eq(1).html("");
									
									var strHot = '<div class="imgbox"><img src="'+obj.HotList[0].GoodImg+'" /></div><div class="msg"><span class="tags"><span class="hot">中秋推荐</span><span class="tag">三石福利价</span></span><a href="../GoodsDetailServlet?Id='+obj.HotList[0].GoodId+'">'+obj.HotList[0].GoodName+'</a><span class="price">￥'+obj.HotList[0].GoodPrice+'</span></div>';
									$(".pitemcontent .left").eq(1).append(strHot);
									
									for(var i in obj.HotList){
										if(i==0){
											continue;
										}
										var strHot2 = '<li><div class="imgbox"><img src="'+obj.HotList[i].GoodImg+'" /></div><div class="msg"><span class="tags"><span class="hot">爆品</span><span class="tag">限时购</span></span><a href="../GoodsDetailServlet?Id='+obj.HotList[i].GoodId+'">'+obj.HotList[i].GoodName+'</a><span class="price">￥'+obj.HotList[i].GoodPrice+'</span></div></li>';
										$(".pitemcontent .right ul").eq(1).append(strHot2);
									}
								}
							});
						</script>
						
					</div>
				</div>
			</div>
		</div>

		<!--
  	抢购
  -->

		<div class="buy w">
			<div class="itemhead">
				<span class="title">
        			限时抢购
        		</span>
				<a href="###" class="more">更多推荐></a>
			</div>
			<div class="itembox">
				<div class="left">
					<div class="name">国庆场</div>
					<div class="name">距离结束还剩</div>
					<div class="time">
						<span class="time1">01</span>
						<span>:</span>
						<span class="time1">01</span>
						<span>:</span>
						<span class="time1">01</span>
					</div>
				</div>
				<div class="right">
					<ul>
						<!-- <li>
							<img src="img/zt-img/p4.png" />
							<div class="msg">
								<h2>鲜果冻</h2>
								<p>果冻里面有真果粒</p>
								<div class="pro">
									<span class="max">
        								<span class="now"></span>
									</span>
									<span class="number">剩余：50件</span>
								</div>
								<span class="price">
        							<span class="new">现实价</span>
								<span class="newprice">￥11.9</span>
								<span class="old">原价</span>
								<span class="oldprice">￥14</span>
								</span>
								<button class="buynow">立即抢购</button>
							</div>
						</li> -->
					</ul>
					<script type="text/javascript">
							$.ajax({
								"async":true,
								"type":"GET",
								"url":"../FlashSaleServlet",
								"dataType":"json",
								"success":function(obj){
									$(".itembox ul").eq(0).html("");
									
									for(var i in obj.FSList){
										var Time = new Date();
										var Time2 = new Date(obj.FSList[i].Time);
										var Tflag =Time2-Time; 
										if(Tflag>0){
											var FSStr = '<li id="'+obj.FSList[i].GoodId+'"><img src="'+obj.FSList[i].GoodImg+'" /><div class="msg"><h2>'+obj.FSList[i].GoodName+'</h2><p>'+obj.FSList[i].GoodDescribe+'</p><div class="pro"><span class="max"><span class="now"></span></span><span class="number">剩余：'+obj.FSList[i].GoodStock+'件</span></div><span class="price"><span class="new">现实价</span><span class="newprice">￥'+obj.FSList[i].GoodPrice+'</span><span class="old">原价</span><span class="oldprice">￥'+obj.FSList[i].OldPrice+'</span></span><button class="buynow">立即抢购</button></div></li>';
											$(".itembox ul").eq(0).append(FSStr);
											$(".buynow").eq(i).click(function(){
												var value = $(this).parent().parent().attr("id");
												var tourl = "../GoodsDetailServlet?Id="+value;
												location.href = tourl;
											});
										}else{
											var FSStr = '<li id="'+obj.FSList[i].GoodId+'"><img src="'+obj.FSList[i].GoodImg+'" /><div class="msg"><h2>'+obj.FSList[i].GoodName+'</h2><p>'+obj.FSList[i].GoodDescribe+'</p><div class="pro"><span class="max"><span class="now"></span></span><span class="number">剩余：'+obj.FSList[i].GoodStock+'件</span></div><span class="price"><span class="new">现实价</span><span class="newprice">￥'+obj.FSList[i].GoodPrice+'</span><span class="old">原价</span><span class="oldprice">￥'+obj.FSList[i].OldPrice+'</span></span><button class="buynow">活动结束</button></div></li>';
											$(".itembox ul").eq(0).append(FSStr);
										}
										
										
									}
									
									
								}
							});
							
							/* function daysBetween(DateOne,DateTwo)
							{
							var OneMonth = DateOne.substring(5,DateOne.lastIndexOf ('-'));
							var OneDay = DateOne.substring(DateOne.length,DateOne.lastIndexOf ('-')+1);
							var OneYear = DateOne.substring(0,DateOne.indexOf ('-'));

							var TwoMonth = DateTwo.substring(5,DateTwo.lastIndexOf ('-'));
							var TwoDay = DateTwo.substring(DateTwo.length,DateTwo.lastIndexOf ('-')+1);
							var TwoYear = DateTwo.substring(0,DateTwo.indexOf ('-'));

							var cha=((Date.parse(OneMonth+'/'+OneDay+'/'+OneYear)- Date.parse(TwoMonth+'/'+TwoDay+'/'+TwoYear))/86400000);
							return cha;
							} */
							
					</script>
					
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
	</body>

</html>