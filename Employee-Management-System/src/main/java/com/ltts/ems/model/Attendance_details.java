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

		/**
		 * @return
		 */
		public LocalDate getDate() {
			return Date;
		}

		/**
		 * @param date
		 */
		public void setDate(LocalDate date) {
			Date = date;
		}

		/**
		 * @return
		 */
		public LocalTime getLockin() {
			return Lockin;
		}

		/**
		 * @param lockin
		 */
		public void setLockin(LocalTime lockin) {
			Lockin = lockin;
		}

		/**
		 * @return
		 */
		public LocalTime getLockout() {
			return Lockout;
		}

		/**
		 * @param lockout
		 */
		public void setLockout(LocalTime lockout) {
			Lockout = lockout;
		}

		/**
		 * @return
		 */
		public float getAvgtime() {
			return Avgtime;
		}

		/**
		 * @param avgtime
		 */
		public void setAvgtime(float avgtime) {
			Avgtime = avgtime;
		}

		/**
		 * @return
		 */
		public String getValid_attendance() {
			return valid_attendance;
		}

		/**
		 * @param valid_attendance
		 */
		public void setValid_attendance(String valid_attendance) {
			this.valid_attendance = valid_attendance;
		}

		@Override
		public String toString() {
			return "Attendance_details [Date=" + Date + ", Lockin=" + Lockin + ", Lockout=" + Lockout + ", Avgtime="
					+ Avgtime + ", valid_attendance=" + valid_attendance + "]";
		}
        
        
        
}
