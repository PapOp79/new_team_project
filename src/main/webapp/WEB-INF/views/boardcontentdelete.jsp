<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script>
		function contentdel(){
			var delsuccess = "작성하신 글이 삭제되었습니다.";
			alert(delsuccess);
			location.href="board";
		}
	</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload = "contentdel();">
</body>
</html>