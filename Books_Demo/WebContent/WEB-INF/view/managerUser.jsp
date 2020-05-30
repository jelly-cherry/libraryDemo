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
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/managerSuccess.css" />
	
<title>管理员页面</title>

</head>
<body>
	<div id="d1">
		<img src="${pageContext.servletContext.contextPath }/css/img/3.jpg"
			width="100%" height="100%"></img>
		
			<div id="d2">
				<br /> <br>
				<h1><font color="grey">欢迎管理员</font></h1>
			
					<form action="${pageContext.servletContext.contextPath }/managerBook/1" method="GET">
  					<button  class="btn btn-warning btn-lg" type="submit"> <font size="5px">管理书籍信息</font></button><br/>
  					</form>
						<br/>
						<form action="${pageContext.servletContext.contextPath }/managerUsers/1" method="GET">
   						<button type="submit" class="btn btn-success btn-lg"><font size="5px">管理员工信息</font></button>
   						</form>
				</div>
	</div>
</body>
</html>