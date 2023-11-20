<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>관리자 축제 수정</title>
</head>
<body>
	<h3>축제 수정 화면</h3>
	
	${vo}
	
	<form action="modifyAdFv.do" method="post" > <!-- enctype="multipart/form-data"이거 파일수정안하니까 얘는 빼야지.. -->
		<input type="hidden" name="fcode" value="${vo.fcode}"> 
		
		<input type="hidden" name="mid" value="${loginId }">
		
		<table border="1">
			<tr>
				<th>축제명</th>
				<td><input type="text" name="fname" value="${vo.fname }"></td>
			
			</tr>
			
			<tr>
			<th>내용</th>
				<td colspan="2"><textarea cols="40" rows="5"
						name="fcontent">${vo.fcontent }</textarea></td>
			</tr>
			
			<tr>
				<th>가격1</th>
				<td><input type="text" name="fprice1" value="${vo.fprice1 }"></td>
			</tr>
			<tr>
				<th>가격2</th>
				<td><input type="text" name="fprice2" value="${vo.fprice2 }"></td>
			</tr>
			
	

			<tr>
				<td colspan="2"><input type="submit" value="수정"> 
				<input type="reset" value="초기화"></td>
			</tr>
		</table>
	</form>


</body>
</html>