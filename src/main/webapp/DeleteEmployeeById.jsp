<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Employee by ID</title>
    <style>
    	.container {
        background-color: #Darkgray;
        width: 50%; 
        margin: 0 auto; 
        padding: 20px;
        border: 1px solid black;
        border-radius: 5px;
    }
    #emp_id {
        width: 90%;
        margin: auto;
        padding: 10px;
        border: 1px solid black;
    }

    input[type="submit"] {
        background-color: lightpink;
        font-size: medium;
        width: 20%;
        margin: auto;
        padding: 5px;
        border: 2px solid black;
        margin-left: 40%; /* Adjusted margin-left for better alignment */
        border-radius: 5px;
        cursor: pointer; /* Added cursor pointer on hover */
    }

    input[type="submit"]:hover {
        background-color: black;
        color: white;
    }
    
    </style>
</head>
<body>
    <center><h2>Delete Employee by ID</h2></center>
   	<div class = "container">
    <form action="deleteEmployeeById" method="post">
        <label for="emp_id"><h3>Enter Employee ID:</h3></label>
        <input type="text" id="emp_id" name="emp_id"  placeholder = "Employee Id" required><br><br>
         <input type="hidden" name="action" >
        <input type="submit" value="Delete Employee">
    </form>
    <center>
		<h3><% String message = (String) request.getAttribute("message");
       if (message != null) { %>
        <p><%= message %></p>
    <% } %></h3>
    </center>
    </div>
</body>
</html>
