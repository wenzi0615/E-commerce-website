<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>查看所有商品</title>
		<meta name="keywords"
			content="station shop, theme, about us, company, free templates, web design, CSS, HTML" />
		<meta name="description"
			content="Station Shop, About Us, Company, free CSS template by templatemo.com" />
		<link href="styles/templatemo_style.css" rel="stylesheet"
			type="text/css" />

		<link rel="stylesheet" type="text/css" href="styles/ddsmoothmenu.css" />

		<script type="text/javascript" src="scripts/jquery.min.js"></script>
		<script type="text/javascript" src="scripts/ddsmoothmenu.js">
	/***********************************************
	 * Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
	 * This notice MUST stay intact for legal use
	 * Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
	 ***********************************************/
</script>

		<script language="javascript" type="text/javascript">
	function clearText(field) {
		if (field.defaultValue == field.value)
			field.value = '';
		else if (field.value == '')
			field.value = field.defaultValue;
	}
</script>

		<script type="text/javascript">
	ddsmoothmenu.init( {
		mainmenuid : "top_nav", //menu DIV id
		orientation : 'h', //Horizontal or vertical menu: Set to "h" or "v"
		classname : 'ddsmoothmenu', //class added to menu's outer DIV
		//customtheme: ["#1c5a80", "#18374a"],
		contentsource : "markup" //"markup" or ["container_id", "path_to_menu_file"]
	})
