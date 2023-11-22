<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
table {
    width: 700px;
    text-align: center;
    border: 1px solid #fff;
    border-spacing: 1px;
    font-family: 'Cairo', sans-serif;
  margin: auto;
}

caption {
    font-weight: bold;
}

table td {
    padding: 10px;
    background-color: #eee;
}

table th {
    background-color: #332;
    color: #fff;
    padding: 10px;
}

img {
    width: 90px;
    height: 90px;
}

.view,
.delete {
    border: none;
    padding: 5px 10px;
    color: #fff;
    font-weight: bold;
}

.view {
    background-color: #03A9F4;
}

.delete {
    background-color: #E91E63;
}

.tablefoot {
    padding: 0;
    border-bottom: 3px solid #009688;
}
</style>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>관리자 축제 수정</title>
</head>
<body>
	<h3> ░ 축제 수정하기 </h3>
	<h3> </h3>
	
	
	
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
				<td colspan="2"><textarea cols="50" rows="5"
						name="fcontent">${vo.fcontent }</textarea></td>
			</tr>
			
			
			
			
			<tr>
				<th> 성인 </th>
				<td><input type="text" name="fprice1" value="${vo.fprice1 }"></td>
			</tr>
			<tr>
				<th>청소년 </th>
				<td><input type="text" name="fprice2" value="${vo.fprice2 }"></td>
			</tr>
			
	

			<tr>
				<td colspan="2"><input type="submit" value="✂수정" > 
				<input type="reset" value="다시 쓰기"></td>
			</tr>
		</table>
	</form>


</body>
</html>