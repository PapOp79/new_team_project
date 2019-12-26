<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
::selection {
	background-color: black;
	color: white;
}

textarea.content-nt {
	width: 100%;
	height: 30px;
	align: center;
	resize: none;
	text-align: center;
	vertical-align: middle;
	background-color: white;
	text-margin-top: auto;
	margin-bottom: auto;
	border: 0px;
	cursor: auto;
}

textarea.content-ct {
	cursor: auto;
	width: 100%;
	height: 100%;
	min-height: 100px;
	min-width: 200px;
	resize: none;
	text-align: center;
	vertical-align: middle;
	background-color: white;
	text-margin-top: auto;
	margin-bottom: auto;
	border: 0px;
}
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 글 보기 -->
	<div class="modal fade" id="exboard_content" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00;">
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: black;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">게시글</h4>
				</div>
				<div class="modal-body">
			
									
						
					<table border="1" style="background-color: #ffffff;">
						<tr>
					
							<td colspan="4">
							<textarea class="content4"
									disabled="disabled" hidden="true"></textarea>
							
							<iframe id="c-video"  width="100%" height="300px"
									 frameborder="0"
									allow="accelerometer; autoplay; encrypted-media;
 									gyroscope; picture-in-picture"
									allowfullscreen></iframe>
								
									</td>
									
						<tr>

							<td width="60" height="20" align="center">작성자</td>
							<td><textarea class="content1 content-nt"
									disabled="disabled"></textarea></td>
							<td width="60" height="20" align="center">제목</td>
							<td width="260"><textarea class="content2 content-nt"
									disabled="disabled"></textarea></td>
						</tr>
						<tr>
							<td height="30" colspan="4" align="center">내용</td>
						</tr>
						<tr>
							<td height="310" colspan="4" align="center"><textarea
									class="content3 content-ct" disabled="disabled"></textarea></td>
						</tr>
						<tr>
							<td colspan="4"><input type="submit" value="수정">
								&nbsp;&nbsp; <a href="list">목록보기</a> &nbsp;&nbsp; <a
								href="delete">삭제</a>&nbsp;&nbsp; <a href="reply_view">답변</a></td>
						</tr>
					</table>


					<div>
						<br>
					</div>
					<div class="modal-footer">
						<button type="button" data-toggle="modal" data-target="#myModal"
							class="btn btn-default" data-dismiss="modal"
							style="color: white;">뒤로가기</button>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	var recipient4;
$('#exboard_content').on('show.bs.modal', function (event) {
    var a = $(event.relatedTarget)
    var recipient1 = a.data('content1')
    var recipient2 = a.data('content2')
    var recipient3 = a.data('content3')
    recipient4 = a.data('content4')
    var modal = $(this)
    modal.find('.modal-title').text('게시글')
    modal.find('.modal-body .content1').val(recipient1)
    modal.find('.modal-body .content2').val(recipient2)
    modal.find('.modal-body .content3').val(recipient3)
	modal.find('.modal-body .content4').val(recipient4)
  })
  function iframe(recipient4) {
	$('#c-video').attr('src', recipient4);
}

</script>


</body>
</html>