<%@page import="com.sist.dao.GoodsDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("euc-kr"); 	%>
<jsp:useBean id="goods" class="com.sist.vo.Goods"></jsp:useBean>
<jsp:useBean id="dao" class="com.sist.dao.GoodsDAO"></jsp:useBean>
<jsp:setProperty property="*" name="goods"/>

<% 
	int re=dao.insertGoods(goods);
	if(re==1){
		%>
			��ǰ��Ͽ� �����Ͽ����ϴ�.
		<%
	}else{
		%>
			��ǰ��Ͽ� �����Ͽ����ϴ�.
		<% 
	}
%>
</body>
</html>