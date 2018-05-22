<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>product</title>
<script>
var i = 0;
</script>
</head>
<body>

<c:if test="${!empty user}">
	<div class="bg-info" style="width:150px;float:left;display:inline">
		<h4>当前用户:${user.name}</h4>
	</div>
</c:if>

<table class="table table-striped table-bordered table-hover">
	<tr>
		<td>id</td>
		<td>名称</td>
		<td>价格</td>
		<td>购买</td>
	</tr>
	
	<c:forEach items="${cs}" var="category">
		<tr><td>${category.name}<td></tr>
		<c:forEach items="${ps}" var="product">
		<c:if test="${product.cid == category.id }">
			<tr>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.price}</td>
				<td>
					<form class="form-inline" action="addOrderItem" method="post">
						数量
						<div class="input-group">
							
	<script>
	/* 为每一行的数量框设置id(str),并且为点击事件传入此id */
		if(i < 10) {
			i = "0" + i;
		}
		var str = "num" + i;
		/* &quot;是"双引号 */
		document.write('<input class="form-control" id="'+str+'" name="num" style="width:120px" type="text" value="1">');
		document.write('<span class="input-group-addon" id="addon1" onclick="add(&quot;'+str+'&quot;)">+</span>');
		document.write('<span class="input-group-addon" id="addon2" onclick="minus(&quot;'+str+'&quot;)">-</span>');
		var i = parseInt(i) + 1;
	</script>
							<!-- 为每一行的数量框设置id -->
							<!-- <input class="form-control" id="num" style="width:120px" type="text" value="1"> 
							<span class="input-group-addon" id="addon1" onclick="add(str)">+</span>
							<span class="input-group-addon" id="addon2" onclick="minus(str)">-</span> -->
						</div>
						<input class="form-control" type="hidden" name="pid" value="${product.id}">
						<input class="btn btn-primary" type="submit" value="购买">
					</form>
				</td>
			</tr>
			</c:if>
		</c:forEach>
	</c:forEach>

</table>

<script>
function add(str){
	var num = document.getElementById(str);
	num.value = (parseInt(num.value) + 1).toString();
}
function minus(str){
	var num = document.getElementById(str);
	if(num.value > 0) {
		num.value = (parseInt(num.value) - 1).toString();
	}
} 
</script>


</body>
</html>