<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员修改密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="styles/manage.css" />
	
	<script>
	function check()
    {
      with (document.all) {
      if (pwd1.value != pwd2.value) {
        alert("两次输入密码不一致!")
        pwd1.value = "";
        pwd2.value = "";
        pwd2.focus();
      } else
        document.forms[0].submit();
     }
    }
	</script>
	
</head>

<body>
        <div>
        <br/><br/>
        <h2>修改密码</h2>
        <hr/>
        <form action="resetPSD.action" method="post">
                        <table align="center">
                            <tr>
                                <td>
                                    用户名:
                                </td>
                                <td>
                                    <input type="text" name="username" />
                                    "
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    原密码:
                                </td>
                                <td>
                                    <input type="text" name="oldpwd" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    新密码:
                                </td>
                                <td>
                                    <input type="text" name="newpwd1" id="pwd1" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    确认密码:
                                </td>
                                <td>
                                    <input type="text" name="newpwd2" id="pwd2" />
                                    "
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <input type="submit" value="确定" onclick="check()" />
                                    <a href="login.jsp">返回登录界面</a>
                                </td>
                            </tr>
                        </table>
                    </form>
                    
             <br/>
        <hr/>
        </div> 
</body>
</html>