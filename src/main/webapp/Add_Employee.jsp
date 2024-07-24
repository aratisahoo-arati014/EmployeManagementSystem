<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
        background-color: #DarkGray;
        width: 50%; 
        margin: 0 auto; 
        padding: 20px;
        border: 1px solid black;
        border-radius: 5px;
}
#text{
        width: 90%;
        margin: auto;
        padding: 10px;
        border: 1px solid black;
}
input[type="submit"]{
        background-color: lightpink;
        font-size: medium;
        width: 20%;
        margin: auto;
        padding: 5px;
        border: 2px solid black;
        margin-left: 40%; /* Adjusted margin-left for better alignment */
        border-radius: 5px;
        cursor: pointer;
}
 input[type="submit"]:hover {
        background-color: black;
        color: white;
        }
</style>
</head>
<body>
 <center><h1>Employee Information</h1></center>
    <div class="container">
        <form id="form_data" method="post" action="Addemployee"> 
            <h3>Enter Your Name</h3>
            <input id="text" type="text" name="name" placeholder="Your Name"><br>
            <h3>Enter Your Employee Id</h3>
            <input id="text" type="text" name="emp_id" placeholder="Emp_id"><br> 
            <h3>Enter Your Email Id</h3>
            <input id="text" type="text" name="email_id" placeholder="Email Id"><br> 
            <h3>Enter Your Mobile Number</h3>
            <input id="text" type="number" name="mob_no" placeholder="Mobile number"><br> 
            <h3>Enter your gender</h3>
            <input id="text" type="text" name="gender" placeholder="Gender"><br> 
            <h3>Enter your city</h3>
            <input id="text" type="text" name="city" placeholder="City"><br>
            <!-- Hidden input field for action -->
            <input type="hidden" name="action" value="add"> 
            <h3><input type="submit" value="Submit"></h3> 
</form>
</div>
</body>
</html>