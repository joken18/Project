
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <script>
         function rekening(){
             var seleksi = document.data.pilihan.value;
             if(seleksi=="Mandiri"){
                 document.data.pilih_pembayaran.value="Mandiri";
                 document.data.rek.value="PN0007";
             }
             if(seleksi=="BCA"){
                 document.data.pilih_pembayaran.value="BCA";
                 document.data.rek.value="WN0007";
             }
             if(seleksi=="COD"){
                 document.data.pilih_pembayaran.value="COD";
                 document.data.rek.value="-";
             }
             if(seleksi=="Alfamart"){
                 document.data.pilih_pembayaran.value="Alfamart";
                 document.data.rek.value="-";
             }
             if(seleksi=="Indomaret"){
                 document.data.pilih_pembayaran.value="Indomaret";
                 document.data.rek.value="-";
             }
         }
        function hitung(){
                var tempat = document.data.kawasan.value;
		if (tempat=="Jakarta") {                  
                        document.data.tempat.value="Jakarta";
                        document.data.ongkir.value="5000";
                        var a = parseInt(document.data.harga.value);
                        document.data.total.value=5000+a;       
		}
                if (tempat=="Bandung") {                  
                        document.data.tempat.value="Kuningan Timur";
                        document.data.ongkir.value="8000";
                        var b = parseInt(document.data.harga.value);
                        document.data.total.value=8000+b;       
		}
                if (tempat=="Surabaya") {                  
                        document.data.tempat.value="Surabaya";
                        document.data.ongkir.value="14000";
                        var c = parseInt(document.data.harga.value);
                        document.data.total.value=14000+c;       
		}
                if (tempat=="Yogyakarta") {                  
                        document.data.tempat.value="Yogyakarta";
                        document.data.ongkir.value="11500";
                        var d = parseInt(document.data.harga.value);
                        document.data.total.value=11500+d;       
		}
		
        }
    </script>
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
              width: 550px;
                background-color: white;
                margin: 500px auto;
                padding: 30px 20px;
                opacity: 0.9;
                box-shadow:blueviolet 0 0 0.5em;
                border-radius: 10px;
                color: blueviolet;
        }
          center{
             border-bottom:solid;
             border-color:blueviolet;
        }
        .buat{
            width: 100%;
            background-color: blueviolet;
            color: white;
            padding: 10px 5px;
            border-radius: 10px;
            letter-spacing: 5px;
        }
          .buat:hover{
            background-color: lightskyblue;
        }
        .back{
            width: 100%;
            background-color: blueviolet;
            color: white;
            padding: 5px 5px;
            border-radius: 10px;
            letter-spacing: 5px;
        }
          .back:hover{
            background-color: lightskyblue;
        }
        .klik{
            width: 100%;
            background-color: blueviolet;
            border-radius: 10px;
            color: white;
        }
          .klik:hover{
            background-color: lightskyblue;
        }
        h1{
            color: blueviolet;
        }
        .label{
            color: blueviolet;
        }
    </style>
    <body>
       <form name="data" method="POST" action="transaksi.jsp">
           <h1><center>Transaksi Atas Nama</center></h1>
             <table align="center">
                    <tr>
                        <td class="label">Nama</td>
                        <td>:</td>
                        <td><input type="text" name="nm" placeholder="---isi nama anda---"></td>
                    </tr>
                    <tr>
                        <td class="label">No.Hp</td>
                        <td>:</td>
                        <td><input type="text" name="hp" placeholder="---isi no hp anda---"></td>
                    </tr>
                    <tr>
                        <td class="label">Alamat</td>
                        <td>:</td>
                        <td><input type="text" name="almt" placeholder="---isi alamat anda---" align="center"></td>
                    </tr>
                <tr>
                    <td class="label"><label>Pembayaran</label></td>
                    <td>:</td>
                    <td>
                        <select name="pilihan">
                            <option>Pilih Pembayaran Via</option>
                            <option>Mandiri</option>
                            <option>BCA</option>
                            <option>COD</option>
                            <option>Alfamart</option>
                            <option>Indomaret</option>
                        </select>
                        <input type="button" value="Via" onclick="rekening()" class="klik">
                    </td>
                </tr>
                <tr>
                    <td class="label">Via Pembayaran</td>
                    <td>:</td>
                    <td><input type="text" name="pilih_pembayaran"></td>
		</tr>
                <tr>
                    <td class="label">No Rekening</td>
                    <td>:</td>
                    <td><input type="text" name="rek"</td>
                </tr>
                <tr>
                    <td class="label">Tujuan Pengiriman</td>
                    <td>:</td>
                    <td><select  name="kawasan">
                            <option>Pilih Kota</option>
                            <option>Jakarta</option>
                            <option>Bandung</option>
                            <option>Surabaya</option>
                            <option>Yogyakarta</option>
                        </select>
                        <input type="button" name="proses" value="Proses" onclick="hitung()" class="klik">
                    </td>
                </tr>
                <tr>
                    <td class="label">Tujuan Pengiriman</td>
                    <td>:</td>
                    <td><input type="text" name="tempat"</td>
                </tr>
		<tr>
                    <td class="label">Harga Beli</td>
                    <td>:Rp.</td>
                    <td><input type="text" name="harga" value="${cart.orderTotal}"></td>
		</tr>
                <tr>
                    <td class="label">Biaya Pengiriman</td>
                    <td>:Rp.</td>
                    <td><input type="text" name="ongkir"></td>
		</tr>
		<tr>
                    <td class="label">Total Harga</td>
                    <td>:Rp.</td>
                    <td><input type="text" name="total"></td>
		</tr>
		<br>
                <tr>
                    <td>==================================</td>
                </tr>
                <tr>
                    <td><input type="submit" value="Buat Pesanan" class="buat"></td>
                </tr>
                <br>
               
            </table>
               
        </form>
            
    </body>
</html>
