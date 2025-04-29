package com.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.RideDBUtil;

/**
 * Servlet implementation class AcceptRideServlet
 */
@WebServlet("/AcceptRideServlet")
public class AcceptRideServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String rid = request.getParameter("rid");
			String id = request.getParameter("id");
			
			boolean isTrue;
			
			isTrue = RideDBUtil.acceptRide(rid, id);
			
			if(isTrue == true) {
				request.setAttribute("rid", rid);
				RequestDispatcher dis =request.getRequestDispatcher("feeCalculator.jsp");
				dis.forward(request, response);
			}
			
			
			else{
				RequestDispatcher dis =request.getRequestDispatcher("unSuccess.jsp");
				dis.forward(request, response);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
