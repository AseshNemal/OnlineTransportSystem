package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Passenger;
import com.service.PassengerDbUtil;


@WebServlet("/UpdatePassengerServlat")
public class UpdatePassengerServlat extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {	
			String pid = request.getParameter("pid");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phoneNumber = request.getParameter("phoneNumber");
			String district = request.getParameter("district");
			String username = request.getParameter("userName");
			String password = request.getParameter("password");
			
			boolean isTrue;
			
			isTrue = PassengerDbUtil.updatePassenger(pid, name, email, phoneNumber, district, username, password);
			
			if(isTrue == true) {
				
				List<Passenger> passengerDetails = PassengerDbUtil.getPassengerDetails(pid);
				request.setAttribute("passengerDetails", passengerDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("passengerUseraccount.jsp");
				dis.forward(request, response);
			}
			else {
				RequestDispatcher dis =request.getRequestDispatcher("unSuccess.jsp");
				dis.forward(request, response);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	
	}

}
