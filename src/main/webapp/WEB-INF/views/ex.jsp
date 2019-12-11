<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<script
   src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script
   src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 






<script type="text/javascript">


var hiiden = false;






function startpage(){
   document.getElementById('bbbb').style.display = 'none';
   
}


function change() {

    hidden = !hidden;
    if(hidden) {
       document.getElementById('aaaa').style.display = 'none';
       document.getElementById('bbbb').style.display = 'inline';   
    } else {
        document.getElementById('bbbb').style.display = 'none';
           document.getElementById('aaaa').style.display = 'inline';
   
    }
}
/*
var hidden = false;
function change() {
    hidden = !hidden;
    if(hidden) {
        document.getElementById('bbbb').style.visibility = 'hidden';
           document.getElementById('aaaa').style.visibility = 'visible';
    } else {
       document.getElementById('aaaa').style.visibility = 'hidden';
       document.getElementById('bbbb').style.visibility = 'visible';   
   
    }
}
*/
/*
function changeFront(){
   
    document.getElementById('bbbb').style.visibility = 'hidden';
    document.getElementById('aaaa').style.visibility = 'visible';
}
function changeBack(){
    document.getElementById('aaaa').style.visibility = 'hidden';
    document.getElementById('bbbb').style.visibility = 'visible';   
}

*/

</script>


<body style="background-color: #111111;" onload="startpage()">

   <%@ include file="include/header.jspf"%>






   <style type="text/css">
   
.wrap { position:relative; }


   
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
            usemap="#aaa" alt="앞모습" >

         <map name="aaa">
            <area shape="circle" alt="팔" coords="26,266,20" data-toggle="modal"
               data-target="#myModal" style="position: fixed;" href="exlist">
            <area shape="circle" alt="다리" coords="81,349,34" data-toggle="modal"
               data-target="#myModal1" style="position: fixed;">
         </map>

</div>
<div class="wrap" value="bbbb" id="bbbb"  >

         <img src="resources/static/img/뒷모습.bmp" style="max-width: 100%;"
            usemap="#bbb" alt="뒷모습" >
         <map name="bbb">
            <area shape="circle" alt="팔" coords="34,190,17" data-toggle="modal"
               data-target="#myModal3" style="position: fixed;">
            <area shape="circle" alt="다리" coords="81,349,34" data-toggle="modal"
               data-target="#myModal4" style="position: fixed;">
         </map>
</div>

      </div>
   </div>
</body>
<!-- 모달 영역 -->
<!-- 글쓰기 -->
<div class="modal fade" id="myModal5" tabindex="-1" role="dialog"
   aria-labelledby="myModalLabel"  style="background:none; top:20%; color:#ff7f00;">
   <div class="modal-dialog" role="document" >
      <div class="modal-content" style=" background-color: #000000;
        background-color: rgba( 0,0,0, 0.8 ); color:white;">
         <div class="modal-header" >
            <h4 class="modal-title" id="myModalLabel">팔</h4>
         
         </div>
         <div class="modal-body">
          	글쓰기창
         </div>
         <div>
        
         <br>
         </div>
         <div class="modal-footer">
            
            <button type="button" data-toggle="modal"
               data-target="#myModal" class="btn btn-default" data-dismiss="modal" style="color:white;">뒤로가기</button>
         </div>
         <div class="modal-footer">
            
            <button type="button" class="btn btn-default" data-dismiss="modal" style="color:white;">닫기</button>
         </div>
      </div>
   </div>
</div>
<!-- 앞모습  -->

<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
   aria-labelledby="myModalLabel"  style="background:none; top:20%; color:#ff7f00;">
   <div class="modal-dialog" role="document" >
      <div class="modal-content" style=" background-color: #000000;
        background-color: rgba( 0,0,0, 0.8 ); color:white;">
         <div class="modal-header" >
            <h4 class="modal-title" id="myModalLabel">팔</h4>
         
         </div>
         <div class="modal-body">
            <div class="embed-responsive embed-responsive-16by9" >
               <iframe src="https://www.youtube.com/embed/ofO6_Fc6KjM"
                  frameborder="0"
                  allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                  allowfullscreen></iframe>
            </div>
         </div>
         <div>
         <table border="1" align="center" style="background-color:white;  color:black; font-family: dohyun;">
         <tr>
         <td width="90" height="30" align="center">작성자
         </td>
         <td width="250" height="30" align="center">제목
         </td>
         <td width="90" height="30" align="center">작성일
         </td>
         </tr>
         <tr>
         <td height="30">1
         </td>
         <td height="30">2
         </td>
         <td height="30">3
         </td>
         </tr>
         <c:forEach items="${exList}" var="Edto">
            <tr>
         <td height="30">${Edto.name}
         </td>
         <td height="30">${Edto.title}
         </td>
         <td height="30">${Edto.savedate }
         </td>
         </tr>
         </c:forEach>
         <tr>
         <td></td><td></td>
         <td align="center">
         <c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
         <a  data-toggle="modal"
               data-target="#myModal5" 
         style=" color:#ff7f00;" data-dismiss="modal">글작성
         </a>
         </c:if>
         <div class="modal-footer">
         </td>
         </tr>
         </table>
         <br>
         </div>
            
            <button type="button" class="btn btn-default" data-dismiss="modal" style="color:white;">닫기</button>
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
<br><br><br><br><br><br><br><br><br><br>

<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
   <%@ include file="include/footer.jspf"%>
</div>






