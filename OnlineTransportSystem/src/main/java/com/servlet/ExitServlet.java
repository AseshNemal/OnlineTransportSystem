package com.servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Passenger;
import com.service.TripDBUtil;

@WebServlet("/ExitServlet")
public class ExitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("pid");
		
		try {
			List<Passenger> passengerDetails = TripDBUtil.exit(pid);
			request.setAttribute("passengerDetails", passengerDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("passengerUseraccount.jsp");
			dis.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
