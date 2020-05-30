<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=2.0, user-scalable=yes">
		<!-- 若用bootstrap固定用下面的链接,bootstrap框架 -->
 <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/login.css" />
	<script type="text/javascript" src="${pageContext.servletContext.contextPath }/js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$("#username").blur(function(){
			var username=$("#username").val();
			if(username==""){
				$("#error_tips1").css({"color":"red"});
				$("#error_tips1").text("用户名为空重新输入");
			}
			else{
				$("#error_tips1").text("");
			}
		});
		$("#password").blur(function(){
			var password=$("#password").val();
			if(password==""){
				$("#error_tips2").css({"color":"red"});
				$("#error_tips2").text("密码为空重新输入");
			}
			else{
				$("#error_tips2").text("");
			}
		});
		$("#b1").click(function(){
			var username=$("#username").val();
			var password=$("#password").val();
			if(username==""||password==""){
				return false;
			}
		});
	});
	
	</script>
<title>登录页面</title>
</head>
<body>
	<div id="d1">
		<img src="${pageContext.servletContext.contextPath }/css/img/6.jpg"
			width="100%" height="100%"></img>
		<form method="post" action="login" id="f1" name="f1" >
			<div id="d2">
				<br /> <br>
				<div class="input-group">
					<span class="input-group-addon">用户名 
					<!--空span标签用来后面绑定事件添加提示-->
						<br>
					</span> 
					<input type="text" class="form-control"id="username" name="username">
				</div>
				<span id="error_tips1"></span>
				<br>
				<div class="input-group">
					<span class="input-group-addon">密&nbsp;&nbsp;&nbsp;&nbsp;码
					<!--空span标签用来后面绑定事件添加提示-->
					</span> 
					<input type="password" class="form-control" id="password" name="password">
				</div>
				<span id="error_tips2"></span>
				<br />
				<div class="input-group">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input  id="b1" name="b1" type="submit"value="登录" class="btn btn-success"></input>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="register.jsp"><button type="button" class="btn btn-info">注册</button></a>
					<br /> <span id="s1"> <input type="checkbox"> 
					<font id="font1" color="cyan" size="4px">记住密码</font>
					</span> <br /> <a href="#" id="a1"><font id="font2"  size="4px">忘记密码</font></a>
				</div>
				</div>
		</form>
	</div>
</body>
</html>
