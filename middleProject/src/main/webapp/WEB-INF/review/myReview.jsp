
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<body>
<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> ${loginId }님의 리뷰
				</div>
				<div class="card-body">
				
				
				<input type="hidden" name="mid" value="mid.rid">
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>제목</th>
								<th>작성날짜</th>
								<th>내용</th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach items="${rlist }" var="vo">
								<tr>
									 <td><a href="getReview.do?rno=${vo.rno}">${vo.rtitle }</a></td> 
									
									<td>${vo.rwritedate }</td>
									<td>${vo.rcontent }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
						
				</div>
			</div>

</body>





<!-- <script

	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script> -->
<script src="adminResource/js2/scripts.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
	crossorigin="anonymous"></script>
<script src="adminResource/js2/datatables-simple-demo.js"></script>
<link href="adminResource/css2/styles.css" rel="stylesheet" />
