<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="dto.CartDTO"%>
<% 
	CartDTO cartDTO = (CartDTO)request.getAttribute("cartDTO"); 
	String productId = request.getParameter("productId");
%>
<form name="addCart"
	action="./addCart.cartDo?quantity=<%=cartDTO.getQuantity()%>&productId=<%=productId%>"
	method="post">
	<div class="collapse" id="collapseLayouts-0"
		aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
		<nav class="sb-sidenav-menu-nested nav">
			<div class="card" style="width: 40rem;">
				<div class="card-body">
					<h5 class="card-title">수량을 선택해주세요</h5>
					<p><br><br>
					<h5>
						<button type="submit" formaction="./countDown.cartDo?quantity=<%=cartDTO.getQuantity()%>&id=<%=productId%>">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left-square-fill" viewBox="0 0 16 16"><path d="M16 14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2zm-4.5-6.5H5.707l2.147-2.146a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708-.708L5.707 8.5H11.5a.5.5 0 0 0 0-1" />
							</svg>
						</button>
						<%=cartDTO.getQuantity()%>
						<button type="submit" formaction="./countUp.cartDo?quantity=<%=cartDTO.getQuantity()%>&id=<%=productId%>" >
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-square-fill" viewBox="0 0 16 16"><path d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1" />
							</svg>
						</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<%
						int total = cartDTO.getQuantity() * cartDTO.getProduct().getUnitPrice();
						%>
						총액 :
						<%=total%>원
						<p><br><br>
					</h5>
					<button type="button" class="btn btn-info" data-bs-toggle="modal"
						data-bs-target="#staticBackdrop">장바구니 담기</button>
					<div class="modal fade" id="staticBackdrop"
						data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
						aria-labelledby="staticBackdropLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="staticBackdropLabel">CoffeeMarket</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">장바구니에 상품 추가가 완료되었습니다.</div>
								<div class="modal-footer">
									<button name = "button" value ="coffees" type="submit" 
										class="btn btn-secondary" data-bs-dismiss="modal">상품
										구경하기</button>
									<button name = "button" value = "cartPage" type="submit" 
										class="btn btn-primary">
										장바구니 보기
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</div>
</form>