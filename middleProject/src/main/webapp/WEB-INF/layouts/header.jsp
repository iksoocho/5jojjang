<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container px-4 px-lg-5">
		<a class="navbar-brand" href="#!">Start Bootstrap</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="main.do">Home</a></li>

				<c:choose>
					<c:when test="${empty loginId }">
						<li class="nav-item"><a class="nav-link" href="loginForm.do">로그인</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link" href="logout.do">로그
								아웃</a></li>
					</c:otherwise>
				</c:choose>

				<c:choose>
					<c:when test="${empty loginId }">
						<li class="nav-item"><a class="nav-link" href="joinForm.do">회원
								가입</a></li>
					</c:when>
					<c:when test="${loginId =='admin' }">
						<li class="nav-item"><a class="nav-link" href="joinForm.do">회원
								관리</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdown"
							href="myPageForm.do" role="button" data-bs-toggle="dropdown"
							aria-expanded="false">마이 페이지</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item"
									href="getMember.do?mid=${loginId }">회원 정보</a></li>

								<li><a class="dropdown-item" href="wishList.do?mid=${loginId }">찜 목록</a></li>
								<li><a class="dropdown-item" href="#!">구매 내역</a></li>
							</ul></li>
					</c:otherwise>
				</c:choose>


				<c:choose>
					<c:when
						test="${!empty responsibility && responsibility == 'admin' }">
						<<li class="nav-item"><a class="nav-link" href="">축제 관리</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link" href="calendar.do">축제
								일정</a></li>
					</c:otherwise>
				</c:choose>







				<li class="nav-item"><a class="nav-link" href="">리뷰게시판</a></li>
				<li class="nav-item"><a class="nav-link" href="">QNA</a></li>

			</ul>
			<form class="d-flex" action="cartList.do">
			 <input type = "hidden" name= "mid" value="${loginId }">  
				<button class="btn btn-outline-dark" type="submit">
					<i class="bi-cart-fill me-1"></i> Cart <span
						class="badge bg-dark text-white ms-1 rounded-pill">0</span>
				</button>
			</form>

			
		</div>
		<c:choose>
				<c:when test="${empty loginId }">
					<div class="sidebar-heading border-bottom bg-light">
					
						<h5>guest</h5>
					</div>

				</c:when>

				<c:otherwise>
					<div class="sidebar-heading border-bottom bg-light">
						<h5>
							(${loginId })님 환영합니다
							<c:if test="${loginId=='admin'}">${responsibility }</c:if>
						</h5>
					</div>
				</c:otherwise>
			</c:choose>
	</div>
	
</nav>

<!-- Header-->
<header class="bg-dark py-5">
	<div class="container px-4 px-lg-5 my-5">
		<div class="text-center text-white">
			<h1 class="display-4 fw-bolder">축제 티켓 팝니다</h1>
			<p class="lead fw-normal text-white-50 mb-0">사세요</p>
		</div>
	</div>
</header>
