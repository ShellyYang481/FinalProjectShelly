<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, tw.com.finalproject.*"%>

<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html>
<html lang="zh-TW">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>試駕表單查詢</title>
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
      <div class="row gx-4 gx-lg-5  justify-content-center">
        <div class="col-lg-10 h-max-custom">
          <h2 class="h_booku">試駕表單查詢</h2>
          <div class="bor-lef-custom">
            <form action="updateCarForm" method="post">
              <table class="table_booku">
                <thead>
                  <tr>
                    <th>表單編號</th>
                    <th>賞車日期</th>
                    <th>試駕車種</th>
                    <th>試駕地區</th>
                    <th>試駕據點</th>
                    <th>業務人員</th>
                    <th>姓名</th>
                    <th>性別</th>
                    <th>聯絡時間</th>
                    <th>E-mail</th>
                    <th>聯絡電話</th>
                    <th>備註</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody id="tbody_showform">
                  <jsp:useBean id="oneTestdrive" class="tw.com.finalproject.Testdrive.Object.Testdrive"
                    scope="session" />
                  <c:if test="${empty oneTestdrive.formId}">
                    <tr>
                      <td colspan="13">無相關資料結果</td>
                    </tr>
                  </c:if>
                  <c:if test="${not empty oneTestdrive.formId}">
                    <tr>
                      <td>${oneTestdrive.formId}</td>
                      <td>${oneTestdrive.driveDate}</td>
                      <td>${oneTestdrive.carMod}</td>
                      <td>${oneTestdrive.driveLoc}</td>
                      <td>${oneTestdrive.driveLocSit}</td>
                      <td>${oneTestdrive.sales}</td>
                      <td>${oneTestdrive.nameCli}</td>
                      <td>${oneTestdrive.gendCli}</td>
                      <td>${oneTestdrive.timCli}</td>
                      <td>${oneTestdrive.mailCli}</td>
                      <td>${oneTestdrive.telCli}</td>
                      <td>${oneTestdrive.remark}</td>
                      <td><input type="hidden" name="formId" value="${oneTestdrive.formId}">
                        <!-- <input type="submit" value="修改"> -->
                        <button class="btn btn-info w100-h40">修改</button>
                      </td>
                    </tr>
                  </c:if>
                </tbody>
              </table>
              <h6 class="formTime">填表日期:${oneTestdrive.formTime}</h6>
            </form>
            <div class="div_booku">
              <form action="TestDrive" method="post">
                <div class="div">
                  <button class="btn btn-warning wh-40">返回預約賞車</button>
                </div>
              </form>
            </div>
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