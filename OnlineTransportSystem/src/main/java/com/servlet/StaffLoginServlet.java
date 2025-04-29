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

import com.model.InquiryModel;
import com.service.InquiryControl;
import com.service.PassengerDbUtil;


@WebServlet("/StaffLoginServlet")
public class StaffLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String username =request.getParameter("username");
		String password = request.getParameter("password");
		try {
			
			if(username.equals("admin") && password.equals("admin")) {

				String count = PassengerDbUtil.passengerCount();
				request.setAttribute("count", count);
	
				RequestDispatcher dis = request.getRequestDispatcher("adminUI.jsp");
				dis.forward(request, response);
			}
			if(username.equals("csr") && password.equals("csr")) {
				
				try {
					List <InquiryModel> allInquiries = InquiryControl.getAllInquiry();
					request.setAttribute("allInquiries", allInquiries);
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("CsrUI.jsp");
					dispatcher.forward(request, response);

				}catch(Exception e) {
					e.printStackTrace();
				}
				
			}
			else {
				out.println("<script type='text/javaScript'>");
				out.println("alert('Your Username or Password is incorrect');");
				out.println("location = 'staffLogin.jsp'");
				out.println("</script>");
			}

		}catch(Exception e){
			e.printStackTrace();
	}

}}
