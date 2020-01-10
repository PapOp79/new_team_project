<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

#side_div a {
color: white; 
font-size: 1.8em; 
font-family: dohyun; 
text-decoration: none; 
}

#side_div hr {
border: solid 3px white;  
border-radius: 12px 12px / 12px 12px; 
}

#side_div a:hover {color: #fe6000; text-decoration: none;}

</style>

<meta charset="UTF-8">
<title>myPage2</title>
	<script>
		function deletechk(){
			var sessionId = document.getElementById('modifyId').value;
			if(confirm("정말로 회원탈퇴를 하시겠습니까?") == true){
				location.href='delete-controller?delId='+sessionId;
				location.href="delete";
			} else {
				alert("♥");
				location.href="index";
			}	
		}
		
		function submitform(){
			var pw = document.getElementById('modifyPw').value;
			var pwchk = document.getElementById('modifyPwChk').value;
			if(pw == pwchk){
				document.getElementById('modifyform').submit();				
			} else{
				alert("비밀번호 다시 입력")
				document.getElementById('modifyPw').value="";
				document.getElementById('modifyPwChk').value="";
				document.getElementById('modifyPw').focus();
			}
		}
	</script>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency.min.css?ver=1.2.22" >

<body style="background-image: url('resources/static/img/login-background.png'); height:100vh; background-repeat: no-repeat; background-size: cover; background-position: center;">

	<%@ include file="include/header.jspf"%>
	<%@ include file="include/mypageSidevar.jsp" %>
	
	<!-- 
	<div id="side_div" style="width:200px; height: 700px; float: left; margin-top: 10%; margin-left: 35px;">
		<a href="mypage">내 정보 수정</a>
		<hr>
		<a href="mystatus">내 회원권 보기</a>
		<hr>
		<a href="qna">내 질문 보기</a>
		<hr>
		<a href="mymemo">쪽지함</a>
		<hr>
		
		<c:choose>
			<c:when test="${sessionScope.Admin eq 1}">
				<a href="trainerList">트레이너<br> 리스트 보기</a>
				<hr>
				<a href="userList">회원<br> 리스트 보기</a>
				<hr>
			</c:when>
			<c:when test="${sessionScope.Admin eq 2}">
				<a href="userList">회원 <br>리스트 보기</a>
				<hr>
			</c:when>
			<c:otherwise></c:otherwise>
		</c:choose>
		
	</div>
	 -->
	
	<div style="background-color: rgba(17, 17, 17, 0.8); width: 30%; height: 60%; border-color: #fe6000; border-style: double; position: absolute; top: 50%; left: 50%; min-width: 300px; transform: translate(-50%, -50%);">
	
		<form  id="modifyForm" action="modify-controller" method="post" style="align-content: center; margin-top: 20px; margin-left: 30px;">
			<p style="font-family: dohyun; font-size: 2em; color:white;"> 회원 정보 수정 </p> 
			<input class="gray_textbox" style="width:85%; height:30px; align-self: center;"
			type="text" id="modifyId" name="modifyId" readonly="readonly" value="${user_id } "><br><br>
			<span id="pwmodifyresult" style="color: white; font-family: dohyun; font-style: italic;"></span>
			<input class="gray_textbox" 
			type="password" id="modifyPw" name="modifyPw" placeholder="비밀번호" 
			style="margin-botton:5px; width:85%; height:30px; align-self: center;"><br><br>
			<span id="pwchkmodifyresult" style="color: white; font-family: dohyun; font-style: italic;"></span>
			<input class="gray_textbox" 
			type="password" id="modifyPwChk" name="modifyPwChk" placeholder="비밀번호 확인" 
			style="margin-botton:5px; width:85%; height:30px; align-self: center;"><br><br>
			<input class="gray_textbox" 
			type="text" id="modifyName" name="modifyName" placeholder="이름" 
			style="margin-botton:5px; width:85%; height:30px; align-self: center;"><br><br>
			<input class="gray_textbox" 
			type="text" id="modifyEmail" name="modifyEmail" placeholder="이메일" 
			style="margin-botton:5px; width:85%; height:30px; align-self: center;"><br><br>
			
			
			<button class="orange_btn" 
			type="button" id="modify-btn" style="width:40%; align-self: center;" onclick="modifyformchk();"> 정보 수정 
			</button>&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="orange_btn" 
			type="button" id="delete-btn" style="width:40%; align-self: center;" onclick="deletechk();"> 회원 탈퇴 
			</button>
		</form>
	</div>


  <div style="position: fixed; bottom: 60px; margin-left: 30PX;">
   <%@ include file="include/footer.jspf" %>
   </div>
</body>

<script type="text/javascript">
	
	var check1 = false;
	var check2 = false;
		
$(function(){

	//비밀번호 확인
		$('#modifyPwChk').blur(function(){
		   if($('#modifyPw').val() != $('#modifyPwChk').val()){
		    	if($('#modifyPwChk').val()!=''){
			    $('#pwchkmodifyresult').html('비밀번호가 일치하지 않습니다.&nbsp;&nbsp;&nbsp;');
				$('#pwchkmodifyresult').append("<img src='resources/static/img/cancel.png' style="+'width:20px; height:20px;'+">")
		    	$('#modifyPwChk').val('');
		        $('#modifyPwChk').focus();
		        check1 = false;
		       }
		    } else {
		    	$('#pwchkmodifyresult').html('비밀번호가 일치합니다&nbsp;&nbsp;&nbsp;');
				$('#pwchkmodifyresult').append("<img src='resources/static/img/checked.png' style="+'width:20px; height:20px;'+">")
				check1 = true;
		    }
		})  	   
	});

function pwdoublechk(){
	if(check2 == false){
		$('#modifyPw').val('');
        $('#modifyPw').focus();
	}
}

//패스워드 입력값 검증.
$('#modifyPw').on('keyup', function() {
		
	//자바스크립트 정규 표현식
	const getPwCheck= RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
	//비밀번호 공백 확인
	if($("#modifyPw").val() == ""){
	    $('#modifyPw').css("background-color", "pink");
		$('#pwmodifyresult').html('[패스워드는 필수정보에요!]&nbsp;&nbsp;&nbsp;');
		$('#pwmodifyresult').append("<img src='resources/static/img/cancel.png' style="+'width:20px; height:20px;'+">")
		check2 = false;
	}		         
	//비밀번호 유효성검사
	else if(!getPwCheck.test($("#modifyPw").val()) || $("#modifyPw").val().length < 8){
	    $('#modifyPw').css("background-color", "pink");
		$('#pwmodifyresult').html('[특수문자 포함 8자이상 비밀번호를 입력하세요]&nbsp;&nbsp;&nbsp;');
		$('#pwmodifyresult').append("<img src='resources/static/img/cancel.png' style="+'width:20px; height:20px;'+">")
		check2 = false;
	} else {
		$('#modifyPw').css("background-color", "rgb(61,61,61)");
		$('#pwmodifyresult').html('[사용 가능한 비밀번호입니다!]&nbsp;&nbsp;&nbsp;');
		$('#pwmodifyresult').append("<img src='resources/static/img/checked.png' style="+'width:20px; height:20px;'+">")
		check2 = true;
	}
	

});

function modifyformchk(){
	if(check1 == true && check2 == true){
		document.getElementById('modifyForm').submit();
	} else {
		alert('모든 값을 채워주셔야 합니다.');
	}
}


</script>
</html>