<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script>
		function contentok(){
			var pw = document.getElementById('').value;
			var pwchk = document.getElementById('modifyPwChk').value;
			if(pw == pwchk){
				document.getElementById('modifyform').submit();
			} else{
				alert("비밀번호 다시 입력")
				document.getElementById('modifyPw').value="";
				document.getElementById('modifyPwChk').value="";
				document.getElementById('modifyPw').focus();
			}
		}
		
		function contentno(){
			if(confirm("지금까지 한 수정은 전부 사라지게 됩니다. 정말로 취소하시겠습니까?") == true){
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
<form action = "boardcontentchange">
	<div align = "center" style = "margin-top: 5%;">
		<div style = "font-family: dohyun; color: white; margin-right: 21%;">아이디</div>
		<input class = "gray_textbox" type = "text" name = "name" readonly = "readonly" value="${boardview.name}"
				style = "width: 25%;">
				
		<div style = "font-family: dohyun; color: white; margin-right: 21%;">제목</div>
		<input class = "gray_textbox" type = "text" name = "date" value="${boardview.title}"
				style = "width: 25%;">
				
		<div style = "font-family: dohyun; color: white; margin-right: 21%;">내용</div>
		<textarea class = "gray_textbox" name = "content" cols = "22" rows = "10" style = "width: 25%; height: 4%;"></textarea><br>
		
		<button class = "orange_btn" 
			type = "button" id = "boardcontentok" style = "width:7%;" onclick = "contentok()">수정 
		</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		<button class = "orange_btn" 
			type = "button" id = "boardcontentno" style = "width:7%;" onclick = "contentno()">취소 
		</button>
	</div>
</form>
</body>
<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
	<%@ include file="include/footer.jspf" %>
</div>
</html>