<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkForm(){
		var name = document.f.name.value;
		if( !isNaN(name.substr(0,1))){	<!-- isNaN함수 not a number의 줄임말로 전달된 매개변수값이 숫자가 아니면 true반환  -->
			alert("이름은 숫자로 시작할 수 없습니다!");
			document.f.name.select();
			return false;
		}	
		document.f.sumbit();
	}
</script>

</head>
<body>
	<form name="f" action="validation02_process.jsp" method="post">
		이름: <input type="text" name="name">
		<input type="button" value="전송" onclick="checkForm()">
	</form>
</body>
</html>