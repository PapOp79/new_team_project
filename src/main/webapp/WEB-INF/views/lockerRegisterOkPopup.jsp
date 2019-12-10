<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function lockerModify(){
		if(confirm("수정하시겠습니까?"))
		 {
		    document.getElementById('lockerModify').submit();
			alert('수정되었습니다.');
		    window.close();
		 }
		 else
		 {
			alert('취소되었습니다.');
		 }
	}
	function lockerDelete(){
		if(confirm("삭제하시겠습니까?"))
		 {
		    document.getElementById('lockerDelete').submit();
			alert('삭제되었습니다.');
			window.close();
		 }
		 else
		 {
			alert('취소되었습니다.');
		 }
	}
</script>
<body>
예약된 락카 입니다.<br>
<c:set var="n" value="${lockerRegiOkMember }"/>
<form action="lockerModify" id="lockerModify">
	락카 번호 : <input type="text" name="lockerNum" value="${n.lockerNum}"><br>
	사용자 이름 : <input type="text" name="lockerName" value="${n.lockerName}"><br>
	사용기간 : <input type="text" name="lockerStartDate" value="${n.lockerStartDate}"> ~ <input type="text" name="lockerEndDate" value="${n.lockerEndDate}"><br>
	<button type="button" onclick="lockerModify()">수정</button>
</form>
<form action="lockerDelete" id="lockerDelete">
		<button type="button" onclick="lockerDelete()">삭제</button>
		<input type="text" name="lockerNum" value="${n.lockerNum}" hidden="true">
</form>
</body>
</html>