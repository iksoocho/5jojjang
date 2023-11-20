<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

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

            <h4 class="mb-2">✔️ 비밀번호를 찾을 아이디를 입력해주세요.</h4>

            <div class="mb-3">

                <form id="myFrm" action="findIdpasswd.do">

                    <input type="text" class="form-control mb-2" id="mid" name="mid" required placeholder="ID">

                    <button type="submit" class="btn btn-outline-secondary">찾기</button>

                </form>

            </div>

        </div>

    </div>

</body>

</html>