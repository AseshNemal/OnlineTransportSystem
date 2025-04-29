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

@WebServlet("/DeletePassengerServlet")
public class DeletePassengerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pid = request.getParameter("pid");
		
		boolean isTrue;
		
		isTrue = PassengerDbUtil.deletePassenger(pid);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("passengerRegister.jsp");
			dispatcher.forward(request, response);
		}
		
		else {
			List<Passenger> passengerDetails = PassengerDbUtil.getPassengerDetails(pid);
			request.setAttribute("passengerDetails", passengerDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("passengerUseraccount.jsp");
			dispatcher.forward(request, response);
		}
	
		
	}

}
