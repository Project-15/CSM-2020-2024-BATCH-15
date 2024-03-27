<%@page import="Algorithm.CaesarCipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

    String CeasarCipher = null, fname = null, file = null;
    String mac1 = request.getParameter("mac1");
    session.setAttribute("macc", mac1);
    Connection con = DbConnection.getConnection();
    Statement st3 = con.createStatement();
    ResultSet rs = st3.executeQuery("select * from file_storage where mac1='" + mac1 + "'");
    if (rs.next()) {
        file = rs.getString("file");
        fname = rs.getString("filename");
        int IDS = 1;
        CeasarCipher = new CaesarCipher().decrypt(file.toString(), IDS);
        System.out.println("Ceaser :" + CeasarCipher);

    }
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
    if (request.getParameter("ssss") != null) {
%>
<script>alert('File Uploaded to HQDrive...');</script>
<%            }
%>
<%
    if (request.getParameter("msggss") != null) {
%>
<script>alert('File Upload Failed...');</script>
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
 <%
 if (request.getParameter("msg") != null) {
%>
<script>alert('File Uploaded to Drive HQ..');</script>
<%            }
%>
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
                <a class="nav-link active" href="#">Download</a>
              </li>

              
        
            </ul>
            <div class="ms-5 d-flex">
                <a
                  href="file_de.jsp"
                  class="btn btn-secondary d-flex align-items-center"
                >
                  Back</a
                >
              </div>
            
            <div class="ms-5 d-flex">
              <a
                href="reg.jsp"
                class="btn btn-danger d-flex align-items-center"
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
                <!-- Card body -->
              <div class="card-body p-6">
                <div class="mb-4">
                  <a href="index.jsp"
                    >Three-Layer Privacy Preserving Cloud Storage</a
                  >
                </div>
                <!-- File Form -->
                <form action="update1.jsp"  method="get" enctype="multipart/form-data">
                  <!-- Text Area -->
                  <div class="mb-3">
                    <label for="textarea-input" class="form-label">Content</label>
                    <textarea class="form-control" name="files" id="textarea-input" rows="5"><%=CeasarCipher%></textarea>
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
