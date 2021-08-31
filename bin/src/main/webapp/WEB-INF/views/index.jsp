<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-TW">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>首頁</title>
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
  </head>

  <body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="#page-top"
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
    <!-- Masthead-->
    <header class="masthead">
      <div
        class="
          container
          px-4 px-lg-5
          d-flex
          h-100
          align-items-center
          justify-content-center
        "
      >
        <div class="d-flex justify-content-center">
          <div class="text-center">
            <h1 class="mx-auto my-0 text-uppercase">Audi Motors.</h1>
            <h2 class="text-white-50 mx-auto mt-2 mb-5">
              A legendary sports car to own.
            </h2>
            <a class="btn btn-primary" href="/FinalProject/TestDrive"
              >預約試駕</a
            >
          </div>
        </div>
      </div>
    </header>
    <!-- About -->
    <section class="about-section text-center">
      <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
          <div class="col-lg-8">
            <h2 class="text-white mb-4">Audi 純電生活圈</h2>
            <p class="text-white-50">
              您的生活，將因為純電而更美好。 純電 Audi e-tron
              讓您像使用手機一般，回到家就能充電。
              出門在外，充電設施遍及全台，有完善的快速充電與公共充電可運用。即使只是一頓飯的時間，也能隨即充電，讓您生活更加自在盡興！
              <a href="https://startbootstrap.com/theme/grayscale/"
                >了解車款更多資訊</a
              >
            </p>
          </div>
        </div>
        <img class="img-fluid" src="images/audi-etron.png" alt="..." />
      </div>
    </section>
    <section class="projects-section bg-light">
      <div class="container px-4 px-lg-5">
        <!-- Featured Project Row-->
        <div class="row gx-0 mb-4 mb-lg-5 align-items-center">
          <div class="col-xl-8 col-lg-7">
            <img class="img-fluid mb-3 mb-lg-0" src="images/5.jpg" alt="..." />
          </div>
          <div class="col-xl-4 col-lg-5">
            <div class="featured-text text-center text-lg-left">
              <h4>豈止休旅！全新Audi Q5自信從容 美形中見陽剛</h4>
              <p class="text-black-50 mb-0">
                陰錯陽差、疫情影響下，延遲了Audi
                Q5與新社飛花落院的美麗邂逅，待微解封可試駕Q5時，跑旅Q5
                Sportback適巧發表，也算造化弄人。但沒關係，雖是孿生兄弟，Q5可是台灣奧迪最夯的產品主力，值得好好試駕，這期Q5先上陣、下期Q5
                Sportback，來個完美接力。<br />
                <a href="/FinalProject/News">...更多最新消息</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Signup-->
    <section class="signup-section">
      <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5">
          <div class="col-md-10 col-lg-8 mx-auto text-center">
            <i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
            <h2 class="text-white mb-5">接收最新消息</h2>
            <form
              class="form-signup"
              id="contactForm"
              data-sb-form-api-token="API_TOKEN"
            >
              <!-- Email address input-->
              <div class="row input-group-newsletter">
                <div class="col">
                  <input
                    class="form-control"
                    id="emailAddress"
                    type="email"
                    placeholder="Enter email address..."
                    aria-label="Enter email address..."
                    data-sb-validations="required,email"
                  />
                </div>
                <div class="col-auto">
                  <button
                    class="btn btn-primary disabled"
                    id="submitButton"
                    type="submit"
                  >
                    提交
                  </button>
                </div>
              </div>
              <div
                class="invalid-feedback mt-2"
                data-sb-feedback="emailAddress:required"
              >
                請填寫電子郵件
              </div>
              <div
                class="invalid-feedback mt-2"
                data-sb-feedback="emailAddress:email"
              >
                電子郵件格式錯誤
              </div>
              <!-- Submit success message-->
              <!---->
              <!-- This is what your users will see when the form-->
              <!-- has successfully submitted-->
              <div class="d-none" id="submitSuccessMessage">
                <div class="text-center mb-3 mt-2 text-white">
                  <div class="fw-bolder">提交成功!</div>
                  您會接受到來自我們的最新消息
                  <br />
                </div>
              </div>
              <!-- Submit error message-->
              <!---->
              <!-- This is what your users will see when there is-->
              <!-- an error submitting the form-->
              <div class="d-none" id="submitErrorMessage">
                <div class="text-center text-danger mb-3 mt-2">
                  提交錯誤! 請重新提交
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    <!-- Footer-->
    <footer class="footer bg-black small text-center text-white-50">
      <div class="container px-4 px-lg-5">
        Copyright &copy; 資策會第五組專題報告 2021
      </div>
    </footer>

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/index.js"></script>
  </body>
</html>
