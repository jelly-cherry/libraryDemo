<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>展示用户信息</title>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/index_work.css" />
<script type="text/javascript" src="${pageContext.servletContext.contextPath }/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
$(function () {
	$("#selectAll").click(function () {
		$("[name='uid']").prop("checked", $(this).prop("checked"));
	});
	
	$("#deleteMore").click(function () {
		if(confirm("确认删除吗？")){
		$("form").attr("action", $(this).attr("href")).submit();
		return false;
		}
	});
});
</script>
</head>
<body>
	<form method="post">
		
		<table>
			<tr>
				<th>
					<input type="checkbox" id="selectAll" />
				</th>
				<th>ID</th>
				<th>NAME</th>
				<th>PHONE</th>
				<th>SEX</th>
				<th>PASSWORD</th>
				<th>OPTIONS</th>
				</tr>
				<c:forEach items="${userList}" var="user">
					<tr>
						<td>
							<input type="checkbox" name="uid" value="${user.user_ID}" />
						</td>
						<td>${user.user_ID}</td>
						<td>${user.username}</td>
						<td>${user.phone}</td>
						<td>${user.sex}</td>
						<td>${user.password }</td>
						<td>
							<a href="${pageContext.servletContext.contextPath}/managerUser_D/${user.user_ID}">删除</a>
							<a href="${pageContext.servletContext.contextPath}/managerUser/${user.user_ID}">修改</a>
						</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="10"><!-- colspan合并列，合并所有列只要从colspan的值大于最大列数 -->
						<a id="deleteMore" href="${pageContext.servletContext.contextPath}/managerUsers">批量删除</a>
						&nbsp;&nbsp;${page }
					</td>
				</tr>
		</table>
	</form>
</body>
</html>