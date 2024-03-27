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
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;700&display=swap" rel="stylesheet">
    <style>
      body {
        box-sizing: border-box;
        font-family: "Space Grotesk", sans-serif;
        margin: 0;
        padding: 0;
        
      }
        </style>
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

      <!-- Login OTP Form -->
      <div class="container d-flex flex-column">
        <div
          class="row align-items-center justify-content-center g-0 min-vh-100"
        >
          <div class="col-12 col-md-8 col-lg-6 col-xxl-4 py-8 py-xl-0">
            <!-- Card -->
            <div class="card smooth-shadow-md">
              <!-- Card body -->
              <div class="card-body p-6">
                <div class="mb-4">
                  <h1 class="text-center">Cloud Login</h1>
                  <a href="index.jsp"
                    >Three-Layer Privacy Preserving Cloud Storage</a
                  >
                  <p class="mb-6">Please enter your user information.</p>
                </div>
                <!-- Form -->
                <form action="login.jsp" method="get">
                  <!-- Username -->
                  <div class="mb-4">
                    <label for="email" class="form-label fw-600"
                      >Enter your name</label
                    >
                    <input
                      type="text"
                      id="email"
                      class="form-control"
                      name="name"
                      placeholder="Your Name"
                      required=""
                    />
                  </div>
                  <div class="mb-4">
                    <label for="email" class="form-label fw-600"
                      >Enter Password</label
                    >
                    <input
                      type="password"
                      id="email"
                      class="form-control"
                      name="pass"
                      placeholder="Password"
                      required=""
                    />
                  </div>
                  <input type="hidden" value="3" name="status" />
                  <div>
                    <!-- Button -->
                    <div class="d-grid">
                      <button type="submit" class="btn btn-primary">
                        Login
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Login OTP form end -->
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
