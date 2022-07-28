<%-- 
    Document   : tampilan_admin
    Created on : Jul 2, 2019, 1:14:16 PM
    Author     : upi mariani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
      body{
         padding: 10px 10px;
         background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        header{
            background-image: linear-gradient(to right, blueviolet, lightskyblue);
            overflow: hidden; 
            border-radius: 20px;
            box-shadow: 2px 3px 5px black;
            opacity: 0.8; 
        }
        ul a{
            padding: 10px 10px;
            display: block; 
            text-decoration: none; 
            float: left; 
            font-size: 20px;
            color: white; 
            text-shadow: 2px 3px 5px blueviolet; 
        }
        ul a:hover{
            color:lightskyblue;
            text-decoration: underline;
        }
      
        
        
    </style>
    <body>
        <header>
             <ul>
                
                <a href="tampil_transaksi.jsp">Transaksi</a>
                <a href="tampilbarang.jsp">List Barang</a>
                <a href="login_admin.jsp">LogOut</a>
               
             </ul>
        </header>
        
       
    </body>
</html>
