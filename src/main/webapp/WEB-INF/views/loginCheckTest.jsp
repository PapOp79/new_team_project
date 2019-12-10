<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${user_id != null }">
		<script type="text/javascript">
			alert('로그인 성공'); location.href="index";
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('아이디 또는 패스워드를 다시 확인하세요.'); history.back();
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>