<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>.js
	
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
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>預約試駕</title>
    <link rel="icon" type="image/x-icon" href="images/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script
      src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
      crossorigin="anonymous"
    ></script>
    <!-- Google fonts-->
    <link
      href="https://fonts.googleapis.com/css?family=Varela+Round"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
      rel="stylesheet"
    />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/index.css" rel="stylesheet" />
    <link rel="stylesheet" href="./css/bookForm.css" />
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
      integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.js"
      integrity="sha512-D7wym1iXOnyjJbX5hKh84TRFqnXTd7Qc0biqMOmoKgTRRZjUznfgM4Fk8Ta7x8Wp3o8HyKLb3A2kgxq1S6/4fA=="
      crossorigin="anonymous"
    ></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css"
      integrity="sha512-Fppbdpv9QhevzDE+UHmdxL4HoW8HantO+rC8oQB2hCofV+dWV2hePnP5SgiWR1Y1vbJeYONZfzQc5iII6sID2Q=="
      crossorigin="anonymous"
    />
  </head>

  <body id="page-top">
    <!-- Navigation-->
    <nav
      class="navbar navbar-expand-lg navbar-light fixed-top navbar-shrink"
      id="mainNav"
    >
      <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="/FinalProject/"
          ><img src="images/audi-logo.png" alt="logo"
        /></a>
        <button
          class="navbar-toggler navbar-toggler-right"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarResponsive"
          aria-controls="navbarResponsive"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item">
              <a class="nav-link" href="/FinalProject/TestDrive">試駕體驗</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/FinalProject/News">最新消息</a>
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
              <a class="nav-link" href="/FinalProject/account">會員專區</a>
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
            <div class="row">
              <div class="col-12 po-re">
                <div>
                  <form action="findByIdTestdrive" method="post" id="queryOneForm" class="search-book-form-custom">
                    <input
                      class="form-control form-control-sm search-input-custom"
                      type="text"
                      name="findById"
                      placeholder="請輸入表單編號"
                      maxlength="15"
                      aria-label=".form-control-sm example"
                    />
                    <button type="submit" class="btn btn-primary search-icon-btn-custom">
                      <i class="fas fa-search"></i>
                    </button>
                    <!-- <input type="submit" name="todo" value="查詢" /> -->
                  </form>
                </div>
              </div>
            </div>
            <h2 class="h_bookf">預約賞車/試駕</h2>
            <!-- 	<form action="ControllerServlet" method="post" id="idfSub"> -->
            <form action="addForm" method="post" id="idfSub">
              <table class="table_bookf">
                <tbody>
                  <tr>
                    <td><label for="date">賞車日期:</label></td>
                    <td>
                      <div class="form-group">
                      
                      <input type="date" name="driveDate" id="date" autofocus
					required><span id="dateCheck"></span>
