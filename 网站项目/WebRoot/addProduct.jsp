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
        <h2>添加商品</h2>
          <hr/>
          <br/>
                <form action="Add.action" method="post">
                    <table width="325">
                        <tr>
                            <td>
                                商品编号:
                            </td>
                            <td>
                                <input type="text" name="number"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                商品名称:
                            </td>
                            <td>
                                <input type="text" name="name"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                商品价格:
                            </td>
                            <td>
                                <input type="text" name="price"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                商品种类:
                            </td>
                            <td>
                                <input type="text" name="category"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                图片路径:
                            </td>
                            <td>
                                <input type="file" name="path" value="查看"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                商品数量:
                            </td>
                            <td>
                                <input type="text" name="quantity"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                制造商:
                            </td>
                            <td>
                                <input type="text" name="manufacturer"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                样式:
                            </td>
                            <td>
                                <input type="text" name="style"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                商品描述:
                            </td>
                            <td>
                                <textarea name="comment"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" value="确定"/>
                            </td>
                        </tr>
                    </table>
                </form>
             <br/>
        <hr/>
        </div> 
</body>
</html>