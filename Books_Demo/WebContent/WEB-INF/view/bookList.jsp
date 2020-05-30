<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>展示书籍信息</title>
</head>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/index_work.css" />
<script type="text/javascript" src="${pageContext.servletContext.contextPath }/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#selectAll").click(function(){
			$("[name='bid']").prop("checked",$(this).prop("checked"));
		});
		
		$("#deleteMore").click(function(){
			if(confirm("确认删除吗？")){
				$("form").attr("action",$(this).attr("href")).submit();
				return false;
			}
		});
	});
</script>
<body>
	<form method="POST">
	
		<table>
			<tr>
				<th><input type="checkbox" id="selectAll"/></th>
				<th>ID</th>
				<th>BOOkNANME</th>
				<th>WRITER</th>	
				<th>PRICE</th>
				<th>OPTION(<a href="${pageContext.servletContext.contextPath}/addBook">添加</a>)</th>
			</tr>
			<c:forEach items="${bookList}" var="book">
				<tr>
					<td>
						<input type="checkbox" name="bid" value="${book.bookID }"/>
					</td>
					<td>${book.bookID }</td>
					<td>${book.bookName }</td>
					<td>${book.writer }</td>
					<td>${book.price }</td>
					<td>
					
					<a href="${pageContext.servletContext.contextPath}/managerBook_D/${book.bookID}">删除</a>
					<a href="${pageContext.servletContext.contextPath}/managerBook_U/${book.bookID}">修改</a> 
					</td>
				</tr>
				</c:forEach >
				<tr>
					<td colspan="9">
						<a id="deleteMore" href="${pageContext.servletContext.contextPath}/managerBook_D">批量删除</a>
						&nbsp;&nbsp;${page}
					</td>
				</tr>
		</table>
	</form>
</body>
</html>