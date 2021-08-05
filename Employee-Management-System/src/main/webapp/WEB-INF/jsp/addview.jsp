<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
body {
	text-align: center;
	font-family: 'Lato', sans-serif;
	color: White;
	border-radius: 5px;
	background-color: #302F2F;
	padding: 0px;
}

.button {
	background-color: #e67e22;
	border: 2px solid black;
	color: white;
	padding: 10px 25px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

h1 {
	background-color: #e67e22;
	margin-bottom: -200px;
}

table.center {
	margin: auto;
	width: 30%;
	border-collapse: collapse;
	border: 2px;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee Details</title>
</head>
<h1>Add Employee Details</h1>

<body>

	<div class="container">
		<form method="post" action="/api/add">
			<table BORDER="1" class="center">
				<tr>
					<td><label for="usrname"><b>User Name</b></label></td>
					<td><input type="text" id="username" name="username"
						placeholder="Enter your username" required></td>
				</tr>
				<br>
				<br>
				<tr>
					<td><label for="psw"><b>Password</b></label></td>

					<td><input type="password" placeholder="Enter your password"
						id="psw" name="password"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						required></td>
				</tr>
				<br>
				<br>
				<tr>
					<td><label for="Dob"><b>Date of Birth</b></label></td>
					<td><input type="text" id="Dob" name="Dob"
						placeholder="Enter your DOB" required></td>
				</tr>
				<br>
				<br>
				<tr>
					<td><label for="DoJ"><b>Date of Joining</b></label></td>
					<td><input type="text" placeholder="Enter your DOJ" id="DoJ"
						name="DoJ"></td>
				</tr>
				<br>
				<br>
				<tr>
					<td><label for="employeeNumber"><b>Employee Number</b></label></td>

					<td><input type="text"
						placeholder="Enter your Employee Number" id="employeeNumber"
						name="employeeNumber"></td>
				</tr>
				<br>
				<br>
				<tr>
					<td><label for="firstName"><b>First Name</b></label></td>
					<td><input type="text" placeholder="Enter your Firstname"
						id="firstName" name="firstName"></td>
				</tr>
				<br>
				<br>
				<tr>
					<td><label for="lastName"><b>Last Name</b></label></td>
					<td><input type="text" placeholder="Enter your Lastname"
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
					<td><input type="text" placeholder="Enter your Role" id="role"
						name="role"></td>
				</tr>
				<br>
				<br>
				<tr>
					<td><label for="img"><b>Image</b></label></td>
					<td><input type="text" placeholder="Image not available"
						id="img" name="img"></td>
				</tr>
			</table>
			<br> <br> <input type="submit" value="Submit"
				class="button"> <input type="button" value="Back"
				class="button" onclick="javascript:history.go(-1)">


		</form>
	</div>

</body>
</html>
