<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//세션을 파기합니다.
	session.invalidate();	
	response.sendRedirect("login.jsp");
%>
</body>
</html>