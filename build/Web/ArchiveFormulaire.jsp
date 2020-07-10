      <%@page import="model.Utilisateur"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Gestion des Archives</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>
<% 
Utilisateur user = (Utilisateur)session.getAttribute("user");    
 %>
            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    <div>
                        <a class="navbar-brand"> Gestion Archives </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="listkA" class="nav-link">Archives</a></li>
                    </ul>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${archive != null}">
                            <form action="update" method="post">
                        </c:if>
                        <c:if test="${archive == null}">
                            <form action="insertA" method="post" enctype="multipart/form-data">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${archive != null}">
                                    Edit archive
                                </c:if>
                                <c:if test="${archive == null}">
                                    Ajouter une Nouvelle Archive
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${archive != null}">
                            <input type="hidden" name="id" value="<c:out value='${archive.id}' />" />
                        </c:if>

                        <fieldset class="form-group">
                            <label>Intitule</label> <input type="text" value="<c:out value='${archive.intitule}' />" class="form-control" name="intitule" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Nature</label> 
                            <select name="nature" id="plan" class="form-control"> 
                                    <option value="Publique">Publique</option> 
                                    <option value="Departementale" selected>Departementale </option> 
                                    <option value="Privée">Privée</option> 
                            </select> 
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Categorie</label>
                             <select name="id_categorie" class="form-control" >
                                <c:forEach items="${listCategorie}" var="categorie">
                                   //Code pour modifier la valeur d'un select
                                   <option value="${categorie.id}" ${categorie.id == archive.id_categorie ? 'selected="selected"' : ''}  >${categorie.type}</option>
                                </c:forEach>
                            </select>
                        </fieldset>
                     
                        <fieldset class="form-group">
                            <label>Fichier</label> <input type="file" value="<c:out value='${archive.fichier}' />" class="form-control" name="fichier">
                        </fieldset>
                        <fieldset class="form-group">
                            <label>Fichier 2</label> <input type="file" value="<c:out value='${archive.fichier}' />" class="form-control" name="fichier2">
                        </fieldset>
                        <fieldset class="form-group">
                            <label>Fichier 3</label> <input type="file" value="<c:out value='${archive.fichier}' />" class="form-control" name="fichier3">
                        </fieldset>
                        <button type="submit" class="btn btn-success">Enregister</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>

