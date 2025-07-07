<%@page import="dto.MemberDTO"%>
<%@page import="dto.OrderDTO"%>
<%@page import="dto.CartDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>addOrder</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>

	<%
	OrderDTO olDTO = (OrderDTO)request.getAttribute("olDTO");	
		MemberDTO memDTO = olDTO.getMemberDTO();
		ArrayList<CartDTO> listOfCarts = olDTO.getListOfCarts();
	%>
	<!-- key value 되도록 readonly 설정 -->
	<form action = "addOrder.orderDo">
		<div>주문번호 : <%=olDTO.getOrderNum() %></div>
		<input name = "name" type = "text" value = "<%=memDTO.getName()%>">
		<input name = "address" type = "text" value = "<%=memDTO.getAddress() %>">
		<input name = "cardNum" type = "text" value = "<%=memDTO.getCardNum()%>">
		<input name = "cvc" type = "text" value = "<%=memDTO.getCvc()%>">
		<input name = "valid" type = "text" value = "<%=memDTO.getValid()%>">
		<input name = "cardPw" type = "password" value = "<%=memDTO.getCardPw()%>">
		<div>결제 예정 금액 : <%=olDTO.getOrderNum() %></div>
		<textarea name = "request" rows="3" cols="20"></textarea>
		<div>주문일 : <%=olDTO.getPayDate()%></div>
		<input type = "submit" value = "결제하기">
		<input type = "reset" value = "초기화">
	</form>
</body>
</html>