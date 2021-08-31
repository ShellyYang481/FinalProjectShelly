<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-TW">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登入</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@100;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/login.css">
</head>

<body>
    <a href="./"><img class="img-logo" src="./images/audi-logo.png" alt="logo"></a>
    <div class="form-container">
        <h1>登入</h1>
        <form action="/FinalProject/checkLogin" method="POST" id="login-form">
            <div class="lab-input-container" id="emailBlock">
                <label for="clientemail">電子郵件地址 </label><br>
                <input type="email" name="clientemail" class="input-field" id="clientInputEmail"><br>
            </div>
            <div class="lab-input-container">
                <label for="passwd">密碼 </label><br>
                <input type="password" name="passwd" class="input-field" id="clientInputPasswd"><br>
            </div>
            <div class="lab-input-container">
                <input id="input-submit" type="submit" value="送出"><br>
            </div>
            <div class="href-forget-passwd">
                <a href="/FinalProject/forget">忘記密碼?</a>
            </div>
        </form>
        <hr class="line-hr">
        <div class="register-container">
            <a href="/FinalProject/register"><button class="btn-register">註冊帳戶</button></a>
        </div>

    </div> 
    <script src="./js/jquery-3.6.0.js"></script>
    <script src="./js/login.js"></script>
</body>

</html>