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


@WebServlet("/InqGetAllServlet")
public class InqGetAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try {
			List <InquiryModel> allInquiries = InquiryControl.getAllInquiry();
			request.setAttribute("allInquiries", allInquiries);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("CsrUI.jsp");
			dispatcher.forward(request, response);

		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
  