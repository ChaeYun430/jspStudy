<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>JSTL DELETE</title></head>
<body>
	<% 
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	%>
	<sql:setDataSource var = "dataSource" url = "jdbc:mysql://192.168.111.102:3306/bookmarketdb" driver ="com.mysql.jdbc.Driver" user = "JSPBook" password = "jsp1234"/>
	
	<sql:update var = "resultSet" dataSource = "${dataSource}">
		DELETE FROM MEMBER WHERE ID = ? AND PASSWORD = ?
		<sql:param value = "<%=id %>"/>
		<sql:param value = "<%=pw %>"/>
	</sql:update>
	<c:import var = "url" url="sql01.jsp" />
	${url}
</body>
</html>