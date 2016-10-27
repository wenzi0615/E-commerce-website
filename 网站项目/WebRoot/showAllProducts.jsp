<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加类别</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="styles/manage.css" />
</head>

<body>
        <div>
        <br/><br/>
        <h2>查看所有商品</h2>
                    <hr/>
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
                                out.print("<td>"+p.getName()+"</td>");
                                //<img src="images/templatemo_image_01.jpg" alt="Image 04" />
                                out.print("<td><img src=\"images/product/"+p.getImgpath()+"\"/></td>");
                                out.print("<td>"+p.getNumber()+"</td>");
                                out.print("<td>"+p.getPrice()+"</td>");
                                out.print("<td>"+p.getCategory()+"</td>");
                                out.print("<td>"+p.getComment()+"</td>");
                                out.print("</tr>");
                            }
                        %>
                    </table>
             <br/>
        <hr/>
        </div> 
</body>
</html>