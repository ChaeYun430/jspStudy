<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>cookie delete</title></head>
<body>
<%
	Cookie[] cookies = request.getCookies();

	for(int i = 0; i < cookies.length;i++){
		cookies[i].setMaxAge(0);
		response.addCookie(cookies[i]);
	}
	response.sendRedirect("cookie02_process2.jsp");
%>
	
</body>
</html>