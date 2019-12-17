<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function open_pop(ticketDuration, ticketPrice){
    var url = 'ticketPop?ticketDuration=${Tdto.ticketDuration}'+ticketDuration+'&ticketPrice=${Tdto.ticektPrice}'+ticketPrice
    window.open(url,'ticketPop','width=500,height=600,top=500,left=500'); 
}
</script>

</head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/static/css/agency.min.css?ver=1.2.18">
<%@ include file="include/header.jspf"%>

<body style="background-color: #111111;">

<br><br>
	<div style="margin-left: 123px;">
		<h1 style="font-family: dohyun; margin-left:30px; margin-top:30px; color: white; "> 회원권 구매 관리</h1>
	</div>
	<div>
		<hr style ="width: 420px; color: white; border: solid; margin-left: 0px;">
	</div>

			<c:forEach var="Tdto" items="${ticketlist}">
				
					<h3 style="font-family: dohyun; font-size: 1.25em; color:white; margin-left: 15%; " onclick="open_pop(${Tdto.ticketDuration},${Tdto.ticketPrice});">
						${Tdto.ticketDuration}개월권  -  ${Tdto.ticketPrice}원  
					</h3>
				<br>
			</c:forEach>
				
				
			<c:if test="${sessionScope.user_ticket eq 1}">
			
				<p style="font-family: dohyun; font-size: 1.25em; color: white;"> 현재 보유하고 있는 티켓이 있습니다!	</p>
			<a href="myTicket" style="font-family: dohyun; font-size: 1.25em; color: white; text-decoration: none;" > 내 티켓 정보 확인하러 가기!	</a>
			</c:if>

<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
	<%@ include file="include/footer.jspf"%>
</div>
</body>
</html>