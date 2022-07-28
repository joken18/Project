
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
       body{
            margin: 0;
            padding: 20%;
            box-sizing: border-box;
            font-family: 'Poppins',sans-serif;
            height: 100vh;
            padding: 10px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        a{
            color: blueviolet;
        }
        p{
            color: blueviolet;
            letter-spacing: 5px;
            
            
        }
        h3{
        
                width: 350px;
                margin: 80px auto;
                padding: 30px 20px;
                opacity: 0.9;
                box-shadow: 0 0 0.5em;
                border-radius: 10px;
                padding: 10px;
                text-align: center;
                background-color: white;
        }
    </style>
    <body>
        <%
            String user = request.getParameter("admin");
            String pass = request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbprojek","root","");
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("select * from login_admin where username='"+ user +"' and password='"+pass+"'");
            if(rs.next()){
                response.sendRedirect("tampilan_admin.jsp");
            }
            else{
                out.println("<h3><p>Terjadi Erorr</p> <br> <a href='login_admin.jsp'>coba lagi</a></h3>");
            }
        %>
        
    </body>
</html>
