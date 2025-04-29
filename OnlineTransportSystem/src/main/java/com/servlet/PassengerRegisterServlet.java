package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.service.PassengerDbUtil;


@WebServlet("/PassengerRegisterServlet")
public class PassengerRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PassengerRegisterServlet() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			PrintWriter out = response.getWriter();
			
			String name = request.getParameter("fullname");
			String email = request.getParameter("email");
			String phoneNumber = request.getParameter("phonenumber");
			String district = request.getParameter("district");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			boolean isTrue;
			
			try {
			    isTrue = PassengerDbUtil.pregister(name, email, phoneNumber, district, username, password);
			} catch (Exception e) {
			    e.printStackTrace();
			    isTrue = false;
			}

			if(isTrue == true) {
				out.println("<script type='text/javaScript'>");
				out.println("alert('Registration Successfull');");
				out.println("location = 'passengerLogin.jsp'");
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
