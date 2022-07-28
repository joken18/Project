
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
     body{
           padding: 50px;
         background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        h1{
            letter-spacing: 10px;
        }
        .tombol{
            width: 30%;
            background-color: blueviolet;
            color: white;
            border-radius: 10px;
        }
        .tombol:hover{
               background-color: lightskyblue;
        }
        .kolom{
            background-color:blueviolet;
            color: white;
        }
        .link a{
           background-color: blueviolet;
                color: white;
                font-size: 11pt;
                width: auto;
                border: none;
                border-radius: 10px;
                padding: 10px 20px;
        }
        .link a:hover{
            background-color: lightskyblue;
        }
        form{
                background-color: white;
                padding: 20px 20px;
                box-shadow:black 0 0 0.5em;
                border-radius: 10px;
                color: blueviolet;
        }
     
    </style>
    
    <body>
        <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
       <form name="item" method="POST" action="kontrol_barang" >
            <h1>Cart</h1>
            <table width="100%" border="1">
            <tr class="kolom" >
                <th>Kode Produk</th>
                <th>Nama Produk</th>              
                <th>Jumlah di Beli</th>
                <th>Harga</th>
                <th>Total</th>                
            </tr>
            <jsp:useBean id="cart" scope="session" class="wadah.Keranjang1" />
            <c:if test="${cart.lineItemCount==00000000000000000000}">
                <tr>
                    <td colspan="5"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Keranjang Masih Kosong<br/></td>
           
                </tr>
            </c:if>
            <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
                <form name="item" method="POST" action="kontrol_barang">
                    <tr>
                        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><c:out value="${cartItem.kd_produk}"/></b><br/></td>
                        <td>  <c:out value="${cartItem.nm_produk}"/></font></td>
                        <td>
                            <input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
                            <input type='text' name="qty" value='<c:out value="${cartItem.qty}"/>' size='2'>
                        
                            <input type="submit" name="action" value="Update" class="tombol">
                            <input type="submit" name="action" value="Delete" class="tombol">
                        </td>
                        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Rp. <c:out value="${cartItem.harga}"/></font></td>
                        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Rp. <c:out value="${cartItem.totalHarga}"/></font></td>
                    </tr>
                </form>
            </c:forEach>
            <tr>
                <td colspan="2"> </td>
                <td> </td>
                <td></td>
                <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subtotal: Rp. <c:out value="${cart.orderTotal}"/></font></td>
            </tr>
        </table>
            <p class="link"><a href="sukses.jsp" >Kembali Belanja</a> </p>
            <br>
            <p class="link"><a href="checkout.jsp" >Checkout</a></p>
            
        </form>
    </body>
</html>
