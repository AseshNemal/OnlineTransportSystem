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


@WebServlet("/GetRideListServlet")
public class GetRideListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	try {
		 String did = request.getParameter("did");
		 PriorityQueue<Ride> rides = new PriorityQueue<>();
		  List<Ride> rideList = RideDBUtil.getALLRideList();  
		    
	    for (Ride r : rideList) {  
	        	rides.add(r);
		    }
		    request.setAttribute("rides", rides);
		    request.setAttribute("did", did);
			
			RequestDispatcher dis = request.getRequestDispatcher("rideList.jsp");
			dis.forward(request, response);
	    
		} catch (Exception e) {
		    e.printStackTrace();
		}

	}
}
