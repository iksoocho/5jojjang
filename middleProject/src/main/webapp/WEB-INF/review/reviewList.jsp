<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<form action="modifyReviewForm.do" name="reviewForm">


<h3>template.jsp</h3>
<!-- 아래는 부트스트랩 다운받고 안에있는 index.html파일 내용 복사해 놓은것 -->


<head>
<meta charset="UTF-8">
<title>리뷰 LIST</title>
</head>

<body>
<style>
a {
	text-decoration: none;
	color: #000;
}
</style>

<input type="hidden" name="rid" value="loginId">
<section class="py-5">
	<div class="container px-4 px-lg-5 mt-5">
		<div
			class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">


			<c:forEach items="${rlist }" var="vo">

				<!-- 상품목록 -->
				<div class="col mb-5">
					<a href="getReview.do?rno=${vo.rno }"> 
						<div class="card h-100">
							<!-- Sale badge-->
							<div class="badge bg-dark text-white position-absolute"
								style="top: 0.5rem; right: 0.5rem">${vo.rid }님의 후기</div>
							<img class="card-img-top" src="reviewResources/images/${vo.rimage}" style="height:360px;"
								alt="..." />
								
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center">
									<!-- Product name-->
									<h5 class="fw-bolder">${vo.rtitle  }</h5>

								
									<p> ${vo.rwritedate }</p>
								</div>
							</div>
						</div>
					</a>
				</div>

			</c:forEach>

		</div>
	</div>
</section>




<!-- qna랑 review 게시판 아래에 페이징해야됨!  -->
<div class= "pagination"></div>
	<p><a href="addReviewForm.do"> REVIEW 게시글 등록화면 </a></p>
	
	
	
	
	
