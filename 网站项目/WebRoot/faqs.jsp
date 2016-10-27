<%@ page language="java" import="java.util.*,vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>常见问题解答</title>
<meta name="keywords" content="station shop, FAQs, free templates, website templates, CSS, HTML" />
<meta name="description" content="Station Shop Theme, FAQs, free CSS template provided by templatemo.com" />
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

</head>

<body>

<div id="templatemo_wrapper">
	<div id="templatemo_header">
    	
    	<div id="site_title">
        	<h1><a href="index.jsp"></a></h1>
        </div>
        
        <div id="header_right">
	        <%String username = (String)session.getAttribute("username");
					%>
					<a href="#">我的账户</a> | <a href="shoppingcart.jsp">我的购物车</a> | <a href="checkout.jsp">结算</a> | <% if(username != null){ 
																																out.print(username);
																															}else{%>
																																<a href="login.jsp">登录</a>
																															<%}%>
		</div>
        
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_header -->
    
    <div id="templatemo_menu">
    	<div id="top_nav" class="ddsmoothmenu">
            <ul>
                <li><a href="index.jsp">首页</a></li>
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
                <li><a href="faqs.jsp" class="selected">常见问题</a></li>
                <li><a href="checkout.jsp">结算</a></li>
                <li><a href="contact.jsp">联系我们</a></li>
            </ul>
            <br style="clear: left" />
        </div> 
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
    
    <div id="templatemo_main">
   		<div id="sidebar" class="float_l">
        	<div class="sidebar_box"><span class="bottom"></span>
            	<h3>全部商品分类</h3>   
                <div class="content"> 
                	<ul class="sidebar_list">
                    	<li class="first"><a href="products.jsp">图书、音像、数字商品</a></li>
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
                        <li class="last"><a href="products.jsp">彩票、旅行、充值、票务</a></li><li class="last"><br /></li>
                    </ul>
                </div>
            </div>
            <div class="sidebar_box"><span class="bottom"></span>
            	<h3>推荐产品 </h3>   
                <div class="content"> 
                	<div class="bs_box">
                    	<a href="#"><img src="images/left1.jpg" alt="Image 01" /></a>
                        <h4><a href="#">Donec nunc nisl</a></h4>
                        <p class="price">$10</p>
                        <div class="cleaner"></div>
                    </div>
                    <div class="bs_box">
                    	<a href="#"><img src="images/left2.jpg" alt="Image 02" /></a>
                        <h4><a href="#">Aenean eu tellus</a></h4>
                        <p class="price">$12</p>
                        <div class="cleaner"></div>
                    </div>
                    <div class="bs_box">
                    	<a href="#"><img src="images/left3.jpg" alt="Image 03" /></a>
                        <h4><a href="#">Phasellus ut dui</a></h4>
                        <p class="price">$20</p>
                        <div class="cleaner"></div>
                    </div>
                    <div class="bs_box">
                    	<a href="#"><img src="images/left4.jpg" alt="Image 04" /></a>
                        <h4><a href="#">Vestibulum ante</a></h4>
                        <p class="price">$16</p>
                        <div class="cleaner"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="content" class="faq float_r">
			<h2>常见问题解答</h2>
            <h3>我怎么知道你收到我的订单吗?</h3>
            <p>你会收到一封电子邮件确认您的订单已收到。如果您没有收到一封电子邮件确认,请检查是否输入的电子邮件地址在你的订单是正确的。</p>
            
            <h3>我的订单什么时候发货?</h3>
            <p>请阅读我们的航运政策。 <a href="#">点击这里</a></p>
            
            <h3>你接受什么付款方式?</h3>
            <p>yinlian网上银行和支付宝。</p>
            
            <h3>我可以退货或换货如果我不喜欢它吗?</h3>
            <p>Please read our exchange policy. Click <a href="#">here</a></p>
            
            <h3>我怎么知道在线订购是安全的吗?</h3>
            <p>
            保护你的信息是荣耀银的当务之急。我们使用安全套接字层(SSL)加密您的信用卡号码,姓名和地址所以只有荣耀银能够解码信息。SSL安全通信行业标准方法对电脑没有风险的数据拦截、操纵或收件人的模拟。可以肯定的是你的连接是安全的,当你在购物车,查看下角落你的浏览器窗口。如果你看到一个完整的钥匙或关闭锁,SSL是活跃的,你的信息是安全的。因为大多数的客户仍然不舒服在线提供你的信用卡,我们使用银联网上银行和支付宝服务,所以他们不需要提供信用卡信息。
 验证 <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> &amp; <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</p>
            <p><br /> 
            </p>		
            <h3>你的隐私政策是什么?</h3>
            <p>淘金网尊重你的隐私,要确保你了解什么信息我们需要完成你的订单,,你可以选择与我们分享什么信息,与我们的营销合作伙伴。在我们的隐私政策的完整信息,请访问我们的 <a href="#">隐私政策</a> 页。 </p>
       <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
        </div> 
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_main -->
    
    <div id="templatemo_footer">
    	<p>
			<a href="index.jsp">首页</a> | <a href="products.jsp">商品</a> | <a href="about.jsp">关于</a> | <a href="faqs.jsp">常见问题</a> | <a href="checkout.jsp">结算</a> | <a href="contact.jsp">联系我们</a>
		</p> 
 
    	Copyright &copy; 2048 <a href="index.jsp">淘金网</a> | <a href="index.jsp" target="_parent">taojin.com</a> by <a href="index.jsp" target="_parent">F淘金公司</a>
    </div> <!-- END of templatemo_footer -->
    
</div> <!-- END of templatemo_wrapper -->

</body>
</html>