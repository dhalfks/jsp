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
  
	<h1 align="center">Board Modify page</h1>
	<div class="container mt-3">
	<form action="/brd/update" method="post">
	
  <div class="input-group mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text">Bno : </span>
    </div>
    <input type="text" class="form-control" name="bno" value="${bvo.bno }" readonly>
  </div>
    <div class="input-group mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text">Title : </span>
    </div>
    <input type="text" class="form-control" name="title" value="${bvo.title }">
  </div>
    <div class="input-group mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text">Writer : </span>
    </div>
    <input type="text" class="form-control" name="writer" value="${bvo.writer }" readonly disabled="disabled">
  </div>
    <div class="input-group mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text">Content : </span>
    </div>
   <textarea class="form-control" rows="3" cols="30" name="content">${bvo.content }</textarea><br>

  </div>
  <button type="submit">수정</button>
</form>
</div>
</body>
</html>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Board Modify Page</h1>
<form action="/brd/update" method="post">
Bno : <input type="text" name="bno" value="${bvo.bno }" readonly><br>
Title : <input type="text" name="title" value="${bvo.title }"><br>
Writer : <input type="text" name="writer" value="${bvo.writer }" readonly><br>
Content : <textarea rows="3" cols="30" name="content">${bvo.content }</textarea><br>
<button type="submit">modify</button>
</form>
</body>
</html> --%>