<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<%@ page import = "java.io.*,java.util.*" %>
<%@ page isErrorPage="true" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<title>Books MVC</title>
</head>
<body>
	<div class="container">
		<h1>Edit Book Form</h1>
		<div class="row">
			<div class="col-md-6">
				<form:form action="/books/${book.id}" method="PUT" modelAttribute="book">
			    <div class="form-group">
			        <form:label path="title">Title:</form:label>
			        <form:errors path="title" class="text-danger"/>
			        <form:input path="title" class="form-control"/>
			    </div>
			    
			    <div class="form-group">
			        <form:label path="description">Description: </form:label>
			        <form:errors path="description" class="text-danger"/>
			        <form:textarea path="description" class="form-control"/>
			    </div>
			    
			   <div class="form-group">
			        <form:label path="language">Language: </form:label>
			        <form:errors path="language" class="text-danger"/>
			        <form:input path="language" class="form-control"/>
			    </div>
			    
				<div class="form-group">
			        <form:label path="numberOfPages">Pages: </form:label>
			        <form:errors path="numberOfPages" class="text-danger"/>     
			        <form:input type="number" path="numberOfPages" class="form-control"/>
			    </div>    
			    
			    <input type="submit" value="Submit" class="btn btn-sm btn-primary"/>
			</form:form>    
			</div>
		</div>
	</div>
</body>
</html>
