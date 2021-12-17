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
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="m" class="com.sist.vo.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="m"/>

입력정보는 다음과 같습니다.<hr>
아이디: <%=m.getId() %><br>
비밀번호: <%=m.getPasswd() %><br>
이름: <%=m.getName() %><br>
전화번호: <%=m.getPhone1() %> - <%=m.getPhone2() %> - <%=m.getPhone3() %><br>
성별: <%=m.getSex() %><br>

취미: 
<%
	if(m.getHobby() != null){
		for(String h:m.getHobby()){
			out.println(h + " ");
		}
	}
%><br>

지역: <%=m.getCity() %><br>
하고싶은말: <%=m.getComment() %><br>
</body>
</html>