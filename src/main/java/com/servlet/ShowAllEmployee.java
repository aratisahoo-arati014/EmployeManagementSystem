package com.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.daoimpl.*;
import com.dao.*;
import com.model.*;
@WebServlet("/showAllEmployee")
public class ShowAllEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeDao employeeDao = new DAOimplementation();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Employee> employee = employeeDao.showAllEmployee();
		request.setAttribute("employees", employee);
		request.getRequestDispatcher("ShowAllEmployee.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
