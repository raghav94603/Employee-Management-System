<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 

<head>
	<title>Dashboard</title>
	<link rel="stylesheet" href="dashboard.css">
	<style type="text/css">
	.table-bordered{
		border:2px solid black;
		}
	.table-bordered td,.table-bordered th{
		border:1px solid black!important;
		}
	table{
		border:1px;
		width:900;
		border-collapse: collapse;
		}
	.ed-del a{
		font-size:15px;
		}
			</style>
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
			<p href="#">Admin</p><br>
			
			<a href="<%=request.getContextPath()%>/new" class="btn btn-success"><h4>Add New Employee</h4></a><br><br>
			<h4 class="text-center">List of Users</h4><br><br>
     		<table class="table table-bordered">
				<thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone No.</th>
                                <th>Dept. Name</th>
                                <th>DOB</th>
                                <th>Gender</th>
                                <th>Date Of Joining</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="user" items="${listUser}">

                                <tr>
                                    <td>
                                        <c:out value="${user.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.name}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.email}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.phone}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.dept}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.dob}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.gender}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.doj}" />
                                    </td>
                                    <td style="align-items: right;"class="ed-del"><a href="edit?id=<c:out value='${user.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>
                        </table><br><br>
						
     		<a href="<%=request.getContextPath()%>/new" class="btn btn-success"><h4>Logout</h4></a><br>
		</div>	
        </body>
        </html>