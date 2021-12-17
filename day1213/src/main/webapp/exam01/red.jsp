<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="red">
	<h2>red입니다.</h2>
	<jsp:forward page="yellow.jsp"/> <!-- 반드시/>로 닫아줘야한다 -->
</body>
</html>