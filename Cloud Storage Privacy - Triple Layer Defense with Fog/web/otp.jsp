<%-- 
    Document   : loginaction
    Created on : Feb 23, 2016, 3:43:53 PM
    Author     : java4
--%>

<%@page import="java.util.UUID"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.BufferedReader, java.io.DataOutputStream, java.io.IOException, java.io.InputStreamReader, java.net.HttpURLConnection, java.net.URL, java.nio.charset.StandardCharsets" %>


<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;


    
    String Email = request.getParameter("email");
    System.out.println(Email);


    int status = Integer.parseInt(request.getParameter("status"));
    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        switch (status) {
            case 7:
                try {
                    int otpLength = 6;
                    String allowedChars = "0123456789";
                    StringBuilder otp = new StringBuilder(otpLength);
                    Random random = new Random();

                    for (int i = 0; i < otpLength; i++) {
                        int index = random.nextInt(allowedChars.length());
                        char digit = allowedChars.charAt(index);
                        otp.append(digit);
                    }
                    
                    String postData = "apiKey=Ku83ndjksobro793bu0d&address="+ Email +"&subject=OTP&body=Your OTP is " + otp;
                    
//                    System.out.println(postData);
                    
                    
                    String urlString = "https://hackerbucket.com/email_api/test.php?apiKey=Ku83ndjksobro793bu0d&address="+Email+"&subject=OTP&body=Yout%20OTP%20is%20" + otp.toString();
                URL url = new URL(urlString);
                HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                connection.setRequestMethod("GET");
                connection.setDoOutput(true);
                connection.setDoInput(true);
//                connection.setRequestProperty("Content-Type", "multipart/form-data");
//                String postData = "apiKey=Ku83ndjksobro793bu0d&address="+ Email +"&subject=OTP&bosy=Your OTP is " + otp;
                try (DataOutputStream wr = new DataOutputStream(connection.getOutputStream())) {
                    byte[] postDataBytes = postData.getBytes(StandardCharsets.UTF_8);
                    wr.write(postDataBytes);
                }
                int responseCode = connection.getResponseCode();
                System.out.println("Response Code: " + responseCode);
                BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                String line;
                StringBuilder res = new StringBuilder();
                while ((line = reader.readLine()) != null) {
                    res.append(line);
                }
                reader.close();
                System.out.println("Response: " + res.toString());
                connection.disconnect();
                
                
                        session.setAttribute("otp",otp.toString());
                        session.setAttribute("email",Email);
                
                response.sendRedirect("user.jsp?action=otp");
                    
                    
                } catch (Exception ex) {
                    response.sendRedirect("user.jsp?msgg=" + ex.toString());
                }
                break;
            default:
                response.sendRedirect("index.html");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>