package com.ltts.ems.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ltts.ems.model.Employeedetails;
import com.ltts.ems.service.EmployeeService;

@RestController
@RequestMapping("/api")
public class CRUDController {
	
	  @Autowired 
	  EmployeeService emp;
	  
	  @PostMapping("/add") 
	  public String addUser(Employeedetails theEmployee) 
	  {
	  emp.save(theEmployee); 
	  return "Updated"; 
	  }
	  
	  @DeleteMapping("/delete/{id}")
	  public String deleteUser(@PathVariable int id)
	  {
		  emp.deleteById(id);
		  return "deleted "+id;
	  }
	 
}
