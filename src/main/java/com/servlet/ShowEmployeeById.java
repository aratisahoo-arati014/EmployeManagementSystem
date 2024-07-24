package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.*;
import com.daoimpl.*;
import com.model.Employee;

@WebServlet("/showEmployeeById")
public class ShowEmployeeById extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeDao employeeDAO = new DAOimplementation();

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        int emp_id = Integer.parseInt(request.getParameter("emp_id"));
	        Employee employee = employeeDAO.showEmployeeById(emp_id);
	        request.setAttribute("employee", employee);
	        request.getRequestDispatcher("Showemployeebyid.jsp").forward(request, response);
	    }
}
