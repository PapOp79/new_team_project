<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/static/css/agency.min.css?ver=1.2.18">
<%@ include file="include/header.jspf"%>

</head>
<body style="background-color: #111111">
	<div style="margin-left: 123px;">
		<h1	style="font-family: dohyun; margin-left: 30px; margin-top: 30px; color: white;">회원권 구매 관리</h1>
	</div>
	<div>
		<hr	style="width: 420px; color: white; border: solid; margin-left: 0px;">
	</div>
	
	<c:choose>
		<c:when test="${empty myTicketlist}">
			<h1	style="font-family: dohyun; margin-left: 30px; margin-top: 30px; color: white;"> 내가 보유한 회원권이 없습니다</h1>
		</c:when>
		<c:otherwise>
			<c:forEach var="TBdto" items="${myTicketlist}">
			<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">${TBdto.ticketDuration}개월 권</h5>
    <h6 class="card-subtitle mb-2 text-muted">${TBdto.ticketStartDate} ~ ${TBdto.ticketEndDate}.</h6>
    <p class="card-text">열심히 운동하였으므로 이 회원권을 수상함</p>
  </div>
</div>
			</c:forEach>
		</c:otherwise>
	</c:choose>
	
	
	
	<a href="ticketView"><span style="font-family: dohyun; margin-left: 30px; margin-top: 30px; color: white;"> 회원권 구매하러 가기~</span></a>
</body>
</html>