<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>sesssion removeOne</title></head>
<body>
	<%
		session.removeAttribute("1번");
	%>
	<form action = "session03.jsp" method = "post">
	<input type = "submit" value = "세션 추가 후 전체 보기">
	</form>
</body>
</html>