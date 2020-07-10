<%-- 
    Document   : LoginPage
    Created on : Apr 15, 2020, 2:02:12 PM
    Author     : Desktop1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <br>
        <br>
        <br>
        <div class="container col-md-5">
            <div class="card">
                    <div class="card-body">
        <form action="loginU" method="post">
        <fieldset class="form-group">
            <label>Login</label> <input type="text"  class="form-control" name="login" required="required">
        </fieldset>
         <fieldset class="form-group">
            <label>Password</label> <input type="password"  class="form-control" name="password" required="required">
        </fieldset>
        <button type="submit" class="btn btn-success">Se connecter</button>
         <br>${message}
        </form>
         </div>
          </div>
          </div>
    </body>
</html>
