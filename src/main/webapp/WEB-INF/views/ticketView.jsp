<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
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
	<a href="#exampleModal" data-toggle="modal">
	<div class="card" style="width: 18rem; margin-left: 10%;" >
		<div class="card-body">
			<h5 class="card-title"
				style="font-family: dohyun; font-size: 1.25em; color: #fe6000; margin-left: 15%;">${Tdto.ticketDuration}개월권</h5>
			<h6 class="card-subtitle mb-2 text-muted"
				style="font-family: dohyun; font-size: 1em; color: white; margin-left: 15%;">${Tdto.ticketPrice}원</h6>
			<p class="card-text" style="font-family: dohyun; font-size: 0.7em; color: black; margin-left: 15%;">4회 마사지 이용권 + 인바디 측정 무료!</p>
		</div>
	</div>
	</a>
		<br>
	</c:forEach>


	<c:if test="${sessionScope.user_ticket eq 1}">

		<p style="font-family: dohyun; font-size: 1.25em; color: white;">
			현재 보유하고 있는 티켓이 있습니다!</p>
		<a href="myTicket"
			style="font-family: dohyun; font-size: 1.25em; color: white; text-decoration: none;">
			내 티켓 정보 확인하러 가기! </a>
	</c:if>


<!--  ex modal  -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><span style="color:#fe6000;">HOUGYM</span> 회원권 구매</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<span>등록 개월 수 : </span><input type="text" class="gray_textbox" name="ticketDuration" id="ticketDuration" value="개월" readonly="readonly"><br>
		<span>등록자 이름 : </span><input type="text" class="gray_textbox" name="sessionName" id="sessionName" value="이름" readonly="readonly"><br>
		<span>등록자 아이디 : </span><input type="text" class="gray_textbox" name="sessionId" id="sessionId" value="아이디" readonly="readonly"><br>
		<span>회원권 등록 날짜 : </span><input type="date" class="gray_textbox" name="ticketStartDate" style="background-color: white; border:solid 1px; border-color:black; color:black;"><br>
		<span>가격 : </span><input type="text" class="gray_textbox" name="ticketPrice" id="ticketPrice" value="~~원" readonly="readonly"><br>
       	
      </div>
      <div class="modal-footer">
        <button type="button" class="orange_btn" data-dismiss="modal">Close</button>
        <button type="button" class="orange_btn">save changes</button>
      </div>
    </div>
  </div>
</div>


	<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
		<%@ include file="include/footer.jspf"%>
	</div>
</body>
</html>