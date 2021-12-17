<%@page import="com.sist.vo.GoodsVO"%>
<%@page import="com.sist.dao.GoodsDAO"%>
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
	int no = Integer.parseInt(request.getParameter("no"));
	GoodsDAO dao = GoodsDAO.getInstance();
	GoodsVO g = dao.getGoods(no);
%>
<h2>상품수정</h2>
<hr>
<form action="updateGoodsOK.jsp" method="post" enctype="multipart/form-data">
	<input type="hidden" name="no" value="<%=g.getNo()%>"><br>
	<p>상품명: <input type="text" name="name" value="<%=g.getName()%>"></p>
	<p>가격: <input type="text" name="price" value="<%=g.getPrice()%>"></p>
	<p>수량: <input type="text" name="qty" value="<%=g.getQty()%>"></p>
	<img src="goods/<%=g.getFname()%>" width="30" height="30"><br>
	
	<input type="hidden" name="fname" value="<%=g.getFname() %>">
	<p>파일: <input type="file" name="uploadFile"></p>
	<p><input type="submit" value="수정"></p>
</form>
</body>
</html>