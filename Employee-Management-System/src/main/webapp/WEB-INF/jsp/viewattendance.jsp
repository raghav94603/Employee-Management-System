<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.ltts.ems.model.Attendance_details" %>
<%@ page import="com.ltts.ems.model.Employeedetails" %>
<!DOCTYPE html>
<html>
<style>
*{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
}
body{
    font-family: Helvetica;
    -webkit-font-smoothing: antialiased;
    background: #302F2F;
}
h2{
    text-align: center;
    font-size: 18px;
    text-transform: uppercase;
    letter-spacing: 1px;
    color: white;
    padding: 30px 0;
}

/* Table Styles */

.table-wrapper{
    margin: 10px 70px 70px;
    box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
}

.fl-table {
    border-radius: 5px;
    font-size: 12px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
    white-space: nowrap;
    background-color: white;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 12px;
}

.fl-table thead th {
    color: #000000;
    background: #e67e22;
}


.fl-table thead th:nth-child(odd) {
    color: #000000;
    background: #e67e22;
}

.fl-table tr:nth-child(even) {
    background: #F8F8F8;
}

/* Responsive */

@media (max-width: 767px) {
    .fl-table {
        display: block;
        width: 100%;
    }
    .table-wrapper:before{
        content: "Scroll horizontally >";
        display: block;
        text-align: right;
        font-size: 11px;
        color: white;
        padding: 0 0 10px;
    }
    .fl-table thead, .fl-table tbody, .fl-table thead th {
        display: block;
    }
    .fl-table thead th:last-child{
        border-bottom: none;
    }
    .fl-table thead {
        float: left;
    }
    .fl-table tbody {
        width: auto;
        position: relative;
        overflow-x: auto;
    }
    .fl-table td, .fl-table th {
        padding: 20px .625em .625em .625em;
        height: 60px;
        vertical-align: middle;
        box-sizing: border-box;
        overflow-x: hidden;
        overflow-y: auto;
        width: 120px;
        font-size: 13px;
        text-overflow: ellipsis;
    }
    .fl-table thead th {
        text-align: left;
        border-bottom: 1px solid #f7f7f9;
    }
    .fl-table tbody tr {
        display: table-cell;
    }
    .fl-table tbody tr:nth-child(odd) {
        background: none;
    }
    .fl-table tr:nth-child(even) {
        background: transparent;
    }
    .fl-table tr td:nth-child(odd) {
        background: #F8F8F8;
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tr td:nth-child(even) {
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tbody td {
        display: block;
        text-align: center;
    }
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
response.setHeader("Cache-control", "no-cache");

response.setHeader("Cache-control", "no-store"); 
response.setHeader("Pragma", "no-cache");

response.setDateHeader("Expire", 0);
%>
<jsp:include page="header.jsp"></jsp:include>
<h2>Attendance Details</h2>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Task</th>
            <th>Activity</th>
            <th>Phase</th>
            <th>Mark date</th>
            <th>Day</th>
            <th>Location</th>
            <th>Accept</th>
            <th>Reject</th>
        </tr>
        </thead>
        <tbody>

<c:forEach items="${Attendancedetails}" var="atten">

<tr>
<td>${Employeedetails.getID()}</td>
 <td><c:out value="${atten.getTask()}"></c:out></td>
 <td><c:out value="${atten.getActivity()}"></c:out></td>
 <td><c:out value="${atten.getPhase()}"></c:out></td>
 <td><c:out value="${atten.getMarkdate()}"></c:out></td>
 <td><c:out value="${atten.getDay()}"></c:out></td>
 <td><c:out value="${atten.getLocation()}"></c:out></td>
 
 <%  Attendance_details atten = (Attendance_details)pageContext.getAttribute("atten");
     Employeedetails theemp=(Employeedetails)request.getAttribute("Employeedetails");
 %>
     <% if ((atten.getStatus()).equals("Accepted")) { %>
         <td style="color: green; font-weight:bold ">Accepted</td>
         <td></td>
     <%} %>
		<% if(atten.getStatus().equals("Rejected")){ %>
						<td></td>
						<td style="color: red; font-weight:bold">Rejected</td>
         <%} %>
         
      <% if(atten.getStatus().equals("Pending")){if(theemp.getRole().equals("Admin")){%>
      <td><button onclick="window.location.href='/api/accepted/${atten.getID().ID}/${atten.getMarkdate()}';">
      Accept
    </button></td>
          <td><button onclick="window.location.href='/api/rejected/${atten.getID().ID}/${atten.getMarkdate()}';">
      Reject
    </button></td>
      <%}else{ %><td>Pending</td><td>Pending</td><%}} %>
</tr>

</c:forEach>


</table>
</div>
</body>

</html>