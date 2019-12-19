<%@page import="org.apache.ibatis.ognl.SetPropertyAccessor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>	
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("UTF-8");%>
<!--      모달 창 띄우기를 스크립트 함수로 실행시켜보자        -->
<script type="text/javascript">

	
	var hidden = false;

	
	function startpage() {
		document.getElementById('bbbb').style.display = 'none';
	}
	
	function change() {
		hidden = !hidden;
		
		if (hidden) {
			document.getElementById('aaaa').style.display = 'none';
			document.getElementById('bbbb').style.display = 'inline';
		} else {
			document.getElementById('bbbb').style.display = 'none';
			document.getElementById('aaaa').style.display = 'inline';
	}}
	
	function exboard_content(){
		
		$("#exboard_content").modal();
		alert("실행");
	}


	

</script>
<style type="text/css">
.wrap {
	position: relative;
}

img[usemap] {
	border: none;
	height: auto;
	max-width: 100%;
	width: auto;
}

@FONT-FACE {
	font-family: 'Dohyun';
	src: url(resources/static/font/Dohyun.ttf)
}

body {
	width: 100vw;
	background-color: black;
	background-repeat: no-repeat;
	background-position: left;
	background-size: cover;
}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body style="background-color: #111111;" onload="startpage()">
	<%@ include file="include/header.jspf"%>
	<br>
	<br>
	<div style="margin-left: 123px;">
		<h1
			style="font-family: dohyun; margin-left: 30px; margin-top: 30px; color: white;">
			운동법 게시판</h1>
	</div>
	<hr style="border: solid 4px white;">
	<div align="center" style="position: relative;">
		<button type="button" onClick="change();">전환</button>
		<div width="160px" height="500px" align="center"
			style="position: relative;">
			<div class="wrap" value="aaaa" id="aaaa">
				<img src="resources/static/img/앞모습.bmp" style="max-width: 100%;"
					usemap="#aaa" alt="앞모습">
				<map name="aaa">
					<area shape="circle" alt="팔" coords="26,266,20" data-toggle="modal"
						data-target="#myModal" style="position: fixed;">
					<area shape="circle" alt="다리" coords="81,349,34"
						data-toggle="modal" data-target="#myModal1"
						style="position: fixed;">
				</map>
			</div>
			<div class="wrap" value="bbbb" id="bbbb">

				<img src="resources/static/img/뒷모습.bmp" style="max-width: 100%;"
					usemap="#bbb" alt="뒷모습">
				<map name="bbb">
					<area shape="circle" alt="팔" coords="34,190,17" data-toggle="modal"
						data-target="#myModal3" style="position: fixed;">
					<area shape="circle" alt="다리" coords="81,349,34"
						data-toggle="modal" data-target="#myModal4"
						style="position: fixed;">
				</map>
			</div>
		</div>
	</div>
</body>
<!-- 모달 영역 -->
<c:set var="num" value="2"/>
<!-- 글 보기 -->
<div class="modal fade" id="exboard_content" tabindex="-1" role="dialog"
	style="background: none; top: 20%; color: #ff7f00;">
	<div class="modal-dialog" role="document">
		<div class="modal-content"
			style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
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
			</div>
		</div>
	</div>
</div>
<!-- 글쓰기 -->
<div class="modal fade" id="newText" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel"
	style="background: none; top: 20%; color: #ff7f00;">
	<div class="modal-dialog" role="document">
		<div class="modal-content"
			style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">글작성</h4>
			</div>
			<div class="modal-body">
				<form action="exboard_write" method="post">
					<table border="1">
						<tr>
							<td>이름</td>
							<td><input type="text" name="name" value="${user_name} "></td>
						</tr>
						<tr>
							<td>제목</td>
							<td><input type="text" name="title" size="20"></td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea name="content" rows="10"></textarea></td>
						</tr>
						<tr>
							<td><select name="part">
									<option value="1">팔</option>
									<option value="2">다리</option>
									<option value="3">가슴,배</option>
									<option value="4">무릎</option>
									<option value="5">어깨</option>
									<option value="6">등</option>
									<option value="7">엉덩이</option>
							</select></td>
							<td><input type="submit" value="저장">&nbsp;&nbsp;</td>
						</tr>
					</table>
				</form>
			</div>
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
<!-- 앞모습  -->

<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	style="background: none; top: 20%; color: #ff7f00;">
	<div class="modal-dialog" role="document">
		<div class="modal-content"
			style="background-color: #000000; background-color: rgba(0, 0, 0, 0.8); color: white;">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">팔</h4>
			</div>
			<div class="modal-body">
				<div class="embed-responsive embed-responsive-16by9">
					<iframe src="https://www.youtube.com/embed/ofO6_Fc6KjM"
						frameborder="0"
						allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</div>
				<div>
					<table border="1" align="center"
						style="background-color: white; color: black; font-family: dohyun;">
						<tr>
							<td width="90" height="30" align="center">작성자</td>
							<td width="250" height="30" align="center">제목</td>
							<td width="90" height="30" align="center">작성일</td>
							<c:forEach items="${exList}" var="Edto" >
							
								<c:if test="${Edto.part == 1 }">
								
								<tr>
								
								<td height="30">${Edto.name}</td>
									<td height="30"><a href="#exboard_content" data-whatever="${Edto.num }" 
											data-toggle="modal" data-dismiss="modal">${Edto.title}</a></td>
										<td height="30">${Edto.savedate }</td>
									</tr>
								</c:if>
							</c:forEach>
						<tr>
							<td align="center" colspan="3"
								style="background-color: #000000; background-color: rgba(0, 0, 0, 0.8);">
								<c:if
									test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
									<a data-toggle="modal" data-target="#newText"
										style="color: #ff7f00;" data-dismiss="modal">글작성 </a>
								</c:if>
							</td>
						</tr>
					</table>
					<br>
					<div class="modal-footer">

						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--  -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">다리</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="embed-responsive embed-responsive-16by9">
					<iframe src="https://www.youtube.com/embed/fkpkqWbGdKs"
						frameborder="0"
						allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary">확인</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>

<!-- 뒷모습  -->
<!--  -->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">뒷다리</h4>
			</div>
			<div class="modal-body">뒷 다리</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary">확인</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>

<!--  -->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">뒷 팔</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">뒷 팔</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary">확인</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
	<%@ include file="include/footer.jspf"%>
</div>
</body>


</html>





