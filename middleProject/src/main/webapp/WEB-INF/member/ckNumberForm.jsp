<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증번호 입력</title>
<link href=https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous"></head>

    <script src=https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

    <link href=https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <title>Document</title>

    <style>

        #myFrm {

            width : 500px;

        }

        #cardDiv{

            margin : 0 auto;

        }

        button{

            float : right;

        }

        h3{

            width : 500px;

        }

        h4{

            font-weight: bold;

            width : 500px

        }

    </style>
</head>
<body>
	<div class="card" style="width : 600px; margin : 30px auto">

        <div class="card-body" id="cardDiv">

            <h4 class="mb-2">✔️ 인증 번호를 입력해 주세요.</h4>

            <div class="mb-3">

                
					<input type="hidden" id="mid" value="${mid}">
					<input type="hidden" id="ckNumber" value="${crtfcNo}">
                    <input type="text" class="form-control mb-2" id="ckNumberInput" name="ckNumberInput" required placeholder="인증번호 입력(6자리)" maxlength="6">

                    
                    <button type="button" onclick="ckNumber()" class="btn btn-outline-secondary">인증하기</button>

                

            </div>

        </div>

    </div>
	
	<script>
		function ckNumber(){
			
			let ckNum = document.getElementById("ckNumber").value;
			let ckNumInput = document.getElementById("ckNumberInput").value;
			let mid = document.getElementById("mid").value;
			console.log(ckNum);
			console.log(ckNumInput);
			if(ckNum == ckNumInput){
				alert("인증되었습니다.");
				//아이디 보내기
				location.href="modifyPasswdForm.do?mid="+mid;
			}else{
				alert("인증번호 틀렸습니다. 인증번호를 재발급해주세요");
				//window.close();
				location.href="findIdpasswdForm.do";
			}
		}
	</script>
</body>
</html>