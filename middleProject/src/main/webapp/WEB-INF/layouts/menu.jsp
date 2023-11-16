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
				<li><a class="icon solid fa-home" href="logout.do"><span>로그
							아웃</span></a></li>
			</c:otherwise>
		</c:choose>

		<c:choose>
			<c:when test="${empty loginId }">
				<li><a class="icon solid fa-home" href="joinForm.do"><span>회원
							가입</span></a></li>
			</c:when>
			<c:when test="${loginId =='admin' }">
				<li><a class="icon solid fa-home" href="joinForm.do"><span>회원
							관리</span></a></li>
			</c:when>
			<c:otherwise>
				<li><a class="icon solid fa-home" href="myPageForm.do"><span>마이 페이지</span></a>
				<ul>
					<li><a href="getMember.do?mid=${loginId }">회원 정보</a></li>
					<li><a href="#">찜 목록</a></li>
					<li><a href="#">구매 내역</a></li>
				</ul>
				</li>
			</c:otherwise>
		</c:choose>
		
		<c:choose>
			<c:when test="${!empty responsibility && responsibility == 'admin' }">
				<li><a class="icon solid fa-cog" href=""><span>축제 관리</span></a></li>
			</c:when>
			<c:otherwise>
				<li><a class="icon solid fa-cog" href="calendar.do"><span>축제
							일정</span></a></li>
			</c:otherwise>
		</c:choose>



		<li><a class="icon solid fa-retweet" href="reviewList.do"><span>리뷰게시판</span></a></li>
		<li><a class="icon solid fa-sitemap" href="qnaList.do"><span>QNA</span></a></li>
		<li><a class="icon solid fa-sitemap" href="main.do"><span>메인화면으로</span></a></li>
	</ul>
</nav>




<!-- <ul>

		<li><a class="icon solid fa-home" href="calendar.do"><span>축제일정보기</span></a></li>
		<li><a href="#" class="icon fa-chart-bar"><span>Dropdown</span></a>
			<ul>

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

