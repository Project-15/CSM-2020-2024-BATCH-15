<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

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
        if (request.getParameter("msg") != null) {
    %>
    <script>alert('Your Account created Successfully');</script>
    <%            }
    %>
    <style>
     body{
      background: #4b6cb7;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #182848, #4b6cb7);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #182848, #4b6cb7); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

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
                <a class="nav-link" href="chome.jsp">Home</a>
              </li>

              <li class="nav-item">
                <a class="nav-link active" href="user_de.jsp">Authentication</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="file_de2.jsp">File Details</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="user_req.jsp">User Request</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="down_de.jsp">Download History</a>
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

      <div class="tab-content rounded  mx-auto p-4 d-flex align-items-center min-vh-100" id="pills-tabContent-striped-rows">
        <div class="tab-pane rounded tab-example-design fade show
          active" id="pills-striped-rows-design" role="tabpanel" aria-labelledby="pills-striped-rows-design-tab">
          <div class="table-responsive border-1 bg-white p-5 rounded" style="box-shadow: 0 0 10px rgba(0,0,0,0.03);"> 
          <table class="table table-striped border-1 bg-white rounded table-bordered">
            
            <thead>
            
              <tr>
                <th scope="col">#</th>
                <th scope="col">User name</th>
                <th scope="col">Email</th>
                <th scope="col">DOB</th>
                <th scope="col">Contact</th>
                <th scope="col">State</th>
                <th scope="col">Country</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
              <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            int sl = 1;

                            try {
                                con = DbConnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from register");
                                
                                while (rs.next()) {

                        %>
                        <tr>
                          <td style="color: midnightblue; font-size: 16px"><%=sl++%></td>
                            <td style="color: midnightblue; font-size: 16px"><%=rs.getString("name")%></td>
                            <td style="color: midnightblue; font-size: 16px"><%=rs.getString("email")%></td>
                            <td style="color: midnightblue; font-size: 16px"><%=rs.getString("dob")%></td>
                            <td style="color: midnightblue; font-size: 16px"><%=rs.getString("phone")%></td>
                            <td style="color: midnightblue; font-size: 16px"><%=rs.getString("state")%></td>
                            <td style="color: midnightblue; font-size: 16px"><%=rs.getString("country")%></td>

                            <td style="color: #4CAF50; font-size: 16px"><a href="activate.jsp?id=<%=rs.getString("id")%>&email=<%=rs.getString("email")%>&name=<%=rs.getString("name")%>"><font style="color: green">Activate</a></td>


                        </tr><tr />
                        <% }
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
            </tbody>
          </table>
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
