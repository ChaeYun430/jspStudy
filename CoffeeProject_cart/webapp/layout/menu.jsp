<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String sessionId = (String) session.getAttribute("sessionId");
%>
<header class="pb-3 mb-4 border-bottom">
	<div class="container ">
		<div
			class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
			<a href="./welcome.jsp"	class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cup-hot-fill" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M.5 6a.5.5 0 0 0-.488.608l1.652 7.434A2.5 2.5 0 0 0 4.104 16h5.792a2.5 2.5 0 0 0 2.44-1.958l.131-.59a3 3 0 0 0 1.3-5.854l.221-.99A.5.5 0 0 0 13.5 6zM13 12.5a2 2 0 0 1-.316-.025l.867-3.898A2.001 2.001 0 0 1 13 12.5"/>
  <path d="m4.4.8-.003.004-.014.019a4 4 0 0 0-.204.31 2 2 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.6.6 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3 3 0 0 1-.202.388 5 5 0 0 1-.253.382l-.018.025-.005.008-.002.002A.5.5 0 0 1 3.6 4.2l.003-.004.014-.019a4 4 0 0 0 .204-.31 2 2 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.6.6 0 0 0-.09-.252A4 4 0 0 0 3.6 2.8l-.01-.012a5 5 0 0 1-.37-.543A1.53 1.53 0 0 1 3 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a6 6 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 4.4.8m3 0-.003.004-.014.019a4 4 0 0 0-.204.31 2 2 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.6.6 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3 3 0 0 1-.202.388 5 5 0 0 1-.253.382l-.018.025-.005.008-.002.002A.5.5 0 0 1 6.6 4.2l.003-.004.014-.019a4 4 0 0 0 .204-.31 2 2 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.6.6 0 0 0-.09-.252A4 4 0 0 0 6.6 2.8l-.01-.012a5 5 0 0 1-.37-.543A1.53 1.53 0 0 1 6 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a6 6 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 7.4.8m3 0-.003.004-.014.019a4 4 0 0 0-.204.31 2 2 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.6.6 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3 3 0 0 1-.202.388 5 5 0 0 1-.252.382l-.019.025-.005.008-.002.002A.5.5 0 0 1 9.6 4.2l.003-.004.014-.019a4 4 0 0 0 .204-.31 2 2 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.6.6 0 0 0-.09-.252A4 4 0 0 0 9.6 2.8l-.01-.012a5 5 0 0 1-.37-.543A1.53 1.53 0 0 1 9 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a6 6 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 10.4.8"/>
</svg>
				<span class="fs-4">Home</span>
			</a>

			<ul class="nav nav-pills">
				<c:choose>
					<c:when test="${empty sessionId}">
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="/member/loginMember.jsp"/>">로그인 </a></li>
						<li class="nav-item"><a class="nav-link"
							href='<c:url value="/member/addMember.jsp"/>'>회원 가입</a></li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px">[<%=sessionId%>님]
						</li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="/member/logoutMember.jsp"/>">로그아웃 </a></li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="/member/updateMember.jsp"/>">회원 수정</a></li>
					</c:otherwise>
				</c:choose>
				<li class="nav-item"><a href="<c:url value="/coffees.jsp"/>"	class="nav-link">커피 목록</a></li>
				<li class="nav-item"><a href="<c:url value="/addcoffee.jsp"/>" class="nav-link">커피 등록</a></li>
				<li class="nav-item"><a	href="<c:url value="/editcoffee.jsp?edit=update"/>" class="nav-link">커피	수정</a></li>
				<li class="nav-item"><a	href="<c:url value="/editcoffee.jsp?edit=delete"/>" class="nav-link">커피	삭제</a></li>
				<li class="nav-item"><a href="<c:url value="/cart.jsp"/>" class="nav-link">장바구니</a></li>
				<li class="nav-item"><a	href="<c:url value ="/BoardListAction.do?pageNum=1"/>" class="nav-link">게시판</a></li>
			</ul>
		</div>
	</div>
</header>