<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body onresize="parent.resizeTo(500,600)" onload="parent.resizeTo(500,600)">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/static/css/agency.min.css?ver=1.2.18">
<%
	String lockerNum = request.getParameter("lockerNum");
%>
락커팝업창입니다.<br>
	<form action="lockerJoin">
		락카번호 : <%=lockerNum %><input type="text" value="<%=lockerNum %>"  name="lockerNum" hidden="true"><br>
		회원이름 : <input type="text" class="gray_textbox" value="${user_id }" name="lockerName"><br>
		락카등록날짜 : <input type="date" name="lockerStartDate"><br>
		락카마감날짜 : <input type="date" name="lockerEndDate">
		<input type="submit" value="등록">
	</form>
</body>
</html>