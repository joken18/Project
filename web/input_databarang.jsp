
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
         font-family: sans-serif;
	 margin: 0;
         box-sizing: border-box;
         height: 100vh;
         display: flex;
         justify-content: center;
         align-items: center;
         padding: 10px;
         background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        form{
              width: 350px;
                background-color: white;
                margin: 80px auto;
                padding: 30px 20px;
                opacity: 0.9;
                box-shadow:blueviolet 0 0 0.5em;
                border-radius: 10px;
                color: blueviolet;
        }
        .tombol{
            background-color: blueviolet;
                color: white;
                font-size: 8pt;
                width: 48%;
                border: none;
                border-radius: 10px;
                padding: 10px 10px;
        }
        .tombol:hover{
            background-color: lightskyblue;
        }
        .teks{
            border-color: blueviolet;
            box-sizing: border-box;
                width: 100%;
                padding: 5px;
                font-size: 10pt;
                margin-bottom: 10px;
        }
       
    </style>
    <body>
       
     
        <form method="post" action="queryinput.jsp">
            <a href="tampilbarang.jsp"class="tombol">kembali</a>
            <h1><center>Input Barang</center></h1>
            <table>
                <tr>
                    <th>Kode Produk</th>
                    <td>:</td>
                    <td><input type="text" name="kodeproduk" class="teks"></td>
                </tr>
                <tr>
                    <th>Nama Produk</th>
                    <td>:</td>
                    <td><input type="text" name="nama" class="teks"></td>
                </tr>
                <tr>
                    <th>Harga Produk</th>
                    <td>:</td>
                    <td><input type="text" name="harga" class="teks"></td>
                </tr>
                <tr>
                    <th>Stok</th>
                    <td>:</td>
                    <td><input type="text" name="qty" class="teks"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <input type="submit" name="submit" value="SIMPAN" class="tombol">
                        <input type="reset" name="reset" value="RESET" class="tombol"</td>
                </tr>
            </table>
        </form>
    </body>
</html>
