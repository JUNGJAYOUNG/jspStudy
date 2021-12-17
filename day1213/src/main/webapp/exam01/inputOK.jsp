<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
	%>
	입력한 정보는 다음과 같다.
	<hr>
	이름 : <%=name %><br>
	나이 : <%=age %>
</body>
</html>