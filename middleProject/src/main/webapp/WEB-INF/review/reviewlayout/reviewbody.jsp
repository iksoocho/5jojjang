<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


<form action="modifyReviewForm.do" name="reviewForm">
<input type="hidden" name="rno" value="${rno.rno }">
<table border="1" >
<!DOCTYPE html>

<html>

<h3>template.jsp</h3>
<!-- 아래는 부트스트랩 다운받고 안에있는 index.html파일 내용 복사해 놓은것 -->


<head>
<meta charset="UTF-8">
<title>QNA LIST</title>
</head>

<body>

<section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                
                <table border="1">
				<thead>
				<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>작성자(id)</th>
						<th>작성일자</th>
						<th>이미지</th>
						
					</tr>
				</thead>
				
				
                    <!-- 상품목록 -->
                    
                    <div class="col mb-5">
                        <div class="card h-100">
                         
                         <tbody>   
                            <c:forEach items="${rlist }" var="vo">
                            <!-- Product image--> 이미지넣을 곳 
                            <img class="card-img-top" src="wepapp/resources/${vo.rimage }" alt="{vo.rtitle}" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name--> 제목넣기
                                    <h5 class="fw-bolder">${vo.rtitle}</h5>
                              
                                    <!-- Product price--> 아이디넣기
                                    <span class="text-muted text-decoration-line-through">${vo.rid}</span>
                                    ${vo.rid}
                                </div>
                            </div>
                            <!-- Product actions--> 버튼누르면 게시글로 들어가게해보등가..
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="getReview.do">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    </tbody>
                   </table>

                        </div>
                    </div>
               
        </section>
</body>
</html>