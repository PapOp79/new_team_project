<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script>
		function del(){
			var delsuccess = "회원님의 정보가 정상적으로 삭제되었습니다.";
			alert(delsuccess);
			location.href="logout";
		}
	</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload = "del();">
</body>
</html>