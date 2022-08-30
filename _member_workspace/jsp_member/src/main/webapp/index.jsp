<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
<h1>Login Index Page</h1>

<form action="/mem/login" method="post">
id : <input type="text" name="id">
password: <input type="text" name="password">
<button type="submit">login</button>
</form>

<!-- 로그인 연결시 if ne(같지않다) eq(같다) -->
<c:if test="${ses.id ne null }">  
hello!! ${ses.id } login <br>
Your email is ${ses.email }<br>
Your age is ${ses.age }<br>
<a href="/mem/logout">logout</a>
</c:if>

<a href="/mem/join">join</a>
<a href="/mem/list">Member List</a>

<script>
const msg_login = '<c:out value="${msg_login}"/>';
if(msg_login === '0'){
	alert('로그인 실패!');
}
</script>





</body>
</html>