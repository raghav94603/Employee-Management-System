package com.ltts.ems.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.ltts.ems.model.Attendance_details;

@Repository
public interface AttendanceRepository extends JpaRepository<Attendance_details,Integer>{

}
