<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>


<title>락카관리</title>

<script language="JavaScript">
function open_pop(lockerNum){
    var url = 'lockerCheck?lockerNum='+lockerNum
    window.open(url,'popupView','width=500,height=600,top=500,left=500'); 
}
</script>


</head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/static/css/agency.min.css?ver=1.2.18">

<%@ include file="include/header.jspf"%>

<body style="background-color: #111111;">
	<br><br>
	<div style="margin-left: 123px;">
		<h1 style="font-family: dohyun; margin-left:30px; margin-top:30px; color: white; "> 개인락카 관리</h1>
	</div>
	<div>
		<hr style ="width: 420px; color: white; border: solid; margin-left: 0px;">
	</div>
	
	<div class="locker-div-1">
		<div class="locker-div-2">
			<ul class="locker-btn-ul">
				<li class="locker-btn-ul"><button class="locker-btn-2" type="button"></button>사용가능한 락카</li>
				<li class="locker-btn-ul"><button class="locker-btn-2" type="button" style="background-color: #111111;"></button>사용중인 락카</li>
			</ul>
		</div>
		
		<div class="locker-div-3">
			<!-- 팝업창으로 전송하는 정보 -->
			<form name="frmData" id="frmData" method="post">
				<table
					style="background-color: black; align-content: center; align-self: center; margin-left: 30%;">
					<tr>
						<c:forEach var="Ldto" items="${lockerNum }">
							<td><c:choose>
									<c:when test="${Ldto.lockerCheck eq 1}">
										<button class="locker-btn" type="button"
											onClick=" open_pop(${Ldto.lockerNum});"
											style="background-color: #111111;">${Ldto.lockerNum }</button>
									</c:when>
									<c:otherwise>
										<button class="locker-btn" type="button"
											onClick=" open_pop(${Ldto.lockerNum});">${Ldto.lockerNum }</button>
									</c:otherwise>
								</c:choose></td>
							<c:if test="${Ldto.lockerNum % 10 == 0}">
					</tr>
					<tr>
						</c:if>
						</c:forEach>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>

<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
	<%@ include file="include/footer.jspf"%>
</div>
</html>