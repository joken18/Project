
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
        .tulisan_login{
                color:blueviolet; 
                text-align: center;
                text-transform: uppercase;
        }
        .kotak_login{
                width: 350px;
                background-color: white;
                margin: 80px auto;
                padding: 30px 20px;
                opacity: 0.9;
                box-shadow:blueviolet 0 0 0.5em;
                border-radius: 10px;
                color: blueviolet;
        }
        label{
                font-size: 11px;
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
      label{
          font-size: 12pt;
      }
      

        .form_login{
                box-sizing: border-box;
                width: 100%;
                padding: 10px;
                font-size: 11pt;
                margin-bottom: 20px;
        }
   
        .tombol_login{
                background-color: blueviolet;
                color: white;
                font-size: 11pt;
                width: 48%;
                border: none;
                border-radius: 10px;
                padding: 10px 20px;
                
              
        }
        .tombol_login:hover{
            background-color: lightskyblue;
        }
        a{
            text-decoration: none;
            color: blueviolet;
            letter-spacing: 3px;
            font-size: 10pt;
        }
        a:hover{
            color: darkblue;
            text-decoration: underline;
        }
    </style>

       
    <body>
	<div class="kotak_login">
            <p class="tulisan_login"><h1><center>Masukan Akun</center></h1></p>
		<form method="POST" action="login.jsp">
                    <label>Username</label>
			<input type="text" name="username" class="form_login" placeholder="Username">
                        <label>Password</label>
                        <input type="password" name="password" class="form_login" placeholder="Password">

                        <input type="submit" class="tombol_login" value="Login"/>
                        <input type="reset" class="tombol_login" value="Reset" />
			<center>
                            <br>
                            <a href="registreasi.jsp">Daftar</a>&
                            <a href="login_admin.jsp">Admin</a>
			</center>
		</form>
	</div>
    </body>
</html>
