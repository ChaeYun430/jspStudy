<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>sesssion input_p</title></head>
<body>
<%
	//form에서 입력 받은 값 불러오기
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("pw");
	
	//추후 데이터 베이스에서 불러올 정보
	if(user_id.equals("admin")&& user_pw.equals("1234")){
		session.setAttribute("userID", user_id);
		session.setAttribute("userPW", user_pw);
		out.println("세션 설정이 완료되었습니다.<br>");
		out.println(user_id+"님 환영합니다.");
		//현재 소스에서 user_id는 지역변수로서 접근 가능하지만 userID는 session 객체 부르고 부르길
		
	}else{
		out.println("세션 설정이 실패했습니다.");
	}
%>
		<form action = "session04.jsp" method = "post">
		<input type = "submit"	value = "userID session 삭제">
		</form>
		
		<form action = "session06.jsp" method = "post">
		<input type = "submit"	value = "session 전체 삭제">
		</form>
<%-- <%
	//요청 객체 내에 session 정보가 있다 
	//타입은 HttpSession으로 받음 //활용시 get메서드로 Object객체 받으므로 강제 타입변환
	HttpSession httpSession = request.getSession(); //생성 여부에 따라 달리 기능
	List list = (List)httpSession.getAttribute("list");
	list.add("bookId");
%> --%>
<%-- //초기값 설정으로 세션 생성
<%@ page session = "true" %>	 --%>
</body>
</html>