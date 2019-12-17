<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body style="background-image: url('resources/static/img/login-background.png'); height:100vh; background-repeat: no-repeat; background-size: cover; background-position: center;">
	<%@ include file="include/header.jspf"%>
	<%@ include file="include/mypageSidevar.jsp" %>
<div>
	<h1>트레이너목록</h1>
		<table class="table table-striped table-dark">
			<tr>
				<th scope="col">아이디</th><th>이름</th><th>나이</th><th>가입날짜</th><th>성별</th>
			</tr>
				<c:forEach var="Udto" items="${trainerList }">
			<tr>
					<th scope="row">${Udto.userId }</th><td>${Udto.userName }</td><td>${Udto.userAge }</td><td>${Udto.userRegDate }</td><td>${Udto.userSex }</td>
			</tr>
				</c:forEach>
		</table>
</div>	
</body>
</html>