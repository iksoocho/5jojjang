<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
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
    background-color: #333;
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
 
  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h3>░ Q&A  </h3>

	
	<form action="addQna.do" method="post" > <!-- 파일첨부 처리하려면(파일업로드할때) multipart/form-data  -->
	<input type = "hidden" name="qno" value="${qno.qno }">
	<input type = "hidden" name="qid" value="${loginId}">
	
		<table  border="1">
		
			<tr>
				<th>제목</th>
				<td><input type="text" name="qtitle" autofocus></td>
			</tr>
			
			<tr>
				<th>작성자</th>
				<td><input type="text" name="qid" value="${loginId}"  readonly></td> <!-- 세션에서 값 읽어오도록!   -->
			</tr>
			
		<!-- 	<tr>
				<th>작성날짜</th>
				<td><input type="text" name="qtitle"></td>
			</tr> -->
			
			<tr>
				<th>내용</th>
				<td colspan="2"><textarea cols="40" rows="5" name="qcontent" ></textarea></td>
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="qpass" placeholder="4자리 숫자" ></td>
			</tr>
		<tr>
			<td colspan="2"><input type="submit" value="저장" > 
			<input type="reset" value="다시 쓰기"></td>
		</tr>
		</table>


<button type="button" onclick="location.href='qnaList.do'"> ⫷ 이전 페이지로 </button>
	</form>