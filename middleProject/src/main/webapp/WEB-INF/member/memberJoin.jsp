<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>네이버 회원가입 폼</title>
    <link rel="icon" href="./images/images2/favicon.png">
    <link rel="stylesheet" href="./quiz07.css">
	
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');

*{
    box-sizing: border-box; /*전체에 박스사이징*/
    outline: none; /*focus 했을때 테두리 나오게 */
}

body{
    font-family: 'Noto Sans KR', sans-serif;
    font-size:14px;
    background-color: #f5f6f7;
    line-height: 1.5em;
    color : #222;
    margin: 0;
}

a{
    text-decoration: none;
    color: #222;
}

/*member sign in*/
.member{
    width: 400px;
    /* border: 1px solid #000; */
    margin: auto; /*중앙 정렬*/
    padding: 0 20px;
    margin-bottom: 20px;
}

.member .logo{
    /*로고는 이미지라 인라인 블록이니까 마진 오토 안됨 블록요소만 됨 */
    display: block;
    margin :50px auto;
}

.member .field{
    margin :5px 0; /*상하로 좀 띄워주기*/
}

.member b{
    /* border: 1px solid #000; */
    display: block; /*수직 정렬하기 */
    margin-bottom: 5px;
}

/*input 중 radio 는 width 가 100%면 안되니까 */
.member input:not(input[type=radio]),.member select{
    border: 1px solid #dadada;
    padding: 15px;
    width: 100%;
    margin-bottom: 5px;
}

/* .member input[type=button],
.member input[type=submit]{
background-color: #2db400;
color:#fff
} */

.member input:focus, .member select:focus{
    border: 1px solid #2db400;
}

.field.birth div{ /*field 이면서 birth*/
    display: flex;
    gap:10px; /*간격 벌려줄때 공식처럼 사용핟나 */
}

/* .field.birth div > * {  gap 사용한거랑 같은 효과를 줌 
    flex:1;
} */

.field.tel-number div {
    display: flex;
}

.field.tel-number div input:nth-child(1){
    flex:2;
}

.field.tel-number div input:nth-child(2){
    flex:1;
}

.field.gender div{
    border: 1px solid #dadada;
    padding: 15px 5px;
    background-color: #fff;
}

.placehold-text{
    display: block; /*span 으로 감싸서 크기영역을 블록요소로 만들어ㅜ저야한다*/
    position:relative;
    /* border: 1px solid #000; */
}

.placehold-text:before{ 
    /*  content : "@naver.com";*/
    position:absolute; /*before은 inline 요소이기 때문에 span으로 감싸줌 */
    right : 20px;
    top:13px;
    pointer-events: none; /*자체가 가지고 있는 pointer event 를 없애준다 */
}

.userpw{
    background:url(./images/images2/icon-01.png) no-repeat center right 15px;
    background-size: 20px;
    background-color: #fff;
}

.userpw-confirm{
    background:url(./images/images2/icon-02.png) no-repeat center right 15px;
    background-size: 20px;
    background-color: #fff;
}

.member-footer {
    text-align: center;
    font-size: 12px;
    margin-top: 20px;
}

.member-footer div a:hover{
    text-decoration: underline;
    color:#2db400
}

.member-footer div a:after{
    content:'|';
    font-size: 10px;
    color:#bbb;
    margin-right: 5px;
    margin-left: 7px;
    /*살짝 내려가 있기 때문에 위로 올려주기 위해 transform 사용하기*/
    display: inline-block;
    transform: translateY(-1px);

}

.member-footer div a:last-child:after{
    display: none;
}

@media (max-width:768px) {
    .member{
        width: 100%;
    }
}
.btn input[type=button],
.btn input[type=reset]{
background-color: #2db400;
color:#fff
}

	</style>
