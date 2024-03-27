<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%
    String files = "";
    final String filepath = "D:/";
    session.setAttribute("filepathh", filepath);
    try {
        MultipartRequest m = new MultipartRequest(request, filepath);
        File file = m.getFile("file");
        String filename = file.getName().toLowerCase();

        session.setAttribute("filenames", filename);
        BufferedReader br = new BufferedReader(new FileReader(filepath + filename));
        StringBuffer sb = new StringBuffer();
        String temp = null;

        while ((temp = br.readLine()) != null) {
            sb.append(temp+"\n");
        }
        files = (sb.toString());
    } catch (Exception Ex) {
//          Ex.printStackTrace();
    }
    System.out.println("String file view :" + files);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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

    <%
        if (request.getParameter("msgg") != null) {
    %>
    <script>alert('Verification Failed');</script>
    <%            }
    %>
  </head>
<style>
body {
  width: 100vw;
  height: 100vh;
  background: url('https://img.freepik.com/free-vector/padlock-cloud-storage-from-lines-dot-abstract-low-poly-background-vector-illustration_587448-788.jpg');
  background-size: cover;
  
}
  </style>


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
                <a class="nav-link" href="uhome.jsp">Home</a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="upload.jsp">File Upload</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="file_de.jsp">File View</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="file_de1.jsp">File Request</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="down.jsp">Download</a>
              </li>
            </ul>
            
            <div class="ms-5 d-flex">
              <a
                href="index.jsp"
                class="btn btn-secondary d-flex align-items-center"
              >
                Logout</a
              >
            </div>
          </div>
        </div>
      </nav>
      <!-- Navbar End -->

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
                  <a href="index.jsp"
                    >Three-Layer Privacy Preserving Cloud Storage</a
                  >
                </div>
                <!-- File Form -->
                <form action="login.jsp"  method="get">
                  <!-- FIle -->
                  <div class="mb-4">
                    <label for="file" class="form-label fw-600">MAC Code</label>
                    <input
                      type="password"
                      id="file"
                      class="form-control"
                      name="pass"
                      placeholder="MAC Code"
                      required=""
                    />
                    <input type="hidden" value="4" name="status" />
                  </div>
                  

                  <div>
                    <!-- Button -->
                    <div class="d-grid">
                      <button type="submit" class="btn btn-primary">
                        Verify
                      </button>
                    </div>

                     
                  </div>
                </form>

                

              </div>


              


            </div>
          </div>
        </div>
      </div>
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
          </div>
        </div>
      </nav>
      <!-- Navbar End -->
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
