<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>List of users</title>
</head>
<body>
	<center>
		<h1>Liste des utilisateurs</h1>
       
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Liste des utilisateurs</h2></caption>
            <tr>
                <th>ID</th>
                <th>Login</th>
                <th>Password</th>
                <th>Fullname</th>
               
            </tr>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.login}" /></td>
                    <td><c:out value="${user.password}" /></td>
                    <td><c:out value="${user.fullname}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
