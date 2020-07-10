<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bookshop Website</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script type="text/javascript" 
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
</head>
<body>
	<div style="text-align: center">
		<h1>Insert User</h1>
		<form action="insert" method="post" id="loginForm">
			<label for="login">login:</label>
			<input name="login" size="30" />
			<br><br>
			<label for="password">Password:</label>
			<input type="password" name="password" size="30" />
                        <label for="fullname">Fullname:</label>
			<input  name="Fullname" size="30" />
                        <br><br>
                        <label style="margin-right: 150px;" for="departement">Departement</label>
                        <select name="id_cat"style="width:250px;">
                    <option value="-1"> Choisissez le departement</option>
         
                    <%  String message;
                        try {
                       
            String sql = "select * from departement";
          Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/archive","root","Root@1995");
            Statement statement =conn.createStatement();
            ResultSet rs=statement.executeQuery(sql);
            while(rs.next()) {
                %>
                  <option value="<%=rs.getInt("id")%>"><%=rs.getString("nom")%></option>
                 <%
            }
           
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        }%>
                        </select>
			<br>${message}
			<br><br>			
			<button type="submit">Insert</button>
		</form>
	</div>
</body>

</html>