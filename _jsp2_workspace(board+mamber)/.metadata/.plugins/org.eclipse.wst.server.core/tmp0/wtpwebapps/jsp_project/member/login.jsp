<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
  
	<h1 align="center">Join page</h1>
	<div class="container mt-3">
	<form action="/mem/login_auth" method="post">
	
  
    <div class="input-group mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text">Email : </span>
    </div>
    <input type="email" name="email" class="form-control" placeholder="abc@example.com">
  </div>
    <div class="input-group mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text">Password : </span>
    </div>
   <input type="password" name="pwd" class="form-control"><br>

  </div>
  <button type="submit">login</button>
</form>
</div>
</body>
</html>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Login Page</h1>
<form action="/mem/login_auth" method="post">
	Email : <input type="email" name="email"><br>
	Password : <input type="password" name="pwd"><br>
	<button type="submit">login</button>
</form>
</body>
</html> -->