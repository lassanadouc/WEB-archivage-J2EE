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
                        <a class="navbar-brand"> Gestion Categorie </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="listkC" class="nav-link">Categories</a></li>
                    </ul>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${categorie != null}">
                            <form action="updateC" method="post">
                        </c:if>
                        <c:if test="${categorie == null}">
                            <form action="insertC" method="post">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${categorie != null}">
                                   Modifier Categorie
                                </c:if>
                                <c:if test="${categorie == null}">
                                    Ajouter une Nouvelle Categorie
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${categorie != null}">
                            <input type="hidden" name="id" value="<c:out value='${categorie.id}' />" />
                        </c:if>

                        <fieldset class="form-group">
                            <label>Type</label> <input type="text" value="<c:out value='${categorie.type}' />" class="form-control" name="type" required="required">
                        </fieldset>
                         <fieldset class="form-group">
                            <label>Description</label> <input type="text" value="<c:out value='${categorie.description}' />" class="form-control" name="description" required="required">
                        </fieldset>
                        <button type="submit" class="btn btn-success">Enregister</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>