</head>
<body>
	<h3>회원 가입</h3>
	<form id="join" action="join.do" method="post">
		<div class="member">
        <!-- 1. 로고 -->
        <!-- <img class="logo" src="./images/images2/logo-naver.png"> -->

        <!-- 2. 필드 -->
        <div class="field">
            <b>아이디</b>
            <span class="placehold-text"><input type="text" name="mid"></span>
        </div>
        <div class="field">
            <b>비밀번호</b>
            <input class="userpw" type="password" name="pass">
        </div>
        <div class="field">
            <b>비밀번호 재확인</b>
            <input class="userpw-confirm" type="password" name="checkPass">
        </div>
        <div class="field">
            <b>이름</b>
            <input type="text" name="name">
        </div>

        <!-- 3. 필드(생년월일) -->
        <div class="field birth">
            <b>생년월일</b>
            <div>
                <input type="number" placeholder="년(4자)">                
                <select>
                    <option value="">월</option>
                    <option value="">1월</option>
                    <option value="">2월</option>
                    <option value="">3월</option>
                    <option value="">4월</option>
                    <option value="">5월</option>
                    <option value="">6월</option>
                    <option value="">7월</option>
                    <option value="">8월</option>
                    <option value="">9월</option>
                    <option value="">10월</option>
                    <option value="">11월</option>
                    <option value="">12월</option>
                </select>
                <input type="number" placeholder="일">
            </div>
        </div>

        <!-- 4. 필드(성별) -->
        <div class="field gender">
            <b>성별</b>
            <div>
                <label><input type="radio" name="gender">남자</label>
                <label><input type="radio" name="gender">여자</label>
                <label><input type="radio" name="gender">선택안함</label>
            </div>
        </div>

        <!-- 5. 이메일_전화번호 -->
        <div class="field">
            <b>본인 확인 이메일<small>(선택)</small></b>
            <input type="email" placeholder="선택입력" name="email">
        </div>
        
        <div class="field tel-number">
            <b>휴대전화</b>
            <select>
                <option value="">대한민국 +82</option>
            </select>
            <div>
                <input type="tel" placeholder="전화번호 입력" name="phone">
                
            </div>
           
        </div>

        <input type="button" onclick="checkNull()" value="회원가입">
		<input type="reset" class="btn btn-warning" value="초기화">

       
    </div>
    <!-- <div class="btn">
		<input type="button" onclick="checkNull()" value="회원가입">
		<input type="reset" class="btn btn-warning" value="초기화">
	</div> -->
	</form>
	
	<script>
	function checkNull() {
	   var name = document.getElementsByName("name")[0].value;
	    var mid = document.getElementsByName("mid")[0].value;
	    var pass = document.getElementsByName("pass")[0].value;
	    var checkPass = document.getElementsByName("checkPass")[0].value;
	    const year = document.querySelector('.field.birth input[type="number"]:nth-child(1)').value;
	    const month = document.querySelector('.field.birth select').value;
	    const day = document.querySelector('.field.birth input[type="number"]:nth-child(3)').value;
	    var ssn = year+month+day;
	    var phone = document.getElementsByName("phone")[0].value;
	    var email = document.getElementsByName("email")[0].value;
	    

	    // 필수 입력 필드 검사
	     if (name === '' || mid === '' || pass === '' || checkPass === '' ||year === '' || month === '' || day === '' ||phone === '' ||email === '' ) {
	        alert('값을 모두 입력하세요.');
	    } else {
	        // 유효성 검사 통과 시 폼 제출
	       
	        fetch('checkId.do',{
		    	method: 'post',
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
				body: 'mid='+ mid
		    })
		    .then(resolve=>resolve.json())
		    .then(result=>{
		    	console.log(result.retCode)
		    	if(result.retCode=="NG"){
		    		alert('중복된 아이디 입니다.');
		    		return false;
		    	}else{
		    		if(pass!=checkPass){
		    			alert('비밀번호가 일치하지 않습니다.')
		    		}else{
		    			if(confirm("회원가입 하시겠습니까?")){
				    	 	alert('회원 가입 성공')
				    		document.getElementById("join").submit();
				     	}else{
				    	 alert('취소');
				     	}
		    		}
		    		
		    	}
		    })
		    .catch(err=>console.log(err))
	    }  
	    
	     
	   
	    
	     
	}
	</script>
</body>
	
</html>

<!-- <table class="table">
			<tr>
				<th>이름</th>
				<td><input type="text" class="form-control" name="name"></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><input type="text" class="form-control" name="mid"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" class="form-control" name="pass" ></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" class="form-control" name="checkPass" ></td>
			</tr>
			<tr>
				<th>주민 등록 번호</th>
				<td><input type="text"  name="fssn">-<input type="text"  name="bssn"></td>
			</tr>

			<tr>
				<th>연락처</th>
				<td><input type="text" class="form-control" name="phone"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" class="form-control" name="email"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				 
				<input type="button" onclick="checkNull()" value="회원가입">
				<input type="reset" class="btn btn-warning" value="초기화"></td>
			</tr>
		</table> -->