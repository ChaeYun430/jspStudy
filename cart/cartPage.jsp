<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>cartPage</title></head>
<body>
<%@ include file="menu.jsp"%>	


<c:forEach var = "i" begin = "1" end = "10">
	<div>
		<div class = "col">
		<image url = "">
		</div>
		<div class = "col">
		<div class = "row"><h3>상품명</h3></div>
		<div class = "row"><a></a>선택 개수<a></a></div>
		</div>
		<div class = "col">가격</div>
	
	</div>
</c:forEach>

<button value = "더보기" onclick = ""></button>
<%@ include file="footer.jsp"%>
</body>
</html>