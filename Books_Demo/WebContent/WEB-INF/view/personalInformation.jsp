<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人信息</title>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/successUser.css" />
 <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="${pageContext.servletContext.contextPath }/css/successLogin.css" rel="stylesheet" type="text/css" media="screen" />
	
</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			<h1><font color="cyan">欢迎来到图书管理网站</font> </h1>	
		</div>
	</div>
	</div>
	
	<!-- end #header -->
	<div id="menu">
		<ul>
			<li class="current_page_item">
			<a href="${pageContext.servletContext.contextPath }/borrowBook/1">查看可借阅书籍</a>
			</li>
			<li><a href="${pageContext.servletContext.contextPath }/borrowBook">已订阅的书籍</a></li>
			<li><a href="${pageContext.servletContext.contextPath }/personalInformation">个人信息</a></li>
			<li><a href="${pageContext.servletContext.contextPath }/aboutUs">关于我们</a></li>
		</ul>
	</div>
	
		<div id="page">
			<div id="page-bgtop">
				<div id="content">
					<table width="960px">
					<tr>
					<th colspan="10"><font size="5px" >个人信息</font></th>
					</tr>
					<tr>
						<td>用户ID</td>
						<td>${user.user_ID}</td>
					</tr>
					<tr>
						<td>用户名</td>
						<td>${user.username}</td>
					</tr>
					<tr>
						<td>手机号</td>
						<td>${user.phone}</td>
					</tr>
					<tr>
						<td>性别</td>
						<td>${user.sex}</td>
					</tr>
					</table>
				</div>	
			</div>
		</div>
	</div>
</body>
</html>