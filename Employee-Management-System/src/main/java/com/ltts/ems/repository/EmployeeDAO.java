package com.ltts.ems.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


import com.ltts.ems.model.Employeedetails;

public interface EmployeeDAO extends JpaRepository<Employeedetails,Integer>,CrudRepository<Employeedetails,Integer> {

@Query("Select username from Employeedetails e where e.username= :username and e.password= :password")
public String getUserbyusername(@Param("username") String username,@Param("password") String password);

}
