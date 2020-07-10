<%-- 
    Document   : Administration
    Created on : Apr 19, 2020, 12:59:23 AM
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
    left: 40%;
    top: 15%;
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
              <br>
              <br>
             <div id="left" class="container text-left">

                  <a href="<%=request.getContextPath()%>/Listk" class="btn btn-success">Gestion Utilisateur</a>
                   &nbsp;&nbsp;&nbsp;&nbsp;
                   <a href="<%=request.getContextPath()%>/listkD" class="btn btn-success">Gestion Departement</a>
                     &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="<%=request.getContextPath()%>/listkC" class="btn btn-success">Getion Catégorie</a>
                   &nbsp;&nbsp;&nbsp;&nbsp;
                   <a href="<%=request.getContextPath()%>/listkA" class="btn btn-success">Gestion Archive</a>
              </div>
             <br>

             </div>
               

    </body>
</html>
