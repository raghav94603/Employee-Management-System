<!DOCTYPE html>
<html lang="en">
<style>
.heading {
	text-align: right;
	color: White;
	font-family: 'Ubuntu', sans-serif;
}

.H {
	font-size: 60px;
	font-family: 'Ubuntu', sans-serif;
}
.button {
	background-color: #e67e22;
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

</style>
<head>
<link href="https://fonts.googleapis.com/css?family=Ubuntu"
	rel="stylesheet">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Attendance</title>
</head>
<body
	style="background-image: url('https://images.unsplash.com/photo-1541746972996-4e0b0f43e02a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80'); background-repeat: no-repeat; background-attachment: fixed; background-position: center; background-size: cover;');">
	>
	<div class="heading">
		<h3 id="heading1">Username - ${Employeedetails.getUsername()}</h3>
		<h3 id="heading2">Hi ${Employeedetails.getFirstName()}
			${theemp.getLastName()} !</h3>
	</div>


	<h1 class="H" align="center" style="color: #2EE59D">
		<b>Attendance</b>
	</h1>
	<form method="post" action="/api/att">

		<table class="table table-striped table-dark">
			<thead>
				<tr>
					<th>Employee ID</th>
					<br>
					<th>Activity</th>
					<th>Phase</th>
					<th>Date</th>
					
					<th>Hours</th>
					<th>Location</th>

				</tr>
			</thead>
			<tbody>

				<tr>
					<td><input type="number" name="ID"
						value="${Employeedetails.getID()}" readonly></td>
					<td><select id="Activity" name="Activity">
							<option value="Development">Development</option>
							<option value="out of office">out of office</option>
							<option value="Project Management">Project Management</option>
							<option value="Client Meeting">Client Meeting</option>
					</select></td>
					<td><select id="Phase" name="Phase">
							<option value="Planning">Planning</option>
							<option value="Designing">Designing</option>
							<option value="Execution">Execution</option>
							<option value="Testing">Testing</option>
							<option value="Production">Production</option>
					</select></td>
					<td><input type="date" name="markdate"></td>
					
					<td><select id="Hours" name="Hours">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>

							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
					</select></td>

					<td><select id="Location" name="Location">
							<option value="Base Location">Base Location</option>
							<option value="Client Location">Client Location</option>
							<option value="Work from Home">Work from Home</option>

					</select></td>

				</tr>
		</table>
		<div align="center">
			<br><input type="submit" name="submit" class="button">
			<input type="button" value="Back"
				class="button" onclick="javascript:history.go(-1)">
		</div>
	</form>


</body>
</html>









