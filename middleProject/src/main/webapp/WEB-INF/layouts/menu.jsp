<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav id="nav">
	<ul>
	<c:choose>
		<c:when test="${empty loginId }">
			<li><a class="icon solid fa-home" href="loginForm.do"><span>로그인</span></a></li>
		</c:when>
		<c:otherwise>
			<li><a class="icon solid fa-home" href="logout.do"><span>로그 아웃</span></a></li>
		</c:otherwise>
	</c:choose>
	<c:choose>
		<c:when test="${empty loginId }">
			<li><a class="icon solid fa-home" href="joinForm.do"><span>회원 가입</span></a></li>
		</c:when>
		<c:otherwise>
			<li><a class="icon solid fa-home" href="myPageForm.do"><span>마이 페이지</span></a></li>
		</c:otherwise>
	</c:choose>
		<li><a class="icon solid fa-cog" href="left-sidebar.html"><span>Left
					Sidebar</span></a></li>
		<li><a class="icon solid fa-retweet" href="right-sidebar.html"><span>Right
					Sidebar</span></a></li>
		<li><a class="icon solid fa-sitemap" href="no-sidebar.html"><span>No
					Sidebar</span></a></li>
	</ul>
</nav>



<!-- <ul>
				<li><a href="#">Lorem ipsum dolor</a></li>
				<li><a href="#">Magna phasellus</a></li>
				<li><a href="#">Etiam dolore nisl</a></li>
				<li><a href="#">Phasellus consequat</a>
					<ul>
						<li><a href="#">Magna phasellus</a></li>
						<li><a href="#">Etiam dolore nisl</a></li>
						<li><a href="#">Phasellus consequat</a></li>
					</ul></li>
				<li><a href="#">Veroeros feugiat</a></li>
			</ul> -->