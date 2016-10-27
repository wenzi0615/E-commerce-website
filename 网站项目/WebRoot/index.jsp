<%@ page language="java" import="java.util.*,action.*,vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>主页</title>
<meta name="keywords" content="station shop, theme, free template, templatemo, CSS, HTML" />
<meta name="description" content="Station Shop Theme, free CSS template provided by wzsky.net" />
<link href="styles/templatemo_style.css" rel="stylesheet" type="text/css" />
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
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "top_nav", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

<link rel="stylesheet" type="text/css" media="all" href="styles/jquery.dualSlider.0.2.css" />

<script src="scripts/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="scripts/jquery.easing.1.3.js" type="text/javascript"></script>
<script src="scripts/jquery.timers-1.2.js" type="text/javascript"></script>
<script src="scripts/jquery.dualSlider.0.3.min.js" type="text/javascript"></script>

<script type="text/javascript">
    
    $(document).ready(function() {
        
        $(".carousel").dualSlider({
            auto:true,
            autoDelay: 6000,
            easingCarousel: "swing",
            easingDetails: "easeOutBack",
            durationCarousel: 1000,
            durationDetails: 600
        });
        
    });
    
</script>

</head>

<body>

<div id="templatemo_wrapper">
	<div id="templatemo_header">
    
    	<div id="site_title">
        	<h1><a href="http://www.wzsky.net"></a></h1>
        </div>    
        <div id="header_right">
	        <%
	        String lo = request.getParameter("logout");
	        if(lo != null && lo.equals("true")){
	        	session.setAttribute("username", null);
	        }
	        String username = (String)session.getAttribute("username");
					%>
					<a href="#">我的账户</a> | <a href="shoppingcart.jsp">我的购物车</a> | <a href="checkout.jsp">结算</a> | <% if(username != null){ 
																																out.print(username);
																															}else{%>
																																<a href="login.jsp">登录</a>
																															<%}%>
																															<%if(username != null && username.equals("admin")){
					%>| <a href="main.html">商品管理</a> 
				<%
				 }%>
				 <% if(username != null){%>
				 | <a href="?logout=true">登出</a> 
				<%
				 }%>
		</div>
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_header -->
    
    <div id="templatemo_menu"><div align="center"> 
    	</div><div id="top_nav" class="ddsmoothmenu"><div align="center"></div>
    	<ul>
                <li><a href="index.jsp" class="selected">首页 </a></li>
                <li><a href="products.jsp">商品</a> 
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
                <li><a href="about.jsp">关于</a>
                    <ul>
                        <li><a href="about.jsp">公司信息</a></li>
                        <li><a href="about.jsp">新闻中心</a></li>
                        <li><a href="about.jsp">投资者关系</a></li>
                        <li><a href="about.jsp">企业公民</a></li>
                        <li><a href="about.jsp">活动日历</a></li>
                  </ul>
                </li>
                <li><a href="faqs.jsp">常见问题</a></li>
                <li><a href="checkout.jsp">结算</a></li>
                <li><a href="contact.jsp">联系我们</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of ddsmoothmenu -->
        <div id="menu_second_bar">
        	<div id="top_shopping_cart">
            	<%
					List<Record> lr = (List<Record>)session.getAttribute("records");
					int count = 0;
					if(lr != null)
						count = lr.size();
				%>
            	购物车: <strong><%=count%> 件商品</strong> ( <a href="shoppingcart.jsp">我的购物车</a> )
            </div>
        	<div id="templatemo_search">
                <form action="#" method="get">
                  <input type="text" value="搜索" name="keyword" id="keyword" title="keyword" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
                  <input type="submit" name="Search" value=" 搜 索 " alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
                </form>
            </div>
            <div class="cleaner"></div>
    	</div>
    </div> <!-- END of templatemo_menu -->
    
    <div id="templatemo_middle" class="carousel">
    	<div class="panel">
				<div class="details_wrapper">
					<div class="details">
						<div class="detail">
							<h2><a href="http://www.qunar.com/">去哪儿</a></h2>
                            <p><a href="http://www.qunar.com/">去哪儿</a> 是全球最大的中文旅行平台。 <a href="http://www.qunar.com/">www.qunar.com</a> 通过网站及移动客户端的全平台覆盖，随时随地为旅行者提供国内外机票、酒店、度假、旅游团购、及旅行信息的深度搜索，帮助旅行者找到性价比最高的产品和最优质的信息。 </p>
							<a href="http://www.qunar.com/" title="Read more" class="more">更多</a>
						</div><!-- /detail -->
						
						<div class="detail">
							<h2><a href="http://www.iqiyi.com/">爱奇艺</a></h2>
                            <p><a href="http://www.iqiyi.com/">爱奇艺</a> 由全球最大的中文搜索引擎百度创立 <a href="http://www.iqiyi.com/">www.iqiyi.com</a> 坚持追求极致的用户体验，成为积极推动产品、技术、内容、营销等全方位创新的行业标杆。 </p>
							<a href="http://www.iqiyi.com/" title="Read more" class="more">更多</a>
						</div><!-- /detail -->
						
						<div class="detail">
							<h2><a href="http://www.58.com/">58同城</a></h2>
                            <p><a href="http://www.58.com/">58同城</a> 2005年12月创立于北京。 <a href="http://www.58.com/">www.58.com</a> 服务覆盖生活的各个领域，提供房屋租售、招聘求职、商家黄页、二手物品买卖、二手车交易、娱乐等多种生活信息。 </p>
							<a href="http://www.58.com/" title="Read more" class="more">更多</a>
						</div><!-- /detail -->
						
					</div><!-- /details -->
					
				</div><!-- /details_wrapper -->
				
				<div class="paging">
					<div id="numbers"></div>
					<a href="javascript:void(0);" class="previous" title="Previous" >Previous</a>
					<a href="javascript:void(0);" class="next" title="Next">Next</a>
				</div><!-- /paging -->
				
				<a href="javascript:void(0);" class="play" title="Turn on autoplay">Play</a>
				<a href="javascript:void(0);" class="pause" title="Turn off autoplay">Pause</a>
				
			</div><!-- /panel -->
	
			<div class="backgrounds">
				
				<div class="item item_1">
					<img src="images/slider/02.jpg" alt="Slider 01" width="700" height="340"/>
				</div><!-- /item -->
				
				<div class="item item_2">
					<img src="images/slider/03.jpg" alt="Slider 02" width="700" height="340"/>
				</div><!-- /item -->
				
				<div class="item item_3">
					<img src="images/slider/01.jpg" alt="Slider 03" width="700" height="340"/>
				</div><!-- /item -->
				
			</div><!-- /backgrounds -->
    </div> <!-- END of templatemo_middle -->
    
    <div id="templatemo_main">
   		<div id="sidebar" class="float_l">
        	<div class="sidebar_box"><span class="bottom"></span>
            	<h3>全部商品分类</h3>   
                <div class="content"> 
                	<ul class="sidebar_list">
                    	<%@page import="daoimpl.MenuListDaoImpl"%>
						<%@page import="vo.MenuList"%>
						<%
							MenuListDaoImpl pressAll =new MenuListDaoImpl();
							List<MenuList>  MA= pressAll.getAllMenuLists();
							for(int i=0;i<MA.size();i++)
							{
								MenuList m=MA.get(i);    %>
								<li><a href="#">
						<%		
								out.print(m.getContent());
							}
						%>
                    </ul>
                </div>
            </div>
            <div class="sidebar_box"><span class="bottom"></span>
            	<h3>推荐商品 </h3>   
                <div class="content"> 
                	<div class="bs_box">
                    	<a href="#"><img src="images/left1.jpg" alt="Image 01" /></a>
                        <h4><a href="#">Donec nunc nisl</a></h4>
                        <p class="price">￥10</p>
                        <div class="cleaner"></div>
                    </div>
                    <div class="bs_box">
                    	<a href="#"><img src="images/left2.jpg" alt="Image 02" /></a>
                        <h4><a href="#">Aenean eu tellus</a></h4>
                        <p class="price">￥12</p>
                        <div class="cleaner"></div>
                    </div>
                    <div class="bs_box">
                    	<a href="#"><img src="images/left3.jpg" alt="Image 03" /></a>
                        <h4><a href="#">Phasellus ut dui</a></h4>
                        <p class="price">￥20</p>
                        <div class="cleaner"></div>
                    </div>
                    <div class="bs_box">
                    	<a href="#"><img src="images/left4.jpg" alt="Image 04" /></a>
                        <h4><a href="#">Vestibulum ante</a></h4>
                        <p class="price">￥16</p>
                        <div class="cleaner"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="content" class="float_r">
        	<h1>新商品</h1>
            <div class="product_box">
            	<a href="productdetail.jsp"><img src="images/product/01.jpg" alt="Image 01" /></a>
                <h3>Integer eleifend sed</h3>
                <p class="product_price">￥ 100</p>
                <a href="shoppingcart.jsp?id=123" class="add_to_card">加入购物车</a>
                <a href="productdetail.jsp?id=123" class="detail">详细信息</a>
            </div>        	
            <div class="product_box">
            	<a href="productdetail.jsp"><img src="images/product/02.jpg" alt="Image 02" /></a>
                <h3>Nam cursus facilisis</h3>
                <p class="product_price">￥ 200</p>
                <a href="shoppingcart.jsp" class="add_to_card">加入购物车</a>
                <a href="productdetail.jsp" class="detail">详细信息</a>
            </div>        	
            <div class="product_box no_margin_right">
            	<a href="productdetail.jsp"><img src="images/product/03.jpg" alt="Image 03" /></a>
                <h3>Mauris consectetur</h3>
                <p class="product_price">￥ 120</p>
                <a href="shoppingcart.jsp" class="add_to_card">加入购物车</a>
                <a href="productdetail.jsp" class="detail">详细信息</a>
            </div>        	
            <div class="product_box">
            	<a href="productdetail.jsp"><img src="images/product/04.jpg" alt="Image 04" /></a>
                <h3>Proin volutpat</h3>
                <p class="product_price">￥ 260</p>
                <a href="shoppingcart.jsp" class="add_to_card">加入购物车</a>
                <a href="productdetail.jsp" class="detail">详细信息</a>
            </div>        	
            <div class="product_box">
            	<a href="productdetail.jsp"><img src="images/product/05.jpg" alt="Image 05" /></a>
                <h3>Aenean tempus</h3>
                <p class="product_price">￥ 80</p>
                <a href="shoppingcart.jsp" class="add_to_card">加入购物车</a>
                <a href="productdetail.jsp" class="detail">详细信息</a>
            </div>        	
            <div class="product_box no_margin_right">
            	<a href="productdetail.jsp"><img src="images/product/06.jpg" alt="Image 06" /></a>
                <h3>Nulla, Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> &amp; <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</h3>
                <p class="product_price">￥ 193</p>
                <a href="shoppingcart.jsp" class="add_to_card">加入购物车</a>
                <a href="productdetail.jsp" class="detail">详细信息</a>
            </div>        	
            <div class="product_box">
            	<a href="productdetail.jsp"><img src="images/product/07.jpg" alt="Image 07" width="195" height="150"/></a>
                <h3>Pellentesque egestas</h3>
                <p class="product_price">￥ 30</p>
                <a href="shoppingcart.jsp" class="add_to_card">加入购物车</a>
                <a href="productdetail.jsp" class="detail">详细信息</a>
            </div>        	
            <div class="product_box">
            	<a href="productdetail.jsp"><img src="images/product/08.jpg" alt="Image 08" /></a>
                <h3>Suspendisse fermentum</h3>
                <p class="product_price">￥ 220</p>
                <a href="shoppingcart.jsp" class="add_to_card">加入购物车</a>
                <a href="productdetail.jsp" class="detail">详细信息</a>
            </div>        	
            <div class="product_box no_margin_right">
            	<a href="productdetail.jsp"><img src="images/product/09.jpg" alt="Image 09" width="188" height="150"/></a>
                <h3>Donec laoreet velit</h3>
                <p class="product_price">￥ 65</p>
                <a href="shoppingcart.jsp" class="add_to_card">加入购物车</a>
                <a href="productdetail.jsp" class="detail">详细信息</a>
            </div>  
        </div> 
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_main -->
    
    <div id="templatemo_footer">
    	<p>
			<a href="index.jsp">首页</a> | <a href="products.jsp">商品</a> | <a href="about.jsp">关于</a> | <a href="faqs.jsp">常见问题</a> | <a href="checkout.jsp">结算</a> | <a href="contact.jsp">联系我们</a>
		</p>

    	Copyright © 2048 <a href="index.jsp">淘金网</a> | <a href="index.jsp" target="_parent">taojin.com</a> by <a href="index.jsp" target="_parent">淘金公司</a>
    </div> <!-- END of templatemo_footer -->
    
</div> <!-- END of templatemo_wrapper -->

</body>
</html>