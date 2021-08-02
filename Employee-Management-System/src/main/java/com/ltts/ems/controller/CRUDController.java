package com.ltts.ems.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ltts.ems.model.Employeedetails;
import com.ltts.ems.service.EmployeeService;

@RestController
@RequestMapping("/api")
public class CRUDController {

	@Autowired
	EmployeeService emp;

	@PostMapping("/add")
	public ModelAndView addUser(Employeedetails theEmployee,Model model) {
		emp.save(theEmployee);
		List<Employeedetails> bt = (List<Employeedetails>) emp.findAll();
		model.addAttribute("Employeedetails", bt);
		return new ModelAndView("viewemp");
	}

	@RequestMapping("/delete/{id}")
	public ModelAndView deleteUser(@PathVariable int id,Model model) {
		emp.deleteById(id);
		List<Employeedetails> bt = (List<Employeedetails>) emp.findAll();
		model.addAttribute("Employeedetails", bt);

		return new ModelAndView("viewemp");
	}

	@RequestMapping(value = "/adminview")
	public ModelAndView fourthMethod(Model model) {

		List<Employeedetails> bt = (List<Employeedetails>) emp.findAll();
		model.addAttribute("Employeedetails", bt);
		return new ModelAndView("viewemp");

	}

	@RequestMapping(value = "/addview")
	public ModelAndView addview() {
		return new ModelAndView("addview");
	}

}
