<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>IsValueNum</title></head>
<!-- 영문 소문자 -->
<script type = "text/javascript">
	function checkNum(){
		if(!(event.keyCode>=48 && event.keyCode<=57)){
			alert("숫자만 입력 가능합니다.");
			event.returnValue = false;
			//입력받은 키 값의 반환 여부를 설정
		}
	}
	function checkLarge(){
		if(!(event.keyCode>=65 && event.keyCode<=90)){
			alert("영문 대문자만 입력 가능합니다.");
			event.returnValue = false;
		}
	}
	function checkSmall(){
		if(!(event.keyCode>=97 && event.keyCode<=122)){
			alert("영문 소문자만 입력 가능합니다.");
			event.returnValue = false;
		}
	}
	function checkSpecial(){
		if(!((event.keyCode>=33 && event.keyCode<=47)
				&&(event.keyCode>=58 && event.keyCode<=64)
				&&(event.keyCode>=91 && event.keyCode<=96)
				&&(event.keyCode>=123 && event.keyCode<=126))){
			alert("특수문자만 입력 가능합니다.");
			event.returnValue = false;
		}
	}
	function checkKorean(){
		if(!(event.keyCode>=12592 && event.keyCode<=12687)){
			alert("한글만 입력 가능합니다.");
			event.returnValue = false;
		}
	}
	function checkLogin(){
		var form = document.loginForm;
		
		for(i = 0; i<form.id.value.length; i++){
			var ch = form.id.value.charAt(i);
			
			if (!((ch<'a'||ch>'z')&&(ch>'A'||ch<'Z')&&(ch>'0'||ch>'9'))) {
				alert("아이디는 영문 소문자만 입력 가능합니다.");
				form.id.select();
				return;
			}
		}
	
		if (isNaN(form.pw.value)) {
			alert("비밀번호는 숫자만 입력 가능합니다.");
			form.pw.select();
			return;
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