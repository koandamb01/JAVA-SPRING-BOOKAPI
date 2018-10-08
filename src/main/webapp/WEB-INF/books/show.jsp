<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<%@ page import = "java.io.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<title>Books MVC</title>
</head>
<body>
	<div class="container">
		<h1>Book Detail</h1>
		<div class="row">
			<div class="col-md-6">
				<ul class="list-group">
				  <li class="list-group-item d-flex justify-content-between align-items-center">
				    Title:<span class="badge badge-pill">${book.title}</span>
				  </li>
				  <li class="list-group-item d-flex justify-content-between align-items-center">
				    Description: <span class="badge badge-pill">${book.description}</span>
				  </li>
				  <li class="list-group-item d-flex justify-content-between align-items-center">
				    Language: <span class="badge badge-pill">${book.language}</span>
				  </li>
				  <li class="list-group-item d-flex justify-content-between align-items-center">
				    Number of Pages:<span class="badge badge-pill">${book.numberOfPages}</span>
				  </li>
				</ul>
			</div>
		</div>
		<br>
		<a href="/books" class="btn btn-sm btn-primary">Go Back</a>
	</div>
</body>
</html>
