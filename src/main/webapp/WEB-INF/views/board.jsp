<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>

	function writechk(){
			<% String name = (String)session.getAttribute("user_id");
			if(name == null) {%>
				alert('로그인이 필요합니다! 로그인 페이지로 이동합니다');
				location.href="login";
			<%} else { %>
			location.href="boardwrite";
		<%}%>
}

</script>

<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/static/css/agency.min.css?ver=1.2.18">
<%@ include file="include/header.jspf"%>

<body style="background-color: #111111;">
	<br><br>
	<div style="margin-left: 123px;">
		<h1 style="font-family: dohyun; margin-left:30px; margin-top:30px; color: white; ">게시판</h1>
	</div>
	
	<div>
		<hr style ="width: 420px; color: white; border: solid; margin-left: 0px;">
	</div>
	
	<div style="margin-left: 123px;">
		<table border = "1" style = "width: 90%; font-family: dohyun;">
			<tr style = "color: #ff6000;">
				<td>번호</td><td>조회수</td><td>제목</td><td>작성자</td><td>작성일시</td>
			</tr>
			<c:forEach var="Bdto" items="${boardList}">
			<tr style = "color: white;">
				<td>${Bdto.num}</td><td>${Bdto.hit}</td><td><a href=boardview?num=${Bdto.num}>${Bdto.title}</a></td>
				<td>${Bdto.name}</td><td>${Bdto.postdate}</td>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="5">
				<input type="button" value="글작성" onclick="writechk()"> 
				</td>
			</tr>
		</table>
	</div>
	
</body>
<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
   <%@ include file="include/footer.jspf" %>
</div> 
</html> 