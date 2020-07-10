<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Archives</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
#Uwrapper {
   display:flex;
}
#nav {
   display:flex;
}
#left {
    margin-left: -30px;
   width:250px;  
}
#right {
     width:750px; 
}
#barre {
}
#barre,Uwrapper {
    display:block;
}
             
            </style>
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    <div>
                        <a  class="navbar-brand">Archives</a>
                    </div>
                    <div id="nav">
                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/newA?user=<c:out value='${user.id}'/>" class="nav-link">Ajouter une Nouvelle Archive</a></li>
                    </ul>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/logoutU" class="nav-link">Se deconnecter</a></li>
                    </ul>
                     </div>
                </nav>
            </header>
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div id="wrapper" class="container">
                    <div id="barre">
                    <h3 class="text-center">Archives</h3>
                    </div>
                    <hr>
                     <div id="Uwrapper" class="container text-left">
                    <div id="left" class="container text-left">
                   
                         <a href="<%=request.getContextPath()%>/ListByNature?nature=bn" class="btn btn-success">Publique</a>
                          <br>
                      
                          <a href="<%=request.getContextPath()%>/ListByDepartement" class="btn btn-success">Par Departement</a>
                           <br>
                       
                         <a href="<%=request.getContextPath()%>/ListByNature?nature=privee" class="btn btn-success">Privée</a>
                    </div>
                    <br>
                      <div id="right">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nom</th>
                                <th>Description</th>
                                 <th>Description</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="archive" items="${listArchive}">

                                <tr>
                                    <td>
                                        <c:out value="${archive.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${archive.intitule}" />
                                    </td>
                                    <td>
                                        <c:out value="${archive.date}" />
                                    </td>
                                     <td>
                                        <c:out value="${archive.id_categorie}" />
                                    </td>
                                    <td><a href="editD?id=<c:out value='${archive.id}' />">Visualiser</a> &nbsp;&nbsp;&nbsp;&nbsp; </td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                      </div>
                    </div>
                </div>
            </div>
  </body>

</html>