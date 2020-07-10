<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
		<h1>Admin Login</h1>
		<form action="login" method="post" id="loginForm">
			<label for="login">login:</label>
			<input name="login" size="30" />
			<br><br>
			<label for="password">Password:</label>
			<input type="password" name="password" size="30" />
			<br>${message}
			<br><br>			
			<button type="submit">Login</button>
		</form>
	</div>
</body>

</html>