package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.TripModel;
import com.service.TripDBUtil;

@WebServlet("/UpdateStatusServlet")
public class UpdateStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tripID = request.getParameter("tripID");
		String price = request.getParameter("price");
		String status = request.getParameter("status");
		try {
			boolean istrue;
			
			istrue = TripDBUtil.updateStatus(tripID, price, status);
			if (istrue == true) {
				List<TripModel> trip = TripDBUtil.getAllTrips();
				request.setAttribute("trip", trip);
				
				RequestDispatcher dis = request.getRequestDispatcher("allTripsAdmin.jsp");
				dis.forward(request, response);
			}else {
				System.out.println("error");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
