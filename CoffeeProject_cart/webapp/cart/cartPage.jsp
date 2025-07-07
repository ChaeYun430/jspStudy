<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "dto.CartDTO" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
<c:url value='/resources/css/bootstrap.min.css' var="cssPath" />
<link href="${cssPath}" rel="stylesheet">
<title>cartPage</title></head>
<body>
<%
	ArrayList<CartDTO> listCartDTOs = (ArrayList<CartDTO>)request.getAttribute("listCartDTOs");	
%>
<%@ include file="../layout/menu.jsp"%>
<div class="container py-4">
    <div class="p-5 mb-4 bg-light rounded-3">
        <div class="container-fluid py-5">
            <h1 class="display-5 fw-bold">장바구니 목록</h1>
            <p>다양한 산지의 커피 원두를 확인해보세요.</p>
        </div>
    </div>
		<% int orderPrice = 0;
		if(!listCartDTOs.isEmpty()){
			for(int i = 0; i < listCartDTOs.size(); i++){
			CartDTO cartDTO = listCartDTOs.get(i); %>
			<form>
			<div class="row">
				<div class = "col"> <img src="resources/images/<%=cartDTO.getProduct().getFileName()%>"
                     class="card-img-top" alt="<%=cartDTO.getProduct().getFileName() %>"
                     style="height: 100px; object-fit: contain;"></div>
					<div class = "col">
						<div><h5><%=cartDTO.getProduct().getName() %></h5></div>
						<p>
						<div>
						<button name = "upDown" value = "down" type="submit" formaction="./updateQuantity.cartDo?productId=<%=cartDTO.getProduct().getId()%>">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left-square-fill" viewBox="0 0 16 16"><path d="M16 14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2zm-4.5-6.5H5.707l2.147-2.146a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708-.708L5.707 8.5H11.5a.5.5 0 0 0 0-1" />
							</svg>
						</button>
						<%=cartDTO.getQuantity()%>
						<button name = "upDown" value = "up" type="submit" formaction="./updateQuantity.cartDo?productId=<%=cartDTO.getProduct().getId()%>">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-square-fill" viewBox="0 0 16 16"><path d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1" />
							</svg>
						</button>
						</div>
					</div>
				<div class = "col">상품 총액 : <%=cartDTO.getTotalPrice() %>
				<div class="float-lg-end"><button type="submit" class="btn-close" formaction = "./deleteCart.cartDo?productId=<%=cartDTO.getProduct().getId()%>"></button></div>
				</div>
			<% orderPrice = orderPrice + cartDTO.getQuantity() * cartDTO.getTotalPrice();%>
			</div><br><%} %></form>
		
		<hr>
		<div class="float-lg-end">결제 총액 : <%=orderPrice %>
<!-- 더보기 또는 페이지네이션 -->
		<button type="submit" formaction="addOrder.orderDo" class="btn btn-primary">결제하기</button>
		<%} %>
		</div>
	</div>
</body>
</html>