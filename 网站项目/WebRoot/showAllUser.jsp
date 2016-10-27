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
        <h2>查看所有用户</h2>
                    <hr/>
                    <table border=1>
                        <tr>
                        <th>用户名</th>
                        <th>密码</th>
                        <th>邮箱</th>
                        </tr>
                        <%@page import="daoimpl.UserDaoImpl"%>
                        <%@page import="vo.Product"%>
                        <%@page import="vo.User"%>
                        <%
                            UserDaoImpl alluser=new UserDaoImpl();
                            List<User>  us=alluser.findAllUser();
                            for(int i=0;i<us.size();i++)
                            {
                                User u=us.get(i);
                                out.print("<tr>");
                                out.print("<td>"+u.getName()+"</td>");
                                out.print("<td>"+u.getPassword()+"</td>");
                                out.print("<td>"+u.getMail()+"</td>");
                                out.print("</tr>");
                            }
                        %>
                    </table>
             <br/>
        <hr/>
        </div> 
</body>
</html>