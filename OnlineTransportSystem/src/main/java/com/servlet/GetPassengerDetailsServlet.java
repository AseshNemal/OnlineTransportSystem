package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Driver;
import com.model.Passenger;
import com.service.DriverDBUtil;
import com.service.PassengerDbUtil;


@WebServlet("/GetPassengerDetailsServlet")
public class GetPassengerDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String pid =request.getParameter("pid");
		
		try {
			
			
				List<Passenger> passengerDetails =  PassengerDbUtil.getPassengerDetails(pid);
	
				request.setAttribute("passengerDetails", passengerDetails);
	
				Passenger passenger = passengerDetails.get(0); // Assuming there is at least one passenger
				String name = passenger.getName();
				String phoneNumber = passenger.getPhoneNumber();

			
				out.println("<script type='text/javaScript'>");
				out.println("alert('Passenger Name - " + name + "\\nPassenger phone number - " + phoneNumber + " ');");
				out.println("window.history.back();");
				out.println("</script>");
			

		}catch(Exception e){
			e.printStackTrace();

		}
	
	}

}
