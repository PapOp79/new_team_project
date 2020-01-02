<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" data-backdrop="static"
	aria-labelledby="myModalLabel" aria-hidden="true" style="top: 20%; overflow-y:scroll;" >
	<div class="modal-dialog" role="document">
		<div class="modal-content"
			style="background-color: #000000; background-color: rgba(0, 0, 0, 0.8); color: white;">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">팔</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				</div>
			<div class="modal-body">
				<table border="1" align="center"
					style="background-color: white; color: black; font-family: dohyun;">
					<tr>
						<td width="90" height="30" align="center">작성자</td>
						<td width="250" height="30" align="center">제목</td>
						<td width="90" height="30" align="center">작성일</td>
						<c:forEach items="${exList}" var="Edto">
							<c:if test="${Edto.part == 1 }">
								<tr>
									<td height="30">${Edto.name}</td>
									<td height="30"><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									 onclick='iframe("${Edto.link}")'
									 data-dismiss="modal" >
									${Edto.title}</a></td>
									<td height="30">${Edto.savedate }</td>
								</tr>
							</c:if>
						</c:forEach>
					<tr>
						<td align="center" colspan="3"
							style="background-color: #000000; background-color: rgba(0, 0, 0, 0.8);">
							<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<a data-toggle="modal" data-target="#newText"
									style="color: #ff7f00;"  data-dismiss="modal">글작성 </a>
							</c:if>
							
						</td>
					</tr>
					<tr><td colspan="4">
					<div style = "font-family: dohyun; color:black;" align = "center">
						<c:choose>
							<c:when test="${param.start == null}"><!-- start값 만들어주기 -->
								<c:set var = "start" value = "1" scope = "session" />
							</c:when>
							<c:otherwise>
								<c:set var = "start" value="${param.start}" scope = "session" /> <!-- 링크 클릭시 start값을 그대로 받음 -->
							</c:otherwise>
						</c:choose>
							<c:forEach begin = "1" end="${pc.totalEndPage}" step = "1" var = "cnt">
								<a href = "board?start=${cnt}">[${cnt}]</a><!-- 계산해서 페이지 번호 나타내기 -->
							</c:forEach>		
						${start}/${pc.totEndPage}<!-- 전체 페이지 -->
					</div>
					</td></tr>
				</table> 
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
			</div>
		</div>
	</div>
</div>

</body>
</html>