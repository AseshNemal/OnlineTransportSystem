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


@WebServlet("/UpdateDriverServlet")
public class UpdateDriverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateDriverServlet() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("uid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String username = request.getParameter("userName");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = DriverDBUtil.updateDriver(id, name, email, username, password);
		
		if(isTrue == true) {
			
			List<Driver> driverDetails = DriverDBUtil.getDriverDetails(id);
			request.setAttribute("driverDetails", driverDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<Driver> driverDetails = DriverDBUtil.getDriverDetails(id);
			request.setAttribute("driverDetails", driverDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		
		
		
	}

}
