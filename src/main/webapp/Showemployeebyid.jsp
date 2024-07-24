<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show Employee by ID</title>
    <style>
    .container {
        background-color: #C3B1E1;
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
    <center><h2>Show Employee by ID</h2></center>
    <div class = "container">
    <form action="showEmployeeById" method="post">
        <label for="emp_id"><h3>Enter Employee ID:</h3></label><br>
        <input type="text" id="emp_id" name="emp_id" placeholder = "Employee Id" required><br><br>
        <input type="hidden" name="action" >
        <input type="submit" value="Show Employee">
    </form>
    <br>
    <center>
    <div id = "message">
    <% 
    com.model.Employee employee = (com.model.Employee) request.getAttribute("employee");
    if (employee != null) { %>
        <h3>Employee Details:</h3>
        <h3><p>Name: <%= employee.getName() %></p></h3>
        <h3><p>Employee ID: <%= employee.getEmp_id() %></p></h3>
        <h3><p>Email ID: <%= employee.getEmail_id() %></p></h3>
        <h3><p>Mobile Number: <%= employee.getMob_no() %></p></h3>
        <h3><p>Gender: <%= employee.getGender() %></p></h3>
        <h3><p>City: <%= employee.getCity() %></p></h3>
    <% } %>
    </div>
    </center>
    </div>
</body>
</html>
