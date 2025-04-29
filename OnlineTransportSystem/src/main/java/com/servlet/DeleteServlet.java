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

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tripID = request.getParameter("tripID");
		String pid = request.getParameter("pid");
		System.out.println(tripID);
		System.out.println(pid);
		try {
			boolean istrue = false;
			istrue = TripDBUtil.deleteTrip(tripID);
			
			if(istrue == true) {
				System.out.println("Data Deleted Successfully");
				List<TripModel> trip = TripDBUtil.getTripByID(pid);
				request.setAttribute("trip", trip);
				
				RequestDispatcher dis = request.getRequestDispatcher("viewMyTrips.jsp");
				dis.forward(request, response);
			}else {
				System.out.println("Data not deleted");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
