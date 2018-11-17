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
		<meta charset="UTF-8">
		<title>购物车 - 网易严选</title>
		<link rel="stylesheet" type="text/css" href="css/cjm_css/base.css" />
		<link rel="stylesheet" type="text/css" href="css/cjm_css/home.css" />
		<link rel="stylesheet" type="text/css" href="css/cjm_css/shopping.css"/>
		<!-- <script src="js/jQuery-1.12.4.js" type="text/javascript" charset="utf-8"></script> -->
		<script src="js/jquery-1.8.3.js" type="text/javascript" charset="utf-8"></script>
		<!--<script src="js/cjm_jq/home.js" type="text/javascript" charset="utf-8"></script>-->
		<script src="js/cjm_jq/shopping.js" type="text/javascript" charset="utf-8"></script>
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
					</c:otherwise>
				</c:choose>
			</div>
		</div>

		<!--
        	顶部内容
        -->
		<div class="head_all">
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
						<a href="index.jsp">首页</a>

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
		<div id="headflo">
			<div class="headmain w headflomain">
				<a href="###" class="logo headflomain_logo"></a>
				<div class="ic1"></div>
				<div class="ic3"></div>
				<div class="ic2"></div>
				<ul class="tabnav headflo_tabnav">
					<li>
						<a href="###">首页</a>

					</li>
					<li>
						<a href="###">居家</a>
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
						<a href="###">鞋包配饰</a>
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
						<a href="###">服装</a>
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
						<a href="###">电器</a>
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
						<a href="###">洗护</a>
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
						<a href="###">文体</a>
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
						<a href="###">特色区</a>
					</li>
					
				</ul>
			</div>
		</div>
		<!--中间-->
		<div class="scon_hd">
			<i></i>
			<p>购物车可领优惠券</p>
			<div class="scon_hd_check">
				<span>查看优惠券</span><i></i>
			</div>
		</div>
		
		<div id="scon_tt">
			<ul>
				<input type="checkbox" name="all" id="all" value="" />
				<li class="w1">全选</li>
				<li class="w2">商品信息</li>
				<li class="w3">单价</li>
				<li class="w4">数量</li>
				<li class="w5">小计</li>
				<li class="w6">操作</li>
			</ul>
		</div>
		<div class="trget">
		<c:forEach items="${requestScope.SCList }" var="sc">
			<div class="cart">
				<ul>
					<li class="w7"><input type="checkbox" name="" id="" value="${sc.shoppingCarId }" /></li>
					<li class="w8">
						<img src="${sc.goodImg }"/>
						<p>${sc.goodName }</p>
						<p>${sc.size }&nbsp;&nbsp;&nbsp;${sc.colorName }</p>
					</li>
					<li class="w9">￥<span>${sc.goodPrice }</span></li>
					<li class="w10">
						<input class="reduce" type="button" name="" id="" value="-" />
						<input class="number" type="text" name="" id="" value="${sc.num }" onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)" onblur="this.v();"/>
						<input class="add" type="button" name="" id="" value="+" />
					</li>
					<li class="w11">￥<span>${sc.money }</span></li>
					<li class="w12">删除</li>
				</ul>
			</div>
		</c:forEach>
		</div>
		<div class="total">
			<ul>
				<li class="h1"><input type="checkbox" name="" id="" value="" /></li>
				<li class="h2">全选<span id="yixuan"></span></li>
				<li class="h3">批量删除</li>
				<li class="h4">清空失效商品</li>
				<li class="h5">商品合计：￥<span>0.00</span></li>
				<li class="h6">应付总额：<span class="all_fu">￥</span><span id="allmoney">0.00</span></li>
				<li class="h7">下单</li>
			</ul>
		</div>

		<!--
        	底部
        -->
		<div class="foot_all">
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