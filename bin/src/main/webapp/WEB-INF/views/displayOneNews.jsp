<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="zh-TW">

  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>最新消息</title>

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="../js/template.js"></script>
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

    <link rel="icon" type="image/x-icon" href="../images/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
    <link
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
      rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../css/index.css" rel="stylesheet" />
    <style>
      .news_li {
        color: white;
        list-style-type: none;
        text-align: left;
      }

      #title_li {
        font-size: 20px;
      }

      #seemore_btn {
        background-color: black;
        color: white;
        border: none;
      }

      .msg_title {
        color: white;
      }
    </style>
  </head>

 <body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top navbar-shrink" id="mainNav">
      <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="/FinalProject/"><img src="/FinalProject/images/audi-logo.png" alt="logo" /></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
          data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
          aria-label="Toggle navigation">
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
    <section class="about-section text-center">
      <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
          <div class="col-lg-8">
            <h2 class="text-white mb-4">最新消息 Latest News</h2>
            <p class="text-white-50">

            <div id="container">
              <nav style="margin-top:100px">
                <button id="secondHalfYear" class="2021070120211231">2021年07-12月</button>
                <button id="firstHalfYear" class="2021010120210630">2021年01-06月</button>
                <button id="secondHalfYear2020" class="2020070120201231">2020年07-12月</button>
              </nav>

              <ul id="user_newslist">

              </ul>

              <div class='msg_content'>
                <div class='msg_title'>使用者留言</div>
                <div class='message_box' id='messageBox'></div>
                <div><input id='msg_input' type='text' placeholder='請輸入留言內容'><button id='submit_msg_btn'
                    onclick='msgBoard()'>提交</button></div>

              </div>

            </div>

          </div>
        </div>
        <img class="img-fluid" src="../images/audi-etron.png" alt="..." />
    </section>

    <!-- 以下不要動 -->
    <!-- Footer-->
    <footer class="footer bg-black small text-center text-white-50">
      <div class="container px-4 px-lg-5">
        Copyright &copy; 資策會第五組專題報告 2021
      </div>
    </footer>


  </body>
  <script>


    //display details of the selected news

    $(document).ready(function () {

      const queryString = window.location.search;
      const urlParams = new URLSearchParams(queryString);
      const newsId = urlParams.get('newsId');

      $.ajax({
        url: "/FinalProject/findNewsById/" + newsId,
        method: "GET",
        dataType: "json",
        success: function (data) {
          var list = "";
          list += "<li class='news_li'><h2>" + data.uploadDate + "</h2></li><li class='news_li'><h1>"
            + data.title + "</h1></li></br><li class='news_li'><img src='data:image/png;base64,"
            + data.image + "' width='563' height='350' alt='pic cannot be displayed'/></li></br><li class='news_li'>"
            + data.subtitle + "</li></br><li class='news_li'>"
            + data.content + "</li></br><li class='news_li'>"
            + data.remarks + "</li></br></br><a href='/FinalProject/News'><img src='../images/goBack.jpg'></a></br></br></br>";
          $("#user_newslist").html(list);
        },
        error: function (err) {
          alert(err)
        }
      });


    });

    msgBoard = function () {
      console.log($("#msg_input").val());
    }


  </script>

  </html>