<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <!-- Favicon icon-->
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="./assets/images/favicon/favicon.ico"
    />

    <!-- Libs CSS -->

    <link
      href="./assets/libs/bootstrap-icons/font/bootstrap-icons.css"
      rel="stylesheet"
    />
    <link href="./assets/libs/dropzone/dist/dropzone.css" rel="stylesheet" />
    <link
      href="./assets/libs/@mdi/font/css/materialdesignicons.min.css"
      rel="stylesheet"
    />
    <link
      href="./assets/libs/prismjs/themes/prism-okaidia.css"
      rel="stylesheet"
    />

    <!-- Theme CSS -->
    <link rel="stylesheet" href="./assets/css/theme.min.css" />
    <title>Homepage | Three-Layer_Privacy_Preserving_Cloud_Storage</title>
    <% if (request.getParameter("msg") != null) { %>
    <script>
      alert("Registration Successfully");
    </script>
    <% } %> <% if (request.getParameter("msgg") != null) { %>
    <script>
      alert("Registration Error");
    </script>
    <% } %>
  </head>

  <body>
    <div id="db-wrapper">
      <!-- Navbar Start -->
      <nav
        class="navbar navbar-expand-lg navbar-light bg-white border-bottom position-fixed w-100"
        style="z-index: 2"
      >
        <div class="container-fluid">
          <a class="navbar-brand" href="../index.html"
            ><img src="../assets/images/brand/logo/logo-primary.svg" alt=""
          /></a>
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" href="index.jsp">Home</a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="cloud.jsp">Cloud Login</a>
              </li>
            </ul>
            <div class="ms-auto d-flex">
              <a
                href="user.jsp"
                class="btn btn-primary d-flex align-items-center justify-center"
              >
                User Sign In</a
              >
            </div>
            <div class="ms-5 d-flex">
              <a
                href="reg.jsp"
                class="btn btn-secondary d-flex align-items-center"
              >
                User Registration</a
              >
            </div>
          </div>
        </div>
      </nav>
      <!-- Navbar End -->

      <!-- User Reg FOrm -->

      <div class="container d-flex flex-column my-5">
        <div
          class="row align-items-center justify-content-center g-0 min-vh-150"
        >
          <div class="col-12 col-md-8 col-lg-6 col-xxl-4 py-8 py-xl-8">
            <!-- Card -->
            <div class="card smooth-shadow-md my-6">
              <!-- Card body -->
              <div class="card-body p-6">
                <div class="mb-4">
                  <a href="index.jsp">TLP</a>
                  <p class="mb-6">Please enter your user information.</p>
                </div>
                <!-- Form -->
                <form action="login.jsp" method="get">
                  <!-- Username -->
                  <div class="mb-3">
                    <label for="username" class="form-label">User Name</label>
                    <input
                      type="text"
                      id="username"
                      class="form-control"
                      name="name"
                      placeholder="User Name"
                      required=""
                    />
                  </div>
                  <!-- Email -->
                  <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input
                      type="email"
                      id="email"
                      class="form-control"
                      name="email"
                      placeholder="Email address here"
                      required=""
                    />
                  </div>
                  <!-- Password -->
                  <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input
                      type="password"
                      id="password"
                      class="form-control"
                      name="pass"
                      placeholder="**************"
                      required=""
                    />
                  </div>
                  <!-- Gender -->
                  <div class="mb-3">
                    <label for="gender" class="form-label">Gender</label>
                    <!-- radio-->
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="radio"
                        name="gen"
                        id="gender1"
                        value="male"
                      />
                      <label class="form-check-label" for="gender1">
                        Male
                      </label>
                    </div>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="radio"
                        name="gen"
                        id="gender2"
                        value="female"
                      />
                      <label class="form-check-label" for="gender2">
                        Female
                      </label>
                    </div>
                  </div>

                  <!-- DOB -->
                  <div class="mb-3">
                    <label for="dob" class="form-label">Date of Birth</label>
                    <input
                      type="date"
                      id="dob"
                      class="form-control"
                      name="dob"
                      required=""
                    />
                  </div>
                  <input type="hidden" value="2" name="status" />
                  <div class="mb-3">
                    <label for="phone" class="form-label">Contact Number</label>
                    <input
                      type="number"
                      id="phone"
                      class="form-control"
                      name="phone"
                      placeholder="Contact number"
                      required=""
                    />
                  </div>

                  <div class="mb-3">
                    <label for="state" class="form-label">State</label>
                    <input
                      type="text"
                      id="state"
                      class="form-control"
                      name="state"
                      placeholder="State"
                      required=""
                    />
                  </div>

                  <div class="mb-3">
                    <label for="country" class="form-label">Country</label>
                    <input
                      type="text"
                      id="country"
                      class="form-control"
                      name="country"
                      placeholder="Country"
                      required=""
                    />
                  </div>

                  <div>
                    <!-- Button -->
                    <div class="d-grid">
                      <button type="submit" class="btn btn-primary">
                        Create Free Account
                      </button>
                    </div>

                    <div class="d-md-flex justify-content-between mt-4">
                      <div class="mb-2 mb-md-0">
                        <a href="user.jsp" class="fs-5"
                          >Already member? Login
                        </a>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- User reg form ends -->
    </div>

    <!-- Scripts -->
    <!-- Libs JS -->
    <script src="./assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="./assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./assets/libs/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <script src="./assets/libs/feather-icons/dist/feather.min.js"></script>
    <script src="./assets/libs/prismjs/prism.js"></script>
    <script src="./assets/libs/apexcharts/dist/apexcharts.min.js"></script>
    <script src="./assets/libs/dropzone/dist/min/dropzone.min.js"></script>
    <script src="./assets/libs/prismjs/plugins/toolbar/prism-toolbar.min.js"></script>
    <script src="./assets/libs/prismjs/plugins/copy-to-clipboard/prism-copy-to-clipboard.min.js"></script>

    <!-- Theme JS -->
    <script src="./assets/js/theme.min.js"></script>
  </body>
</html>
