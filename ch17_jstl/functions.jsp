<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>join & split</title></head>
<body>
	<c:set var ="texts" value = "${fn:split('Hello, JAVA Server Pages!','')}"/>
	<c:forEach var="i" begin = "0" end = "${fn:length(texts)-1}">
		<p>text[$]
</body>
</html>