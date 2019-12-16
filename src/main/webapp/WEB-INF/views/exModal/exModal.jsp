<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="modal fade" id="exboard_content" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel"
	style="background: none; top: 20%; color: #ff7f00;">
	<div class="modal-dialog" role="document">
		<div class="modal-content"
			style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel"> 글 </h4>
			</div>
			<div class="modal-body">

			
					<table border="1">
						<tr>
							<td>작성자</td>
							<td>${dto.name}</td>
						</tr>
						<tr>
							<td>제목</td>
							<td>${dto.title}</td>
						</tr>
						<tr>
							<td>내용</td>
							<td>${dto.content}</td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="수정">
								&nbsp;&nbsp; <a href="list">목록보기</a> &nbsp;&nbsp; <a
								href="delete">삭제</a>&nbsp;&nbsp; <a
								href="reply_view">답변</a></td>
						</tr>
					</table>
	

				<div>
					<br>
				</div>
				<div class="modal-footer">
					<button type="button" data-toggle="modal" data-target="#myModal"
						class="btn btn-default" data-dismiss="modal" style="color: white;">뒤로가기</button>
					<button type="button" class="btn btn-default" data-dismiss="modal"
						style="color: white;">닫기</button>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>