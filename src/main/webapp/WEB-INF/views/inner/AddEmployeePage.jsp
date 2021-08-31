<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-TW">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Audi - 內部</title>

    <!-- Custom fonts for this template-->
    <link
      href="/FinalProject/vendor/fontawesome-free/css/all.min.css"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
      rel="stylesheet"
    />

    <!-- Custom styles for this template-->
    <link href="/FinalProject/css/sb-admin-2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="/FinalProject/css/addEmployeePage.css" />
  </head>

  <body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
      <!-- Sidebar -->
      <ul
        class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
        id="accordionSidebar"
      >
        <!-- Sidebar - Brand -->
        <a
          class="sidebar-brand d-flex align-items-center justify-content-center"
          href="/FinalProject/inner"
        >
          <div class="sidebar-brand-icon">
            <img src="/FinalProject/images/audi-logo.png" alt="" />
          </div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0" />

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
          <a class="nav-link" href="/FinalProject/inner">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a
          >
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />

        <!-- Heading -->
        <div class="sidebar-heading">Analytics</div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
          <a
            class="nav-link collapsed"
            href="#"
            data-toggle="collapse"
            data-target="#collapseTwo"
            aria-expanded="true"
            aria-controls="collapseTwo"
          >
            <i class="fas fa-users"></i>
            <span>Client</span>
          </a>
          <div
            id="collapseTwo"
            class="collapse"
            aria-labelledby="headingTwo"
            data-parent="#accordionSidebar"
          >
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">Clients:</h6>
              <a class="collapse-item" href="buttons.html">Overview</a>
              <a class="collapse-item" href="cards.html">Curent Stage</a>
            </div>
          </div>
        </li>

        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
          <a
            class="nav-link collapsed"
            href="#"
            data-toggle="collapse"
            data-target="#collapseUtilities"
            aria-expanded="true"
            aria-controls="collapseUtilities"
          >
            <i class="fas fa-id-card-alt"></i>
            <span>Employee</span>
          </a>
          <div
            id="collapseUtilities"
            class="collapse"
            aria-labelledby="headingUtilities"
            data-parent="#accordionSidebar"
          >
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">Employee:</h6>
              <a class="collapse-item" href="utilities-color.html">Overview</a>
              <a class="collapse-item" href="utilities-border.html">Sales</a>
            </div>
          </div>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />

        <!-- Heading -->
        <div class="sidebar-heading">FUNCTIONS</div>

        <!-- Nav Item - 新增員工 -->
        <li class="nav-item">
          <a class="nav-link" href="/FinalProject/inner/admin/addEmployee">
            <i class="fas fa-user-plus"></i>
            <span>新增員工</span></a
          >
        </li>

        <!-- Nav Item - 試駕總覽 -->
        <li class="nav-item">
          <a class="nav-link" href="/FinalProject/admin/edit/testdrive">
            <i class="fas fa-car"></i>
            <span>試駕總覽</span></a
          >
        </li>

        <!-- Nav Item - 編輯消息 -->
        <li class="nav-item">
          <a class="nav-link" href="/FinalProject/inner/admin/AllNewsPage">
            <i class="fas fa-rss-square"></i>
            <span>編輯消息</span></a
          >
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block" />

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
          <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>
      </ul>
      <!-- End of Sidebar -->

      <!-- Content Wrapper -->
      <div id="content-wrapper" class="d-flex flex-column">
        <!-- Main Content -->
        <div id="content">
          <!-- Topbar -->
          <nav
            class="
              navbar navbar-expand navbar-light
              bg-white
              topbar
              mb-4
              static-top
              shadow
            "
          >
            <!-- Sidebar Toggle (Topbar) -->
            <button
              id="sidebarToggleTop"
              class="btn btn-link d-md-none rounded-circle mr-3"
            >
              <i class="fa fa-bars"></i>
            </button>

            <!-- Topbar Search -->
            <form
              class="
                d-none d-sm-inline-block
                form-inline
                mr-auto
                ml-md-3
                my-2 my-md-0
                mw-100
                navbar-search
              "
            >
              <div class="input-group">
                <input
                  type="text"
                  class="form-control bg-light border-0 small"
                  placeholder="Search for..."
                  aria-label="Search"
                  aria-describedby="basic-addon2"
                />
                <div class="input-group-append">
                  <button class="btn btn-primary" type="button">
                    <i class="fas fa-search fa-sm"></i>
                  </button>
                </div>
              </div>
            </form>

            <!-- Topbar Navbar -->
            <ul class="navbar-nav ml-auto">
              <!-- Nav Item - Search Dropdown (Visible Only XS) -->
              <li class="nav-item dropdown no-arrow d-sm-none">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="searchDropdown"
                  role="button"
                  data-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <i class="fas fa-search fa-fw"></i>
                </a>
                <!-- Dropdown - Messages -->
                <div
                  class="
                    dropdown-menu dropdown-menu-right
                    p-3
                    shadow
                    animated--grow-in
                  "
                  aria-labelledby="searchDropdown"
                >
                  <form class="form-inline mr-auto w-100 navbar-search">
                    <div class="input-group">
                      <input
                        type="text"
                        class="form-control bg-light border-0 small"
                        placeholder="Search for..."
                        aria-label="Search"
                        aria-describedby="basic-addon2"
                      />
                      <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                          <i class="fas fa-search fa-sm"></i>
                        </button>
                      </div>
                    </div>
                  </form>
                </div>
              </li>

              <!-- Nav Item - Alerts -->
              <li class="nav-item dropdown no-arrow mx-1">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="alertsDropdown"
                  role="button"
                  data-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <i class="fas fa-bell fa-fw"></i>
                  <!-- Counter - Alerts -->
                  <span class="badge badge-danger badge-counter">3+</span>
                </a>
                <!-- Dropdown - Alerts -->
                <div
                  class="
                    dropdown-list dropdown-menu dropdown-menu-right
                    shadow
                    animated--grow-in
                  "
                  aria-labelledby="alertsDropdown"
                >
                  <h6 class="dropdown-header">Alerts Center</h6>
                  <a class="dropdown-item d-flex align-items-center" href="#">
                    <div class="mr-3">
                      <div class="icon-circle bg-primary">
                        <i class="fas fa-file-alt text-white"></i>
                      </div>
                    </div>
                    <div>
                      <div class="small text-gray-500">December 12, 2019</div>
                      <span class="font-weight-bold"
                        >A new monthly report is ready to download!</span
                      >
                    </div>
                  </a>
                  <a class="dropdown-item d-flex align-items-center" href="#">
                    <div class="mr-3">
                      <div class="icon-circle bg-success">
                        <i class="fas fa-donate text-white"></i>
                      </div>
                    </div>
                    <div>
                      <div class="small text-gray-500">December 7, 2019</div>
                      $290.29 has been deposited into your account!
                    </div>
                  </a>
                  <a class="dropdown-item d-flex align-items-center" href="#">
                    <div class="mr-3">
                      <div class="icon-circle bg-warning">
                        <i class="fas fa-exclamation-triangle text-white"></i>
                      </div>
                    </div>
                    <div>
                      <div class="small text-gray-500">December 2, 2019</div>
                      Spending Alert: We've noticed unusually high spending for
                      your account.
                    </div>
                  </a>
                  <a
                    class="dropdown-item text-center small text-gray-500"
                    href="#"
                    >Show All Alerts</a
                  >
                </div>
              </li>

              <div class="topbar-divider d-none d-sm-block"></div>

              <!-- Nav Item - User Information -->
              <li class="nav-item dropdown no-arrow">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="userDropdown"
                  role="button"
                  data-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <span class="mr-2 d-none d-lg-inline text-gray-600 small"
                    >${ empName }</span
                  >
                  <img
                    class="img-profile rounded-circle"
                    src="/FinalProject/images/svg/undraw_profile.svg"
                  />
                </a>
                <!-- Dropdown - User Information -->
                <div
                  class="
                    dropdown-menu dropdown-menu-right
                    shadow
                    animated--grow-in
                  "
                  aria-labelledby="userDropdown"
                >
                  <a class="dropdown-item" href="#">
                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                    Profile
                  </a>
                  <a class="dropdown-item" href="#">
                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                    Settings
                  </a>
                  <a class="dropdown-item" href="#">
                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                    Activity Log
                  </a>
                  <div class="dropdown-divider"></div>
                  <a
                    class="dropdown-item"
                    href="#"
                    data-toggle="modal"
                    data-target="#logoutModal"
                  >
                    <i
                      class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"
                    ></i>
                    Logout
                  </a>
                </div>
              </li>
            </ul>
          </nav>
          <!-- End of Topbar -->

          <!-- Begin Page Content -->
          <div class="container-fluid">
            <!-- Page Heading -->
            <h1 class="h3 text-gray-800">新增員工</h1>
            <hr class="sidebar-divider" />

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
              <div class="card-body">
                <form action="/FinalProject/api/v1/checkAddEmp" method="POST">
                  <div class="row text-center mg-1r">
                    <div class="col-6 mb-3 mb-sm-0">
                      <label for="fullname" class="text-lg">姓名</label><br />
                      <input
                        type="text"
                        name="fullname"
                        class="form-control form-control-user"
                      /><br />
                    </div>
                    <div class="col-6 mb-3 mb-sm-0">
                      <label for="empemail" class="text-lg">公司郵件</label
                      ><br />
                      <input
                        type="email"
                        name="empemail"
                        class="form-control form-control-user"
                      /><br />
                    </div>
                  </div>
                  <div class="row text-center mg-1r">
                    <div class="col-6 mb-3 mb-sm-0">
                      <label for="empphone" class="text-lg">電話</label><br />
                      <input
                        type="text"
                        name="empphone"
                        class="form-control form-control-user"
                      /><br />
                    </div>
                    <div class="col-6 mb-3 mb-sm-0">
                      <label for="emptitle" class="text-lg">職稱</label><br />
                      <input
                        type="text"
                        name="emptitle"
                        class="form-control form-control-user"
                      /><br />
                    </div>
                  </div>
                  <div class="row text-center mg-1r">
                    <div class="col-12 mb-3 mb-sm-0">
                      <label for="manager" class="text-lg">直屬上司</label
                      ><br />
                      <select
                        name="manager"
                        class="form-control form-control-user"
                      >
                        <option
                          value="Please select one Employee."
                          disabled
                        ></option>
                        <option value="ADMIN">Joe Yu</option>
                      </select>
                    </div>
                  </div>
                  <div class="row text-center mg-1r">
                    <div class="col-12 mb-3 mb-sm-0">
                      <label for="department" class="text-lg">部門</label><br />
                      <select
                        name="department"
                        class="form-control form-control-user"
                      >
                        <option value="Sales">業務</option>
                        <option value="Deliver">交車</option>
                        <option value="Service">客服</option>
                        <option value="Main Office">總部</option>
                      </select>
                    </div>
                  </div>
                  <div class="row text-center mg-1r">
                    <div class="col-6 mb-3 mb-sm-0">
                      <label for="loc" class="text-lg">工作地點</label><br />
                      <input
                        type="text"
                        name="loc"
                        class="form-control form-control-user"
                      />
                    </div>
                    <div class="col-6 mb-3 mb-sm-0">
                      <label for="sal" class="text-lg">薪資/月</label><br />
                      <input
                        type="text"
                        name="sal"
                        class="form-control form-control-user"
                      /><br />
                    </div>
                  </div>
                  <div class="row text-center mg-1r">
                    <div class="col-12">
                      <hr class="sidebar-dividor" />
                      <button
                        class="btn btn-block btn-primary text-lg"
                        id="addEmpSubmitbtn"
                      >
                        送出
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <!-- /.container-fluid -->
          <!-- 結束內容 -->
        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright &copy; 資策會第五組專題報告 2021</span>
            </div>
          </div>
        </footer>
        <!-- End of Footer -->
      </div>
      <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div
      class="modal fade"
      id="logoutModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button
              class="close"
              type="button"
              data-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">
            Select "Logout" below if you are ready to end your current session.
          </div>
          <div class="modal-footer">
            <button
              class="btn btn-secondary"
              type="button"
              data-dismiss="modal"
            >
              Cancel
            </button>
            <a class="btn btn-primary" href="/FinalProject/logout">Logout</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/FinalProject/vendor/jquery/jquery.min.js"></script>
    <script src="/FinalProject/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/FinalProject/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/FinalProject/js/sb-admin-2.js"></script>

    <!-- Page level custom scripts -->
    <script src="/FinalProject/js/inner/adminTemplate.js"></script>
  </body>
</html>
