<%@page import="org.springframework.web.context.request.RequestAttributes"%>
<%@page import="org.apache.ibatis.ognl.SetPropertyAccessor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.modalbody{
background-color: #000000; 
background-color: rgba(0, 0, 0, 0.8); 
color: white;
}


}


</style>
<script type="text/javascript">
var num10;

function change() {
	hidden = !hidden;
	
	if (hidden) {
		document.getElementById('front').style.display = 'none';
		document.getElementById('behind').style.display = 'inline';
	} else {
		document.getElementById('behind').style.display = 'none';
		document.getElementById('front').style.display = 'inline';
}}
function numInsert(num1){
	num10 = num1;
	



}
</script>
</head>
<body style="background-color: #111111;">

	<%@ include file="include/header.jspf"%>
	<div style="margin-left: 123px;">
		<h1
			style="font-family: dohyun; margin-left: 30px; margin-top: 30px; color: white;">운동법
			게시판</h1>
	</div>
	


	<hr style="border: solid 4px white;">
	<div align="center" style="position: relative;">
		<button type="button" onClick="change();">전환</button>
		<div width="160px" height="500px" align="center"
			style="position: relative;">
			<div class="wrap" id="front">
				<img src="resources/static/img/앞모습.bmp" style="max-width: 100%;"
					usemap="#front-image" alt="앞모습">
				<map name="front-image">
					<area shape="circle" alt="팔" coords="26,266,20" data-toggle="modal"
						data-target="#myModal" style="position: fixed;">
					<area shape="circle" alt="다리" coords="81,349,34"
						data-toggle="modal" data-target="#myModal1"
						style="position: fixed;">
				</map>
			</div>
			<div class="wrap" id="behind" style="display: none;">

				<img src="resources/static/img/뒷모습.bmp" style="max-width: 100%;"
					usemap="#behind-image" alt="뒷모습">
				<map name="behind-image">
					<area shape="circle" alt="팔" coords="34,190,17" data-toggle="modal"
						data-target="#myModal3" style="position: fixed;">
					<area shape="circle" alt="다리" coords="81,349,34"
						data-toggle="modal" data-target="#myModal4"
						style="position: fixed;">
				</map>
			</div>
		</div>
	</div>
	<br><br><br><br><br><br><br>
<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
	<%@ include file="include/footer.jspf"%>
</div>
</body>
<!-- 모달 영역 -->
<!-- 앞모습  -->


	

<!-- 글쓰기 -->


<%@ include file="exPage/exBoardList.jsp"%>
<%@ include file="exPage/exBoardContent.jsp"%>
<%@ include file="exPage/exBoardSave.jsp"%>
</body>
</html>