<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.CoffeeDTO"%>
<%@ page import="dao.CoffeeDAO"%>
<%@ page import="dto.CartDTO"%>
<!DOCTYPE html><html><head>
<title>커피 정보</title>
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="../layout/menu.jsp"%>
	<div class="container py-4">
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold">원두 정보</h1>
				<p class="col-md-8 fs-4">Coffee Info</p>
			</div>
		</div>
		
		<%
		String Id = request.getParameter("id");
		CoffeeDTO coffeeDTO = CoffeeDAO.getInstance().getCoffee(Id);
		%>
		<div class="row align-items-md-stretch">
			<div class="col-md-5">
				<img src="./resources/images/<%=coffeeDTO.getFileName()%>" style="width: 70%">
			</div>
			<div class="col-md-6">
				<h3><b><%=coffeeDTO.getName()%></b></h3>
				<p><%=coffeeDTO.getDescription()%>%>
				<p><b>상품코드</b> : <span class="badge text-bg-danger"><%=coffeeDTO.getId()%></span>
					<b>원산지</b> : <%=coffeeDTO.getOrigin()%>
				<p><b>등록일</b> : <%=coffeeDTO.getReleaseDate()%>
				<p><h4><%=coffeeDTO.getUnitPrice()%>원</h4>
				<p>
				
				
				<nav>
					<div class = "btn btn-info">
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts-0" aria-expanded="false" aria-controls="collapseLayouts-0">
						 원두주문&raquo;
					</a></div>
					<a href="./product/coffees.jsp" class="btn btn-secondary">커피 목록&raquo;</a>
					<jsp:include page = "../cart/addCart.jsp" >
						<jsp:param name="productId" value = "<%=coffeeDTO.getId()%>"/>
					</jsp:include>
				</nav>
			</div>
		</div>	
	</div>
</body>
</html>