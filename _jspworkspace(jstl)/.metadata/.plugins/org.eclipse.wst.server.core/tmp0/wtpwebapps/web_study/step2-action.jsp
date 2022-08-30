<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Choose Action</title>
</head>
<body>
	<!-- OO님은 OO세 입니다. -->
	<!-- Choose : 다중조건 
	<c:choose>
		<c:when test= "조건">
			조건값
		</c:when>
		<c:when test= "조건">
			조건값
		</c:when>
		<c:when test= "조건">
			조건값
		</c:when>
		<c:otherwise>
			마지막 else 값
		</c:otherwise>
	</c:choose>
	
	19세이상이면 OO님은 OO세 성인입니다.
	13세이상이면 OO님은 OO세 청소년입니다.
	1~13세이상이면 OO님은 OO세 어린이입니다. 
	나머지 OO님은 OO세 아직 태어나지 않았습니다.
	-->
	<c:choose>
		<c:when test="${param.userAge >= 19 }">
			${param.userName }님은 ${param.userAge }세 성인입니다.<br>
		</c:when>
		<c:when test="${param.userAge >= 13 }">
			${param.userName }님은 ${param.userAge }세 청소년입니다.<br>
		</c:when>
		<c:when test="${param.userAge >= 1 }">
			${param.userName }님은 ${param.userAge }세 어린이입니다.<br>
		</c:when>
		<c:otherwise>
			${param.userName }님은 아직 태어나지 않았습니다.<br>
		</c:otherwise>
	</c:choose>
		
</body>
</html>