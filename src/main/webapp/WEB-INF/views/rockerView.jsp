<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script language="JavaScript">
function open_pop(arg1){
    var url = 'lockerPopup.php?arg1='+arg1
    window.open(url,'popupView','width=300,height=400,top=500,left=500'); 
}
</script>


</head>
<body>
락카 관리 시스템.
	
		<!-- 팝업창으로 전송하는 정보 -->
	<form name="frmData" id="frmData" method="post">
		<table>
				<tr>
				<c:forEach var="i" begin="1" end="50" step="1">
					<td>
						<button type="button" onClick=" open_pop(${i});">${i }</button>
					</td>
						<c:if test="${i % 10 == 0}" >
							</tr><tr>
						</c:if>				
				</c:forEach>
				</tr>	
		</table>
	</form>

</body>
</html>