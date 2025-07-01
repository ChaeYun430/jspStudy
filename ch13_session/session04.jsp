<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>sesssion removeOne</title></head>
<body>
	<%
		session.removeAttribute("userID");
	%>
	<form action = "session02.jsp" method = "post">
	<input type = "submit" value = "현재 세션 보기">
	</form>
</body>
</html>