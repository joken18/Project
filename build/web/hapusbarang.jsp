

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
         justify-content: center;
         align-items: center;
         padding: 10px;
         background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        h2{
            color: blueviolet;
            letter-spacing: 5px;
        }
        .kotak{
             width: 450px;
                background-color: white;
                margin: 80px auto;
                padding: 30px 20px;
                opacity: 0.9;
                box-shadow:blueviolet 0 0 0.5em;
                border-radius: 10px;
                color: blueviolet;
        }
        
        a{
                background-color: blueviolet;
                color: white;
                font-size: 8pt;
                width: 15%;
                border: none;
                border-radius: 10px;
                padding: 10px 10px;
        }
        a:hover{
            background-color: lightskyblue;
        }
    </style>
    <body>
        <%
            String kode = request.getParameter("kode");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbprojek","root","");
            Statement st = cn.createStatement();
            st.executeUpdate("delete from produk where id_produk='"+ kode +"'");
        %>
       <div class="kotak">
        <h2>Data Berhasil di Hapus</h2>
        <a href="tampilbarang.jsp">Liat List Barang</a>
        <a href="tampilan_admin.jsp">Menu Admin</a>
        </div>
        
    </body>
</html>
