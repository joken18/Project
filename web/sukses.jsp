
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.produk"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
       body{
        
         padding: 10px;
         background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        h1{
            text-align: center;
        }
          table{
                width: 350px;
                background-color: white;
                margin: 80px auto;
                padding: 200px 20px;
                box-shadow:black 0 0 0.5em;
                border-radius: 10px;
                color: blueviolet;
                transition: 1s;
        }
         table:hover{
                 transform: scale(1.2);
        }
        header{
             width: 350px;
                
                margin: 80px auto;
                padding: 30px 20px;
                opacity: 0.9;
                box-shadow:blueviolet 0 0 0.5em;
                border-radius: 10px;
                
            background-color: blueviolet;
        }
        .link{
            padding: 10px 12px;
            background-color: grey;
        }
        .link a{
            text-decoration: none;
            color: black;
        
        }
        .link a:hover{
            background-color: #eaeaea;
            color: white;
            padding: 10px 12px;
         
        }
        .masuk{
            background-color: lightskyblue;
            color: white;
            text-decoration: underline;
        }
        .masuk h1{
            letter-spacing: 5px;
        }
        
        .out a{
                background-color: white;
                color: blueviolet;
                font-size: 11pt;
                width: 48%;
                border: none;
                border-radius: 10px;
                padding: 10px 20px;
        }
        .out a:hover{
           background-color: lightskyblue;
        }
        h2{
            letter-spacing: 10px;
            text-decoration: underline;
            color: white;
        }
        .button{
            width: 15%;
            color: white;
            background-color:blueviolet ;
        }
         .button:hover{
            background-color: lightskyblue;
        }
    </style>
    <body>
        <header>
            <%
               if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
           %>
           <h1>Anda Belum login</h1>
           <div class="link">
               <a href="index.jsp">Silahkan Login</a>
           </div>

           <%} else {
           %>
           <div class="masuk">
               <h1>Selamat Datang <%=session.getAttribute("userid")%></h1>
           </div>
           <div class="out">
               <a href='logout.jsp'>Log out</a>
           </div><hr>

           <%
           }
           %>
        </header>
       
        
        <h2 align="center">List Barang</h2>
 
                    <%
                        produk pm = new produk();
                        List <produk> data = new ArrayList<produk>();
                        String ket = request.getParameter("ket");
                        if (ket == null) {
                            data = pm.tampil();
                        }
                        for (int x = 0; x < data.size(); x++) {
                    %>
                    
                    <table align="left" width="50%">
            <tr>
                <td>
                    <form name="ModelDetail" method="POST" action="kontrol_barang" align="center">
                        Kode Produk : <%=data.get(x).getKd_produk()%> <input type="hidden" name="kd_produk" value="<%=data.get(x).getKd_produk()%>"><br>
                        Nama Produk : <%=data.get(x).getNm_produk()%><input type="hidden" name="nm_produk" value="<%=data.get(x).getNm_produk()%>"><br>
                        Harga : <%=data.get(x).getHarga_produk()%> <input type="hidden" name="harga" value="<%=data.get(x).getHarga_produk()%>"><br>
                        Stok : <%=data.get(x).getQty()%> <input type="hidden" name="harga" value="<%=data.get(x).getQty()%>"><br>
                        Stok Di beli :<input type="text" name="qty" placeholder="isi jumlah stok"/><br><br>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" name="addToCart" value="Beli" class="button">
                    </form>
                </td>
            </tr>
    </table>
        <% }%>
    </body>
</html>
