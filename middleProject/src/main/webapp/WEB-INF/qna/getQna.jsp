<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <style>
@import "https://germanfrelo.github.io/base-css-stylesheet/base.css" layer(base);
@import "https://codepen.io/germanfrelo/pen/mdMYKza.css" layer(styles);

:root {
  --page-max-inline-size: 100%;
}

body {
  padding-block: 2rem;
}

caption {
  text-align: start;
}
</style>    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   

<form action="modifyQnaForm.do" name="qnaForm">
<input type="hidden" name="qno" value="${qno.qno }">

<input type="hidden" name="mid" value="${loginId }">
<input type="hidden" name="pass" value="${qno.qpass }">


	<table border="1" class="table">
		<tr>
			<th>글번호</th>
			<td>${qno.qno }</td>
		</tr>
		<tr>
			<th>작성일시</th>
			<td>${qno.qwritedate }</td>
		</tr>
		<tr>	
			<th>작성자</th>
			<td>${qno.qid}</td>
		</tr>
		
		<tr>	
			<th>글제목</th>
			<td >${qno.qtitle }</td>
		</tr>

		<tr>
		<th>내용</th>
			<td colspan="4"><textarea rows="5" cols="40" class="form-control">${qno.qcontent }</textarea></td>
		</tr>

		
		<tr>
			<td colspan="4" align="center">
			
			<c:choose>
				<c:when test="${(!empty loginId && loginId == qno.qid) || responsibility == ('admin') }"> 
			<%-- 	<c:when test="${!empty loginId && loginId == qno.qid}">  --%>
					<input type="submit" value="✂수정">
					<input type="button" value="⛝삭제">
				</c:when>
				 <c:otherwise>
					<input disabled type="submit" value="수정">
					<input disabled type="button" value="삭제">
				</c:otherwise>
			</c:choose>
			</td>
		</tr>

	</table>
</form>

<script>

document.querySelector('input[type=button]').addEventListener('click', function(e){
	
/* 	let pmt = prompt('비밀번호를 입력하세요!');
	let pwd = Number(pmt);
	
	if(pwd == ${qno.qpass}){
		document.forms.qnaForm.action = 'removeQna.do';
		document.forms.qnaForm.submit();
	}else{
		alert("비밀번호가 틀렸습니다.");
	} */
	
	
/* 	document.forms.qnaForm.action = 'removeQnaForm.do';
	document.forms.qnaForm.submit();
	 */
	
	 
	if (confirm("정말 삭제 하시겠습니까?")){
		let pmt = prompt('비밀번호를 입력하세요!');
		let pwd = Number(pmt);
		
		if(pwd == ${qno.qpass}){
			
	 	alert('문의글을 삭제합니다.')
	 	document.forms.qnaForm.action = 'removeQna.do';
		document.forms.qnaForm.submit();
		}else {
			alert("비밀번호가 틀렸습니다.");
		}
		
	}else{
		
		alert('문의글이 삭제 되지 않았습니다.')
	}
})

</script>









<h3> </h3>

<h1> ▍ 댓글 </h1>

<table>
<tr>
<th>답변 </th>
<td><input type="text" id="rpcontent"></td>
<td><button id="addReply"> 입력 </button></td>
</tr>
</table>


<h2>  </h2>

<ul id="replylist">
	<li style="display: none" id="template"><span>관리자</span><b>관리자의 댓글 내용</b>
	<button id='delBtn'>삭제</button></li>
</ul>


<button type="button" onclick="location.href='qnaList.do'">⏮ QnA 게시판으로 돌아가기 </button>


<script>



let response = "${responsibility}"
	console.log(response);
	
let writer = "${loginId}"
	console.log(writer);
	
let rpqno = "${qno.qno}"
	console.log(rpqno);
	
let reply = document.getElementById('rpcontent').value;
	console.log(reply);





let page = 1;
	function showList(pg = 1)	{ 
	
	document.querySelectorAll('#replylist li:not(:nth-of-type(1))').forEach(li => li.remove()); 
	fetch('replyList.do?rpqno=' + rpqno)  
	.then(resolve => resolve.json())
	.then(result => {
	
		
	//result에 있는 list에 대한 한건 한건해서 목록 그려주는거
		result.list.forEach(reply => {
		let li = makeRow(reply);

		//ul > li 생성
		document.querySelector('#replylist').append(li);
	})
})
.catch(err => console.log(err));

}//function showList

showList();

//댓글 쓰면 한줄 들어가게.
	function makeRow(reply){
		
		function deleteCallback(e){
			//** 관리자가 아니면 댓글 못쓰도록! 조건 걸어줘야 함!
			if(response == ("user") ){
				alert('권한이 없습니다');
				return;
			}
				
				
			//삭제 서블릿 호출하기.
			fetch('removeReply.do?rpno='+ reply.rpno)
			.then(resolve => resolve.json())
			.then(result => {
					
				if(result.retCode == 'OK'){
					alert('SUCCESS');
					e.target.parentElement.remove();
				}else{
					alert('ERROR');
				}
			})
			.catch(err => console.log(err))
		} //deletecallback
		
		
		let temp = document.querySelector('#template').cloneNode(true); 
		temp.style.display = "block";
		
		temp.querySelector('span:nth-of-type(1)').innerHTML = response; 
		temp.querySelector('b').innerHTML = reply.rpcontent;
		//temp.querySelector('span:nth-of-type(2)').innerHTML = document.getElementsByName('mid') //관리자가해야함! 
		temp.querySelector('button').addEventListener('click', deleteCallback);
		return temp;
	} //makeRow

	
//등록버튼에 대한 이벤트! 
	document.querySelector('#addReply').addEventListener('click', function(e){
		
		let reply = document.querySelector('#rpcontent').value ; 
		let mid = document.getElementsByName('mid').value;
		let responsibility = document.getElementsByName('responsibility').value;
		//if(!rpqno || responsibility != 'admin' || !rpcontent){
			if( response == ('user') ){
			alert('관리자만 댓글 작성 가능');
			return; 
		}
			
			if( !reply ){
				alert('댓글을 입력하세요');
				return; 
			}
		//쓰려면 ajax호출해야함. - bno, wirter, reply 값을 servlet쪽으로 전달하도록 하겠음
		
		fetch('addReply.do', {
			method: 'post',
			headers: {'Content-Type' : 'application/x-www-form-urlencoded'},
			body: 'rpqno=' + rpqno + '&rpcontent='+ reply
			
		})
		.then(resolve => resolve.json())
		.then(result => {
			if(result.retCode=="OK"){
				//document.querySelector('#list').append(makeRow(result.vo));
				showList(-1); 
			}else{
				alert('ERROR');
			}
		})
		.catch(err => console.log(err));
	});
	
</script>

