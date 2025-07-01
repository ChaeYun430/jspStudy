<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>cookie create</title></head>
<body>
<%
	//form에서 입력 받은 값 불러오기
	String user_name = request.getParameter("name");
	String user_value = request.getParameter("value");
	
	//Cookie클래스로 객체 생성
	Cookie cookie = new Cookie(user_name, user_value);
	//응답 객체에 cookie 넣기
	response.addCookie(cookie);
	out.println("쿠키 생성이 완료되었습니다.<br>");
%>
	
</body>
</html>