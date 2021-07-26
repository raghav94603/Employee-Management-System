<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 

        <head>
            <title>Dashboard</title>
            <link rel="stylesheet" href="dashboard.css">
         </head>

        <body>

            <header>
		<div class="logo">Employee Management</div>
	</header>
	<div class="nav-btn">Menu</div>
	<div class="container">
		
		<div class="sidebar">
			<nav>
				<a>Employee Management</a>
				<ul>
					<li class="active"><a href="#">Dashboard</a></li>
				</ul>
			</nav>
		</div>

		<div class="main-content">
			<h1>Employee Dashboard</h1><br>
			<p href="#">Users</p><br>
			<!--<div class="panel-wrapper">-->
			<!--<div class="panel-head">-->
			<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Employee</a><br><br>
     		<a href="<%=request.getContextPath()%>/new" class="btn btn-success">View Employees</a><br><br>
     		<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Logout</a><br>
		</div>	
        </body>
        </html>