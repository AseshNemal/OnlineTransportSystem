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


@WebServlet("/getPassengerRides")
public class getPassengerRides extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String id =request.getParameter("pid");
			int cnvtid = Integer.parseInt(id);
			
			PriorityQueue<Ride> rides = new PriorityQueue<>();
			  List<Ride> rideList = RideDBUtil.getALLRideList();  
			    
		    for (Ride r : rideList) {
		    		int pid = r.getPassengerID();
		    		if(cnvtid == pid) {
		    				rides.add(r);
		    		}
			    }
			    request.setAttribute("rides", rides);
				
				RequestDispatcher dis = request.getRequestDispatcher("passengerRideList.jsp");
				dis.forward(request, response);
			
					
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
