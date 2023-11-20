<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<form action="modifyReviewForm.do" name="reviewForm">
<input type="hidden" name="rno" value="${rno.rno }">

<h3>template.jsp</h3>
<!-- 아래는 부트스트랩 다운받고 안에있는 index.html파일 내용 복사해 놓은것 -->


<head>
<meta charset="UTF-8">
<title>리뷰 LIST</title>
</head>

<body>

<%-- <section class="py-5">
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
                            <!-- Product image 이미지넣을 곳-->  
                            <img class="card-img-top" src="wepapp/resources/${vo.rimage }" alt="{vo.rtitle}" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name 제목넣기--> 
                                    <h5 class="fw-bolder">${vo.rtitle}</h5>
                              
                                    <!-- Product price  아이디넣기-->
                                    <span class="text-muted text-decoration-line-through">${vo.rid}</span>
                                    ${vo.rid}
                                </div>
                            </div>
                            <!-- Product actions 버튼누르면 게시글로 들어가게--> 
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="getReview.do">게시글로</a></div>
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
 --%>




<h3>Review 전체 리스트보기</h3>

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

	<tbody>

		<c:forEach items="${rlist }" var="vo">
			<tr>
				<td>${vo.rno }</td>
				<td><a href="getReview.do?rno=${vo.rno }"> ${vo.rtitle }</a></td>
				<td>${vo.rid }</td>
				<td>${vo.rwriteDate }</td>
				<td><input src ="reviewResources/images/${vo.rimage}"  name="image" width="200"></td> 
				
				
			</tr>
		</c:forEach>

	</tbody>
</table> 



<!-- qna랑 review 게시판 아래에 페이징해야됨!  -->
<div class= "pagination"></div>
	<p><a href="addReviewForm.do"> REVIEW 게시글 등록화면 </a></p>
