package com.ltts.ems.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Department_details")
public class Department_details {
	    @Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int ID;
	    private String DepartmentNumber;
	    private String DepartmentName;
	    private String DepartmentLocation;
	    
	    
	    public Department_details() {
			super();
		}

		public Department_details(String departmentNumber, String departmentName, String departmentLocation) {
			super();
			DepartmentNumber = departmentNumber;
			DepartmentName = departmentName;
			DepartmentLocation = departmentLocation;
		}
	   
		public String getDepartmentNumber() {
			return DepartmentNumber;
		}
		public void setDepartmentNumber(String departmentNumber) {
			DepartmentNumber = departmentNumber;
		}
		public String getDepartmentName() {
			return DepartmentName;
		}
		public void setDepartmentName(String departmentName) {
			DepartmentName = departmentName;
		}
		public String getDepartmentLocation() {
			return DepartmentLocation;
		}
		public void setDepartmentLocation(String departmentLocation) {
			DepartmentLocation = departmentLocation;
		}

		@Override
		public String toString() {
			return "Department_details [DepartmentNumber=" + DepartmentNumber + ", DepartmentName=" + DepartmentName
					+ ", DepartmentLocation=" + DepartmentLocation + "]";
		}
	
	
}
