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
			<div>
			<h2 >View Profile</h2>
			</div>
    		<div class="main-content">
            <form >
            <h3> User Dashboard</h3><br><br>
                <h2 >Mark Attendance</h2><br><br>
                <input type="text" id="inputName" name="name" class="form-control" placeholder="Name">
                <br><br>
                <input type="date" id="inputdate" name="date" class="form-control" placeholder="Date">
                <br><br>
                
                 <input type="checkbox" style="zoom:2;" id="inputAttendance" name="attendance" value="Present" placeholder="Present">
                <label style="font-size:18px;" for="Present">Check if Employee present</label><br>
                 
                <br>
                <button class="btn btn-success" type="submit">Mark Attendance</button>
            </form>
        </div>
    </div>
	
		</div>	
        </body>
        </html>