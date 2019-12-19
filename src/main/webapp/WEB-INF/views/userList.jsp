<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.health.dao.userDAO" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>


<body style="background-image: url('resources/static/img/login-background.png'); height:100vh; background-repeat: no-repeat; background-size: cover; background-position: center;">
	<%@ include file="include/header.jspf"%>
	<%@ include file="include/mypageSidevar.jsp" %>
<div>
	<%
		userDAO dao = new userDAO();
	%>
	<c:set var="pc" value="${dao.pagingNum(param.start) }"/>
	<c:set var="totalPage" value="${dao.getTotalPage() }"/>
	
	
	<h1>회원목록1</h1>
	
		<table class="table table-striped table-dark">
			<thead>
				<tr>
					<th scope="col">아이디</th><th>이름</th><th>나이</th><th>가입날짜</th><th>성별</th>
				</tr>
			</thead>
					<tbody>
							<c:forEach var="Udto" items="${userList }">
						<tr>
								<th scope="row">${Udto.userId }</th><td>${Udto.userName }</td><td>${Udto.userAge }</td><td>${Udto.userRegDate }</td><td>${Udto.userSex }</td>
						</tr>
							</c:forEach>
					</tbody>
			<tfoot>
				<tr>
					<td colspan="4" align="right">
						<c:choose>
							<c:when test="${param.start == null }">
								<c:set var="start" value="1"/>
							</c:when>
							<c:otherwise>
								<c:set var="start" value="${param.start }"/>
							</c:otherwise>
						</c:choose>
						<nav aria-label="Page navigation example">
						  <ul class="pagination">
							<c:choose>
								<c:when test="${start > 1 }">
								    <li class="page-item">
								      <a class="page-link" href="userList?start=${start-1 }" aria-label="Previous">
								        <span aria-hidden="true">&laquo;</span>
								      </a>
								    </li>
								</c:when>
								<c:otherwise>
									<li class="page-item">
								      <a class="page-link" href="#" aria-label="Previous">
								        <span aria-hidden="true">&laquo;</span>
								      </a>
								    </li>
								</c:otherwise>
							</c:choose>
						    <c:forEach begin="1" end="${pc.totEndPage }" step="1" var="cnt">
							    <li class="page-item"><a class="page-link" href="userList?start=${cnt }">${cnt }</a></li>
						    </c:forEach>
						    <c:choose>
						    	<c:when test="${start < pc.totEndPage }">
								    <li class="page-item">
								      <a class="page-link" href="userList?start=${start+1 }" aria-label="Next">
								        <span aria-hidden="true">&raquo;</span>
								      </a>
								    </li>
						    	</c:when>
						    	<c:otherwise>
							    	<li class="page-item">
								      <a class="page-link" href="#" aria-label="Next">
								        <span aria-hidden="true">&raquo;</span>
								      </a>
								    </li>		    		
						    	</c:otherwise>
						    </c:choose>
						    ${start } / ${pc.totEndPage }
						  </ul>
						</nav>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>