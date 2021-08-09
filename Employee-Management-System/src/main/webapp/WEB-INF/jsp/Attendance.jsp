<!DOCTYPE html>
<html lang="en">
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Attendance</title>
</head>
<body>
  <h2>Project Name - ${e.getprojectname()}</h2>
 <h2>Employee Name- ${e.getname()}</h2>
<h2>week- ${e.getdate()}</h2>
<form method="post">

<table class="table table-striped table-dark">
        <thead>
        <tr>
            <th>Activity</th>
            <th>Phase</th>
            <th>Monday</th>
            <th>Tuesday</th>
            <th>Wednessday</th>
            <th>thursday</th>
            <th>Friday</th>
            <th>Saturday</th>
            <th>Sunday</th>
        </tr>
        </thead>
        <tbody>

<tr>
 <td>
<select id="Activity">
  <option value="Development">Development</option>
  <option value="out of office">out of office</option>
  <option value="Project Management">Project Managemet</option>
  <option value="Client Meeting">Client Meeting</option>
</select></td>
<td><select id="Phase">
  <option value="Planning">Planning</option>
  <option value="Designing">Designing</option>
  <option value="Execution">Execution</option>
  <option value="Testing">Testing</option>
  <option value="Production">Production</option>
</select></td>
<td><input type="number" name="Monday"></td>
<td><input type="number" name="tuesday"></td>
<td><input type="number" name="Wednesday"></td>
<td><input type="number" name="thursday"></td>
<td><input type="number" name="Friday"></td>
<td><input type="number" name="Saturday"></td>
<td><input type="number" name="Sunday"></td>
</tr>
</table>
<input type="submit"name="submit">
</form>
<a href="Dashboard.jsp" class="text-warning">Back to Dashboard</a>

</body>
</html>





