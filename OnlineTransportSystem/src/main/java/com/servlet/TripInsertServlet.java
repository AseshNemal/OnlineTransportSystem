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


@WebServlet("/TripInsertServlet")
public class TripInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String bookingDate = String.valueOf(format.format(date));
		String pid = request.getParameter("pid");
		String vehicleType = request.getParameter("vehicleType");
		String pickupLoc = request.getParameter("pickupLoc");
		String dropoffLoc = request.getParameter("dropoffLoc");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String notes = request.getParameter("notes");
		String price = request.getParameter("price");
		String status = request.getParameter("status");
		
		try {
			boolean istrue;
			
			istrue = TripDBUtil.insertTrip(0, pid, bookingDate, vehicleType, pickupLoc, dropoffLoc, startDate, endDate, notes, price, status);
			
			if (istrue == true) {
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
