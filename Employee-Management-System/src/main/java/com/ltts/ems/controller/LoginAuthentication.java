package com.ltts.ems.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ltts.ems.repository.EmployeeDAO;

@RestController
public class LoginAuthentication {
	@Autowired
	EmployeeDAO emp;

	@RequestMapping("/")
	public ModelAndView Login() {
		return new ModelAndView("loginPage");
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public ModelAndView LoginAuth(HttpServletRequest request) {
		String username = request.getParameter("usrname");
		String password = request.getParameter("psw");
		String uname = emp.getUserbyusername(username, password);
		if (uname == null) {
			// System.out.print("Error");
			return new ModelAndView("Invalid_user");
		} else {
			// System.out.print("Success");
			return new ModelAndView("dashboard");

		}

	}

}
