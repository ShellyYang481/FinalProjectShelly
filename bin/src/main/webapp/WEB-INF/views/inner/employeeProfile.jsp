<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@100;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/FinalProject/css/employeeProfile.css">
    <script src="/FinalProject/js/jquery-3.6.0.js"></script>
    <title>Employee Profile</title>
    <script src="/FinalProject/js/employeeProfile.js"></script>
</head>

<body>
    <!-- 上方導覽列 -->
    <div class="mainpage">
        <div class="topbar">
            <div class="top-left-bar-container">
                <a href="/FinalProject/inner"><img src="/FinalProject/images/audi-logo.png" alt="logo"></a>
                <span>Internal Web</span>
            </div>
            <div class="top-right-bar-container">
                <div class="SearchBox">
                    <input type="text" class="SearchBox-input" placeholder="Search Employee Name">

                    <button class="SearchBox-button" id="search-bar-submit-btn">
                        <img src="/FinalProject/images/search.png" alt="search">
                    </button>
                </div>
                <div class="alert-container" id="alert-check-btn">
                    <div>
                        <img src="/FinalProject/images/bell.png" alt="message-alert-icon">
                    </div>
                    <div class="numberCircle" id="alert-count">3</div>
                </div>
                <div class="user-info-container clickable" id="user-check-info-btn">
                    <span>Joe Yu</span>
                    <img src="/FinalProject/images/empMember.png" alt="member-icon">
                </div>
            </div>
        </div>
    </div>
    
    <!-- 員工資料 -->
    <div class="container emp-profile-main-container">
        <div class="emp-name-title">
            <h2>${fullName}</h2>
            <hr>
        </div>
        <div class="emp-basic-info-container emp-info-container">
            <div class="emp-info-title">
                員工基本資料
            </div>
            <hr>
            <table>
                <tr>
                    <td class="l">Employee ID</td>
                    <td class="r">${id}</td>
                </tr>
                <tr>
                    <td class="l">Title</td>
                    <td class="r">${title}</td>
                </tr>
                <tr>
                    <td class="l">email</td>
                    <td class="r">${email}</td>
                </tr>
                <tr>
                    <td class="l">Phone</td>
                    <td class="r">${phone}</td>
                </tr>
                <tr>
                    <td class="l"> Department</td>
                    <td class="r">${department}</td>
                </tr>
                <tr>
                    <td class="l">Location</td>
                    <td class="r">${loc}</td>
                </tr>
            </table>
        </div>
        <div class="emp-bank-info-container emp-info-container">
            <div class="emp-info-title">
                員工銀行資訊
            </div>
            <hr>
            <table>
                <tr>
                    <td class="l">Bank</td>
                    <td class="r">國泰世華</td>
                </tr>
                <tr>
                    <td class="l">Bank account</td>
                    <td class="r">114-8569845725-12</td>
                </tr>
                <tr>
                    <td class="l">Salary</td>
                    <td class="r">${sal}</td>
                </tr>
                <tr>
                    <td class="l">IFSC Code</td>
                    <td class="r">ICI24504</td>
                </tr>
                <tr>
                    <td class="l">PAN No</td>
                    <td class="r">TC000Y56</td>
                </tr>
            </table>
        </div>
        <div class="emp-emg-contact-container emp-info-container">
            <div class="emp-info-title">
                緊急聯絡人
            </div>
            <hr>
            <table>
                <tr>
                    <td class="l">Name</td>
                    <td class="r">John Lee</td>
                </tr>
                <tr>
                    <td class="l">Relationship</td>
                    <td class="r">Father</td>
                </tr>
                <tr>
                    <td class="l">email</td>
                    <td class="r">joe120106@gmail.com</td>
                </tr>
                <tr>
                    <td class="l">Phone</td>
                    <td class="r">0985658154</td>
                </tr>
            </table>
        </div>
    </div>
</body>

</html>