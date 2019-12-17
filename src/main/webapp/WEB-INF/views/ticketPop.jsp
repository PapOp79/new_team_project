<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	//락카번호를 가져옴
	String ticketDuration = request.getParameter("ticketDuration");
	String ticketPrice = request.getParameter("ticketPrice");
%>

	<h1> ticketPop</h1>
	
	<form action="ticketRegister" method="post">
		등록 개월 수 : <input type="text" name="ticketDuration" id="ticketDuration" value="<%=ticketDuration %>" readonly="readonly"><br>
		등록자 이름 : <input type="text" name="sessionName" id="sessionName" value="${sessionScope.user_name}" readonly="readonly"><br>
		등록자 아이디 : <input type="text" name="sessionId" id="sessionId" value="${sessionScope.user_id}" readonly="readonly"><br>
		회원권 등록 날짜 : <input type="date" name="ticketStartDate" onchange="calculateDate()"><br>
		회원권 마감 날짜 : <input type="date" name="ticketEndDate" disabled="disabled"><br>
		가격 : <input type="text" name="ticketPrice" id="ticketPrice" value="<%=ticketPrice %>" readonly="readonly"><br>
		<input type="submit" value="등록">
	</form>
</body>
</html>