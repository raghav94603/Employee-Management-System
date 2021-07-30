package com.ltts.ems.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ltts.ems.model.Employeedetails;
@Repository
public interface EmployeeDAO extends JpaRepository<Employeedetails,Integer> {

@Query("Select username from Employeedetails e where e.username= :username and e.password= :password")
public String getUserbyusername(@Param("username") String username,@Param("password") String password);
@Modifying
@Query(value= "Insert into employeedetails values(:id,:doJ, :dob, :employeeNumber, :firstName, :gender, :img, :lastName ,:role,:username, :password)",nativeQuery = true)
@Transactional
public int addUser(@Param("id") String id,@Param("doJ") String doJ,@Param("dob") String dob, @Param("employeeNumber") String employeeNumber,@Param("firstName") String firstName, @Param("gender") String gender,@Param("img") String img,@Param("lastName") String lastName,@Param("role") String role,@Param("username") String username,@Param("password") String password);

}
