<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration form</title>
<style>
  .container{background-color: #C3B1E1;
        width: 50%; 
        margin: 0 auto; 
        padding: 20px;
        border: 1px solid black;
        border-radius: 5px;
    }
</style>
</head>
<body>
	<form name="registrationForm" action="registerServlet" method="post"
		onsubmit="return validateForm()">
		<table border="1" width="100%">
			<tr>
				<th>Name</th>
				<th>RollNo</th>
				<th>Email</th>
				<th>MobNo</th>
				<th>DOB</th>
				<th>Address</th>
				<th>Skills</th>
				<th>Branch</th>
			</tr>

		</table>
		<br>
		<div class="container">
			<h1>Form to be filled</h1>
			<label for="uname">Enter your name:</label> <input type="text"
			id="uname" placeholder="Enter your name" name="uname"><br>
			<br> <label for="RollNo">Enter your RollNo:</label> <input
				type="number" id="RollNo" placeholder="Enter your rollno"
				name="rollno"><br> <br> <label for="Email">Enter
				your email:</label> <input type="email" id="Email"
				mailto:placeholder="abc@gmail.com" name="email"><br> <br>
			<label for="MobNo">Enter your mobileNo:</label> <input type="number"
				id="MobNo" placeholder="Enter mobile number" name="MobNo" required><br>
			<br>
			<legend>Choose your gender:</legend>
			<label for="male">Male</label> <input type="radio" name="gender"
				value="male" checked><br> <label for="female">Female</label>
			<input type="radio" name="gender" value="female"><br> <br>
			<legend>Choose your skills:</legend>
			<input type="checkbox" name="skill1" value="JAVA"> <label
				for="vehicle1"> JAVA</label><br> <input type="checkbox"
				name="skill2" value="DBMS"> <label for="vehicle2">
				DBMS</label><br> <input type="checkbox" name="skill3" value="HTML">
			<label for="vehicle3"> HTML</label><br> <input type="checkbox"
				name="skill4" value="CSS"> <label for="vehicle3">CSS</label><br>
			<input type="checkbox" name="skill5" value="JavaScript"> <label
				for="vehicle3"> JavaScript</label><br> <br> <label
				for="branch">Choose your branch:</label><br> <select
				name="branch">
				<option value="MCA">MCA</option>
				<option value="MBA">MBA</option>
				<option value="Btech">BTech</option>
				<option value="Msc">MSC</option>
			</select><br> <br> <label for="date">Enter your DOB:</label> <input
				type="date" placeholder="DOB"><br> <br> <label
				for="Address">Enter your all qualification:</label><br>
			<textarea name="Address" id="" cols="10" rows="5"></textarea>
			<br> <br>
			<button type="submit" class="submit">LogIn</button>
		</div>
		<script type="text/javascript">
			function validateForm() {
				var username = document.forms["registrationForm"]["uname"].value;
				var rollno = document.forms["registrationForm"]["rollno"].value;
				
				if (username == "") {
					alert("Username must be filled out");
					return false;
				} else if (rollno == "") {
					alert("Rollno must be filled out");
					return false;
				}
				return true;
			}
		</script>
	</form>
</body>
</html>