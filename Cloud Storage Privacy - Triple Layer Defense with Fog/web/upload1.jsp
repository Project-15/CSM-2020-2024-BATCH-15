<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="Network.SplitFile"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="Algorithm.CaesarCipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="Network.NewServlet" %>

<%
    String fname = (String) session.getAttribute("filenames");
    String fpath = (String) session.getAttribute("filepathh");
    System.out.println("fpath "+fpath);
    String f1, f2, f3;
    String CeasarBlock1, CeasarBlock2, CeasarBlock3, CeasarBlock, Ceasar;
    int ID = 1;
    String files = request.getParameter("files");
    Ceasar = new CaesarCipher().encrypt(files.toString(), ID);
    session.setAttribute("Ceasar", Ceasar);
    Connection con = DbConnection.getConnection();
    Statement st3 = con.createStatement();
    ResultSet rt3 = st3.executeQuery("select * from file_storage where file='" + Ceasar + "'");
    if (rt3.next()) {
        response.sendRedirect("upload2.jsp?msgg=This file Already Uploaded");
    } else {
        SplitFile splitFile = new SplitFile();
        splitFile.split(fpath + "\\" + fname);
        f1 = fpath + "\\" + fname + "1";
        f2 = fpath + "\\" + fname + "2";
        f3 = fpath + "\\" + fname + "3";

        BufferedReader br = new BufferedReader(new FileReader(f1));
        BufferedReader br1 = new BufferedReader(new FileReader(f2));
        BufferedReader br2 = new BufferedReader(new FileReader(f3));

        StringBuffer sb = new StringBuffer();
        StringBuffer sb1 = new StringBuffer();
        StringBuffer sb2 = new StringBuffer();
        String temp = null;
        String temp1 = null;
        String temp2 = null;

        while ((temp = br.readLine()) != null) {
            sb.append(temp+"\n");
        }
        while ((temp1 = br1.readLine()) != null) {
            sb1.append(temp1+"\n");
        }
        while ((temp2 = br2.readLine()) != null) {
            sb2.append(temp2+"\n");
        }

        int IDS = 1, IDS1 = 1, IDS2 = 1;
        CeasarBlock1 = new CaesarCipher().encrypt(sb.toString(), IDS);
        CeasarBlock2 = new CaesarCipher().encrypt(sb1.toString(), IDS1);
        CeasarBlock3 = new CaesarCipher().encrypt(sb2.toString(), IDS2);
        System.out.println("Ceaser :" + CeasarBlock1);
        CeasarBlock = new CaesarCipher().encrypt(files.toString(), IDS);
        session.setAttribute("CipherText", CeasarBlock);
%>


<%
    String mac1 = null, mac2 = null, mac3 = null;
    Random RANDOM = new SecureRandom();
    int mac1_LENGTH = 20;
    String letters = "0123456789zxcvbnmasdfghjklqwertyuiop";
    String uid = "";
    for (int i = 0; i < mac1_LENGTH; i++) {
        int index = (int) (RANDOM.nextDouble() * letters.length());
        uid += letters.substring(index, index + 1);
    }
    mac1 = uid;

    System.out.println("mac1 Print :" + mac1);

    Random RANDO = new SecureRandom();
    int mac2_LENGTH = 20;
    String letter = "0123456789zxcvbnmasdfghjklqwertyuiop";
    String uid1 = "";
    for (int i = 0; i < mac2_LENGTH; i++) {
        int inde = (int) (RANDO.nextDouble() * letter.length());
        uid1 += letter.substring(inde, inde + 1);
    }
    mac2 = uid1;

    System.out.println("mac2 Print :" + mac2);

    Random RAND = new SecureRandom();
    int mac3_LENGTH = 20;
    String lette = "0123456789zxcvbnmasdfghjklqwertyuiop";
    String uid2 = "";
    for (int i = 0; i < mac3_LENGTH; i++) {
        int ind = (int) (RAND.nextDouble() * lette.length());
        uid2 += lette.substring(ind, ind + 1);
    }
    mac3 = uid2;

    System.out.println("mac3 Print :" + mac3);

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
                <a class="nav-link " href="upload.jsp">File Upload</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="file_de.jsp">File View</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="file_de1.jsp">File Request</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="down.jsp">Download</a>
              </li>
            </ul>
            
            <div class="ms-5 d-flex">
              <a
                href="reg.jsp"
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
                <!-- Card body -->
              <div class="card-body p-6">
                <div class="mb-4">
                  <a href="index.jsp" class="text-center"
                    >Three-Layer Privacy Preserving Cloud Storage</a
                  >
                  <h3 class="text-center">File name : <%=fname%></h3>
                </div>
                <!-- File Form -->
                <form action="NewServlet"  method="post" enctype="multipart/form-data">
                  <!-- Text Area -->
                  <div class="mb-3">
                    <label for="password" class="form-label fw-600">MAC 1</label>
                    <input type="text" class="form-control" name="mac1" value="<%=mac1%>" readonly=""  />
                    <textarea class="form-control" name="block1" id="textarea-input" readonly="" rows="3"><%=CeasarBlock1%></textarea><br>
                    <label for="password" class="form-label fw-600">MAC 2</label>
                    <input type="text" class="form-control" name="mac2" value="<%=mac2%>" readonly=""  />
                    <textarea class="form-control" id="textarea-input" rows="3" name="block2" readonly="" ><%=CeasarBlock2%></textarea><br>
                    <label for="password" class="form-label fw-600">MAC 3</label>
                    <input type="text" class="form-control" name="mac3" value="<%=mac3%>" readonly=""  />
                    <textarea  name="block3" readonly="" class="form-control" id="textarea-input" rows="3"><%=CeasarBlock3%></textarea><br>

                  </div>
                  

                  <div>
                    <!-- Button -->
                    <div class="d-grid">
                      <button type="submit" value="UPLOAD" class="btn btn-primary">
                        UPLOAD
                      </button>
                    </div>

                     
                  </div>
                </form>

                

              </div>


            </div>
          </div>
        </div>
        <%}%>
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
