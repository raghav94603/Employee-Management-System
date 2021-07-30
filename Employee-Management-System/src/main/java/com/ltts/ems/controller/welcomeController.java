package com.ltts.ems.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ltts.ems.repository.EmployeeDAO;

@RestController
public class welcomeController {
	@Autowired
	EmployeeDAO emp;
@PostMapping("/add")
public String addUser(HttpServletRequest request) {
	emp.addUser(request.getParameter("id"),request.getParameter("doJ"), request.getParameter("doB"), request.getParameter("employeeNumber"), request.getParameter("firstName"), request.getParameter("gender"), request.getParameter("img"), request.getParameter("lastName"), request.getParameter("role"), request.getParameter("username"), request.getParameter("password"));
	return "Updated";
}
}
