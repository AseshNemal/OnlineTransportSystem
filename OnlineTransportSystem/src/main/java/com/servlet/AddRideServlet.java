package com.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.RideDBUtil;


@WebServlet("/AddRideServlet")
public class AddRideServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			LocalDate ldate = LocalDate.now();
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			
			LocalTime tdate = LocalTime.now();
	        DateTimeFormatter formattertime = DateTimeFormatter.ofPattern("HH:mm:ss");
			
			String date =  ldate.format(formatter);
			String time = tdate.format(formattertime);
			String cLocation = request.getParameter("cLocation");
			String dLocation = request.getParameter("dLocation");
			String feedback = request.getParameter("feedback");
			String passengerID = request.getParameter("passengerID");
			
			
			
			
			boolean isTrue ;
			
			try {
			
				isTrue = RideDBUtil.addRide(date, time, cLocation, dLocation, feedback, passengerID);
			}catch(Exception e) {
				e.printStackTrace();
			    isTrue = false;	
			}
			
			if(isTrue == true) {
				response.getWriter().println("<script type=\"text/javascript\">");
                response.getWriter().println("alert('Ride added successfully!');");
                response.getWriter().println("window.history.back();");
                response.getWriter().println("</script>");
			}
			
			
			else{
				response.getWriter().println("<script type=\"text/javascript\">");
                response.getWriter().println("alert('Ride addition failed! Please try again.');");
                response.getWriter().println("window.history.back();");
                response.getWriter().println("</script>");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
