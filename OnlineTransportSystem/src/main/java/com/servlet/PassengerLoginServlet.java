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

import com.model.Passenger;
import com.service.PassengerDbUtil;

@WebServlet("/PassengerLoginServlet")
public class PassengerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		int pid;
		
		String username =request.getParameter("username");
		String password = request.getParameter("password");
		try {
			pid = PassengerDbUtil.pvalidate(username, password);
			String convrtID = Integer.toString(pid);
			
			if(pid > 0) {
				List<Passenger> passengerDetails =  PassengerDbUtil.getPassengerDetails(convrtID);
	
				request.setAttribute("passengerDetails", passengerDetails);
	
				RequestDispatcher dis = request.getRequestDispatcher("passengerUseraccount.jsp");
				dis.forward(request, response);
			}
			
			else {
				out.println("<script type='text/javaScript'>");
				out.println("alert('Your Username or Password is incorrect');");
				out.println("location = 'passengerLogin.jsp'");
				out.println("</script>");
			}

		}catch(Exception e){
			e.printStackTrace();

		}
	
	}

}
