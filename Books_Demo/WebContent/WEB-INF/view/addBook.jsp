<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/addBook.css" />
<meta charset="UTF-8">
<title>添加书籍页面</title>
</head>
<body>
	<div id="d1">
	<form action="managerBook" method="POST">
		<img src="${pageContext.servletContext.contextPath }/css/img/2.jpg" width="100%" height="100%"></img>
		<div id="d2">
			<div class="input-group">
					<span class="input-group-addon" >ID</span>
					<input type="text" class="form-control" id="ID" name="bookID"/><br/></div>
					<label class="label" id="bookIDMsg"><font class="font"></font></label>
				<br/>
		
			<div class="input-group">
					<span class="input-group-addon" >NAME</span>
					<input type="text" class="form-control" id="name" name="bookName"/><br/></div>
					<label class="label" id="bookNameMsg"><font class="font"></font></label>
				<br/>
	
			<div class="input-group">
					<span class="input-group-addon" >WRITER</span>
					<input type="text" class="form-control" id="writer" name="writer"/><br/></div>
					<label class="label" id="writerMsg"><font class="font"></font></label>
				<br/>
	
			<div class="input-group">
					<span class="input-group-addon" >PRICE</span>
					<input type="text" class="form-control" id="price" name="price"/><br/></div>
					<label class="label" id="priceMsg"><font class="font"></font></label>
				<br/>
		
			<div class="input-group">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
					<input class="btn btn-success" id="b1" name="b1" type="submit" value="添加" ></input>
					
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="reset" class="btn btn-info">重置</button>
				</div>
				</div>
				</form>
</div>
</body>
</html>