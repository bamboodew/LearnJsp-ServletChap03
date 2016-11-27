<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%
		int totalBuffer=out.getBufferSize(); //获得总缓存区的大小
		int available = out.getRemaining(); //获取未使用的缓存区大小
		int using = totalBuffer - available;   //获取正在使用的缓存区大小
		out.println("总共缓存区大小："+totalBuffer);
		out.println("未使用的缓存区大小："+available);
		out.println("使用的缓存区大小："+using);
	%>
</body>
</html>