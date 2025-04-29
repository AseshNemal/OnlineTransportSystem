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

@WebServlet("/UpdateRideFeeServlet")
public class UpdateRideFeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			String rid = request.getParameter("rid");
			String totDistance = request.getParameter("totDistance");
			
			String fee = RideDBUtil.updateRideFee(rid, totDistance);
			int convertedrfee = Integer.parseInt(fee);
			if(convertedrfee  > 0) {
				out.println("<script type='text/javaScript'>");
				out.println("alert('Ride Fee is" + fee + "');");
				out.println("location = 'Homepage.jsp'");
				out.println("</script>");
			}
			
			
			else{
				response.getWriter().println("<script type=\"text/javascript\">");
	            response.getWriter().println("alert('Fee update failed! Please try again.');");
	            response.getWriter().println("window.history.back();");
	            response.getWriter().println("</script>");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
