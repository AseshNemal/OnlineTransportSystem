package com.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.TripModel;
import com.service.TripDBUtil;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String bookingDate = String.valueOf(format.format(date));
		String tripID = request.getParameter("tripID");
		String pid = request.getParameter("pid");
		String vehicleType = request.getParameter("vehicleType");
		String pickupLoc = request.getParameter("pickupLoc");
		String dropoffLoc = request.getParameter("dropoffLoc");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String notes = request.getParameter("notes");
		String price = null;
		String status = request.getParameter("status");
		try {
			boolean istrue;
			
			istrue = TripDBUtil.updateTrip(tripID, pid, bookingDate, vehicleType, pickupLoc, dropoffLoc, startDate, endDate, notes, price, status);
			
			if (istrue == true) {
				System.out.println("Updated");
				List<TripModel> trip = TripDBUtil.getTripByID(pid);
				request.setAttribute("trip", trip);
				
				RequestDispatcher dis = request.getRequestDispatcher("viewMyTrips.jsp");
				dis.forward(request, response);
			}else {
				response.getWriter().println("<script type=\"text/javascript\">");
	            response.getWriter().println("alert('Trip update failed! Please try again.');");
	            response.getWriter().println("window.history.back();");
	            response.getWriter().println("</script>");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
