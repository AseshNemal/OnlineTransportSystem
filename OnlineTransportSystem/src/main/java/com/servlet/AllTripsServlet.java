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

@WebServlet("/AllTripsServlet")
public class AllTripsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("pid");
		
		try {
			if (pid != null) {
				List <TripModel> trip = TripDBUtil.getTripByID(pid);
				request.setAttribute("trip", trip);
				
				RequestDispatcher dis = request.getRequestDispatcher("viewMyTrips.jsp");
				dis.forward(request, response);
			}else {
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
}
