package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.RideDBUtil;

/**
 * Servlet implementation class DeleteRideServlet
 */
@WebServlet("/DeleteRideServlet")
public class DeleteRideServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			PrintWriter out = response.getWriter();
			String rid = request.getParameter("rid");
			
			boolean isTrue = false;
			isTrue = RideDBUtil.deleteRide(rid);
			
			
			if(isTrue == true) {
				out.println("<script type='text/javaScript'>");
				out.println("alert('Deleted Successfully');");
				out.println("location = 'Homepage.jsp'");
				out.println("</script>");
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
