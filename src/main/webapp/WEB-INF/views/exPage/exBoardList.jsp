<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

::selection {
	background-color: black;
	color: white;
}
/* Important part */ .modal-dialog{ overflow-y: initial !important } .modal-body{ height: 100%; overflow-y: auto; }

</style>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<!-- 모달 게시판 -->
<!--팔 -->
<div class="modal fade" id="part1" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">팔</h4>
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
									data-content6="part1"
									data-content8="1"
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
							
						</td>
					</tr>
				</table> 
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part1" data-content8="1"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>
	<!-- 다리 -->
<div class="modal fade" id="part2" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">다리</h4>
				</div>
				<div class="modal-body">
					<table border="1" align="center"
					style="background-color: white; color: black; font-family: dohyun;">
					<tr>
						<td width="90" height="30" align="center">작성자</td>
						<td width="250" height="30" align="center">제목</td>
						<td width="90" height="30" align="center">작성일</td>
						<c:forEach items="${exList}" var="Edto">
							<c:if test="${Edto.part == 2 }">
								<tr>
									<td height="30">${Edto.name}</td>
									<td height="30"><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part2"
									data-content8="2"
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
							
						</td>
					</tr>
				</table> 
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part2" data-content8="2"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>
	<!-- 가슴, 배 -->
<div class="modal fade" id="part3" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">가슴, 배</h4>
				</div>
				<div class="modal-body">
					<table border="1" align="center"
					style="background-color: white; color: black; font-family: dohyun;">
					<tr>
						<td width="90" height="30" align="center">작성자</td>
						<td width="250" height="30" align="center">제목</td>
						<td width="90" height="30" align="center">작성일</td>
						<c:forEach items="${exList}" var="Edto">
							<c:if test="${Edto.part == 3 }">
								<tr>
									<td height="30">${Edto.name}</td>
									<td height="30"><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part3"
									data-content8="3"
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
							
						</td>
					</tr>
				</table> 
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part3" data-content8="3"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>
		<!-- 무릎 -->
	<div class="modal fade" id="part4" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">무릎</h4>
				</div>
				<div class="modal-body">
					<table border="1" align="center"
					style="background-color: white; color: black; font-family: dohyun;">
					<tr>
						<td width="90" height="30" align="center">작성자</td>
						<td width="250" height="30" align="center">제목</td>
						<td width="90" height="30" align="center">작성일</td>
						<c:forEach items="${exList}" var="Edto">
							<c:if test="${Edto.part == 4 }">
								<tr>
									<td height="30">${Edto.name}</td>
									<td height="30"><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part4"
									data-content8="4"
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
							
						</td>
					</tr>
				</table> 
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part4" data-content8="4"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>
			<!-- 어깨 -->
	<div class="modal fade" id="part5" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">어깨</h4>
				</div>
				<div class="modal-body">
					<table border="1" align="center"
					style="background-color: white; color: black; font-family: dohyun;">
					<tr>
						<td width="90" height="30" align="center">작성자</td>
						<td width="250" height="30" align="center">제목</td>
						<td width="90" height="30" align="center">작성일</td>
						<c:forEach items="${exList}" var="Edto">
							<c:if test="${Edto.part == 5 }">
								<tr>
									<td height="30">${Edto.name}</td>
									<td height="30"><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part5"
									data-content8="5"
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
							
						</td>
					</tr>
				</table> 
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part5" data-content8="5"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>
		<!-- 등 -->
	<div class="modal fade" id="part6" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">등</h4>
				</div>
				<div class="modal-body">
					<table border="1" align="center"
					style="background-color: white; color: black; font-family: dohyun;">
					<tr>
						<td width="90" height="30" align="center">작성자</td>
						<td width="250" height="30" align="center">제목</td>
						<td width="90" height="30" align="center">작성일</td>
						<c:forEach items="${exList}" var="Edto">
							<c:if test="${Edto.part == 6 }">
								<tr>
									<td height="30">${Edto.name}</td>
									<td height="30"><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part6"
									data-content8="6"
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
							
						</td>
					</tr>
				</table> 
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part6" data-content8="6"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>
		<!-- 엉덩이 -->
	<div class="modal fade" id="part7" tabindex="-1"
		role="dialog" data-backdrop="static"
		style="background: none; color: #ff7f00; overflow-y:scroll;" >
		<div class="modal-dialog" role="document">
			<div class="modal-content"
				style="background-color: #000000; background-color: rgba(0, 0, 0, 0.2); color: white;">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">엉덩이</h4>
				</div>
				<div class="modal-body">
					<table border="1" align="center"
					style="background-color: white; color: black; font-family: dohyun;">
					<tr>
						<td width="90" height="30" align="center">작성자</td>
						<td width="250" height="30" align="center">제목</td>
						<td width="90" height="30" align="center">작성일</td>
						<c:forEach items="${exList}" var="Edto">
							<c:if test="${Edto.part == 7 }">
								<tr>
									<td height="30">${Edto.name}</td>
									<td height="30"><a data-target="#exboard_content" data-toggle="modal" 
									data-content1="${Edto.name }"
									data-content2="${Edto.title }"
									data-content3="${Edto.content}"
									data-content4="${Edto.link}"
									data-content5="${Edto.num}"
									data-content6="part7"
									data-content8="7"
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
							
						</td>
					</tr>
				</table> 
				</div>
					<div class="modal-footer">
					<c:if test='${sessionScope.Admin eq 1 or sessionScope.Admin eq 2}'>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#newText" data-content7="part7" data-content8="7"
									style="color: white;"  data-dismiss="modal">글작성 </button>
							</c:if>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="color: white;">닫기</button>
					</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
$(document).ready(function () { $('head').append('<style type="text/css">.modal .modal-body {max-height: ' + ($('body').height() * .5) + 'px;overflow-y: auto;}.modal-open .modal{overflow-y: hidden !important;}</style>'); });

</script>
</body>
</html>