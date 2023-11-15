<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<form action="modifyQnaForm.do" name="qnaForm">
<input type="hidden" name="qno" value="${qno.qno }">

<table border="1" >


<h3>QnA전체 리스트보기</h3>

<table border="1">
	<thead>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자(id)</th>
			<th>작성일자</th>
		</tr>
	</thead>

	<tbody>

		<c:forEach items="${qlist }" var="vo">
			<tr>
				<td>${vo.qno }</td>
				<td><a href="getQna.do?qno=${vo.qno }"> ${vo.qtitle }</a></td>
				<td>${vo.qid }</td>
				<td>${vo.qwriteDate }</td>
			
			</tr>
		</c:forEach>

	</tbody>
</table>

<div id="paging"></div>

<!-- qna랑 review 게시판 아래에 페이징해야됨!  -->
<div class= "pagination"></div>
<p><a href="addQnaForm.do"> Qna 게시글 등록화면 </a></p>
	
<script>

/* //Qna 리스트 페이징 하기!
function makePaging(dto={}){
		document.querySelector('.pagination').innerHTML = '';
		//페이지를 만들고
		if(dto.prev){
			let aTag = document.createElement('a');
			aTag.setAttribute('href', dto.startPage - 1);
			aTag.innerHTML = ">>";
			document.querySelector('.pagination').append(aTag);
		}
		for(let i=dto.startPage; i<=dto.endPage; i++){
			let aTag = document.createElement('a');
			aTag.setAttribute('href', i);
			aTag.innerHTML = i;
			//active 녹색
			if(i == page){
				aTag.className = 'active'; // 클래스 속성을 지정할 때 className
			}
			document.querySelector('.pagination').append(aTag);
		}
		if(dto.next){
			let aTag = document.createElement('a');
			aTag.setAttribute('href', dto.endPage + 1);
			aTag.innerHTML = ">>";
			document.querySelector('.pagination').append(aTag);
		} 
		
		
		
	//a태그에 이벤트 입력.  - pagination클래스 a태그 다 가져옴 > 각각에 이벤트 걸겠다.
		document.querySelectorAll('.pagination a').forEach(elem =>{
			elem.addEventListener('click', function(e){
				e.preventDefault(); // form, a => 링크 기능을 차단하고 아랫부분을 계쏙 실행하겠습니다~
				page = elem.getAttribute('href');
				
				
				fetch('qnaList.do?page=' + page)
				.then(resolve => reslove.json())
				.then(result)
				
				console.log(result);
			})
		})
	} //makePaging

	makePaging(paging); */


</script> 