<!--                         <div class="input-group date" id="datetimepicker1"> -->
<!--                           <input type="text" class="form-control" /> -->
<!--                           <span class="input-group-addon color-blue"> -->
<!--                             <span class="glyphicon glyphicon-calendar" -->
<!--                               ><i class="fas fa-calendar-minus"></i -->
<!--                             ></span> -->
<!--                           </span> -->
<!--                         </div> -->
                      </div>
                      <span id="dateCheck"></span>
                    </td>
                  </tr>
                  <tr>
                    <td><label for="carmod">試駕車種:</label></td>
                    <td>
                      <select
                        class="form-select"
                        aria-label="Default select example"
                        name="carMod"
                        id="carmod"
                        required
                      >
                        <option selected>Open this select menu</option>
                        <option id="carmoddef" selected disabled>
                          請選擇您想試駕的汽車型號
                        </option>
                        <optgroup label="A series">
                          <option>A1</option>
                          <option>A2</option>
                          <option>A3</option>
                          <option>A4</option>
                          <option>A5</option>
                          <option>A6</option>
                          <option>A7</option>
                          <option>A8</option>
                        </optgroup>
                        <optgroup label="Q series">
                          <option>Q2</option>
                          <option>Q3</option>
                          <option>Q5</option>
                          <option>Q7</option>
                          <option>Q8</option>
                        </optgroup>
                      </select>
                      <span id="carmodCheck"></span>
                    </td>
                  </tr>

                  <tr>
                    <td><label for="loc">試駕地區:</label></td>
                    <td>
                      <select
                        class="form-select"
                        aria-label="Default select example"
                        name="driveLoc"
                        id="loc"
                        required
                      >
                        <option id="locdef" selected disabled>
                          請選擇地區
                        </option>
                        <option value="台北" id="opt1">台北</option>
                        <option value="桃園" id="opt2">桃園</option>
                        <option value="台中" id="opt3">台中</option>
                        <option value="高雄" id="opt4">高雄</option>
                      </select>
                      <span id="locCheck"></span>
                    </td>
                  </tr>
                  <tr>
                    <td><label for="locsit">試駕據點:</label></td>
                    <td>
                      <select
                        class="form-select"
                        aria-label="Default select example"
                        name="driveLocSit"
                        id="locsit"
                      >
                        <option id="locsitdef" selected disabled>
                          請選擇據點
                        </option>
                        <option value="內湖" id="opt11">內湖服務站</option>
                        <option value="大安" id="opt12">大安服務站</option>
                        <option value="中壢" id="opt21">中壢服務站</option>
                        <option value="八德" id="opt22">八德服務站</option>
                        <option value="大里" id="opt31">大里服務站</option>
                        <option value="七期" id="opt32">七期服務站</option>
                        <option value="鼓山" id="opt41">鼓山服務站</option>
                        <option value="左營" id="opt42">左營服務站</option>
                      </select>

                      <span id="locsitCheck"></span>
                    </td>
                  </tr>

                  <tr>
                    <td><label for="name">姓名:</label></td>
                    <td>
                      <input
                        class="form-control"
                        type="text"
                        aria-label="default input example"
                        name="nameCli"
                        maxlength="10"
                        id="name"
                        placeholder="請輸入姓名"
                        required
                      />

                      <span id="nameCheck"></span>
                    </td>
                  </tr>

                  <tr>
                    <td><label for="gend">性別:</label></td>
                    <td>
                      <div class="form-check form-check-inline">
                        <input
                          class="form-check-input"
                          type="radio"
                          name="gendCli"
                          id="flexRadioDefault1"
                          value="先生"
                        />
                        <label class="form-check-label" for="flexRadioDefault1"></label>
                          先生
                        </label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input
                          class="form-check-input"
                          type="radio"
                          name="gendCli"
                          id="flexRadioDefault2"
                          value="小姐"
                          checked
                        />
                        <label class="form-check-label" for="flexRadioDefault2">
                          小姐
                        </label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input
                          class="form-check-input"
                          type="radio"
                          name="gendCli"
                          id="flexRadioDefault3"
                          value="其他"
                          checked
                        />
                        <label class="form-check-label" for="flexRadioDefault3">
                          其他
                        </label>
                      </div>

                      <span id="gendCheck"></span>
                    </td>
                  </tr>

                  <tr>
                    <td><label for="contim">您方便的聯絡時間:</label></td>
                    <td>
                      <div class="form-check form-check-inline">
                        <input
                          class="form-check-input"
                          type="checkbox"
                          id="inlineCheckbox1"
                          value="早"
                          name="timCli"
                        />
                        <label class="form-check-label" for="inlineCheckbox1"
                          >早上(8:00-12:00)</label
                        >
                      </div>
                      <div class="form-check form-check-inline">
                        <input
                          class="form-check-input"
                          type="checkbox"
                          id="inlineCheckbox2"
                          value="午"
                          name="timCli"
                        />
                        <label class="form-check-label" for="inlineCheckbox2"
                          >下午(13:00-17:00)</label
                        >
                      </div>
                      <div class="form-check form-check-inline">
                        <input
                          class="form-check-input"
                          type="checkbox"
                          id="inlineCheckbox3"
                          value="晚"
                          name="timCli"
                        />
                        <label class="form-check-label" for="inlineCheckbox3"
                          >晚上(18:00-22:00)</label
                        >
                      </div>

                      <span id="contimCheck"></span>
                    </td>
                  </tr>

                  <tr>
                    <td><label for="mail">E-mail:</label></td>
                    <td>
                      <input
                        class="form-control"
                        type="email"
                        aria-label="default input example"
                        name="mailCli"
                        maxlength="35"
                        id="mail"
                        placeholder="請輸入電子信箱"
                        required
                      />
                      <span id="mailCheck"></span>
                    </td>
                  </tr>

                  <tr>
                    <td><label for="tel">聯絡電話:</label></td>
                    <td>
                      <input
                        class="form-control"
                        type="text"
                        aria-label="default input example"
                        name="telCli"
                        maxlength="13"
                        id="tel"
                        placeholder="請輸入連絡電話"
                        required
                      />

                      <span id="telCheck"></span>
                    </td>
                  </tr>

                  <tr>
                    <td><label for="comm">備註:</label></td>
                    <td>
                      <textarea
                        class="form-control"
                        id="comm"
                        rows="5"
                        cols="30"
                        name="remark"
                        placeholder="備註200字以內"
                      ></textarea>
                    </td>
                  </tr>

                  <tr>
                    <td colspan="2">
                      <div class="disclaimer_bookf">
                        <input type="checkbox" name="ToS" id="ToS" class="ToS" required>
                        當您點擊"送出"表示您已閱讀、瞭解並同意接受<a href="./PrivacyPolicy" target="_blank" rel="noopener noreferrer">本公司服務條款</a>
                        之所有內容。您將經由此表單提供您的個人資料給網站，並同意
                        OO汽車 在遵守本公司<a id="btn_bookf" class="btn_bookf"
                          >隱私權政策</a
                        >下，透過您提供的資訊與您聯絡。
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
              <div class="div">
                <span class="errmes_bookf" id="subchk"></span>
              </div>
              <div class="div">
                <button type="submit" class="btn btn-primary wh-40" id="idsubmit">送出</button>
                <input type="button" id="onekey" class="btn btn-secondary wh-40 onekey" value="一鍵輸入">
              </div>
            </form>
            <!-- 	<form action="/FinalProject/ControllerServlet" method="post"> -->
          </div>
        </div>
      </div>
    </section>

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<!-- 	<script src="./js/addTestdriveValidation.js"></script> -->
	<script src="/FinalProject/js/addTestdriveValidation.js"></script>

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
    <script src="./js/template.js"></script>
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    <script src="./js/bookForm.js"></script>
  </body>
</html>
