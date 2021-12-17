<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insertGoodsOK.jsp" method="post" enctype="multipart/form-data">
	<p>상품번호: <input type="text" name="no"></p>
	<p>상품명: <input type="text" name="name"></p>
	<p>가격: <input type="text" name="price"></p>
	<p>수량: <input type="text" name="qty"></p>
	<p>파일: <input type="file" name="fname"></p>
	<p><input type="submit" value="확인"></p>
	</form>
</body>
</html>