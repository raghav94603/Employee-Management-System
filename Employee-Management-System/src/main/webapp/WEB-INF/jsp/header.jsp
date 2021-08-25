<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
.topnav {
	background-color: #2EE59D;
	overflow: hidden;
		font-family: 'Ubuntu', sans-serif;
	
}

/* Style the links inside the navigation bar */
.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
		font-family: 'Ubuntu', sans-serif;
	
}

/* Change the color of links on hover */
.topnav a:hover {
	background-color: White;
	color: black;
		font-family: 'Ubuntu', sans-serif;
	
}

/* Add a color to the active/current link */
.topnav a.active {
	
	color: white;
		font-family: 'Ubuntu', sans-serif;
	
}

</style>
<head>
<link href="https://fonts.googleapis.com/css?family=Ubuntu"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<div class="topnav">
		<a  href="/api/navdash">Dashboard</a>
		 <a
			href="/api/navabout">About</a> 
			
			<a
			href="/api/navdash">Back</a>
			<a href="/api/log">Logout</a> 
	</div>

</body>
</html>
