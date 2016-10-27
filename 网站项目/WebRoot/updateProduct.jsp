<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>更新类别</title>
    
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
        <h2>更新商品</h2>
                    <hr/>
                    请输入商品编号以修改信息，若不修改则不填写.
                    <form action="Update.action" method="post">
                        <table>
                            <tr>
                                <td>
                                    商品编号:
                                </td>
                                <td>
                                    <input type="text" name="number" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    商品名称:
                                </td>
                                <td>
                                    <input type="text" name="name" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    商品价格:
                                </td>
                                <td>
                                    <input type="text" name="price" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    商品数量:
                                </td>
                                <td>
                                    <input type="text" name="quantity" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    商品描述:
                                </td>
                                <td>
                                    <input type="text" name="comment" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    制造商:
                                </td>
                                <td>
                                    <input type="text" name="manufacturer" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    商品种类:
                                </td>
                                <td>
                                    <input type="text" name="category" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    商品图片:
                                </td>
                                <td>
                                    <input type="file" name="path" />
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <input type="submit" value="确定" />
                                </td>
                            </tr>
                        </table>
                    </form>
             <br/>
        <hr/>
        </div> 
</body>
</html>