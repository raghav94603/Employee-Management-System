<!DOCTYPE html>
<html lang="en">
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Attendance</title>
</head>
<body>
<h3>UserName:- ${Employeedetails.getUsername()}</h3>
<h3>Name of Employee:- ${Employeedetails.getFirstName()} ${theemp.getLastName()}</h3>


  <h1 align="center" style="color: orange">Attendance</h1>
<form method="post" action="/api/att">

<table class="table table-striped table-dark">
        <thead>
        <tr>
            <th>Employee ID</th>
            <th>Activity</th>
            <th>Phase</th>
            <th>Date</th>
            <th>Day</th>
            <th>Hours</th>
            <th>Location</th>
           
        </tr>
        </thead>
        <tbody>

<tr>
<td>
 <input type="number" name="ID" value="${Employeedetails.getID()}" readonly>
 </td>
<td>
<select id="Activity" name="Activity">
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
<td>
  <input type="date" name="markdate">
  
</td>
<td><select id="Day" name="Day">
  <option value="Monday">Monday</option>
  <option value="Tuesday">Tuesday</option>
  <option value="Wednesday">Wednesday</option>
  <option value="Thursday">Thursday</option>
  <option value="Friday">Friday</option>
  <option value="Saturday">Saturday</option>
  <option value="Sunday">Sunday</option>
</select></td>

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
<input type="submit"name="submit">
</div>
</form>


</body>
</html>









