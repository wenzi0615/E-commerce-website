<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <link href="styles/iii.css" rel="stylesheet" type="text/css">
    <style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:187px;
	top:336px;
	width:314px;
	height:78px;
	z-index:1;
}
#Layer2 {
	position:absolute;
	left:74px;
	top:60px;
	width:679px;
	height:296px;
	z-index:1;
}
-->
    </style>
</head>
    <script>
  	function clearPage()
  	{
  		document.getElementById('usn').value="";
  		document.getElementById('pwd1').value="";
  		document.getElementById('pwd2').value="";
  		document.getElementById('mail').value="";
  	}

	function check() {
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
  <body class="rbg">
    <form action="Register.action" method="post">
<table width="503" align="center">
    		<tr>
    			<td height="68" align="right">
    				用户名:    			</td>
    			<td>
    				<input type="text" id="usn" name="usn"/>    			</td>
    		</tr>
    		<tr>
    			<td height="63" align="right">
    				密    码:    			</td>
    			<td>
    				<input name="pwd1" type="password" class="iii" id="pwd1"/>    			</td>
    		</tr>
    		<tr>
    			<td height="67" align="right">
    				确认密码:    			</td>
    			<td>
    				<input name="pwd2" type="password" class="iii" id="pwd2"/>    			</td>
    		</tr>
    		<tr>
    			<td height="52" align="right">
    				邮箱:    			</td>
    			<td>
    				<input name="mail" type="text" class="iii" id="mail"/>    			</td>
    		</tr>
    		<tr>
    			<td>    			</td>
   			  <td>
			    <input type="button" class="oo" onClick="check()" value="提交"/>
			    <input name="button" type="button" class="oo" onClick="clearPage()" value="清空"/></td>
    		</tr>
   	  </table>
    </form>
</body>
</html>
