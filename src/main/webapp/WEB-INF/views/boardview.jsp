<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script>			
		function contentdel(){
			var delnum = <%= request.getParameter("num") %>;
			if(confirm("정말로 삭제하시겠습니까?") == true){
				location.href='boardcontentdelete-controller?num='+delnum;
				location.href="boardcontentdelete";
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
	<form action = "boardmodify" method = "post">
	<div align = "center" style = "margin-top: 5%;">
		<div style = "font-family: dohyun; color: white; margin-right: 20%;">아이디</div>
		<input type="text" value="${ boardview.num}" name="num" hidden="true">
		<input class = "gray_textbox" type = "text" name = "name" readonly = "readonly" value="${boardview.name}"
				style = "width: 25%;">
				
		<div style = "font-family: dohyun; color: white; margin-right: 21%;">제목</div>
		<input class = "gray_textbox" type = "text" name = "title" value="${boardview.title}" readonly="readonly"
				style = "width: 25%;">
				
		<div style = "font-family: dohyun; color: white; margin-right: 21%;">내용</div>
		<textarea class = "gray_textbox" readonly="readonly" name = "content"  cols = "22" rows = "10" style = "width: 25%; height: 4%;">${boardview.content}</textarea><br>
		<c:if test="${sessionScope.user_id eq boardview.name}">	
			<button class = "orange_btn" 
				type = "button" id = "boardcontentok" style = "width:7%;" onclick = "form.submit()">수정 
			</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

			<button class = "orange_btn" 
				type = "button" id = "boardcontentdel" style = "width:7%;" onclick = "contentdel();">삭제 
			</button>
		</c:if>
	</div>
	</form>
</body>
<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
	<%@ include file="include/footer.jspf" %>
</div>
</html>