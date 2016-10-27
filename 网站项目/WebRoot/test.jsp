<%@ page language="java" import="java.util.*,action.*,vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  htllo
  <%List<Product> lpro = new ShowAllProduct().GetAllProducts();%>
  <%int count = 9,i=0;
  for(Product p:lpro){%>
  	<div class="product_box">
            	<a href="productdetail.jsp?id=<%=p.getNumber()%>"><img src="images/product/<%=p.getImgpath()%>"/></a>
                <h3>Integer eleifend sed</h3>
                <p class="product_price">$ 100</p>
                <a href="shoppingcart.jsp?id=<%=p.getNumber()%>" class="add_to_card">加入购物车</a>
                <a href="productdetail.jsp?id=<%=p.getNumber()%>" class="detail">详细信息</a>
            </div>
  <% } %>
    
  </body>
</html>
