<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>IsValueNull</title></head>
<!-- 값의 유무 -->
<script type = "text/javascript">
	function checkLogin(){
		var form = document.loginForm;
		if (form.id.value==""){
			alert("아이디를 입력하세요.");
			form.id.focus();
			return false;
		}else if (form.pw.value=="") {
			alert("비밀번호를 입력해주세요.");
			form.pw.focus();
			return false;
		}
		form.submit();
	}
</script>
<body>
<form name = "loginForm" action = "IsValueNull1.jsp" method = "post">
	<p>아이디 : <input type = "text" name = "id">
	<p>비밀번호 : <input type = "password" name = "pw">
	<p> <input type = "button" value = "전송" onclick = "checkLogin()">
</form>
</body></html>