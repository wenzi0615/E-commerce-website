<%@ page language="java" import="java.util.*,daoimpl.*,vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Station Shop Theme - Shopping Cart Page</title>
<meta name="keywords" content="station shop, cart, free templates, website templates, CSS, HTML" />
<meta name="description" content="Station Shop, Shopping Cart, free CSS template by templatemo.com" />
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
	        <%String lo = request.getParameter("logout");
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
																															<% if(username != null){%>
				 | <a href="?logout=true">登出</a> 
				<%
				 }%>
		</div>
        
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_header -->
    
    <div id="templatemo_menu">
    	<div id="top_nav" class="ddsmoothmenu">
            <ul>
                <li><a href="index.jsp">首页</a></li>
                <li><a href="products.jsp">商品</a>
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
                <li><a href="about.jsp">关于</a>
                    <ul>
                        <li><a href="about.jsp">公司信息</a></li>
                        <li><a href="about.jsp">新闻中心</a></li>
                        <li><a href="about.jsp">投资者关系</a></li>
                        <li><a href="about.jsp">企业公民</a></li>
                        <li><a href="about.jsp">活动日历</a></li>
                  	</ul>
                </li>
                <li><a href="faqs.jsp">常见问题</a></li>
<!--                <li><a href="checkout.jsp">结算</a></li>-->
                <li><a href="contact.jsp">联系我们</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of ddsmoothmenu -->
        <div id="menu_second_bar">
        	<div id="top_shopping_cart">
            	<%
					List<Record> lrr = (List<Record>)session.getAttribute("records");
					int count = 0;
					if(lrr != null)
						count = lrr.size();
				%>
            	购物车: <strong><%=count%> 件商品</strong> ( <a href="shoppingcart.jsp">我的购物车</a> )
            </div>
        	<div id="templatemo_search">
                <form action="#" method="get">
                  <input type="text" value="搜索" name="keyword" id="keyword" title="keyword" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
<!--                  <input type="submit" name="Search" value=" 搜 索 " alt="Search" id="searchbutton" title="Search" class="sub_btn"  />-->
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
            	<h3>推荐商品</h3>   
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
        <div id="content" class="float_r">
        <br/>
        <div class="cleaner"></div>
        	<h1>我的购物车</h1>
        	<hr/>
        	<table width="680px" cellspacing="0" cellpadding="5">
                   	  	<tr bgcolor="#ddd">
                        	<th width="220" align="left">图片 </th> 
                        	<th width="180" align="left">名称 </th> 
                       	  	<th width="100" align="center">数量 </th> 
                        	<th width="60" align="right">单价</th> 
                        	<th width="60" align="right">总价</th> 
                        	<th width="90"> </th>
                      	</tr>
                      	<%String proId = request.getParameter("productId");
                      	  String proQty = request.getParameter("quantity");
                      	  if(proId == null || proQty == null){
                      	  	proId = request.getParameter("id");
                      	  	proQty = "1";
                      	  }
                      	  List<Record> lr = (List<Record>)session.getAttribute("records");
                      	  if(proId != null){
	                      	  if(lr == null){
	                      	  	lr = new ArrayList();
	                      	  }
	                      	  Record rec = new Record();
	                      	  Product p = new ProductDaoImpl().getProductByNumber(proId);
	                      	  rec.setImgpath(p.getImgpath());
	                      	  rec.setName(p.getName());
	                      	  rec.setNumber(p.getNumber());
	                      	  rec.setQuantity(proQty);
	                      	  //rec.setPrice(p.getPrice());
	                      	  float price = Float.parseFloat(p.getPrice());
	                      	  float totalPrice = Integer.parseInt(proQty) * price;
	                      	  rec.setPrice(price);
	                      	  rec.setTotal_price(totalPrice);
	                      	  lr.add(rec);
	                      	  session.setAttribute("records", lr);
                      	  }
                      	  float total = 0;
                      	  String removeId = request.getParameter("remove");
                      	  if(removeId != null){
	                      	  for(int j = 0; j < lr.size(); ++j){
	                      	  	if(lr.get(j).getNumber().equals(removeId)){
	                      	  		lr.remove(j);
	                      	  	}
	                      	  }
                      	  }
                      	  for(int i = 0; i < lr.size(); ++i){
                      	  	%>
                      	  	<tr>
	                        	<td><img src="images/product/<%=lr.get(i).getImgpath()%>"/></td> 
	                        	<td><%=lr.get(i).getName()%></td> 
	                            <td align="center"><input type="text" value="<%=lr.get(i).getQuantity()%>" style="width: 20px; text-align: right" /> </td>
	                            <td align="right">￥<%=lr.get(i).getPrice()%> </td> 
	                            <td align="right">￥<%=lr.get(i).getTotal_price()%> </td>
	                            <td align="center"> <a href=?remove=<%=lr.get(i).getNumber()%>>移除</a> </td>
							</tr>
                      	  	<%
                      	  	total += lr.get(i).getTotal_price();
                      	  }
                      	%>
                        <tr>
                        	<td colspan="3" align="right"  height="30px">你想修改你的购物车吗？请点击这里<a href="shoppingcart.jsp"><strong>修改</strong></a>
                            <td align="right" style="background:#ddd; font-weight:bold">总计</td>
                            <td align="right" style="background:#ddd; font-weight:bold">￥<%=total%> </td>
                            <td style="background:#ddd; font-weight:bold"> </td>
						</tr>
					</table>
                    <div style="float:right; width: 215px; margin-top: 20px;">
                    <form action="checkout.jsp" method="post">
                    	<input type="hidden" id="total" name="total" value="<%=total%>"/>
                    	<input type="submit" value="进行结算" name="checkout" onclick="checkout()"/>"
                    </form>
                    <p><a href="javascript:history.back()">继续购物</a></p>
                    	
                    </div>
            
        </div> 
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_main -->
    
    <div id="templatemo_footer">
    	<p>
			<a href="index.jsp">首页</a> | <a href="products.jsp">商品</a> | <a href="about.jsp">关于</a> | <a href="faqs.jsp">常见问题</a> | <a href="checkout.jsp">结算</a> | <a href="contact.jsp">联系我们</a>
		</p>

    	Copyright © 2048 <a href="index.jsp">淘金网</a> | <a href="index.jsp">taojin.com</a> by <a href="index.jsp">淘金公司</a>
    </div> <!-- END of templatemo_footer -->
    
</div> <!-- END of templatemo_wrapper -->
</body>
</html>