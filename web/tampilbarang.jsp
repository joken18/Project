<%-- 
    Document   : tampilbarang
    Created on : Jul 2, 2019, 3:11:47 AM
    Author     : upi mariani
--%>

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
            padding: 70px 25%;
            background: linear-gradient(145deg, #71b7e6, #9b59b6);
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
        h1{
            color: blueviolet;
        }
        .head{
            background-image: linear-gradient(to right, #71b7e6, #9b59b6);
            color: white;
        }
        .tombol{
            background-color:blueviolet ;
                color: white;
                font-size: 11pt;
                width: 80%;
                border: solid;
                border-radius: 10px;
                padding: 5px 5px;
               
        }
        .tombol:hover{
            background-color:lightskyblue;
            color: white;
        }
        a{
            color:blueviolet;
        }
        a:hover{
            color: lightskyblue;
        }
    </style>
    <body>
         <form>
        <h1>List Barang</h1>
        <table border="1">
            <thead>
                <tr class="head">
                    <th>No</th>
                    <th>Id Produk</th>
                    <th>Kode Produk</th>
                    <th>Nama Produk</th>
                    <th>Harga Produk</th>
                    <th>Stok</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbprojek","root","");
                    Statement st = cn.createStatement();
                    ResultSet rs = st.executeQuery("select * from produk");
                    int nomor=1;
                    while(rs.next()){
                %>
                
                <tr>
                    <td><% out.print(nomor++); %></td>
                    <td><% out.print(rs.getString(1)); %></td>
                    <td><% out.print(rs.getString(2)); %></td>
                    <td><% out.print(rs.getString(3)); %></td>
                    <td><% out.print(rs.getString(4)); %></td>
                    <td><% out.print(rs.getString(4)); %></td>
                    <td><a href="editbarang.jsp?kode=<% out.print(rs.getString(1)); %>">Edit</a>
                        <a href="hapusbarang.jsp?kode=<% out.print(rs.getString(1)); %>">Hapus</a></td>
                </tr>
                <% } %>
            </tbody>
        </table>
            <br><br>
            <a href="input_databarang.jsp"class="tombol">Input Barang</a>
            <a href="tampilan_admin.jsp"class="tombol">Kembali</a>
          </form>
    </body>
</html>
