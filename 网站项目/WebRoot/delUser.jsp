<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>删除用户</title>
    
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
        <h2>删除用户</h2>
			<hr/>
			    请输入用户名:
			    <form action="delUser.action" method="post">
			        <table>
			            <tr>
			                <td>用户名:</td>
			                <td><input type="text" name="username"/></td>
			            </tr>
			            <tr>
			                <td></td>
			                <td><input type="submit" value="确定"/></td>
			            </tr>
			        </table>
			    </form>
             <br/>
        <hr/>
        </div> 
</body>
</html>