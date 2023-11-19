<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<h3>축제 등록화면</h3>
<form action="addAdFv.do" method="post" enctype="multipart/form-data">
	<!-- 파일첨부 처리하려면(파일업로드할때) multipart/form-data  -->
	<table class="table" border="1">
		<tr>
			<th>축제코드</th>
			<td><input type="text" class="form-control" name="fcode"></td>
		</tr>
		<tr>
			<th>축제명</th>
			<td><input type="text" class="form-control" name="fname"></td>
			<!-- 세션에서 값 읽어오도록!   -->
		</tr>
		<tr>
			<th>연락처</th>
			<td><input type="text" class="form-control" name="fphone"></td>

		</tr>
		<tr>
			<th>시작일</th>
			<td><input type="text" class="form-control" name="fsdate"></td>
			<th>종료일</th>
			<td><input type="text" class="form-control" name="fedate"></td>
		</tr>
		<tr>
			<th>축제설명</th>
			<td colspan="2"><textarea cols="40" rows="5" name="fcontent"
					class="form-control"></textarea></td>

		</tr>
		<tr>
			<th>이미지삽입</th>
			<td><input type="file" class="form-control" name="fimage"></td>
			<!-- 라이브러리하나활용해서 쓰느 방식으로 go : cos 라이브러리 추가.  -->
		</tr>
		<tr>
			<th>price1</th>
			<td><input type="text" class="form-control" name="fprice1"></td>
			<th>price2</th>
			<td><input type="text" class="form-control" name="fprice2"></td>
		</tr>


		<tr>
			<td colspan="2"><input type="submit" value="저장"
				> <input type="reset" value="초기화"
				></td>
		</tr>
	</table>
</form>