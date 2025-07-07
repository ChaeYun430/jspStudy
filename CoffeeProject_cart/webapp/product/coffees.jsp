<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.CoffeeDAO" %>
<%@ page import="dto.CoffeeDTO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>커피 원두 목록</title>
    <c:url value='/resources/css/bootstrap.min.css' var="cssPath" />
    <link href="${cssPath}" rel="stylesheet">
</head>
<body>
<%@ include file="../layout/menu.jsp"%>
<div class="container py-4">
    <div class="p-5 mb-4 bg-light rounded-3">
        <div class="container-fluid py-5">
            <h1 class="display-5 fw-bold">커피 원두 목록</h1>
            <p>다양한 산지의 커피 원두를 확인해보세요.</p>
        </div>
    </div>
    <div class="row text-center">
        <%
        List<CoffeeDTO> coffeeList = CoffeeDAO.getInstance().getAllCoffees();
                    for (CoffeeDTO coffee : coffeeList) {
        %>
        <div class="col-md-4 mb-4">
            <div class="card h-100 shadow-sm">
            	<!-- 이미지 경로 주의 톰켓이내 jsp냐 커피 목록 참고-->
                <img src="../resources/images/<%=coffee.getFileName()%>"
                     class="card-img-top" alt="<%= coffee.getName() %>"
                     style="height: 350px; object-fit: cover;">
                <div class="card-body">
                    <h5 class="card-title fw-bold"><%= coffee.getName() %></h5>
                    <p class="card-text text-muted"><%= coffee.getOrigin() %> | <%= String.format("%,d", coffee.getUnitPrice()) %>원</p>
                    <p class="card-text"><%= coffee.getDescription().length() > 60 ? coffee.getDescription().substring(0,60)+"..." : coffee.getDescription() %></p>
                    <a href="../select.cartDo?id=<%=coffee.getId()%>" class="btn btn-outline-primary">상세 정보 &raquo;</a>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>
</div>
</body>
</html>
