<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改用户页面</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/index_work.css" />
<script type="text/javascript" src="${pageContext.servletContext.contextPath }/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
		$("document").ready(function(){
			
			$("#b1").click(function(){
				var uid=$("#uid").val();
				var username=$("#username").val();
				var password=$("#password").val();
				var phone=$("#phone").val();
				 var telephone=/^[1]{1}[0-9]{10}/;
				if(uid==""){
					$("#error_tips1").css({"color":"red"});
					$("#error_tips1").text("ID不能为空");
					return false;
				}
				else{
					$("#error_tips1").text("");
				}
				if(username==""){
					$("#error_tips2").css({"color":"red"});
					$("#error_tips2").text("用户名不能为空");
					return false;
				}
				else{
					$("#error_tips2").text("");
				}
				if(password==""){
					$("#error_tips3").css({"color":"red"});
					$("#error_tips3").text("密码不能为空");
					return false;
				}
				else{
					$("#error_tips3").text("");
				}
				 if(phone.length==0){
					 $("#error_tips4").css({"color":"red"});
					$("#error_tips4").text("手机号不能为空");
					return false;
				 }
				 else{
					 $("#error_tips4").text("");
				 }
			});
			$("#uid").blur(function(){
				var uid=$("#uid").val();
				if(uid!=""){
					 $("#error_tips1").text("");
				}
			});
			$("#username").blur(function(){
				var username=$("#username").val();
				if(username!=""){
					 $("#error_tips2").text("");
				}
			});
			$("#password").blur(function(){
				var password=$("#password").val();
				if(password!=""){
					 $("#error_tips3").text("");
				}
			});
			$("#phone").blur(function(){
				var phone=$("#phone").val();
				if(phone!=""){
					 $("#error_tips4").text("");
				}
			});
		});
</script>
</head>
<body>
	<form:form action="${pageContext.servletContext.contextPath }/managerUser" method="post" modelAttribute="user" >
		<input type="hidden" name="_method" value="PUT" />
		<table>
			<tr>
				<th colspan="2">UPDATE EMP INFO</th>
			</tr>
			<tr>
				<td>ID</td>
				<td>
					<form:input path="user_ID" id="uid"/>
					<span id="error_tips1"></span>
				</td>
			</tr>
			<tr>
				<td>NAME</td>
				<td>
					<form:input path="username" id="username"/>
					<span id="error_tips2"></span>
				</td>
			</tr>
			<tr>
				<td>PASSWORD</td>
				<td>
					<form:input path="password" id="password"/>
					<span id="error_tips3"></span>
				</td>
			</tr>
			<tr>
				<td>PHONE</td>
				<td>
					<form:input path="phone" id="phone"/>
					<span id="error_tips4"></span>
				</td>
			</tr>
			<tr>
				<td>SEX</td>
				<td>
					<form:radiobuttons path="sex" items="${sex }"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="修改"  id="b1"/>
				</td>
			</tr>
		</table>
	</form:form>
</body>
</html>