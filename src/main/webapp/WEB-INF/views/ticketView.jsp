<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>

	



</head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/static/css/agency.min.css?ver=1.2.19">
<%@ include file="include/header.jspf"%>



<body style="background-color: #111111;">

	<br>
	<br>
	<div style="margin-left: 123px;">
		<h1	style="font-family: dohyun; margin-left: 30px; margin-top: 30px; color: white;">회원권 구매 관리</h1>
	</div>
	<div>
		<hr	style="width: 420px; color: white; border: solid; margin-left: 0px;">
	</div>
	<br><br>
	<c:forEach var="Tdto" items="${ticketlist}">
	<div class="card" style="width: 18rem; margin-left: 10%;" >
			<a data-target="#ticketModal" data-toggle="modal"
				data-whatever_1="${Tdto.ticketDuration}"
				data-whatever_2="${sessionScope.user_name}"
				data-whatever_3="${sessionScope.user_id}"
				data-whatever_4="${Tdto.ticketPrice}">
				<div class="card-body">
					<h5 class="card-title"
						style="font-family: dohyun; font-size: 1.25em; color: #fe6000; margin-left: 15%;">${Tdto.ticketDuration}개월권</h5>
					<h6 class="card-subtitle mb-2 text-muted"
						style="font-family: dohyun; font-size: 1em; color: white; margin-left: 15%;">${Tdto.ticketPrice}원</h6>
					<p class="card-text"
						style="font-family: dohyun; font-size: 0.7em; color: black; margin-left: 15%;">4회
						마사지 이용권 + 인바디 측정 무료!</p>
				</div>
			</a>
		</div>
		<br>
	</c:forEach>


	<c:if test="${sessionScope.user_ticket eq 1}">

		<p style="font-family: dohyun; font-size: 1.25em; color: white;">
			현재 보유하고 있는 티켓이 있습니다!</p>
		<a href="myTicket"
			style="font-family: dohyun; font-size: 1.25em; color: white; text-decoration: none;">
			내 티켓 정보 확인하러 가기! </a>
	</c:if>


	<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
		<%@ include file="include/footer.jspf"%>
	</div>
		<%@ include file="ticketModal.jsp"%>
	
</body>
</html>