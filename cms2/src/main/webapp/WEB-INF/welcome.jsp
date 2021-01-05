<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ page import="BeanClass.BeanStudent"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
	font-family: "Lato", sans-serif;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #483D8B;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: right;
	padding: 14px 16px;
	text-decoration: none;
	margin: 23px;
}

li a:hover {
	background-color: #111;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

#header {
	color: #1abc9c;
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	padding: 16px;
	background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=number] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	input-border: #8b8a8b;
	background: #f1f1f1;
}

select {
	width: 50%;
	padding: 16px 20px;
	border: none;
	border-radius: px;
	background-color: #f1f1f1;
}

textarea {
	width: 100%;
	height: 150px;
	padding: 12px 20px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	background-color: #f8f8f8;
	resize: none;
}

/* ////////////////////////////////// */
.upload-btn-wrapper {
	position: relative;
	overflow: hidden;
	display: inline-block;
}

.btn {
	border: 2px solid gray;
	color: gray;
	background-color: white;
	padding: 8px 20px;
	border-radius: 8px;
	font-size: 20px;
	font-weight: bold;
}

.upload-btn-wrapper input[type=file] {
	font-size: 100px;
	position: absolute;
	left: 0;
	top: 0;
	opacity: 0;
}

/* ///////////////////////// */
input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
	background-color: #483D8B;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}

/* Add a blue text color to links */
a {
	color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
	background-color: #f1f1f1;
	text-align: center;
}
</style>
</head>
<body>




	<ul>
		<li><a href="#home">Home</a></li>
		<li><a href="#news">News</a></li>
		<li><a href="#contact">Contact</a></li>
		<li><a href="#about">About</a></li>
	</ul>



	<form action="InsertCompla" method="Get" enctype ="multipart/form-data">
		<div class="container">
			<h1 id="header">Complain Form</h1>
			<p>Please fill complaint.</p>
			<hr>






			

			<label for="category"><b>Category</b></label><br> <select>
			
			<c:forEach var="bean" items="${arr}">

				<option vlaue ="${bean.category}">  ${bean.category}</option>
			
			</c:forEach>
			
			</select><br> <br>

			<textarea name="comment" form="usrform">Enter text here...</textarea>
			<br> <br>

			<div class="upload-btn-wrapper">
				<button class="btn">Upload a file</button>
				<input type="file" name="myfile" />
			</div>

			<button type="submit" class="registerbtn">Submit</button>
		</div>

		<div class="container signin">
			<a href="#">Message</a>.
			</p>
		</div>
	</form>







</body>
</hhtml>