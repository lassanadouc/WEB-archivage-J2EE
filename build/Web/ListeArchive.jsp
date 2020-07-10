<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>archive Management Application</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    <div>
                        <a  class="navbar-brand"> Gestion des Archives </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/listkA" class="nav-link">Archives</a></li>
                    </ul>
                </nav>
            </header>
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">Liste des Archives</h3>
                    <hr>
                    <div class="container text-left">

                        <a href="<%=request.getContextPath()%>/newA" class="btn btn-success">Ajouter une Nouvelle Archive</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Intitule</th>
                                <th>Date</th>
                                <th>Nature</th>
                                <th>Categorie</th>
                                <th>Utilisateur</th>
                                <th>Departement</th>
                                <th>Contenu</th>
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
                                        <c:out value="${archive.nature}" />
                                    </td>
                                     <td>
                                        <c:out value="${archive.id_categorie}" />
                                    </td>
                                     <td>
                                        <c:out value="${archive.id_utilisateur}" />
                                    </td>
                                    <td>
                                        <c:out value="${archive.id_departement}" />
                                    </td>
                                 
                                    <td><a href="edit?id=<c:out value='${archive.id}' />">Visualiser</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${archive.id}' />">Supprimer</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                </div>
            </div>
        </body>

        </html>

