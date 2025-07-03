<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>JSTL UPDATE</title></head>
<body>
	<form method = "post" action = "sql03_process.jsp">
		<p>아이디 : <input type = "text" name = "id">
		<p>비밀번호 : <input type = "text" name = "pw">
		<p>이름 : <input type = "text" name = "name">
		<p> <input type = "submit" value = "전송">
		</form>
</body>
</html>