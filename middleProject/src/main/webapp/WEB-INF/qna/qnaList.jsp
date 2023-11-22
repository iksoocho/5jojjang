
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<body>
<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> QNA 목록
				</div>
				<div class="card-body">
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>게시물 번호</th>
								<th>작성자</th>
								<th>제목</th>
								
								<th>작성 일자</th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach items="${list }" var="user">
								<tr>
									<td>${user.qno }</td>
									<td>${user.qid }</td>
									<%-- <td>${user.qtitle }</td> --%>
									<td><a href="getQna.do?qno=${user.qno }"> ${user.qtitle }</a></td>
									<td>${user.qwritedate }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
						
						<button type="button" onclick="location.href='addQnaForm.do'"> ✎QnA 글쓰기 </button>

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















