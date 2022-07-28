<%-- 
    Document   : transaksi
    Created on : Jun 14, 2019, 11:32:18 AM
    Author     : upi mariani
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
        table{
                width: 350px;
                background-color: white;
                margin: 80px auto;
                padding: 30px 20px;
                opacity: 0.9;
                box-shadow:blueviolet 0 0 0.5em;
                border-radius: 10px;
                color: blueviolet;
        }
        center{
            font-size: 15pt;
            color: white;
        }
        
        a{
                background-color: white;
                color: blueviolet;
                font-size: 11pt;
                width: 48%;
                border: none;
                border-radius: 10px;
                padding: 10px 20px;
        }
        
          a:hover{
             background-color: lightskyblue;
        }
        
    </style>
    <body>
        <%
            String nama = request.getParameter("nm");
            String nohp = request.getParameter("hp");
            String alamat = request.getParameter("almt"); 
            String pilihpembayaran = request.getParameter("pilih_pembayaran");
            String total = request.getParameter("total");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbprojek","root","");
            Statement st = cn.createStatement();
            st.executeUpdate("insert into transaksi (nama, no_hp, alamat, pilih_pembayaran, total_harga) values ('" + nama + "','" + nohp + "','" + alamat + "','" + pilihpembayaran + "','" + total + "')");
        %>  
        >
        <table>
            <center>Bukti Pembayaran</center>
            <tr>
                <td>Nama </td>
                <td>:</td>
                <td><% out.print(nama);%></td>
            </tr>
            <tr>
                <td>No Hp</td>
                <td>:</td>
                <td><%out.print(nohp);%></td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td>:</td>
                <td><%out.print(alamat);%></td>
            </tr>
            <tr>
                <td>Pilih Pembayaran</td>
                <td>:</td>
                <td><%out.print(pilihpembayaran);%></td>
            </tr>
            <tr>
                <td>Total Pembelian</td>
                <td>:</td>
                <td><%out.print(total);%></td>
            </tr>
            <br>
        </table>
    <center>
               <a href="logout.jsp"  >Log Out</a>||
               <a href="sukses.jsp"  >Belanja Lagi</a>
    </center>
    </body>
</html>
