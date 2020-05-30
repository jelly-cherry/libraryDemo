<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人信息</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/index_work.css" />
</head>
<body>
	
		
		<table>
			<tr>
				<th colspan="2">个人信息</th>
			</tr>
			<c:forEach items="${user}" var="user">
			<tr>
				<td>ID</td>
				<td>
					<input value="${user.user_ID}" ></input>
				</td>
			</tr>
			<tr>
				<td>NAME</td>
				<td>
					<input value="${user.userName}" ></input>
				</td>
			</tr>
			<tr>
				<td>PASSWORD</td>
				<td>
				<input value="${user.password}" ></input>
				</td>
			</tr>
			<tr>
				<td>PHONE</td>
				<td>
					<input value="${user.phone}" ></input>
				</td>
			</tr>
			<tr>
				<td>SEX</td>
				<td>
						<input value="${user.sex}" ></input>
				</td>
			</tr>
			</c:forEach>
		</table>
</body>
</html>