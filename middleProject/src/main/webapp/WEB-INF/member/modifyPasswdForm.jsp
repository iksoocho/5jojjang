<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

            <h4 class="mb-2">✔️ 변경할 비밀번호를 입력해 주세요.</h4>

            <div class="mb-3">

                <form id="myFrm" action="modifyPasswd.do">
					<input type="hidden" value="${mid}" name="mid">
                    <input type="password" class="form-control mb-2" id="pass" name="pass" required placeholder="pass">
                    <input type="password" class="form-control mb-2" id="ckPass" name="ckPass" required placeholder="ckPass">

                    <button type="button" class="btn btn-outline-secondary" onclick="modifyPass()">변경</button>

                </form>

            </div>

        </div>

    </div>
	
	<script>
	function modifyPass(){
		var ckPass = document.getElementsByName("ckPass")[0].value;
		var pass = document.getElementsByName("pass")[0].value;
		
		
		if(ckPass == pass){
			
    			alert('비밀번호 변경이 완료 되었습니다.');
    			document.getElementById("myFrm").submit();
    		
		}else{
			alert('비밀번호를 확인해 주세요.')
			document.getElementById("myFrm").reset();
		}
	}
	</script>
</body>
</html>