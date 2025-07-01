<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>sesssion getOne</title></head>
<body>
	<%
		//아직 톰켓이 꺼지지 않았다.. session 정보가 남아 있다!!
		String user_id = (String)session.getAttribute("userID");
		String user_pw = (String)session.getAttribute("userPW");
		
		out.println("설정된 세션의 속성값[1] :" + user_id + "<br>");
		out.println("설정된 세션의 속성값[2] :" + user_pw);
	%>
</body>
</html>