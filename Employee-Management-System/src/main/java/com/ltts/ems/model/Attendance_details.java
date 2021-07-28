package com.ltts.ems.model;



import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Attendance_details")
public class Attendance_details {
        @Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int ID;
        private LocalDate Date;
        private LocalTime Lockin;
        private LocalTime Lockout;
        private float Avgtime;
        private String valid_attendance;
        
		public Attendance_details() {
			super();
		}

		public Attendance_details(LocalDate date, LocalTime lockin, LocalTime lockout, float avgtime,
				String valid_attendance) {
			super();
			Date = date;
			Lockin = lockin;
			Lockout = lockout;
			Avgtime = avgtime;
			this.valid_attendance = valid_attendance;
		}

		public LocalDate getDate() {
			return Date;
		}

		public void setDate(LocalDate date) {
			Date = date;
		}

		public LocalTime getLockin() {
			return Lockin;
		}

		public void setLockin(LocalTime lockin) {
			Lockin = lockin;
		}

		public LocalTime getLockout() {
			return Lockout;
		}

		public void setLockout(LocalTime lockout) {
			Lockout = lockout;
		}

		public float getAvgtime() {
			return Avgtime;
		}

		public void setAvgtime(float avgtime) {
			Avgtime = avgtime;
		}

		public String getValid_attendance() {
			return valid_attendance;
		}

		public void setValid_attendance(String valid_attendance) {
			this.valid_attendance = valid_attendance;
		}

		@Override
		public String toString() {
			return "Attendance_details [Date=" + Date + ", Lockin=" + Lockin + ", Lockout=" + Lockout + ", Avgtime="
					+ Avgtime + ", valid_attendance=" + valid_attendance + "]";
		}
        
        
        
}
