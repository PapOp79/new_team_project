<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script>
		function content_upno(){
			if(confirm("지금까지 작성한 것은 전부 사라지게 됩니다. 정말로 취소하시겠습니까?") == true){
				location.href="board";
			} else {
				return false;
			}	
		}
	</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/static/css/agency.min.css?ver=1.2.18">
<%@ include file="include/header.jspf"%>

<body style="background-color: #111111;">
	<div align = "center" style = "margin-top: 5%;">
		<form action = "boardcontent_upok" method = "post">
		<div style = "font-family: dohyun; color: white; margin-right: 20%;">아이디</div>
		<input class = "gray_textbox" type = "text" name = "name" style = "width: 25%;" value="${sessionScope.user_id}" readonly="readonly">
				
		<div style = "font-family: dohyun; color: white; margin-right: 21%;">제목</div>
		<input class = "gray_textbox" type = "text" name = "title" style = "width: 25%;">
		
		<div style = "font-family: dohyun; color: white;">비밀글 여부<br>
			<input type = radio name = "secret" value="1">&nbsp;사용&nbsp;&nbsp;&nbsp;
			<input type = radio name = "secret" value="0" checked = "checked">&nbsp;사용 안함
		</div>
		<br>
				
		<div style = "font-family: dohyun; color: white; margin-right: 21%;">내용</div>
		<textarea class = "gray_textbox" name = "content" cols = "22" rows = "10" style = "width: 25%; height: 4%;"></textarea><br>
		
			<button class = "orange_btn" 
				type = "button" id = "boardcontentup" style = "width:7%;" onclick = "form.submit()">확인
			</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
			<button class = "orange_btn" 
				type = "button" id = "boardcontent_upno" style = "width:7%;" onclick = "content_upno()">취소
			</button>
		</form>
	</div>
</body>
<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
   <%@ include file="include/footer.jspf" %>
</div>
</html>