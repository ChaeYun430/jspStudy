<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
<title>cartPage</title></head>
<body>



<c:forEach var = "i" begin = "1" end = "10">
	<div class="row">
		<div class = "col">
		??
		</div>
		<div class = "col">
		<div><h3>상품명</h3></div>
		<div><a></a>선택 개수<a></a></div>
		</div>
		<div class = "col">가격</div>
	
	</div>
</c:forEach>

<button value = "더보기" onclick = ""></button>
<%@ include file="footer.jsp"%>
</body>
</html>