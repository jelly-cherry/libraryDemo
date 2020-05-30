<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>更改书籍信息</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/index_work.css" />
<script type="text/javascript" src="${pageContext.servletContext.contextPath }/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
	$("#document").ready(function(){
		$("#b1").click(function(){
			var bid=$("#bid").val();
			var bookName=$("#bookName").val();
			var writer=$("#writer").val();
			var price=$("#price").val();
			if(bid==""){
				$("#error_tips1").css({"color":"red"});
				$("#error_tips1").text("ID不能为空");
				return false;
			}else{
				$("#error_tips1").text("");
			}
			if(bookName==""){
				$("#error_tips2").css({"color":"red"});
				$("#error_tips2").text("书名不能为空");
				return false;
			}else{
				$("#error_tips2").text("");
			}
			if(writer==""){
				$("#error_tips3").css({"color":"red"});
				$("#error_tips3").text("作者名不能为空");
				return false;
			}else{
				$("#error_tips3").text("");
			}
			if(bid==""){
				$("#error_tips4").css({"color":"red"});
				$("#error_tips4").text("ID不能为空");
				return false;
			}else{
				$("#error_tips4").text("");
			}
		});
		$("#bid").blur(function(){
			var bid=$("#bid").val();
			if(bid!=""){
				 $("#error_tips1").text("");
			}
		});
		$("#bookName").blur(function(){
			var bookName=$("#bookName").val();
			if(bookName!=""){
				 $("#error_tips2").text("");
			}
		});
		$("#writer").blur(function(){
			var writer=$("#writer").val();
			if(writer!=""){
				 $("#error_tips3").text("");
			}
		});
		$("#price").blur(function(){
			var price=$("#price").val();
			if(price!=""){
				 $("#error_tips4").text("");
			}
		});
	});
</script>
</head>
<body>
	<form:form action="${pageContext.servletContext.contextPath }/managerBook" method="post" modelAttribute="book">
	<input type="hidden" name="_method" value="PUT"/>
	<table>
		<tr>
			<th colspan="2">UPDATE BOOK INFORMATION</th>
		</tr>
		<tr>
			<td>ID</td>
			<td>
				<form:input path="bookID" id="bid"/>
				<span id="error_tips1"></span>
			</td>
		</tr>
			<tr>
			<td>NAME</td>
			<td>
				<form:input path="bookName" id="bookName"/>
				<span id="error_tips2"></span>
			</td>
		</tr>
			<tr>
			<td>WRITER</td>
			<td>
				<form:input path="writer" id="writer"/>
				<span id="error_tips3"></span>
			</td>
		</tr>
			<tr>
			<td>PRICE</td>
			<td>
				<form:input path="price" id="price"/>
				<span id="error_tips4"></span>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="修改" id="b1"/>
			</td>
		</tr>
	</table>
	</form:form>
</body>
</html>