</script>

		<link rel="stylesheet" type="text/css" media="all"
			href="styles/jquery.dualSlider.0.2.css" />

		<script src="scripts/jquery-1.3.2.min.js" type="text/javascript"></script>
		<script src="scripts/jquery.easing.1.3.js" type="text/javascript"></script>
		<script src="scripts/jquery.timers-1.2.js" type="text/javascript"></script>
		

	</head>

	<body>

		<div id="templatemo_wrapper">
			<div id="templatemo_header">

				<div id="site_title">
					<h1>
						<a href="index.jsp"></a>
					</h1>
				</div>

				<div id="header_right">
					<a href="#">我的账户</a> | <a href="shoppingcart.jsp">我的购物车</a> | <a href="checkout.jsp">结算</a> | <a href="login.jsp">登录</a>

				</div>
				<div class="cleaner"></div>
			</div>
			<!-- END of templatemo_header -->

			<div id="templatemo_menu">
				<div id="top_nav" class="ddsmoothmenu">
					<ul>
						<li>
							<a href="index.jsp">首页</a>
						</li>
						<li>
							<a href="products.jsp">商品</a>
							<ul>
								<li><a href="products.jsp">图书、音像、数字商品</a></li>
		                        <li><a href="products.jsp">家用电器</a></li>
		                        <li><a href="products.jsp">手机、数码</a></li>
		                        <li><a href="products.jsp">电脑、办公</a></li>
		                        <li><a href="products.jsp">家居、家具、家装、厨具</a></li>
		                        <li><a href="products.jsp">服饰内衣</a></li>
		                        <li><a href="products.jsp">个护化妆</a></li>
		                        <li><a href="products.jsp">鞋靴、箱包、钟表、珠宝</a></li>
		                        <li><a href="products.jsp">运动健康</a></li>
		                        <li><a href="products.jsp">汽车用品</a></li>
		                        <li><a href="products.jsp">母婴、玩具乐器</a></li>
		                        <li><a href="products.jsp">食品饮料、保健食品</a></li>
		                        <li><a href="products.jsp">彩票、旅行、充值、票务</a></li>
							</ul>
						</li>
						<li>
							<a href="about.jsp" class="selected">关于</a>
							<ul>
								<li><a href="about.jsp">公司信息</a></li>
		                        <li><a href="about.jsp">新闻中心</a></li>
		                        <li><a href="about.jsp">投资者关系</a></li>
		                        <li><a href="about.jsp">企业公民</a></li>
		                        <li><a href="about.jsp">活动日历</a></li>
							</ul>
						</li>
						<li>
							<a href="faqs.jsp">常见问题</a>
						</li>
						<li>
							<a href="checkout.jsp">结算</a>
						</li>
						<li>
							<a href="contact.jsp">联系我们</a>
						</li>
					</ul>
					<br style="clear: left" />
				</div>
				<!-- end of ddsmoothmenu -->
				<div id="menu_second_bar">
					<div id="top_shopping_cart">
						购物车:
						<strong>3 件商品</strong> (
						<a href="#">我的购物车</a> )
					</div>
					<div id="templatemo_search">
						<form action="#" method="get">
							<input type="text" value="搜 索" name="keyword" id="keyword"
								title="keyword" onfocus="clearText(this)"
								onblur="clearText(this)" class="txt_field" />
							<input type="submit" name="Search" value=" 搜 索 " alt="Search"
								id="searchbutton" title="Search" class="sub_btn" />
						</form>
					</div>
					<div class="cleaner"></div>
				</div>
			</div>
			<!-- END of templatemo_menu -->

			<div id="templatemo_main">
				<div id="sidebar" class="float_l">
					<div class="sidebar_box">
						<span class="bottom"></span>
						<h3>
							全部商品分类
						</h3>
						<div class="content">
							<ul class="sidebar_list">
								<li class="first">
									<a href="#">图书、音像、数字商品</a>
								</li>
								<li>
									<a href="#">家用电器</a>
								</li>
								<li>
									<a href="#">手机、数码</a>
								</li>
								<li>
									<a href="#">电脑、办公</a>
								</li>
								<li>
									<a href="#">家居、家具、家装、厨具</a>
								</li>
								<li>
									<a href="#">服饰内衣</a>
								</li>
								<li>
									<a href="#">个护化妆</a>
								</li>
								<li>
									<a href="#">鞋靴、箱包、钟表、珠宝</a>
								</li>
								<li>
									<a href="#">运动健康</a>
								</li>
								<li>
									<a href="#">汽车用品</a>
								</li>
								<li>
									<a href="#">母婴、玩具乐器</a>
								</li>
								<li>
									<a href="#">食品饮料、保健食品</a>
								</li>
								<li>
									<a href="#">彩票、旅行、充值、票务</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="sidebar_box">
						<span class="bottom"></span>
						<h3>
							推荐产品
							<br />
						</h3>
						<div class="content">
							<div class="bs_box">
								<a href="#"><img src="images/left1.jpg"
										alt="Image 01" />
								</a>
								<h4>
									<a href="#">Donec nunc nisl</a>
								</h4>
								<p class="price">
									$10
								</p>
								<div class="cleaner"></div>
							</div>
							<div class="bs_box">
								<a href="#"><img src="images/left2.jpg"
										alt="Image 02" />
								</a>
								<h4>
									<a href="#">Aenean eu tellus</a>
								</h4>
								<p class="price">
									$12
								</p>
								<div class="cleaner"></div>
							</div>
							<div class="bs_box">
								<a href="#"><img src="images/left3.jpg"
										alt="Image 03" />
								</a>
								<h4>
									<a href="#">Phasellus ut dui</a>
								</h4>
								<p class="price">
									$20
								</p>
								<div class="cleaner"></div>
							</div>
							<div class="bs_box">
								<a href="#"><img src="images/left4.jpg"
										alt="Image 04" />
								</a>
								<h4>
									<a href="#">Vestibulum ante</a>
								</h4>
								<p class="price">
									$16
								</p>
								<div class="cleaner"></div>
							</div>
						</div>
					</div>
				</div>
				<div id="content" class="float_r">

					<ul class="templatemo_list"></ul>
					<div class="cleaner h20"></div>
					<br>
					<div class="cleaner"></div>
					<h1>
						查看所有商品
					</h1>
					<hr>
					<table border=1>
						<tr>
						<th>名称</th>
						<th>图片</th>
						<th>数量</th>
						<th>价格</th>
						<th>种类</th>
						<th>描述</th>
						</tr>
						<%@page import="daoimpl.ProductDaoImpl"%>
						<%@page import="vo.Product"%>
						<%
							ProductDaoImpl pressAll =new ProductDaoImpl();
							List<Product>  PA= pressAll.getAllGoods();
							for(int i=0;i<PA.size();i++)
							{
								Product p=PA.get(i);
								out.print("<tr>");
								out.print("<td"+p.getName()+"></td>");
								out.print("<td"+p.getImgpath()+"</td>");
								out.print("<td"+p.getNumber()+"></td>");
								out.print("<td"+p.getPrice()+"></td>");
								out.print("<td>"+p.getCategory()+"</td>");
								out.print("<td>"+p.getComment()+"</td>");
								out.print("</tr>");
							}
						%>
					</table>
                    
                
				</div>
				<div class="cleaner"></div>
			</div>
			<!-- END of templatemo_main -->

			<div id="templatemo_wrapper">
				<div id="templatemo_footer">
					<br />
					<p>
						<a href="index.jsp">首页</a> |
						<a href="products.jsp">商品</a> |
						<a href="about.jsp">关于</a> |
						<a href="faqs.jsp">常见问题</a> |
						<a href="checkout.jsp">结算</a> |
						<a href="contact.jsp">联系我们</a>
					</p>
					Copyright &copy; 2048
					<a href="index.jsp">淘金网</a> |
					<a href="index.jsp" target="_parent">taojin.com</a>
					by
					<a href="index.jsp" target="_parent">淘金公司</a>
				</div>
				<!-- END of templatemo_footer -->

			</div>
			<!-- END of templatemo_wrapper -->
	</body>
</html>