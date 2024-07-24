package com.model;

public class Employee {
	
		private String name;
		private Integer emp_id;
		private String email_id;
		private Long mob_no;
		private String gender;
		private String city;
		
		public Employee(String name, Integer emp_id, String email_id, Long mob_no, String gender, String city) {
			super();
			this.name = name;
			this.emp_id = emp_id;
			this.email_id = email_id;
			this.mob_no = mob_no;
			this.gender = gender;
			this.city = city;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public Integer getEmp_id() {
			return emp_id;
		}

		public void setEmp_id(Integer emp_id) {
			this.emp_id = emp_id;
		}

		public String getEmail_id() {
			return email_id;
		}

		public void setEmail_id(String email_id) {
			this.email_id = email_id;
		}

		public Long getMob_no() {
			return mob_no;
		}

		public void setMob_no(Long mob_no) {
			this.mob_no = mob_no;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		@Override
		public String toString() {
			return "Employee [name=" + name + ", emp_id=" + emp_id + ", email_id=" + email_id + ", mob_no=" + mob_no
					+ ", gender=" + gender + ", city=" + city + "]";
		}
		
		
}
