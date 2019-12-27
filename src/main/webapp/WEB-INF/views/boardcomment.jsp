<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/css/bootstrap.css">
<script>

$(function(){
	commentList();
})

function commentList(){
	$.ajax({
		type:'GET',
		url:"commentlist",
		dataType:"json", 
		data:{"num":35},
		success:function(data){
			var html="";
			var Cnt=data.length;
			
			if(data.length > 0){
				for(i = 0; i < data.length; i++){
					html += "<div>";
					html += "<div><table style='border: double; border-color: #fe6000; position: absolute; top: 80%; left: 20%;'>";
					html += data[i].commentList + "<tr><td></td></tr>";
					html += "</table></div>";
					html += "</div>";
				}
			}else{
				html += "<div>";
				html += "<div><table style='border: double; border-color: #fe6000; position: absolute; top: 80%; left: 20%;'><h6>등록된 댓글이 없습니다.</h6>";
				html += "</table></div>";
				html += "</div>";
			}
			
		},
		error : function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="container" onload = "commentList();">
	<form method="post" id="boardcomment">
		<table
			style="border: double; border-color: #fe6000; position: absolute; top: 80%; left: 20%;">
			<tr>
				<td><input type="text" class="gray_textbox" id="commentId"
					name="commentId" readonly="readonly"
					value="${sessionScope.user_id}"></td>
				<td><input type=radio name="commentsecret" value="1">&nbsp;비밀댓글&nbsp;&nbsp;&nbsp;
					<input type=radio name="commentsecret" value="0" checked="checked">&nbsp;공개	댓글</td>
				<td><textarea rows="3" cols="60" name="commentList"
						id="commentList" class="gray_textbox"
						style="width: 800px; height: 150px;" placeholder="댓글을 입력하세요"></textarea></td>
				<td><input type="button" class="orange_btn" id="comment_btn" value="댓글 등록"
					onclick="commentadd('${result.code}')" style="width: 150px; height: 150px;"></td>
				<td><input type="text" name="num" id="num" hidden="true"
					value="${boardview.num}"></td>
			</tr>
		</table>
	</form>
</body>
</html>