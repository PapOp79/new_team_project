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
��Ŀ�˾�â�Դϴ�.<br>
	<form action="lockerJoin">
		��ī��ȣ : <%=lockerNum %><input type="text" value="<%=lockerNum %>"  name="lockerNum" hidden="true"><br>
		ȸ���̸� : <input type="text" class="gray_textbox" value="${user_id }" name="lockerName"><br>
		��ī��ϳ�¥ : <input type="date" name="lockerStartDate"><br>
		��ī������¥ : <input type="date" name="lockerEndDate">
		<input type="submit" value="���">
	</form>
</body>
</html>