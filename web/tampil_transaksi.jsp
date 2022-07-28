
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
            padding: 5% 25%;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        form{
                width: 550px;
                background-color: white;
                margin: 80px auto;
                padding: 30px 20px;
                opacity: 0.9;
                box-shadow:blueviolet 0 0 0.5em;
                border-radius: 10px;
                color: blueviolet;
        }
        a{
                background-color:blueviolet ;
                color: white;
                font-size: 11pt;
                width: 48%;
                border: none;
                border-radius: 10px;
                padding: 10px 20px;
        }
        a:hover{
            background-color:lightskyblue;
        }
      
        h1{
            color: blueviolet;
        }
        .head{
            background-image: linear-gradient(to right, blueviolet, lightskyblue);
            color: white;
        }
        .bodi{
           background-image: linear-gradient(to right, blueviolet, lightskyblue);
            color: white;
        }
    </style>
    <body>
        <form>
            <a href="tampilan_admin.jsp">Kembali</a>
            <h1><center>Bukti Transaksi</center></h1>
        <table border="1" align="center">
            <thead>
                <tr class="head">
                    <th>No</th>
                    <th>Nama</th>
                    <th>No.Hp</th>
                    <th>Alamat</th>
                    <th>Pembayaran</th>
                    <th>Total Belanja</th>
                </tr>
            </thead>
            <tbody class="bodi">
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbprojek","root","");
                    Statement st = cn.createStatement();
                    ResultSet rs = st.executeQuery("select * from transaksi");
                    int nomor=1;
                    while(rs.next()){
                %>
                <tr>
                    <td><% out.print(nomor++); %></td>
                    <td><% out.print(rs.getString(1)); %></td>
                    <td><% out.print(rs.getString(2)); %></td>
                    <td><% out.print(rs.getString(3)); %></td>
                    <td><% out.print(rs.getString(4)); %></td>
                    <td>Rp.<% out.print(rs.getString(5)); %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
            <br>
        </form>
    </body>
</html>
