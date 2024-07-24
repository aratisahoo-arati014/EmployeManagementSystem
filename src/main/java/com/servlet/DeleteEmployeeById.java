package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.daoimpl.*;
import com.dao.*;

@WebServlet("/deleteEmployeeById")
public class DeleteEmployeeById extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeDao employeeDAO = new DAOimplementation();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int emp_id = Integer.parseInt(request.getParameter("emp_id"));
		boolean result = employeeDAO.deleteEmployee(emp_id);
		if (result) {
			request.setAttribute("message", "Employee deleted successfully");
		} else {
			request.setAttribute("message", "Failed to delete employee");
		}
		request.getRequestDispatcher("DeleteEmployeeById.jsp").forward(request, response);
	}
}