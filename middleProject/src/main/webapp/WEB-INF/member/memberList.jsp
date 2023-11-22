<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> 회원 목록
				</div>
				<div class="card-body">
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>회원 아이디</th>
								<th>이름</th>
								<th>연락처</th>
								<th>이메일</th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach items="${list }" var="vo">
								<tr>
									<td>${vo.mid }</td>
									<td>${vo.name }</td>
									<td> ${vo.phone }</td>
									<td>${vo.email }</td>
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