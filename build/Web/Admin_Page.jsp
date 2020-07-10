<%-- 
    Document   : Admin_Page
    Created on : Apr 17, 2020, 4:31:22 PM
    Author     : Desktop1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
         <style>
         div.centre {
    position:absolute;
    left: 50%;
    top: 25%;
    width: 200px;
    height: 200px;
    margin-left: -100px; /* Cette valeur doit être la moitié négative de la valeur du width */
    margin-top: -100px; /* Cette valeur doit être la moitié négative de la valeur du height */
}
#left {
   display:flex;
}
</style>
    </head>
    <body>
        
               <div id="wrapper" class="centre">
                    <h1>Bienvenue!</h1>
                     <br>
                     <br>
                    <div id="left" class="container text-left">
                   
                         <a href="Administration.jsp" class="btn btn-success">Administration</a>
                          &nbsp;&nbsp;&nbsp;&nbsp;
                          <a href="Home_Test.jsp" class="btn btn-success">Utilisateur</a>
                     </div>
                    <br>
                      
                    </div>
               

    </body>
</html>
