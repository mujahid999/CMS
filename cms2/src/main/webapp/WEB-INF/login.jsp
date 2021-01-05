<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<%@page import="BeanClass.BeanStudent"%>
<html>
<head>
<title>Login Page</title>

<link rel ="stylesheet" href="CssMin.css" type ="text/css">

<script src ="BootStapMin.js"></script>
<style>
 
form {
  border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #483D8B;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

/* Add a hover effect for buttons */
button:hover {
  opacity: 0.8;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the avatar image inside this container */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

/* Avatar image */
img.avatar {
  width: 40%;
  border-radius: 50%;
}

/* Add padding to containers */
.container {
  padding: 16px;
}

/* The "Forgot password" text */
span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
    display: block;
    float: none;
  }
  .cancelbtn {
    width: 100%;
  }


</style>

</head>

<body>

<%
	String name =request.getParameter("name");
    String password =request .getParameter("password");


if(name !=null && password !=null){

BeanClass.BeanStudent bean =model.DBManager.getStudent(name,password);


if(bean ==null)
	request.setAttribute("error","helllo");
   

else if(bean.getStdName().equals(name) && bean.getPassword().equals(password)){
	
	session.setAttribute("student", bean);
	response.sendRedirect("Welcome");



	
}
}
%>


<form action="">

  <c:if test ="${requestScope.error != null}">
       
    <h4 style="color:red">Failed To Login</h4>
    
    </c:if>
    
    <c:if test ="${param.logout != null }">
     
     <h4 style="color:red">Logout SuccessFul</h4>
    
    </c:if>
    
   
  

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="name" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

 
</form>

<a href ="registration">Registration</a>

</body>

</html>