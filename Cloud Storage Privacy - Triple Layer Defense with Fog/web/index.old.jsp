<%--
    Document   : index
    Created on : Nov 9, 2016, 3:50:10 PM
    Author     : java4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Home</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
        <script type="text/javascript" src="js/radius.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </head>
    <style>
      
/*        .content{
            background-color: #fff
        }*/
 

nav .btn-outline-light:hover {
  color: #333;
}

    </style>
    <body>
      <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Bharath</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user.jsp">User</a>
        </li>
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="cloud.jsp">Cloud Login</a>
        </li>
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="reg.jsp">Registration</a>
        </li>
          
 
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<!--        <div class="text-center">
  <img src="images/slide.jpg" class="rounded" width="100%"  alt="...">
</div>-->
        <div class="bg-image" 
     style="background-image: url('https://mdbootstrap.com/img/new/standard/city/041.jpg');
            height: 100vh;
            background-repeat:no-repeat;
            background-size: auto;
            padding: 10% "
            >
</div>
        <div class="content">
 
                    <!--- Start Body ------>
                    <div class="mainbar">
                        <div class="article">
                            <h2><font  style="margin-left: 10px; color: black; font-size: 20px; font-family:  fantasy">ABSTRACT</font></h2>
                            <p style="margin-left: 10px;margin-right: 10px; text-align: justify;"><font style="font-size: 16px; ">Recent years witness the development of cloud computing technology. With the explosive growth of unstructured data, cloud storage technology gets more attention and better development. However, in current storage schema, user’s data is totally stored in cloud servers. In other words, users lose their right of control on data and face privacy leakage risk. Traditional privacy protection schemes are usually based on encryption technology, but these kinds of methods cannot effectively resist attack from the inside of cloud server. In order to solve this problem, we propose a three-layer storage framework based on fog computing. The proposed framework can both take full advantage of cloud storage and protect the privacy of data. Besides, Hash-Solomon code algorithm is designed to divide data into different parts. Then, we can put a small part of data in local machine and fog server in order to protect the privacy. Moreover, based on computational intelligence, this algorithm can compute the distribution proportion stored in cloud, fog, and local machine, respectively. Through the theoretical safety analysis and experimental evaluation, the feasibility of our scheme has been validated, which is really a powerful supplement to existing cloud storage scheme.
                                </font></p>
                        </div>
                    </div>
    </body>
</html>
