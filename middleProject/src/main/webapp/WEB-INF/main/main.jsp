<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">

<title>Insert title here</title>

bbbbbbb



<title>메인.jsp</title>


</head>
<body>
<<<<<<< HEAD
	<h3>5조 중간프로젝트 입니다.</h3>
=======


<h3>메인</h3>

	<a href="calendar.do">달력으로</a>


	<h3>5조 중간프로젝트</h3>
>>>>>>> refs/heads/develope
	<c:choose>
		<c:when test="${empty loginId }">
			<div class="sidebar-heading border-bottom bg-light">
				<h5>guest</h5>
			</div>
			
		</c:when>

		<c:otherwise>
			<div class="sidebar-heading border-bottom bg-light">
				<h5>(${loginId })님 환영합니다 <c:if test="${loginId=='admin'}">${responsibility }</c:if></h5>
			</div>
		</c:otherwise>
	</c:choose>
	<c:choose>
		<c:when test="${empty loginId }">
			<a
				class="list-group-item list-group-item-action list-group-item-light p-3"
				href="loginForm.do">로그인 화면</a>
		</c:when>
		<c:otherwise>
			<a
				class="list-group-item list-group-item-action list-group-item-light p-3"
				href="logout.do">로그아웃</a>
		</c:otherwise>
	</c:choose>
	<c:choose>
		<c:when test="${empty loginId }">
			<a href="joinForm.do">회원 가입</a>
		</c:when>
		<c:otherwise>
			<a href="myPageForm.do">마이 페이지</a>
		</c:otherwise>
	</c:choose>

</body>
</html>