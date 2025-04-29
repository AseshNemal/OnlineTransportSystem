package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.InquiryModel;
import com.service.InquiryControl;

@WebServlet("/UpdateCSRServlet")
public class UpdateCSRServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String inquiryId = request.getParameter("inquiryId");
		String reply = request.getParameter("Reply");
		
		boolean isTrue;
		
		isTrue = InquiryControl.updateAllInq(inquiryId, reply);
		if(isTrue==true) {
			List<InquiryModel> allInquiries = InquiryControl.getAllInquiry();
			request.setAttribute("allInquiries", allInquiries);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("CsrUI.jsp");
			dispatcher.forward(request, response);

		}else {
			System.out.println("Error");
		}
	}

}
