<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
	.w3-sidebar {height:40%;width:200px;background-color:#fff;position:fixed!important;z-index:1;overflow:auto}
</style>

</head>
<body>
<div class="w3-sidebar w3-bar-block w3-collapse w3-card" style="width:200px; top: 186px;" id="mySidebar">
  <button class="w3-bar-item w3-button w3-hide-large"
  onclick="w3_close()">Close &times;</button>
  <a href="#" class="w3-bar-item w3-button">회원 정보</a>
  <a href="#" class="w3-bar-item w3-button">내 회원권 보기</a>
  <a href="#" class="w3-bar-item w3-button">내 질문 보기</a>
  <a href="#" class="w3-bar-item w3-button">쪽지함</a>
  <c:choose>
	<c:when test="${sessionScope.Admin eq 1}">
		<a href="trainerList" class="w3-bar-item w3-button">트레이너<br> 리스트 보기</a>
		<hr>
		<a href="userList" class="w3-bar-item w3-button">회원<br> 리스트 보기</a>
		<hr>
	</c:when>
	<c:when test="${sessionScope.Admin eq 2}">
		<a href="userList" class="w3-bar-item w3-button">회원 <br>리스트 보기</a>
		<hr>
	</c:when>
	<c:otherwise></c:otherwise>
</c:choose>
</div>

<div class="w3-main" style="margin-left:200px; margin-top: 120px;">
	  <button class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
</div>

<script>
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}

function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
</script>
</body>
</html>