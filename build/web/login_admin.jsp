

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
         input[type=text]{
         border: 2px solid;
         border-color: blueviolet;
      }
       input[type=password]{
         border: 2px solid;
         border-color: blueviolet;
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
            
        }
        .text{
              box-sizing: border-box;
                width: 100%;
                padding: 10px;
                font-size: 11pt;
                margin-bottom: 20px;
        }
        .kotak{
                width: 350px;
                background-color: white;
                margin: 80px auto;
                padding: 30px 20px;
                opacity: 0.9;
                box-shadow:blueviolet 0 0 0.5em;
                border-radius: 10px;
                color: blueviolet;
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
        <div class="kotak">
            <h1><center>Login Admin</center></h1>
            <form method="post" action="login_prosesadmin.jsp">
            <label>Username</label>
            <input type="text" name="admin" class="text"><br>
            <label>Password</label>
            <input type="password" name="password" class="text"><br>
            
                <input type="submit" name="submit" value="Masuk" class="tombol">
                <input type="reset" name="reset" value="Reset" class="tombol">
                <center>
                <br>
                <a href="index.jsp">Login Umum</a>
                </center>
         </form>
        </div>
       
    </body>
</html>
