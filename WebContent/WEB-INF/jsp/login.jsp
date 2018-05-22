<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Welcome</title>
<style>
	form {
		width:300px;
		height:100px;
		position:absolute;
		left:0;
		top:0;
		right:0;
		bottom:100px;
		margin:auto;
	}
</style>
</head>
<body>
	<form action="userLogin" method="post">
		用户名:<input class="form-control" type="text" name="name" style="width:300px">
		密码:<input class="form-control" type="password" name="password" style="width:300px">
		<input class="btn btn-primary" type="submit" value="登陆">
	</form>
</body>
</html>