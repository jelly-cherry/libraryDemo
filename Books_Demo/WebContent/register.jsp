<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=2.0, user-scalable=yes">
		<!-- 若用bootstrap固定用下面的链接,bootstrap框架 -->
 <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.servletContext.contextPath }/js/jquery-1.8.2.min.js"></script>
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/register.css" />
	<script type="text/javascript">
	$("document").ready(function(){
		$("#b1").click(function(){
			var userID = $("#userID").val();
			var username = $("#username").val();
			var password = $("#password").val();
			var rePassword = $("#rePassword").val();
			var phone = $("#phone").val();
			  var telephone=/^[1]{1}[0-9]{10}/;
			if(userID==""){
				$("#userIDMsg").css({"color":"red"});
				$("#userIDMsg").text("ID不能为空");
				return false;
			}
			else{
				$("#userIDMsg").text("");
			}
		
			if(username==""){
				$("#usernameMsg").css({"color":"red"});
				$("#usernameMsg").text("用户名不能为空");
				return false;
			}
			else{
				$("#usernameMsg").text("");
			
			}
			if(password.length==0){
				$("#passwordMsg").css({"color":"red"});
				$("#passwordMsg").text("密码不能为空");
				return false;
			}
			else{
				$("#passwordMsg").text("");
			
			}
			 if(rePassword.length==0){
				$("#password2Msg").css({"color":"red"});
				$("#password2Msg").text("确认密码不能为空");
				return false;
			}
			else if(rePassword!=password){
				$("#password2Msg").css({"color":"red"});
				$("#password2Msg").text("密码与确认密码不一致");
				return false;
			}
			else{
				$("#password2Msg").text("");
			}
			 
			 if(phone.length==0){
				 $("#phoneMsg").css({"color":"red"});
				$("#phoneMsg").text("手机号不能为空");
				return false;
			 }
			 else if(!telephone.test(phone)){
				 $("#phoneMsg").css({"color":"red"});
				$("#phoneMsg").text("手机号不合法");
				return false;
			 }
			 else{
				 $("#phoneMsg").text("");
			 }
			 
		});
	});	
	</script>
<title>用户注册页面</title>

</head>
<body>
	<div id="d1">
		<img src="${pageContext.servletContext.contextPath }/css/img/2.jpg" width="100%" height="100%"></img>
			<form method="GET" action="add" id="f1" name="f1" >
			<div id="d2">
			<h2><font color="cyan">请填入注册信息:</font></h2>
				<br />
				
				<div class="input-group">
						<span class="input-group-addon" >账户号 :</span>
						<input type="text" class="form-control" id="userID" name="user_ID"/><br/>
				</div>
						<span class="tips" id="userIDMsg"></span>
					<br/>
					<div class="input-group">
						<span class="input-group-addon" >用户名 :</span>
						<input type="text" class="form-control" id="username" name="username"/><br/>
					</div>
						<span class="tips" id="usernameMsg"></span>
					<br/>
					
					<div class="input-group">
						<span class="input-group-addon" >密码 :</span> 
						<input type="password" class="form-control" id="password" name="password"/><br/>
					</div>
					<span class="tips" id="passwordMsg"><font class="font" >*6-20位字符，可由英文，数字或符号组成</font></span>
					<br/>
					
					<div class="input-group">
						<span class="input-group-addon" >确认密码 :</span> 
						<input type="password" class="form-control" id="rePassword" name="rePassword"/><br/>
					</div>
						<span class="tips"id="password2Msg"></span>
					<br/>
					
					<div class="input-group">	
						<span class="input-group-addon">手机: </span> 
						<input type="text" class="form-control" id="phone" name="phone"/><br/>
					</div>
						<span class="tips"id="phoneMsg"></span>
					<br/>
					
					<div class="input-group">	
						<span class="input-group-addon">性别 :</span> 
						<select class="form-control" id="sex" name="sex">
							<option value="男">男</option>	
							<option value="女">女</option>	
						</select>
					</div><br/>
					
					<div class="input-group">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
					<input class="btn btn-success" id="b1" name="b1" type="submit" value="注册" ></input>
					
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="reset" class="btn btn-info">重置</button>
				</div>
			</div>
		</form>
	</div>
</body>

</html>