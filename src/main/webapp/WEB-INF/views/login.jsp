<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function loginchk(){
		if(document.getElementById)
	}
</script>

<style>
.login_div icon{

}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency.min.css?ver=1.2.18" >


<body style="background-image: url('resources/static/img/login-background.png'); height:100vh; background-repeat: no-repeat; background-size: cover; background-position: center;">
	<a href="index"><img src="resources/static/img/logo-btn.png" style=" width:180px; height:60px;position:absolute;> 
	top: 8%; left:45%; "></a>
	<div id="login_div" style="background-color: rgba(17,17,17,0.8); width:450px; height:600px; border-color: #fe6000; border-style:double; 
	position: absolute; top:50%; left:50%; margin-top:-200px; margin-left:-225px;">
		<h1 style="font-family: dohyun; margin-left:30px; margin-top:30px; color: white;"> 로그인 
		</h1>

		<p style="font-family: dohyun; font-size:1em; margin-left:30px; color: white;"> 아이디와 패스워드를 입력해주세요 
		</p>
	
		
		<form action="login-controller" style="align-content: center; margin-top: 20px; margin-left: 30px;">
			<input class="gray_textbox" 
			type="text" id="signInId" name="userId" placeholder="ID"
			style="width:85%; height:30px; align-self: center;"><br>
			<input class="gray_textbox" 
			type="password" id="signInPw" name="userPw" placeholder="PASSWORD" 
			style="width:85%; height:30px; align-self: center;"><br>
			<button class="orange_btn" 
			type="button" id="login-btn" style="width:90%; align-self: center;" onclick="form.submit()"> 로그인 
			</button>
		</form>
			<img src="resources/static/img/google-icon.png" style="width:60px; height:60px; margin-left: 22px;">
			<img src="resources/static/img/naver-icon.png" style="width:60px; height:60px; margin-left: 22px;">
			<img src="resources/static/img/facebook-icon.png" style="width:60px; height:60px; margin-left: 22px;">
			<!--  
			<a href="http://www.google.com" style="font-family: dohyun; font-size: 1em; color: white; font-style: none; margin-left: 8%; text-decoration: none;">google으로 로그인하기</a><br>
			<a href="http://www.naver.com" style="font-family: dohyun; font-size: 1em; color: white; font-style: none; margin-left: 8%; text-decoration: none;">naver으로 로그인하기</a><br>
			-->
			
			<hr style="border: solid 4px #fe6000; width:90%; border-radius: 12px 12px / 12px 12px;">
			
			<p style="font-family: dohyun; font-size: 1em; color: white; font-style: none; margin-left: 8%; text-decoration: none;"><a href="findid" style="color:white; text-decoration: none;">아이디 찾기</a> / <a href="#" style="color:white; text-decoration: none;">비밀번호 찾기</a></p>
			<p style="font-family: dohyun; font-size: 1em; color: white; font-style: none; margin-left: 8%; text-decoration: none;">아직 회원이 아니신가요?</p>
			
			<button class="orange_btn" 
			type="button" id="login-btn" style="width:40%; align-self: center; margin-left:30px;" onclick="return location.href='register'"> 회원가입 
			</button>
		
	
	</div>
	
	 <div style="position: fixed; bottom: 60px; margin-left: 30PX;">
   <%@ include file="include/footer.jspf" %>
   </div>

</body>
</html>