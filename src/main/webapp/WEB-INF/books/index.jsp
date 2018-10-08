<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<%@ page import = "java.io.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>
	form{
		display: inline;
	}
</style>
<title>Books MVC</title>
</head>
<body>
	<div class="container">
		<h1>All Books</h1>
		<table class="table table-striped">
		    <thead class="thead-dark">
		        <tr>
		            <th>Title</th>
		            <th>Description</th>
		            <th>Language</th>
		            <th>Number of Pages</th>
		            <th>Actions</th>
		        </tr>
		    </thead>
		    <tbody>
		        <c:forEach items="${books}" var="book">
		        <tr>
		            <td>${book.title}</td>
		            <td>${book.description}</td>
		            <td>${book.language}</td>
		            <td>${book.numberOfPages}</td>
		            <td>
		            	<a href="books/${book.id}/edit" class="btn btn-sm btn-warning">Edit Book</a>
		            	<a href="books/"${book.id}" class="btn  btn-sm btn-primary">Show Book</a>
		            	<form action="/books/${book.id}" method="POST">
		            		<input type="hidden" name="_method" value="delete">
						    <input type="submit" value="Delete" class="btn  btn-sm btn-danger">
						</form>
		            </td>
		        </tr>
		        </c:forEach>
		    </tbody>
		</table>
		<a href="/books/new" class="btn btn-sm btn-success">New Book</a>
	</div>
</body>
</html>
