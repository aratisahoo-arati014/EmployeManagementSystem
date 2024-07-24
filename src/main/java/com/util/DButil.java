package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
public class DButil {

		public static Connection getDbConnection() throws Exception{
			Connection con = null;
		
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
	            con= DriverManager.getConnection(
	                "jdbc:mysql://localhost:3306/employeedb",
	                "root", "Aratisahu@668");
	            System.out.println("successfull");
			}
			catch(Exception e) {
				System.out.println("The connection is unsuccessfull.");
			}
			return con;
		}
		public static void main(String[] args) {
			try {
				DButil.getDbConnection();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

