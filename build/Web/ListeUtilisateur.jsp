<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>User Management Application</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    <div>
                        <a  class="navbar-brand"> Gestion des Utilisateurs </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Utilisateurs</a></li>
                    </ul>
                </nav>
            </header>
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">Liste des Utilisateurs</h3>
                    <hr>
                    <div class="container text-left">

                        <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Ajouter un Nouvel Utilisateur</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Prenom</th>
                                <th>Nom</th>
                                <th>Login</th>
                                <th>Password</th>
                                <th>Role</th>
                                <th>Departement</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="user" items="${listUser}">

                                <tr>
                                    <td>
                                        <c:out value="${user.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.prenom}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.nom}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.login}" />
                                    </td>
                                     <td>
                                        <c:out value="${user.password}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.role}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.id_departement}" />
                                    </td>
                                    <td><a href="edit?id=<c:out value='${user.id}' />">Modifier</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${user.id}' />">Supprimer</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                </div>
            </div>
        </body>

        </html>
