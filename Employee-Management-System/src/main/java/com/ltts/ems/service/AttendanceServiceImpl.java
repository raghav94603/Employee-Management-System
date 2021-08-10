package com.ltts.ems.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ltts.ems.model.Attendance_details;
import com.ltts.ems.model.Employeedetails;
import com.ltts.ems.repository.AttendanceRepository;

@Service
public class AttendanceServiceImpl implements AttendanceService{

	@Autowired
	AttendanceRepository apr;
	
	
	public Attendance_details save(Attendance_details amp) {
		return apr.save(amp);
	}
	
}
