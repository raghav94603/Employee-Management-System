package com.ltts.ems.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ltts.ems.model.Employeedetails;
import com.ltts.ems.service.EmployeeService;

@RestController
public class EmployeeLogin {
	@Autowired
	EmployeeService emp;

	/**
	 * @return
	 */
	@RequestMapping("/")
	public ModelAndView Login() {
		return new ModelAndView("loginPage");
	}

	/**
	 * This method redirects to the Dashboard after valid credentials else to error page
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public ModelAndView LoginAuth(HttpServletRequest request) {
		String username = request.getParameter("usrname");
		String password = request.getParameter("psw");
		Employeedetails theEmployee = emp.findByUsernameAndPassword(username, password);
		if (theEmployee == null) {

			return new ModelAndView("Invalid_user");
		} else {

			return new ModelAndView("dashboard");

		}

	}

}
