package com.ltts.ems.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ltts.ems.repository.EmployeeDetailsDAO;

@Controller
public class LoginAuthentication{
	@Autowired
	EmployeeDetailsDAO emp;
	@RequestMapping("/")
	public String Login() {
		return ("login");
	}
	@RequestMapping("/login")
	public String LoginAuth(HttpServletRequest request)
	{
		String username=request.getParameter("usrname");
		String password=request.getParameter("psw");
		String uname=emp.getUserbyusername(username, password);
		if(uname==null) {
			System.out.print("Error");
			return ("login");
		}
		else {
			System.out.print("Success");
			return ("dashboard");
		}
	
	}

}
