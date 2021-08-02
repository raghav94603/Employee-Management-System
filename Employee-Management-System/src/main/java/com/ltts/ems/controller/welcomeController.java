package com.ltts.ems.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ltts.ems.model.Employeedetails;
import com.ltts.ems.service.EmployeeService;

@RestController
public class welcomeController {

	@Autowired
	EmployeeService bd;
	ModelAndView mv=new ModelAndView("viewemp");
	@RequestMapping(value="/adminview")
	public ModelAndView fourthMethod(Model model)
	{
		
		List<Employeedetails> bt=(List<Employeedetails>) bd.findAll();
		model.addAttribute("Employeedetails", bt);
		return mv;
		
		
	}	
	@RequestMapping(value="/addview")
	public ModelAndView addview()
	{
		return mv;
	}	
	
}
