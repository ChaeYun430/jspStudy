<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>sesssion getAll</title></head>
<body>
	<%	
		String name;
		String value;
		
		session.setAttribute(request.getParameter("name"), request.getParameter("value"));
		
		Enumeration en = session.getAttributeNames();
		int i = 0;

		//하나씩 출력
		while(en.hasMoreElements()){
			i++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			out.println("설정된 세션의 속성 이름 [" + i + "] : " + name +"<br>");
			out.println("설정된 세션의 속성 값   [" + i + "] : " + value +"<br>");
			
		}
	%>
	<form action = "session03.jsp" method = "post">
		<input type = "submit"	value = "session 정보 추가">
	</form>
	<form action = "session05.jsp" method = "post">
		<input type = "submit"	value = "session 1번 삭제">
	</form>
</body>
</html>