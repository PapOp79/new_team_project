<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function contentdel(Cnum) {
		$.ajax({
			url:'commentdel',
			type:'POST',
			data:{'delnum':Cnum},
			success : function(data){
				if(data == 1){
					commentlist();
				}
				else{
					commentlist();
				}
				
			},
			error : function(){alert('fail')}
		});
	}
	
	
	function replaceAll(str, searchStr, replaceStr) {
		return str.split(searchStr).join(replaceStr);
		}

	function modifychange(chbtn, commentnum){
		var Ccomment=$(chbtn).parent().html();
		//var con = Ccomment.replace("value", "\r\n");
		var con=replaceAll(Ccomment,"<br>","\r\n");
		var commentId = "<%=(String)session.getAttribute("user_id")%>";
		var num = <%=request.getParameter("num")%>
		var html = "";
		
		html += "<form id='modifycommentform' name='modifycommentform'><input type='hidden' id='MocommentNum' name='MocommentNum' readonly='readonly' value='"+commentnum+"'>";
		html += "<input type='text' id='MocommentId' class='gray_textbox' name='MocommentId' readonly='readonly' value='"+commentId+"'>";
		html += "<input type='text' id='Mocommentation' name='Mocommentation' class='gray_textbox' value='' style='width:40%'>";
		html += "<button class='orange_btn' type='button' style='width:15%;'" +
				"id='suc_btn' onclick='suc_btn()'>확인</button>";
		html += "<button class='orange_btn' type='button' style='width:15%;'" +
				"id='no_btn' onclick='commentlist()'>취소</button>";
		html += "</form>";
		
		$(chbtn).parent().html(html);
		
		$('#suc_btn').click(function(){
			$.ajax({
				type:'POST',
				url:'commentmodifychk',
				data:$("#modifycommentform").serialize(),
				success:function(data){
					commentlist();
				},
				error:function(data){alert('fail')},
			})
		});
	}
	
	function commentdel(Cnum){
		var delchk = confirm('댓글을 삭제 하시겠습니까?');
		if(delchk == true){
			contentdel(Cnum);
		} else{
			commentlist();
		}
		
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

	function commentlist(){
		var user = "<%=(String)session.getAttribute("user_id")%>";
		var num = <%=request.getParameter("num")%>
		var admin = <%=request.getParameter("Admin")%>
		var secret = <%=request.getParameter("commentsecret")%>
		
		$.ajax({
			type:'POST',
			url:'commentlist',
			data:{'num':num},
			
			success:function(data){
				var html = "";
				var cCnt = data.length;
				
				if(data.length > 0){
					html += "<div>";
					for(i = 0; i < data.length; i++){
						if(data[i].commentsecret == 1){
							if(admin > 0 || data[i].commentId == user){
								html += "<a style='color:white'>[비밀댓글]</a>";
								html += "<input type='hidden' id='commentNum' name='commentNum' readonly='readonly' value='"+data[i].commentnum+"'>";
								html += "<input type='text' id='LicommentId' class='gray_textbox' name='commentId' readonly='readonly' value='"+data[i].commentId+"'>";
								html += "<input type='text' id='Licommentation' name='commentation' class='gray_textbox' readonly='readonly' value='"+data[i].commentation+"'>";
								html += data[i].regdate;
								html += "<button class='orange_btn' type='button' style='width:15%;'" +
		        	        			"id='commentmodifyok' onclick='modifychange(this, "+data[i].commentnum+");'>수정</button>";
		        	        	html += "<button class='orange_btn' type='button' style='width:15%;'" +
		        	        			"id='commentdel' onclick='commentdel("+data[i].commentnum+");'>삭제</button>";
								html += "</div><div>";
								}else{
									html += "<a style='color:white'>[비밀댓글]</a>";
									html += "<input type='hidden' id='commentNum' name='commentNum' readonly='readonly' value='"+data[i].commentnum+"'>";
									html += "<input type='text' id='LicommentId' class='gray_textbox' name='commentId' readonly='readonly' value='"+data[i].commentId+"'>";
									html += "<input type='text' id='Licommentation' name='commentation' class='gray_textbox' readonly='readonly' value='[비밀댓글입니다.]'>";
									html += data[i].regdate;
								}
							html += "</div><div>";
							}else{
								html += "<input type='hidden' id='commentNum' name='commentNum' readonly='readonly' value='"+data[i].commentnum+"'>";
								html += "<input style='margin-left:3.8%' type='text' id='LicommentId' class='gray_textbox' name='commentId' readonly='readonly' value='"+data[i].commentId+"'>";
								html += "<input type='text' id='Licommentation' name='commentation' class='gray_textbox' readonly='readonly' value='"+data[i].commentation+"'>";
								html += data[i].regdate;
								if(data[i].commentId == user){									
								html += "<button class='orange_btn' type='button' style='width:15%;'" +
        	        					"id='commentmodifyok' onclick='modifychange(this, "+data[i].commentnum+");'>수정</button>";
        	        			html += "<button class='orange_btn' type='button' style='width:15%;'" +
        	        					"id='commentdel' onclick='commentdel("+data[i].commentnum+");'>삭제</button>";
								}
							}
						html += "</div><div>";
						}
						
						/* html += "<input type='hidden' id='commentNum' name='commentNum' readonly='readonly' value='"+data[i].commentnum+"'>";
						html += "<input type='text' id='LicommentId' class='gray_textbox' name='commentId' readonly='readonly' value='"+data[i].commentId+"'>";
						html += "<input type='text' id='Licommentation' name='commentation' class='gray_textbox' readonly='readonly' value='"+data[i].commentation+"'>";
						html += data[i].regdate; */
						
						/* if(user == data[i].commentId){
							html += "<button class='orange_btn' type='button' style='width:15%;'" +
        	        				"id='commentmodifyok' onclick='modifychange(this, "+data[i].commentnum+");'>수정</button>";
        	        		html += "<button class='orange_btn' type='button' style='width:15%;'" +
        	        				"id='commentdel' onclick='commentdel("+data[i].commentnum+");'>삭제</button>";
        	        		}
						html += "</div><div>"; */
						}else{
							html += "<div>";
			                html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
			                html += "</table></div>";
			                html += "</div>";
						}
					html += "</div>";
				$("#commentList").html(html);
				},
				error:function(data){alert('fail')}
			});
		}


		
		<%-- var num=<%=request.getParameter("num")%>
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
						html += "<form action='commentmodifychk' id='form' method='post'>";
						html += "<div>";
        	            html += "<div><table class='table'>";
            	        html += "<tr><td><input type='hidden' id='commentNum' name='commentNum' readonly='readonly' value='"+Cdto.commentnum+"'></td>";
            	        html += "<td><input type='text id='commentId' class='gray_textbox' name='commentId' readonly='readonly' value='"+Cdto.commentId+"'></td>";
            	        html += "<td><input type='text id='commentation' name='commentation' class='gray_textbox' readonly='readonly' value='"+Cdto.commentation+"'></td>";
            	        html += "<td>"+Cdto.regdate+"</td>";
            	        html += "<td><button class='orange_btn' type='button' style='width:25%;'" +
            	        		"id='commentmodifyok' onclick='modifychange()'>수정</button></td>";
            	        html += "<td><button class='orange_btn' type='button' style='width:25%;'" +
            	        		"id='commentmodifyno' onclick='commentdel()'>삭제</button></td></tr>";
                	    html += "</table></div>";
                    	html += "</div>";
                    	html += "</form>";
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
		}); --%>
	

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/static/css/agency.min.css?ver=1.2.18">
<%@ include file="include/header.jspf"%>

<body style="background-color: #111111;" onload = "commentlist()">
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
	<div id="commentList" class = "commentList"></div>
</body>

<div style="position: fixed; bottom: 60px; margin-left: 30PX;">
	<%@ include file="include/footer.jspf"%>
</div>
</html>