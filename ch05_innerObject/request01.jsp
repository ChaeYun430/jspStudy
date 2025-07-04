<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>요청 http 헤더 관련 메서드(implicit Object)</title></head>
<body>
<%
	Enumeration en = request.getHeaderNames();
	while(en.hasMoreElements()){
		String headerName = (String)en.nextElement();
		String headerValue = request.getHeader(headerName);
%>
<%=headerName%> : <%=headerValue%><br>
<%
	}
%>
</body>
</html>