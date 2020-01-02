<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<style>
::selection {
	background-color: black;
	color: white;
}
input.save-nt {
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
input.save-ct {
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
textarea.save-nt {
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
textarea.save-ct {
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

.exboardSave1{
text-align:center;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$("#submit").click(function(){
		if($("#saveTitle").val().length==0){alert("제목을 입력하세요"); $("#saveTitle").focus(); return false;}
	});
});

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 글쓰기 모달 -->
	<div class="modal fade" id="newText" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">글작성</h4>
				</div>
				<div class="modal-body">
					<form action="exboard_write" method="post">
					
					<table border="1" >
						<tr>
							<td width="60px" align="center">이름</td>
							<td width="150px"><input class="Save-nt" type="text" name="name" value="${user_name}"  disabled="disabled" >
							<input type="text" name="name" value="${user_name}" hidden="true"></td>
							<td width="60px" align="center">제목</td>
							<td width="100px"><input class="Save-nt" id="saveTitle" type="text" name="title" placeholder="제목을 입력하세요"></td>
						</tr>
						<tr>
							<td align="center">내용</td>
							<td colspan="3"><textarea class="save-ct" name="content" rows="10" placeholder="내용을 입력하세요"></textarea></td>
						</tr>
						<tr>
							<td align="center">영상 링크</td>
							<td colspan="3"><textarea class="save-ct" name="link" placeholder="유튜브에서 동영상 우클릭 후 영상 url을 복사 후 &#13;&#10; 붙여넣으시면 됩니다.&#13;&#10; 모바일의 경우 링크복사"></textarea></td>
						</tr>
						<tr>
						<td align="center">분류</td>
							<td>
							<select name="part" id="save-part">
									<option value="1">팔</option>
									<option value="2">다리</option>
									<option value="3">가슴,배</option>
									<option value="4">무릎</option>
									<option value="5">어깨</option>
									<option value="6">등</option>
									<option value="7">엉덩이</option>
							</select>
							</td>
							<td colspan="2"><input type="submit" id="submit" value="저장"  onclick="check();"></td>
						</tr>
					</table>
				</form>
					</div>
					<div class="modal-footer">
						<button type="button" onclick="saveBack()" 
					class="btn btn-default" data-dismiss="modal" style="color: white;">뒤로가기</button>
				<button type="button" class="btn btn-default" data-dismiss="modal"
					style="color: white;">닫기</button>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
var savepart;
var recipient8;
$('#newText').on('show.bs.modal', function (event) {
	 var a = $(event.relatedTarget)
	savepart = a.data('content7')
	recipient8 = a.data('content8')
    var modal = $(this)
    $("#save-part").val(recipient8).prop("selected", true);
  })
  function saveBack(){
	$("#"+savepart+"").modal();
}</script>
</body>
</html>