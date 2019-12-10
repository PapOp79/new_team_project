<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>락카등록111</title>
</head>
<body>
락커팝업창입니다.
<%
	request.setCharacterEncoding("utf-8");
	//락카번호를 가져옴
	String lockerNum = request.getParameter("arg1");
%>
<form action="lockerJoin">
	<br>
	락카번호 : <%=lockerNum %><input type="text" value="<%=lockerNum %>"  name="lockerNum" hidden="true"><br>
	회원이름 : <input type="text" value="${user_id }" name="lockerName"><br>
	락카등록날짜 : <input type="date" name="lockerStartDate"><br>
	락카마감날짜 : <input type="date" name="lockerEndDate">
	<input type="submit" value="등록">
</form>

</body>
</html>