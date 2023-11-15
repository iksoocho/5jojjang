<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   

<form action="modifyQnaForm.do" name="qnaForm">
	<input type="hidden" name="qno" value="${qno.qno }">
	<table border="1" class="table">
		<tr>
			<th>글번호</th>
			<td class="qno">${qno.qno }</td>
		</tr>
		
		<tr>
			<th>작성일시</th>
			<td>${qno.qwriteDate }"</td>
			
			<th>글제목</th>
			<td colspan="3">${qno.qtitle }</td>
		</tr>

		<tr>
			<td colspan="4"><textarea rows="5" cols="40" class="form-control">${qno.qcontent }</textarea></td>
		</tr>


		<tr>
			<th>작성자</th>
			<td>${qno.qid }</td>
		</tr>
		

		
		<tr>
			<td colspan="4" align="center">
			
			<c:choose>
				<c:when test="${!empty logId && logId == qno.qid}">
					<input type="submit" value="수정">
					<input type="button" value="삭제">
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

<h3> Qna 게시글에 댓글 등록하기</h3>
<table>
<tr>
<th>댓글입력하기</th>
<td><input type="text" id="content"></td>
<td><button id="addReply">댓글 등록하기! </button></td>
</tr>
</table>

<h3> Qna 게시글 댓글 목록 - 관리자가 다는 답글! </h3>
<ul id="replylist">
	<li style="display: none" id="template"><span>rpno</span><b>관리자의 댓글영역</b>
	<span>관리자</span><button>삭제</button></li>
</ul>

	<p><a href="qnaList.do"> back to QnA List </a></p>

<script>
//글 삭제버튼
document.querySelector('input[type=button]').addEventListener('click', function(e){
	document.forms.myForm.action = 'removeForm.do'; //폼의 이름이 마이폼인 애의 액션을 바꾼거임. -> removecontrol 만들러가야지..
	document.forms.myForm.submit(); //myform의 submit 이벤트를 removeform.do로 바꿔주는 거.
});

//댓글 - **로그인파트 봐야 더 지정할수 있을듯..
let rqpno = "${qno.qno}"
let writer = "${admin}"
//댓글 쓰면 한줄 들어가게.
	function makeRow(reply){
		
		function deleteCallback(e){
			//** 관리자가 아니면 댓글 못쓰도록! 조건 걸어줘야 함! - 이부분은 로그인 하는거랑 맞춰봐야함.
			if(writer != administrator){
				alert('권한이 없습니다');
			}
				//console.log(e.target.parentElement); //button태그 상위 : li
			//삭제 서블릿 호출하기.
			fetch('removeReply.do?rpqno='+ reply.rpqno)
			.then(resolve => resolve.json())
			.then(result => {
					//console.log("result.retCode", result.retCode )
				if(result.retCode == 'OK'){
					alert('SUCCESS');
					e.target.parentElement.remove();
				}else{
					alert('ERROR');
				}
			})
			.catch(err => console.log(err))
		} //deletecallback
		
		
		let temp = document.querySelector('#template').cloneNode(true); //디폴트가 false인데 true로! ** cloneNode 
		temp.style.display = "block";
		//console.log(temp);
		temp.querySelector('span:nth-of-type(1)').innerHTML = reply.rpno; //스판태그의 첫번째 애를 가져올거임
		temp.querySelector('b').innerHTML = reply.rcotent;
		temp.querySelector('span:nth-of-type(2)').innerHTML = admin //관리자가해야함! 
		temp.querySelector('button').addEventListener('click', deleteCallback);
		return temp;
	} //makeRow

	
//등록버튼에 대한 이벤트! 
	document.querySelector('#addReply').addEventListener('click', function(e){
		
		let reply = document.querySelector('#content').value ; //input태그니까 value가 있는거
		
		if(!rpqno || writer != admin || !reply){
			alert('댓글못달지롱');
			return; 
		}
		//쓰려면 ajax호출해야함. - bno, wirter, reply 값을 servlet쪽으로 전달하도록 하겠음
		fetch('addReply.do', {
			method: 'post',
			headers: {'Content-Type' : 'application/x-www-form-urlencoded'},
			body: 'rpqno=' + rpqno + '&reply='+reply +'&replyer='+admin 
			
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
	});
</script>
