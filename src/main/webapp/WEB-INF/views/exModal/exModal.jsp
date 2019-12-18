<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">글</h4>
			</div>
			<div class="modal-body">

				<c:forEach items="${exList}" var="Edto">
					<c:if test="${Edto.num eq num}">
						<table border="1" style="background-color: #ffffff;">
							<tr>
								<td width="60" height="30" align="center">작성자</td>
								<td width="120">${Edto.name}</td>
								<td width="60" height="30" align="center">제목</td>
								<td width="260">${Edto.title}</td>
							</tr>
							<tr>
								<td height="30" colspan="4" align="center">내용</td>
							</tr>
							<tr>

								<td height="310" colspan="4" align="center">${Edto.content}</td>
							</tr>

							<tr>
								<td colspan="4"><input type="submit" value="수정">
									&nbsp;&nbsp; <a href="list">목록보기</a> &nbsp;&nbsp; <a
									href="delete">삭제</a>&nbsp;&nbsp; <a href="reply_view">답변</a></td>
							</tr>
						</table>
					</c:if>
				</c:forEach>
				<div>
					<br>
				</div>
				<div class="modal-footer">
					<button type="button" data-toggle="modal" data-target="#myModal"
						class="btn btn-default" data-dismiss="modal" style="color: white;">뒤로가기</button>
					<button type="button" class="btn btn-default" data-dismiss="modal"
						style="color: white;">닫기</button>
				</div>
</body>
</html>