
<%@page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user = request.getParameter("username");    
            String pwd = request.getParameter("password");
            String email = request.getParameter("email");
            String kon = request.getParameter("kontak");
            String almt = request.getParameter("alamat");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbprojek"
                    ,"root", "");
            Statement st = con.createStatement();
            ResultSet rs;
            int i = st.executeUpdate("insert into registrasi(email, username, password, kontak, alamat, regdate) values ('" + email + "','" + user + "','" + pwd + "','" + kon + "','" + almt + "', CURDATE())");
            if (i > 0) {
                //session.setAttribute("userid", user);
                response.sendRedirect("welcome.jsp");
               // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
            } else {
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
