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
        <h2>添加用户</h2>
          <hr/>
          <br/>
                <form action="addUser.action" method="post">
                    <table width="325" height="365">
                        <tr>
                            <td>用户名:</td>
                            <td><input type="text" name="username"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
               密   码 :
                            </td>
                            <td>
                                <input type="text" name="password"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                邮箱:
                            </td>
                            <td>
                                <input type="text" name="mail"/>
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