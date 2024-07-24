




package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.daoimpl.*;
import com.model.Employee;
import com.dao.*;


@WebServlet("/Addemployee")
public class Addemployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	 private EmployeeDao employeeDao = new DAOimplementation();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Addemployee(request, response);
	}
	private void Addemployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	int emp_id = Integer.parseInt(request.getParameter("emp_id"));
        String name = request.getParameter("name");
        String email_id = request.getParameter("email_id");
        long mob_no = Long.parseLong(request.getParameter("mob_no"));
        String gender = request.getParameter("gender");
        String city = request.getParameter("city");
        
        Employee employee = new Employee(name, emp_id, email_id, mob_no, gender, city);
        
        int result = employeeDao.insertEmployee(employee);
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        if (result >0) {
            out.println("<h2>Employee added successfully</h2>");
        } else {
            out.println("<h2>Failed to add employee</h2>");
	}
	}
}