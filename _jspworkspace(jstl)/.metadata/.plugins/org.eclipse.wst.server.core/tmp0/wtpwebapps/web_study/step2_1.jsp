<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 기존 방식에서는 넘어오는 parameter 값이 문자열로 인식.
		30+1 => 나이(문자열)+1 추가됨. 301세 출력 -->
	1. 스클립틀릿 방식으로 파라미터 처리<br>
	<%=request.getParameter("nick") %><br>
	<%=request.getParameter("age")+1 %>세<br>
	
	<hr>
	<!-- EL방식은 내부적으로 형변환하여(Integer.parseInt())연산이 됨.
		30+1 => 나이(숫자)+1, 31세 출력 -->
	2. EL 방식으로 파라미터 처리<br>
	${param.nick }<br>
	${param.age+1 }세<br>
	
	<hr>
	<form action="step2_2.jsp">
		<input type="checkbox" name="food" value="삼겹살"> 삼겹살 <br>
		<input type="checkbox" name="food" value="참이슬"> 참이슬 <br>
		<input type="submit" value="전송">
	</form>
	
	
</body>
</html>