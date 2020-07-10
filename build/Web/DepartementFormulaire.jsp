<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Gestion des Departements</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    <div>
                        <a class="navbar-brand"> Gestion Departement </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="listkD" class="nav-link">Departements</a></li>
                    </ul>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${departement != null}">
                            <form action="updateD" method="post">
                        </c:if>
                        <c:if test="${departement == null}">
                            <form action="insertD" method="post">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${departement != null}">
                                   Modifier Departement
                                </c:if>
                                <c:if test="${departement == null}">
                                    Ajouter un Nouveau Departement
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${departement != null}">
                            <input type="hidden" name="id" value="<c:out value='${departement.id}' />" />
                        </c:if>

                        <fieldset class="form-group">
                            <label>Nom</label> <input type="text" value="<c:out value='${departement.nom}' />" class="form-control" name="nom" required="required">
                        </fieldset>
                         <fieldset class="form-group">
                            <label>Description</label> <input type="text" value="<c:out value='${departement.description}' />" class="form-control" name="description" required="required">
                        </fieldset>
                        <button type="submit" class="btn btn-success">Enregister</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>
