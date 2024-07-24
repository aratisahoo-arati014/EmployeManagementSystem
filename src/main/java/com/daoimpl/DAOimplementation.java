package com.daoimpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.EmployeeDao;
import com.model.Employee;
import com.util.DButil;
public class DAOimplementation implements EmployeeDao {
		@Override
		public int insertEmployee(Employee employee) {
			try {
				Connection con = DButil.getDbConnection();
				String query ="INSERT INTO employee (emp_id, name, email_id, mob_no, gender, city) VALUES(?, ?, ?, ?, ?, ?)";
				PreparedStatement stm = con.prepareStatement(query);
				stm.setInt(1, employee.getEmp_id());
				stm.setString(2, employee.getName());
				stm.setString(3, employee.getEmail_id());
				stm.setLong(4, employee.getMob_no());
				stm.setString(5, employee.getGender());
				stm.setString(6, employee.getCity());
				
				return stm.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return -1;
			
		}

		@Override
		public Employee showEmployeeById(Integer emp_id) {
			Employee emp = null;
			try {
				Connection con = DButil.getDbConnection();
				String query = "SELECT * FROM employee WHERE emp_id = ?";
				PreparedStatement stm = con.prepareStatement(query);
				stm.setInt(1, emp_id);
				ResultSet result = stm.executeQuery();
				if(result.next()) {
					emp= new Employee(query, emp_id, query, null, query, query);
					emp.setEmp_id(result.getInt("emp_id"));
					emp.setName(result.getString("name"));
					emp.setEmail_id(result.getString("email_id"));
					emp.setMob_no(result.getLong("mob_no"));
					emp.setGender(result.getString("gender"));
					emp.setCity(result.getString("city"));
				}
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return emp;
		}
		@Override
		
		public List<Employee> showAllEmployee(){
			List<Employee> allEmp = new ArrayList<Employee>();
			try {
				Connection con = DButil.getDbConnection();
				String query ="SELECT * FROM employee";
				PreparedStatement stm = con.prepareStatement(query);
				ResultSet result = stm.executeQuery();
				while(result.next()) {
					Employee emp= new Employee(query, null, query, null, query, query);
					emp.setEmp_id(result.getInt("emp_id"));
					emp.setName(result.getString("name"));
					emp.setEmail_id(result.getString("email_id"));
					emp.setMob_no(result.getLong("mob_no"));
					emp.setGender(result.getString("gender"));
					emp.setCity(result.getString("city"));
					allEmp.add(emp);
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return allEmp;
			
		}

		@Override
		public boolean deleteEmployee(Integer emp_id) {
			try {
				Connection con = DButil.getDbConnection();
				String query = "DELETE FROM employee WHERE emp_id = ?";
				PreparedStatement stm = con.prepareStatement(query);
				stm.setInt(1, emp_id);
				
				return stm.executeUpdate()>0;
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return false;
		}

	}

