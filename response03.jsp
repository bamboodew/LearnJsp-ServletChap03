<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>   <!-- 引用类 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="myJs.js"></script>
	<%
		String userName=null;
		String pwd=null;
		Cookie[] cookies=request.getCookies();   //获取所有的cookie
		for(int i=0;cookies !=null && i<cookies.length;i++){
			if(cookies[i].getName().equals("userNameAndPwd")){
				userName=cookies[i].getValue().split("-")[0];   //数组
				pwd=cookies[i].getValue().split("-")[1];
			}
		}
		
		if(userName==null){
			userName="";
		}
		
		if(pwd==null){
			pwd="";
		}
	%>
</head>
<body>
	<!-- method:
	 get:http://localhost:8080/HeadFirstJspServletChap03/userLogin.jsp?userName=123&pwd=1234
	 post:http://localhost:8080/HeadFirstJspServletChap03/userLogin.jsp-->
	<form action="userLogin.jsp" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" id="userName" name="userName" value="<%=userName%>"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" id="pwd" name="pwd" value="<%=pwd%>"></td>
			</tr>
			<tr>
				<td>记住密码：</td>
				<td><input type="checkbox" id="remember" name="remember" value="remember-me"></td>
			</tr>
			<tr>
				<td><input type="submit" value="登录"></td>
				<td><input type="button" value="重置" onclick="resetValue()"></td>
			</tr>
		</table>
	</form>
</body>
</html>