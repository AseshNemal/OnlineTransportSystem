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

@WebServlet("/TakeActionServlet")
public class TakeActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			List<TripModel> trip = TripDBUtil.getAllTrips();
			request.setAttribute("trip", trip);
			
			RequestDispatcher dis = request.getRequestDispatcher("allTripsAdmin.jsp");
			dis.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
