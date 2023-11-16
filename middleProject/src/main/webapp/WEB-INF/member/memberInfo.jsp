<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<form action="modifyForm.do" name="myForm">
	<table class="table">
		<tr>
			<th>이름</th>
			<td class="name">${mid.name }</td>
		</tr>
		<tr>
			<th>아이디</th>
			<td class="mid">${mid.mid }</td>
		</tr>
		<tr>
			<th>연락처</th>
			<td class="phone">${mid.phone }</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td class="email">${mid.email }</td>
		</tr>
		<tr>
			<td colspan="4" align="center">
			
			
			<input type="submit" class="btn btn-primary" value="정보 수정">
			<input type="button" class="btn btn-warning" value="회원 탈퇴">
				
				
			</td>
		</tr>
	</table>

</form>