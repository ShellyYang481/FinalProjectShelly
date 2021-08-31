<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
response.setContentType("text/html;charset=UTF-8");
response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setDateHeader("Expires", -1); // Prevents caching at the proxy server
%>
<html lang="zh-TW">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>預約試駕</title>
  <link rel="icon" type="image/x-icon" href="images/favicon.ico" />
  <!-- Font Awesome icons (free version)-->
  <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
  <!-- Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
  <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="css/index.css" rel="stylesheet" />
  <link rel="stylesheet" href="./css/bookForm.css" />
</head>

<body id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top navbar-shrink" id="mainNav">
    <div class="container px-4 px-lg-5">
      <a class="navbar-brand" href="#page-top"><img src="images/audi-logo.png" alt="logo" /></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
        data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
        aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="#about">試駕體驗</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#projects">最新消息</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#signup">了解車型</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#signup">活動</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#signup">精品商城</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#signup">展示中心</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#signup">會員專區</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- 以上不要動 -->
  <!-- 這裡開始加你們的東西 -->
  <!-- About -->
  <section class="about-section text-center bg-gray-custom pd-2rem">
    <div class="container px-4 px-lg-5">
      <div class="row gx-4 gx-lg-5 justify-content-center">
        <div class="col-lg-10 po-re">

          <!-- <jsp:useBean id="newTestdrive" class="tw.com.finalproject.Testdrive.Object.Testdrive" scope="session" /> -->
          <h2 class="h_bookd">預約資料如下請確認</h2>
          <table class="table_bookd mgl-0">

            <tr>
              <td>賞車日期:</td>
              <td>${newTestdrive.driveDate}</td>
            </tr>

            <tr>
              <td>試駕車種:</td>
              <td>${newTestdrive.carMod}</td>
            </tr>

            <tr>
              <td>試駕地區:</td>
              <td>${newTestdrive.driveLoc}</td>
            </tr>

            <tr>
              <td>試駕據點:</td>
              <td>${newTestdrive.driveLocSit}</td>
            </tr>

            <tr>
              <td>業務人員:</td>
              <td>${newTestdrive.sales}</td>
            </tr>

            <tr>
              <td>姓名:</td>
              <td>${newTestdrive.nameCli}</td>
            </tr>

            <tr>
              <td>性別:</td>
              <td>${newTestdrive.gendCli}</td>
            </tr>

            <tr>
              <td>方便的聯絡時間:</td>
              <td>${newTestdrive.timCli}</td>
            </tr>

            <tr>
              <td>E-mail:</td>
              <td>${newTestdrive.mailCli}</td>
            </tr>

            <tr>
              <td>聯絡電話:</td>
              <td>${newTestdrive.telCli}</td>
            </tr>

            <tr>
              <td>備註:</td>
              <td>${newTestdrive.remark}</td>
            </tr>
          </table>
          <div class="formTime">填表日期:${newTestdrive.formTime}</div>
          <h3 class="h_bookd">您的試駕表單編號為:<strong>${newTestdrive.formId}</strong></h3>
          <h3 class="h_bookd">請記住此表單編號，以方便您線上查詢或修改</h3>

          <div class="div_bookd po-re">
            <form action=addFormConfirm method="post">
                <input type="hidden" name="formId" value="${newTestdrive.formId}">
                <input type="hidden" name="driveDate" value="${newTestdrive.driveDate}">
                <input type="hidden" name="carMod" value="${newTestdrive.carMod}">
                <input type="hidden" name="driveLoc" value="${newTestdrive.driveLoc}">
                <input type="hidden" name="driveLocSit" value="${newTestdrive.driveLocSit}">
                <input type="hidden" name="sales" value="${newTestdrive.sales}">
                <input type="hidden" name="formTime" value="${newTestdrive.formTime}">
                <input type="hidden" name="nameCli" value="${newTestdrive.nameCli}">
                <input type="hidden" name="gendCli" value="${newTestdrive.gendCli}">
                <input type="hidden" name="timCli" value="${newTestdrive.timCli}">
                <input type="hidden" name="mailCli" value="${newTestdrive.mailCli}">
                <input type="hidden" name="telCli" value="${newTestdrive.telCli}">
                <input type="hidden" name="remark" value="${newTestdrive.remark}">
                <!-- <input type="submit" value="確認" class="btn btn-primary"> -->
                <button type="submit" class="btn btn-primary wh-40">確認</button>
            </form>
            <form action="TestDrive" method="post">
              <!-- <input type="submit" value="返回預約賞車" class="btn btn-primary"> -->
              <button type="submit" class="btn btn-warning wh-40 back">返回預約賞車</button>
            </form>
          </div>

        </div>
      </div>
    </div>
  </section>

  <!-- 以下不要動 -->
  <!-- Footer-->
  <footer class="footer bg-black small text-center text-white-50">
    <div class="container px-4 px-lg-5">
      Copyright &copy; 資策會第五組專題報告 2021
    </div>
  </footer>

  <!-- Bootstrap core JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
  <!-- Core theme JS-->
  <script src="js/template.js"></script>
  <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>

</html>