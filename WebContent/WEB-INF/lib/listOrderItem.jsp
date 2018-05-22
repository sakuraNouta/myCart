<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>购物车清单</title>
</head>
<body>
	<h1 align='center'>购物车</h1>
	<table class="table table-striped table-bordered table-hover">
		<tr>
			<td>商品名称</td>
			<td>单价</td>
			<td>数量</td>
			<td>小计</td>
			<td>删除</td>
		</tr>
		<c:forEach items="${ois}" var="oi">
			<tr>
				<td>${oi.product.name}</td>
				<td>${oi.product.price}</td>
				<td>${oi.num}</td>
				<td><fmt:formatNumber type="number" value="${oi.product.price*oi.num}" minFractionDigits="2" maxFractionDigits="2" /></td>
				<td><a href="DeleteOrderItem?id=${oi.product.id}">删除</a></td>
			</tr>
		</c:forEach>
		
		<c:if test="${!empty ois}">
			<tr>
				<td colspan="5" align="right">
					<a href="createOrder">生成订单</a>
				</td>
			</tr>
		</c:if>
		
	</table>
</body>
</html>