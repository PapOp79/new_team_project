<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function contentdel() {
		var delnum =
<%=request.getParameter("num")%>
	;
		if (confirm("정말로 삭제하시겠습니까?") == true) {
			location.href = 'boardcontentdelete-controller?num=' + delnum;
			location.href = "boardcontentdelete";
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
	<form action="boardmodify" method="post">
		<div align="center" style="margin-top: 5%;">
			<div style="font-family: dohyun; color: white; margin-right: 20%;">아이디</div>
			<input type="text" value="${ boardview.num}" name="num" hidden="true">
			<input class="gray_textbox" type="text" name="name"
				readonly="readonly" value="${boardview.name}" style="width: 25%;">

			<div style="font-family: dohyun; color: white; margin-right: 21%;">제목</div>
			<input class="gray_textbox" type="text" name="title"
				value="${boardview.title}" readonly="readonly" style="width: 25%;">

			<div style="font-family: dohyun; color: white; margin-right: 21%;">내용</div>
			<textarea class="gray_textbox" readonly="readonly" name="content"
				cols="22" rows="10" style="width: 25%; height: 4%;">${boardview.content}</textarea>
			<br>
			<c:if test="${sessionScope.user_id eq boardview.name}">
				<button class="orange_btn" type="button" id="boardcontentok"
					style="width: 7%;" onclick="form.submit()">수정</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

			<button class="orange_btn" type="button" id="boardcontentdel"
					style="width: 7%;" onclick="contentdel();">삭제</button>
			</c:if>
		</div>
	</form>

	<hr style="color: white; width: 80%; border: solid;">


	<div>
		<form action="commentregister" method="post">
			<table
				style="border: double; border-color: #fe6000; position: absolute; top: 80%; left: 20%;">
				<tr>
					<td><input type="text" class="gray_textbox" id="commentId"
						name="commentId" readonly="readonly"
						value="${sessionScope.user_id}"></td>
					<td><input type=radio name="commentsecret" value="1">&nbsp;비밀댓글&nbsp;&nbsp;&nbsp;
						<input type=radio name="commentsecret" value="0" checked="checked">&nbsp;공개
						댓글</td>
					<td><textarea rows="3" cols="60" name="commentation"
							id="commentation" class="gray_textbox"
							style="width: 800px; height: 150px;"></textarea></td>
					<td><input type="button" class="orange_btn" value="댓글 등록"
						onclick="form.submit()" style="width: 150px; height: 150px;"></td>
					<td><input type="text" name="num" id="num" hidden="true"
						value="${boardview.num}"></td>
				</tr>
			</table>
		</form>

		<table
			style="border: double; border-color: #fe6000; position: absolute; top: 100%; left: 20%;">
			<c:forEach var="Cdto" items="${Commentlist}">
				<tr>
					<c:choose>
						<c:when
							test="${Cdto.commentId ne sessionScope.user_id && Cdto.commentsecret eq 1 && sessionScope.Admin eq 0}">
							<td><input type="text" class="gray_textbox"
								value="비밀 댓글입니다!" readonly="readonly">
						</c:when>
						<c:otherwise>
							<td><input type="text" class="gray_textbox"
								value="${Cdto.commentId }" readonly="readonly"></td>
							<td><textarea rows="3" cols="60" class="gray_textbox"
									readonly="readonly">${Cdto.commentation}</textarea></td>
							<td><input type="text" class="gray_textbox"
								value="${Cdto.regdate }" readonly="readonly"></td>
							<c:if test="${Cdto.commentId  eq sessionScope.user_id}">
								<td><input type="button" class="orange_btn" value="수정">&nbsp;
									<input type="button" class="orange_btn" value="삭제">
								<td>
							</c:if>
					</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>

		</table>



	</div>

</body>
<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
	<%@ include file="include/footer.jspf"%>
</div>
</html>