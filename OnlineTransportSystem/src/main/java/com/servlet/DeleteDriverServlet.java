package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Driver;
import com.service.DriverDBUtil;

@WebServlet("/DeleteDriverServlet")
public class DeleteDriverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("uid");
		
		boolean isTrue;
		
		isTrue = DriverDBUtil.deleteDriver(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Register.jsp");
			dispatcher.forward(request, response);
		}
		
		else {
			List<Driver> driverDetails = DriverDBUtil.getDriverDetails(id);
			request.setAttribute("driverDetails", driverDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
	
		
		
		
		
	}

}
