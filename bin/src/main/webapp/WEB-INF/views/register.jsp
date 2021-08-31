<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-TW">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>註冊</title>
    <link rel="stylesheet" href="./css/register.css">
    
</head>

<body>
    <a href="./"><img class="img-logo" src="./images/audi-logo.png" alt="logo"></a>
    <div class="form-container">
        <h1>建立帳戶</h1>
        <form action="./createclient" method="POST">
            <div class="lab-input-container">
                <label for="fullname">姓名</label>
                <input type="text" name="fullname" class="input-field" required><br>
            </div>
            <div class="lab-input-container" id="emailBlock">
                <label for="clientemail" id="label-email">電子郵件地址</label>
                <input type="email" name="clientemail" class="input-field" id="clientInputEmail" required><br>
            </div>
            <div class="lab-input-container">
                <label for="passwd">密碼</label>
                <input type="password" name="passwd" class="input-field" required><br>
            </div>
            <div class="lab-input-container">
                <label for="phone">電話</label>
                <input type="text" name="phone" class="input-field" required><br>
            </div>
            <div class="lab-input-container">
                <label for="city">城市</label><br>
                <select name="city" id="input-select" required>
                    <option value="基隆市" class="input-field">基隆市</option>
                    <option value="台北市" class="input-field">台北市</option>
                    <option value="新北市" class="input-field">新北市</option>
                    <option value="桃園市" class="input-field">桃園市</option>
                    <option value="新竹市" class="input-field">新竹市</option>
                    <option value="新竹縣" class="input-field">新竹縣</option>
                    <option value="苗栗縣" class="input-field">苗栗縣</option>
                    <option value="台中市" class="input-field">台中市</option>
                    <option value="彰化縣" class="input-field">彰化縣</option>
                    <option value="南投縣" class="input-field">南投縣</option>
                    <option value="雲林縣" class="input-field">雲林縣</option>
                    <option value="嘉義市" class="input-field">嘉義市</option>
                    <option value="嘉義縣" class="input-field">嘉義縣</option>
                    <option value="台南市" class="input-field">台南市</option>
                    <option value="高雄市" class="input-field">高雄市</option>
                    <option value="屏東縣" class="input-field">屏東縣</option>
                    <option value="台東縣" class="input-field">台東縣</option>
                    <option value="花蓮縣" class="input-field">花蓮縣</option>
                    <option value="宜蘭縣" class="input-field">宜蘭縣</option>
                    <option value="澎湖縣" class="input-field">澎湖縣</option>
                    <option value="金門縣" class="input-field">金門縣</option>
                    <option value="連江縣" class="input-field">連江縣</option>
                </select><br>
            </div>
            <div class="lab-input-container">
                <label for="town">鄉鎮</label>
                <input type="text" name="town" required class="input-field"><br>
            </div>
            <div class="lab-input-container">
                <label for="fulladdress">地址</label>
                <input type="text" required name="fulladdress" class="input-field"><br>
            </div>
            <div class="lab-input-container">
                <input id="input-submit" required type="submit" value="送出"><br>
            </div>
            <div class="href-forget-passwd">
                <a href="#">忘記密碼?</a>
            </div>
        </form>
        <hr class="line-hr">
        <div class="register-container">
            <a href="./login"><button class="btn-register">登入</button></a>
        </div>

    </div>
    <script src="./js/jquery-3.6.0.js"></script>
    <script src="./js/register.js"></script>
</body>

</html>