package com.servlet;

import java.io.IOException;
import java.util.List;
import java.util.PriorityQueue;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Ride;
import com.service.RideDBUtil;

/**
 * Servlet implementation class PassengerRidesServlet
 */
@WebServlet("/PassengerRidesServlet")
public class PassengerRidesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rid = request.getParameter("rid");
		
		try {
			 PriorityQueue<Ride> rides = new PriorityQueue<>();
			  List<Ride> rideList = RideDBUtil.getRideList(rid);  // Corrected variable name to rideList
			    
		    for (Ride r : rideList) {  // Explicitly declaring 'Ride r' in the loop
		        rides.add(r);
			    }
			    request.setAttribute("rides", rides);
				
				RequestDispatcher dis = request.getRequestDispatcher("Driver.jsp");
				dis.forward(request, response);
		    
			} catch (Exception e) {
			    e.printStackTrace();
			}

		
		
	}

}
