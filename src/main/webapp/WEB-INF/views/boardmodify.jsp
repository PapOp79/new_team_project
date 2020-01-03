<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/static/css/agency.min.css?ver=1.2.18">
	<%@ include file="include/header.jspf"%>
<body style="background-color: #111111;">	
	<form action = "boardmodifychk" method = "post">
	<div align = "center" style = "margin-top: 5%;">
		<div style = "font-family: dohyun; color: white; margin-right: 20%;">아이디</div>
		<input type="text" value="${param.num}" name="num" hidden="true">
		<input class = "gray_textbox" type = "text" name = "name" readonly = "readonly" value="${param.name}"
				style = "width: 25%;">
				
		<div style = "font-family: dohyun; color: white; margin-right: 21%;">제목</div>
		<input class = "gray_textbox" type = "text" name = "title" value="${param.title}" 
				style = "width: 25%;">
				
		<div style = "font-family: dohyun; color: white; margin-right: 21%;">내용</div>
		<textarea class = "gray_textbox" name = "content"  cols = "22" rows = "10" style = "width: 25%; height: 4%;">${param.content}</textarea><br>
	
		<button class = "orange_btn" 
			type = "button" id = "boardmodifyok" style = "width:7%;" onclick = "form.submit()">수정 
		</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<button class = "orange_btn" 
			type = "button" id = "boardmodifyno" style = "width:7%;" onclick = "location.href='board'">취소
		</button>
	</div>
	</form>
</body>
	<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
	<%@ include file="include/footer.jspf" %>
</div>
</html>