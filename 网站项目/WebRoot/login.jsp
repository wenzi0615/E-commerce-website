<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>登录</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="login_styles.css">
	-->

		<style type="text/css" href="login_styles.css">
		
<!--
body{
	background: #FFDAB9;
}
#Layer1 {
	position: absolute;
	left: 137px;
	top: 107px;
	width: 335px;
	height: 307px;
	z-index: 1;
}

#Layer2 {
	position: absolute;
	left: 685px;
	top: 109px;
	width: 295px;
	height: 305px;
	z-index: 2;
}

#Layer3 {
	position: absolute;
	left: 158px;
	top: 22px;
	width: 286px;
	height: 61px;
	z-index: 3;
}
#Layer4 {
	position: absolute;
	font-weight: 600;
	color: black;
-->
</style>
	</head>

	<body>
		<div id="Layer1">
			<img src="images/login_bg.jpg" width="480" height="380">
		</div>
		<div id="Layer2">

			<form action="Login.action" method="post">
				<table width="264" height="269" align="center">
					<tr>
						<td>
							用户名:
						</td>
						<td>
							<input type="text" name="username">
						</td>
					</tr>
					<tr>
						<td>
							密 码:
						</td>
						<td>
							<input type="password" name="password">
					</tr>
					<tr>
						<td></td>
						<td>
							<input name="submit" type="submit" value="提交">
							<input name="button" type="button" onClick=
	register();
value="注册">
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Layer3" style="left: 158px; width: 241px; top: 22px; height: 86px;">
			<img src="images/templatemo_logo.png"
				style="top: 0px; left: 0px; width: 240px; height: 83px;">
		</div>
		<div id="Layer3" style="left: 400px; width: 66px; top: 80px; height: 21px;">
			<a href="index.jsp">返回首页</a>
		</div>
		<script>
	function register() {
		location = "register.jsp";
	}
</script>&nbsp; </body>
</html>
