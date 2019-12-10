<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#register_div p{
margin-left: 15%; 
margin-bottom:2px; 
font-family:dohyun; 
font-size:1.15em; 
color:white;
}
</style>

<meta charset="utf-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency.min.css?ver=1.2.21" >
<body style="background-image: url('resources/static/img/login-background.png'); height:100vh; background-repeat: no-repeat; background-size: cover; background-position: center;">
<fmt:requestEncoding value = "utf-8"/>
   <%@ include file="include/header.jspf" %>
   
   
   <div id="register_div" style="background-color: rgba(17,17,17,0.8); width:1200px; height:1000px; border-color: #fe6000; border-style:double; 
	position: absolute; top:50%; left:50%; margin-top:-500px; margin-left:-600px;">
   
   <h4 class="modal-title" style="font-family:dohyun; color:white; margin-left:15%; margin-top:5%;">
      <span style="color: #fe6000;">HOUGYM User</span> 회원 가입<br><br>
   </h4>
   <br>
   <form action="join-controller" name="signup"
      id="signUpForm" method="post" style="width: 100%;">
      <table style="width: 100%;">
           <tr>
           <td>
            <input class="gray_textbox" type="text" style="margin-left:15%; width:85%; height:30px; align-self: center;"  value="0" id ="Admin" name = "Admin" hidden="true">
           </td>
            
         </tr>
         <tr>
            <td>
                <p>
                  아이디를 입력해주세요.&nbsp;&nbsp;&nbsp;<span id="idChk"></span>
               </p>
            </td>
         </tr>

         <tr>
            <td>
            	<input class="gray_textbox" type="text" style="margin-left:15%; margin-top:2px; width:60%; height:30px; align-self: center;" name="userId" id="userId"
                maxlength="14" required="required" aria-required="true" placeholder="숫자와 영어로 4-14자">
            </td>
         </tr>

         <tr>
            <td style="text-align: left">
                <p>
                  비밀번호를 입력해주세요.&nbsp;&nbsp;&nbsp;<span id="pwChk"></span>
               </p>
            </td>
         </tr>

         <tr>
            <td><input type="password" size="17"
               id="userPw" name="userPw" maxlength="20" required="required" aria-required="true"
               placeholder="영문과 특수문자를 포함한 최소 8자" class="gray_textbox" style="margin-top:2px; width:60%; margin-left:15%">
               </td>
         </tr>

         <tr>
            <td style="text-align: left">
                <p>
                  비밀번호를 재확인해주세요.&nbsp;&nbsp;&nbsp;<span id="pwChk2"></span>
               </p>
            </td>
         </tr>

         <tr>
            <td><input type="password" size="17" maxlength="20"
               id="password_check" name="pw_check"
               required="required" aria-required="true"
               class="gray_textbox" style="width:60%; margin-left:15%; margin-top:2px;"
               placeholder="비밀번호가 일치해야합니다."></td>
         </tr>

         <tr>
            <td style="text-align: left">
                <p>
                  이름을 입력해주세요.&nbsp;&nbsp;&nbsp;<span id="nameChk"></span>
               </p>
            </td>
         </tr>

         <tr>
            <td><input type="text" class="gray_textbox" name="userName" id="userName"
               maxlength="6"
               required="required" aria-required="true" style="width:60%; margin-left:15%; margin-top:2px;"
               placeholder="한글로 최대 6자"></td>
         </tr>

         <tr>
            <td style="text-align: left">
               <p>
                  이메일을 입력해주세요.&nbsp;&nbsp;&nbsp;<span id="emailChk"></span>
               </p>
            </td>
         </tr>

         <tr>
            <td><input type="email" name="userEmail" id="userEmail"
               required="required" aria-required="true"
               class="gray_textbox" style="width:60%; margin-left:15%; margin-top:2px;"
               placeholder="ex) izone@produce.com"></td>
         </tr>
         
         <tr>
            <td style = "text-align: left">
               <p>
                  나이를 입력해주세요&nbsp;&nbsp;&nbsp;
               </p>
            </td>
         </tr>
         
         <tr>
            <td><input type = "text" name = "userAge" id = "userAge"
               required = "required" aria-required = "true"
              class="gray_textbox" style="width:60%; margin-left:15%; margin-top:2px;"
               placeholder = "나이는 만 **세로 계산, 숫자만 입력"></td>
         </tr>
         
         
         <tr>
            <td style = "text-align: left">
               <p>
                 키를 입력해주세요.&nbsp;&nbsp;&nbsp;
               </p>
            </td>
         </tr>
         
         <tr>
            <td><input type = "text" name = "userHeight" id = "userHeight"
               required = "required" aria-required = "true"
               class="gray_textbox" style="width:60%; margin-left:15%; margin-top:2px;"
               placeholder = "소수점은 반올림"></td>
         </tr>
         
         <tr>
            <td style = "text-align: left">
               <p>
                  몸무게를 입력해주세요.&nbsp;&nbsp;&nbsp;
               </p>
            </td>
         </tr>
         
         <tr>
            <td><input type = "text" name = "userWeight" id = "userWeight"
                required = "required" aria-required = "true"
               class="gray_textbox" style="width:60%; margin-left:15%; margin-top:2px;"
               placeholder = "소수점은 반올림"></td>
         </tr>
         
         <tr>
            <td><p>남&nbsp;&nbsp;<input type = "radio" 
               name = "userSex" id = "userSex" value = "male"
               style = "margin-bottom: 25px; border: 1px solid #d9d9de"
               required = "required" aria-required = "true" checked="checked">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            여&nbsp;&nbsp;<input type = "radio" name = "userSex" id = "userSex" value = "female"
               style = "margin-bottom: 25px; border: 1px solid #d9d9de"
               required = "required" aria-required = "treu"></p></td>
         </tr>
         
         <tr>
            <td style="padding-top: 10px; text-align: center">
               <p style="font-family:dohyun; color:white; margin-left: 0%;">
                  	회원가입하셔서 <span style="color: #fe6000;">HOUGYM</span>의 회원이 되어보세요~~!
               </p>
            </td>
         </tr>

         <tr>
            <td style="width: 100%; text-align: center; colspan: 2;"><input
               type="submit" value="회원 가입" class="orange_btn" id="signup-btn" style="background-color: #fe6000; margin-top: 0; height: 40px; width:70%; color: white;">
            </td>
         </tr>
      </table>
   </form>
   </div>
   
   <div style="position: fixed; bottom: 60px; margin-left: 30PX;">
   <%@ include file="include/footer.jspf" %>
   </div>
</body>
</html>