<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function contentdel() {
		var delnum =
		<%=request.getParameter("num")%>;

		if (confirm("정말로 삭제하시겠습니까?") == true) {
			location.href = 'boardcontentdelete-controller?num=' + delnum;
			location.href = "boardcontentdelete";
		} else {
			return false;
		}
	}
	
	function commentlist(){
		var num=<%=request.getParameter("num")%>
		$.ajax({
			url:'commentlist',
			type:'POST',
			async:false,
			data:{'num':num},
			datatype:'json',
			success : function(data){
				var html=""
				var values = [];
				values = data;
				if(data.length>0){
					$.each(values, function(index, Cdto){			
						html += "<div>";
        	            html += "<div><table class='table'>";
            	        html += "<tr><td>"+Cdto.commentId+"</td>";
            	        html += "<td>"+Cdto.commentation+"</td>";
            	        html += "<td>"+Cdto.regdate+"</td></tr>";
                	    html += "</table></div>";
                    	html += "</div>";
					});
				}else{
					html += "<div>";
	                html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
	                html += "</table></div>";
	                html += "</div>";
				}
				$("#commentList").html(html);
			},
			error : function(){alert('fail!')}
		});
	}
	
	function commentadd(code){
		$.ajax({
			url:'commentregister',
			type:'POST',
			data:$("#boardcomment").serialize(),
			success : function(data){
				if(data == 1){
					commentlist();
				}
			},
			error : function(){alert('fail')}
		});
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/static/css/agency.min.css?ver=1.2.18">
<%@ include file="include/header.jspf"%>

<body style="background-color: #111111;" onload = "commentlist();">
	<form action="boardmodify" method="post">
		<div align="center" style="margin-top: 5%;">
			<div style="font-family: dohyun; color: white; margin-right: 20%;">아이디</div>
			<input type="text" value="${boardview.num}" name="num" hidden="true">
			<input class="gray_textbox" type="text" name="name"
				readonly="readonly" value="${boardview.name}" style="width: 25%;">

			<div style="font-family: dohyun; color: white; margin-right: 21%;">제목</div>
			<input class="gray_textbox" type="text" name="title"
				value="${boardview.title}" readonly="readonly" style="width: 25%;">

			<div style="font-family: dohyun; color: white; margin-right: 21%;">내용</div>
			<textarea class="gray_textbox" readonly="readonly" name="content"
				cols="22" rows="10" style="width: 25%; height: 4%;">${boardview.content}</textarea>
			<br>
			<c:if test="${sessionScope.user_id eq boardview.name}">
				<button class="orange_btn" type="button" id="boardcontentok"
					style="width: 7%;" onclick="form.submit()">수정</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

			<button class="orange_btn" type="button" id="boardcontentdel"
					style="width: 7%;" onclick="contentdel();">삭제</button>
			</c:if>
		</div>
	</form>

	<hr style="color: white; width: 80%; border: solid;">

	<div>
		<form method="post" id="boardcomment" action="commentregister">
			<table
				style="border: double; border-color: #fe6000;" align = "center">
				<tr>
					<td><input type="text" class="gray_textbox" id="commentId"
						name="commentId" readonly="readonly"
						value="${sessionScope.user_id}"></td>
					<td><input type=radio name="commentsecret" value="1">&nbsp;비밀댓글&nbsp;&nbsp;&nbsp;
						<input type=radio name="commentsecret" value="0" checked="checked">&nbsp;공개	댓글</td>
					<td><textarea rows="3" cols="60" name="commentation"
							id="commentation" class="gray_textbox"
							style="width: 800px; height: 150px;" placeholder="댓글을 입력하세요"></textarea></td>
					<td><button type="button" class="orange_btn" id="comment_btn"
						onclick="commentadd()" style="width: 150px; height: 150px;">댓글 등록</button></td>
					<td><input type="text" name="num" id="num" hidden="true"
						value="${boardview.num}"></td>
				</tr>
			</table>
		</form>	
	</div>
	<div id="reply_Id" class = "reply_Id"></div>
	<div id="commentList" class = "commentList"></div>
</body>

<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
	<%@ include file="include/footer.jspf"%>
</div>
</html>