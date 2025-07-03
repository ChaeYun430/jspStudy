<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>MVC</title></head>
<body>
		<form method = "post" action = "ControllerServlet">
		<p>아이디 : <input type = "text" name = "id">
		<p>비밀번호 : <input type = "text" name = "pw">
		<p>이름 : <input type = "text" name = "name">
		<p> <input type = "submit" value = "보내기">
		</form>
		<!-- 
		1. sql파일로 테이블 등의 기본 세팅
		2. 메뉴에 항목 삽입
		3. web.wml파일에 서블릿 구성하기
		4. 데이터 베이스 연결
		5. dto만들기
		6 . 각 crud별 CMV작성하기
 		-->
</body>
</html>