<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>LengthLimit</title></head>
<script type = "text/javascript">
	function checkLogin(){
		var form = document.loginForm;
		 
		//거짓의 조건을 넣는다.
		if (form.id.value.length < 4 || form.id.value.length >12){
			alert("아이디는 4~12자 이내로 입력 가능합니다.");
			form.id.focus();
			return false;
		}else if (form.pw.value=="") {
			alert("비밀번호는 4자 이상으로 입력해야 합니다.");
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