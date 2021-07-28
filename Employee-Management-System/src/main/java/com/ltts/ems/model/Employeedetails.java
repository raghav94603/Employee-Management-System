package com.ltts.ems.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Employeedetails")
public class Employeedetails {
	
	    @Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int ID;
	    private String username;
		public String getUsername() {
			return username;
		}



		public void setUsername(String username) {
			this.username = username;
		}



		private String FirstName;
		private String LastName;
		private String EmployeeNumber;
		private Date Dob;
		private String Gender;
		private Date DoJ;
		private String Role;
		private String Img;
		private String password;
		
		public String getPassword() {
			return password;
		}



		public void setPassword(String password) {
			this.password = password;
		}



		public Employeedetails() {
			super();
		}

		
	
		public Employeedetails(String firstName, String lastName, String employeeNumber, Date dob, String gender,
				Date doJ, String role, String img) {
			super();
			FirstName = firstName;
			LastName = lastName;
			EmployeeNumber = employeeNumber;
			Dob = dob;
			Gender = gender;
			DoJ = doJ;
			Role = role;
			Img = img;
		}



		public String getFirstName() {
			return FirstName;
		}
		public void setFirstName(String firstName) {
			FirstName = firstName;
		}
		public String getLastName() {
			return LastName;
		}
		public void setLastName(String lastName) {
			LastName = lastName;
		}
		public Date getDob() {
			return Dob;
		}
		public void setDob(Date dob) {
			Dob = dob;
		}
		
	
		public String getEmployeeNumber() {
			return EmployeeNumber;
		}

		public void setEmployeeNumber(String employeeNumber) {
			EmployeeNumber = employeeNumber;
		}

		public String getGender() {
			return Gender;
		}
		public void setGender(String gender) {
			Gender = gender;
		}
		public Date getDoJ() {
			return DoJ;
		}
		public void setDoJ(Date doJ) {
			DoJ = doJ;
		}
		public String getRole() {
			return Role;
		}
		public void setRole(String role) {
			Role = role;
		}
		
		public String getImg() {
			return Img;
		}

		public void setImg(String img) {
			Img = img;
		}



		@Override
		public String toString() {
			return "Employeedetails [ID=" + ID + ", FirstName=" + FirstName + ", LastName=" + LastName
					+ ", EmployeeNumber=" + EmployeeNumber + ", Dob=" + Dob + ", Gender=" + Gender + ", DoJ=" + DoJ
					+ ", Role=" + Role + ", Img=" + Img + "]";
		}
		
		
		
}
