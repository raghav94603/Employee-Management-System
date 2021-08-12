<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
body {
	text-align: center;
	color: Black;
	border-radius: 5px;
	background-color: #2F4F4F;
	font-size: large;
	font-family: 'Ubuntu', sans-serif;
	height: 600px;
	width: 900px;
	margin: auto;
	border: 10px solid black;
	
}

.button {
	background-color: #e67e22;
	border: 2px solid black;
	background-color: #2EE59D;
	padding: 10px 25px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 12px;
	transition-duration: 0.4s;
	
}

.button:hover {
	background-color: Black;
	color: white;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

h1 {
	color: White;
	margin-bottom: -300px;
	top-padding: 10px;
	font-size: 55px;
		text-shadow: 2px 2px 5px black;
	
}

table.center {
	margin: auto;
	width: 70%;
}

tr, td {
	padding: 8px;
	text-align: center;
}

tr:hover {
	background-color: #f5f5f5;
}

.container {
	background-color: grey;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Update Employee Details</title>
<link href="https://fonts.googleapis.com/css?family=Ubuntu"
	rel="stylesheet">
</head>
<h1>Update Employee Details</h1>
<body>


	<div class="container">
		<form method="post" action="/api/updateemployee/${theemp.getID() }">
			<table BORDER="0" class="center">
				<tr>
					<td><label for="usrname"><b>Username</b></label></td>
					<td><input type="text" id="username" name="username"
						value="${theemp.getUsername()}" readonly required></td>
				</tr>
				<br>
				<br>
				<tr>
					<td><label for="psw"><b>Password</b></label></td>
					<td><input type="password" placeholder="Enter your password"
						id="psw" value="${theemp.getPassword()}" name="password"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						required></td>
				</tr>
				<br>
				<br>
				<tr>
					<td><label for="Dob"><b>Date of Birth</b></label></td>
					<td><input type="text" id="Dob" name="Dob"
						value="${theemp.getDob()}" required></td>
				</tr>
				<br>
				<br>
				<tr>
					<td><label for="DoJ"><b>Date of Joining</b></label></td>
					<td><input type="text" value="${theemp.getDoJ()}" id="DoJ"
						name="DoJ"></td>
				</tr>
				<br>
				<br>
				<tr>
					<td><label for="employeeNumber"><b>Employee Number</b></label></td>
					<td><input type="text" value="${theemp.getEmployeeNumber()}"
						id="employeeNumber" name="employeeNumber"></td>
				</tr>
				<br>
				<br>
				<tr>
					<td><label for="firstName"><b>First Name</b></label></td>
					<td><input type="text" value="${theemp.getFirstName()}"
						id="firstName" name="firstName"></td>
				</tr>

				<br>
				<br>
				<tr>
					<td><label for="lastName"><b>Last Name</b></label></td>
					<td><input type="text" value="${theemp.getLastName()}"
						id="lastName" name="lastName"></td>
				</tr>

				<br>
				<br>
				<tr>
					<td><label for="gender"><b>Gender</b></label></td>
					<td><input type="radio" id="gender" name="gender" value="Male">
						Male <input type="radio" id="gender" name="gender" value="Female">
						Female <input type="radio" id="gender" name="gender"
						value="Others"> Others</td>
				</tr>

				<br>
				<br>
				<tr>
					<td><label for="role"><b>Role</b></label></td>
					<td><input type="text" value="${theemp.getRole()}" id="role"
						name="role"></td>
				</tr>
				<br>
				<br>
				<tr>
					<td><label for="img"><b>Image</b></label></td>
					<td><input type="text" value="${theemp.getImg()}" id="img"
						name="img"></td>
				</tr>
			</table>
			<br> <br> <input type="submit" value="Update"
				class="button"> <input type="button" value="Back"
				class="button" onclick="javascript:history.go(-1)">
		</form>
	</div>

</body>
</html>
