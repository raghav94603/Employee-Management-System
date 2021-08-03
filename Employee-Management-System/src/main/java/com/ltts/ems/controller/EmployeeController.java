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
public class EmployeeController {

	@Autowired
	EmployeeService emp;

	/**
	 * This method handles the request for adding employee details
	 * @param theEmployee
	 * @param model
	 * @return
	 */
	@PostMapping("/add")
	public ModelAndView addUser(Employeedetails theEmployee, Model model) {
		emp.save(theEmployee);
		List<Employeedetails> bt = (List<Employeedetails>) emp.findAll();
		model.addAttribute("Employeedetails", bt);
		return new ModelAndView("viewemp");
	}

	/**
	 * This method handles the request for deleting employee details
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/delete/{id}")
	public ModelAndView deleteUser(@PathVariable int id, Model model) {
		emp.deleteById(id);
		List<Employeedetails> bt = (List<Employeedetails>) emp.findAll();
		model.addAttribute("Employeedetails", bt);

		return new ModelAndView("viewemp");
	}

	/**
	 * This method handles the request for viewing employee details
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/adminview")
	public ModelAndView fourthMethod(Model model) {

		List<Employeedetails> bt = (List<Employeedetails>) emp.findAll();
		model.addAttribute("Employeedetails", bt);
		return new ModelAndView("viewemp");

	}

	/**
	 * This method handles the request for addition of new employee details into the database
	 * @return
	 */
	/**
	 * @return
	 */
	@RequestMapping(value = "/addview")
	public ModelAndView addview() {
		return new ModelAndView("addview");
	}
	/**
	 * This method handles the request for navigation bar
	 * @return
	 */
	@RequestMapping(value = "/navdash")
	public ModelAndView navview() {
		return new ModelAndView("dashboard");
	}
	/**
	 * This method handles the request for about
	 * @return
	 */
	@RequestMapping(value = "/navabout")
	public ModelAndView aboutview() {
		return new ModelAndView("about");
	}
	/**
	 * This method handles the request for logout
	 * @return
	 */
	@RequestMapping(value = "/log")
	public ModelAndView logOut() {
		return new ModelAndView("loginPage");
	}
}
