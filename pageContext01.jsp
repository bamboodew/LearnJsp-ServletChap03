<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page errorPage="error.jsp" %>   <!-- 信息自动跳转至error.jsp -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%
		//上下文pageContext可以取属性值
		pageContext.setAttribute("name0", "pageInfo");   //内置对象pageContext
		request.setAttribute("name1", "requestInfo");   //内置对象request
		session.setAttribute("name2", "sessionInfo");   //内置对象session
		application.setAttribute("name3", "applicationInfo");   //内置对象application
		
		out.println("使用pageContext<br/>");
		out.println("page中的属性值："+pageContext.getAttribute("name0")+"<br/>");
		out.println("request中的属性值："+pageContext.getRequest().getAttribute("name1")+"<br/>");
		out.println("session中的属性值："+pageContext.getSession().getAttribute("name2")+"<br/>");
		out.println("application中的属性值："+pageContext.getServletContext().getAttribute("name3")+"<br/>");
	%>
</body>
</html>