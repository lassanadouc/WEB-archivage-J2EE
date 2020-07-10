<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Gestion des Utilisateurs</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    <div>
                        <a class="navbar-brand"> Gestion Utilisateur </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="listk" class="nav-link">Utilisateurs</a></li>
                    </ul>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${user != null}">
                            <form action="update" method="post">
                        </c:if>
                        <c:if test="${user == null}">
                            <form action="insert" method="post">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${user != null}">
                                    Edit User
                                </c:if>
                                <c:if test="${user == null}">
                                    Ajouter un Nouvel Utilisateur
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${user != null}">
                            <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                        </c:if>

                        <fieldset class="form-group">
                            <label>Prenom</label> <input type="text" value="<c:out value='${user.prenom}' />" class="form-control" name="prenom" required="required">
                        </fieldset>
                         <fieldset class="form-group">
                            <label>Nom</label> <input type="text" value="<c:out value='${user.nom}' />" class="form-control" name="nom" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Login</label> <input type="text" value="<c:out value='${user.login}' />" class="form-control" name="login">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Password</label> <input type="password" value="<c:out value='${user.password}' />" class="form-control" name="password">
                        </fieldset>
                        <fieldset class="form-group">
                            <label>Role</label> <input type="text" value="<c:out value='${user.role}' />" class="form-control" name="role">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Departement</label> 
                            <select name="id_departement" class="form-control" >
                                <c:forEach items="${listDepartement}" var="departement">
                                   //Code pour modifier la valeur d'un select
                                   <option value="${departement.id}" ${departement.id == user.id_departement ? 'selected="selected"' : ''}  >${departement.nom}</option>
                                </c:forEach>
  
                            </select>
                        </fieldset>

                        <button type="submit" class="btn btn-success">Enregister</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>
