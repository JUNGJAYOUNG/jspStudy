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
		String []list = {"홍길동","이순신","유관순"};
		for(String name: list){
			%>
				<li>
				<%=name %>
				</li>
			<%
		}
	%>
</body>
</html>