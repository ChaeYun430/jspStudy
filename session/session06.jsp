<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>sesssion removeAll</title></head>
<body>
	<%
		//세션을 종료하고 세션에 저장된 모든 세션 속성 삭제
		session.invalidate();
		if(request.isRequestedSessionIdValid()==true){
			out.println("세션이 유효합니다.");
		}else{
			out.println("세션이 유효하지 않습니댜ㅏ.");
		}
	%>
</body>
</html>