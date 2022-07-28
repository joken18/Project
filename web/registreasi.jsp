
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
        center{
             border-bottom:solid;
             border-color:blueviolet;
        }
        .kotak_regristrasi{
                 width: 350px;
                background-color: white;
                margin: 80px auto;
                padding: 30px 20px;
                opacity: 0.9;
                box-shadow:blueviolet 0 0 0.5em;
                border-radius: 10px;
                color: blueviolet;
        }
         input[type=text]{
         border: 2px solid;
         border-color: blueviolet;
      }
       input[type=password]{
         border: 2px solid;
         border-color: blueviolet;
      }

        .input{
               box-sizing: border-box;
                width: 100%;
                padding: 10px;
                font-size: 11pt;
                margin-bottom: 20px;
        }
        .tombol{
                background-color: blueviolet;
                color: white;
                font-size: 11pt;
                width: 48%;
                border: none;
                border-radius: 10px;
                padding: 10px 20px;
        }
        .tombol:hover{
            background-color: lightskyblue;
            color: white;
        }
        h2{
            text-align: center;
        }
        .bawah{
            text-align: center;
            
        }
        .bawah a{
            text-decoration: none;
            color: blueviolet;
        }
        .bawah a:hover{
            background-color: lightskyblue;
            color: white;
        }
    </style>
    <body>
        <div class="kotak_regristrasi">
            <h1><center>Buat Akun</center></h1>
            <form method="POST" action="prosesreg.jsp">
            
                <label>Username</label>
                <input type="text" name="username" value="" class="input" placeholder="Username"/>
                
                <label>Nomor</label>
                <input type="text" name="kontak" value="" class="input" placeholder="Nomor"/>
                
                <label>Alamat</label>
                <input type="text" name="alamat" value="" class="input" placeholder="Alamat"/>
                
                <label>Password</label>
                <input type="password" name="password" value="" class="input" placeholder="Password"/>
                
                <label>Email</label>
                <input type="text" name="email" value="" class="input" placeholder="Email"/>
                
                <input type="submit" value="Submit" class="tombol"/>
                <input type="reset" value="Reset" class="tombol"/>
             
           
        </form><hr> <h3 class="bawah">Jika Sudah Terdaftar <a href="index.jsp">Login Sini</a></h3>
        </div>
        
        
    </body>
</html>
