package com.ltts.ems.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ltts.ems.model.Attendance_details;
import com.ltts.ems.model.Employeedetails;
import com.ltts.ems.service.AttendanceService;
import com.ltts.ems.service.EmployeeService;

@RestController
@Scope("session")
@RequestMapping("/api")
public class EmployeeController {

	@Autowired
	EmployeeService emp;
	@Autowired
	EmployeeLogin elogin;
	@Autowired
	AttendanceService apr;

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
	 * @param id
	 * @param m
	 * @return
	 */
	@RequestMapping(value = "/update/{id}")
	public ModelAndView updateview(@PathVariable int id,Model m) {
		Employeedetails theemp=emp.findById(id);
		m.addAttribute("theemp",theemp);
		return new ModelAndView("updateview");
	}
	@PostMapping(value = "/updateemployee/{id}")
	public ModelAndView update(Employeedetails theemp,Model model,@PathVariable int id) {
		theemp.setID(id);
		emp.save(theemp);
		
		List<Employeedetails> bt = (List<Employeedetails>) emp.findAll();
		model.addAttribute("Employeedetails", bt);
		
		return new ModelAndView("viewemp");
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
	
	@RequestMapping(value = "/mn")
	public ModelAndView mnb(Model model) {
Employeedetails theemp=emp.findByUsernameAndPassword(elogin.username, elogin.password);
		
		List<Attendance_details> all_emp_atten= (List<Attendance_details>)apr.findAll();
		model.addAttribute("Attendancedetails", all_emp_atten);
		model.addAttribute("Employeedetails", theemp);
		return new ModelAndView("viewattendance");
	}
	@RequestMapping(value = "/status")
	public ModelAndView status(Model model) {
		Employeedetails theemp=emp.findByUsernameAndPassword(elogin.username, elogin.password);
		
		List<Attendance_details> emp_atten= (List<Attendance_details>)apr.findByID(theemp);
		model.addAttribute("Attendancedetails", emp_atten);
		model.addAttribute("Employeedetails", theemp);
		return new ModelAndView("viewattendance");
		
	}
	@PostMapping("/att")
	public ModelAndView addAttendance(Attendance_details attd, Model model) {
		apr.save(attd);
		Employeedetails theemp=emp.findByUsernameAndPassword(elogin.username, elogin.password);
		List<Attendance_details> emp_atten= (List<Attendance_details>)apr.findByID(theemp);
		model.addAttribute("Attendancedetails", emp_atten);
		model.addAttribute("Employeedetails", theemp);
		model.addAttribute("Attendancestatus", emp_atten);
		return new ModelAndView("viewattendance");
}
	@GetMapping(value = "/accepted/{id}/{markdate}")
	public ModelAndView accepted(Model model,@PathVariable int id,@PathVariable Date markdate) {
		
		
		Employeedetails theemp=emp.findByUsernameAndPassword(elogin.username, elogin.password);
	
		apr.setStatusforattendance("Accepted", id, markdate);
		System.out.print(id);
		List<Attendance_details> emp_atten= (List<Attendance_details>)apr.findAll();
		model.addAttribute("Attendancedetails", emp_atten);
		model.addAttribute("Employeedetails", theemp);
		return new ModelAndView("viewattendance");
	}
	@GetMapping(value = "/rejected/{id}/{markdate}")
	public ModelAndView rejected(Model model,@PathVariable int id,@PathVariable Date markdate) {
		
		
		Employeedetails theemp=emp.findByUsernameAndPassword(elogin.username, elogin.password);
	
		System.out.print(id);
		apr.setStatusforattendance("Rejected", id, markdate);
		List<Attendance_details> emp_atten= (List<Attendance_details>)apr.findAll();
		model.addAttribute("Attendancedetails", emp_atten);
		model.addAttribute("Employeedetails", theemp);
		return new ModelAndView("viewattendance");
	}
	@RequestMapping(value = "/entry")
	public ModelAndView attendance_entry(Model model) {
		Employeedetails theemp=emp.findByUsernameAndPassword(elogin.username, elogin.password);
		model.addAttribute("Employeedetails", theemp);
		return new ModelAndView("Attendance");
	}
}
