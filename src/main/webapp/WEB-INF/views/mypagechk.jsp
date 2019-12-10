<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/static/css/agency.min.css?ver=1.2.18">

<%@ include file="include/header.jspf"%>

<body style="background-color: #111111;">


	<h1 style="font-family: dohyun; margin-left:30px; margin-top:30px; color: white;"> my Page 확인 페이지
		</h1>
	<form action="mypagepwchk" method="post">
		<input class="gray_textbox" type="text" id="idchk" name="idchk" value="${sessionScope.user_id}" readonly="readonly"> <br>
		<input class="gray_textbox" type="password" id="pwchk" name="pwchk" placeholder="비밀번호"> <br>
		<input class="orange_btn" type="submit" value="비밀번호 확인">
	</form>

</body>
</html>