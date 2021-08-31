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
    <link rel="icon" type="image/x-icon" href="/FinalProject/images/favicon.ico" />
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
    <link href="/FinalProject/css/index.css" rel="stylesheet" />
    <link rel="stylesheet" href="/FinalProject/css/accountSetting.css" />
  </head>

  <body id="page-top">
    <!-- Navigation-->
    <nav
      class="navbar navbar-expand-lg navbar-light fixed-top navbar-shrink"
      id="mainNav"
    >
      <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="/FinalProject"
          ><img src="/FinalProject/images/audi-logo.png" alt="logo"
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
    <section class="account-section text-center">
      <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center relative">
          <div class="user-title-container">
            <h1 id="userH1">設定</h1>
            <div class="user-nav">
              <ul>
                <li><a href="/FinalProject/logout">登出</a></li>
                <li><a href="/FinalProject/account/setting">設定</a></li>
                <li><a href="/FinalProject/account/order">訂單管理</a></li>
                <li><a href="/FinalProject/account">首頁</a></li>
              </ul>
            </div>
            <hr style="width: 100%; margin-top: 60px" />
          </div>
          <div class="change-profile-result-container">
            <img
              src="/FinalProject/images/correct.png"
              alt=""
              id="change-profile-result-img"
            /><span id="change-profile-result-span">新增成功</span>
          </div>
          <div class="setting-select-container">
            <div class="select-change-profile-container">
              <span>修改個人資料</span>
            </div>
            <div class="select-change-passwd-container">
              <span>修改密碼</span>
            </div>
          </div>
          <div class="change-profile-oauth-container">
            <div class="input-container">
              <label for="passwd">再次輸入密碼確認</label><br />
              <span id="inputMethod" value="" style="display: none"></span>
              <input type="password" name="passwd" id="passwd" /><br />
              <button id="changeProfileOauthOK">送出</button>
              <br />
              <button id="changeProfileOauthCancel">取消</button>
            </div>
          </div>
          <div class="change-profile-form-container">
            <div class="profile-form-container">
              <div class="lab-input-container">
                <div class="label-container">
                  <label for="fullname">*姓名: </label>
                </div>
                <div class="input-container">
                  <input type="text" name="fullname" class="input-field" />
                </div>
              </div>
              <div class="lab-input-container">
                <div class="label-container">
                  <label for="clientemail">*電子郵件地址: </label>
                </div>
                <div class="input-container">
                  <input type="email" name="clientemail" class="input-field" />
                </div>
              </div>
              <div class="lab-input-container">
                <div class="label-container">
                  <label for="phone">*電話: </label>
                </div>
                <div class="input-container">
                  <input type="text" name="phone" class="input-field" /><br />
                </div>
              </div>
              <div class="lab-input-container">
                <div class="label-container">
                  <label for="city">城市: </label>
                </div>
                <div class="input-container">
                  <select name="city">
                    <option
                      value=""
                      class="input-field"
                      disabled
                      selected="true"
                    >
                      請選擇縣市
                    </option>
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
                  </select>
                </div>
              </div>
              <div class="lab-input-container">
                <div class="label-container">
                  <label for="town">鄉鎮: </label>
                </div>
                <div class="input-container">
                  <input type="text" name="town" class="input-field" /><br />
                </div>
              </div>
              <div class="lab-input-container">
                <div class="label-container">
                  <label for="fulladdress">地址: </label>
                </div>
                <div class="input-container">
                  <input
                    type="text"
                    name="fulladdress"
                    class="input-field"
                  /><br />
                </div>
              </div>
              <hr />
              <div class="lab-input-submit-container">
                <input id="input-submit" type="submit" value="送出" /><br />
                <button id="changeProfileCancel">取消</button>
              </div>
            </div>
          </div>
          <div class="change-passwd-form-container">
            <div class="passwd-change-input">
              <label for="passwd">新密碼</label><br />
              <span id="inputMethod" value="" style="display: none"></span>
              <input type="password" name="passwd" id="changedpasswd" /><br />
              <button id="changePasswdSubmitbtn">送出</button>
              <br />
              <button id="changePasswdCancelbtn">取消</button>
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
    <script src="/FinalProject/js/template.js"></script>
    <script src="/FinalProject/js/jquery-3.6.0.js"></script>
    <script src="/FinalProject/js/clientSetting.js"></script>
  </body>
</html>
