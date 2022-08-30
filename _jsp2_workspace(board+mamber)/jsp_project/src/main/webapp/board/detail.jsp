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

<div class="container">
  <h2>Board Detail Page</h2>
  <table class="table table-hover">
    <tr>
		<th>BNO</th>
		<td>${bvo.bno }</td>
	</tr>
	<tr>
		<th>TITLE</th>
		<td>${bvo.title }</td>
	</tr>
	<tr>
		<th>Writer</th>
		<td>${bvo.writer }</td>
	</tr>
	<tr>
		<th>Reg_date</th>
		<td>${bvo.reg_date }</td>
	</tr>
	<tr>
		<th>Content</th>
		<td>${bvo.content }</td>
	</tr>
  </table>
<a href="/brd/modify?bno=${bvo.bno }">modify</a> &nbsp;
<a href="/brd/remove?bno=${bvo.bno }">detele</a> &nbsp;
<a href="/brd/list">list</a>
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
<h1>Board Detail Page</h1>
<table border="1">
<tr>
	<th>BNO</th>
	<td>${bvo.bno }</td>
</tr>
<tr>
	<th>TITLE</th>
	<td>${bvo.title }</td>
</tr>
<tr>
	<th>Writer</th>
	<td>${bvo.writer }</td>
</tr>
<tr>
	<th>Reg_date</th>
	<td>${bvo.reg_date }</td>
</tr>
<tr>
	<th>Content</th>
	<td>${bvo.content }</td>
</tr>
</table>
<a href="/brd/modify?bno=${bvo.bno }">modify</a>
<a href="/brd/remove?bno=${bvo.bno }">detele</a>
<a href="/brd/list">list</a>
</body>
</html> --%>