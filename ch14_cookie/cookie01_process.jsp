<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>cookie create</title></head>
<body>
<%
	//form에서 입력 받은 값 불러오기
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("pw");
	
	//추후 데이터 베이스에서 불러올 정보
	if(user_id.equals("admin")&& user_pw.equals("1234")){
		//Cookie클래스로 객체 생성
		Cookie cookie_id = new Cookie("userID", user_id);
		Cookie cookie_pw = new Cookie("userPW", user_pw);
		//응답 객체에 cookie 넣기
		response.addCookie(cookie_id);
		response.addCookie(cookie_pw);
		
		out.println("쿠키 생성이 완료되었습니다.<br>");
		out.println(user_id+"님 환영합니다.");
	}else{
		out.println("쿠키 생성에 실패했습니다.");
	}
%>

</body>
</html>