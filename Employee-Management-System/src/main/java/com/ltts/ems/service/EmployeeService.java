package com.ltts.ems.service;



import java.util.List;

import com.ltts.ems.model.Employeedetails;

public interface EmployeeService {
public List<Employeedetails> findAll();
public Employeedetails findByUsernameAndPassword(String username, String password);

public Employeedetails save(Employeedetails theemp);

public Employeedetails deleteById(int id);
}
