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
import com.service.DriverDBUtil;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		int id;
		
		String username =request.getParameter("userName");
		String password = request.getParameter("pass");
		try {
			id = DriverDBUtil.validate(username,password);
			String convrtID = Integer.toString(id);
			
			if(id > 0) {
				List<Driver> driverDetails =  DriverDBUtil.getDriverDetails(convrtID);
	
				request.setAttribute("driverDetails", driverDetails);
	
				RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
				dis.forward(request, response);
			}
			
			else {
				out.println("<script type='text/javaScript'>");
				out.println("alert('Your Username or Password is incorrect');");
				out.println("location = 'login.jsp'");
				out.println("</script>");
			}

		}catch(Exception e){
			e.printStackTrace();

		}
	}

}
