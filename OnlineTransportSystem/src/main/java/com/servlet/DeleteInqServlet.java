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

@WebServlet("/DeleteInqServlet")
public class DeleteInqServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String inquiryId = request.getParameter("inqID");
		String pid = request.getParameter("pid");
		
		boolean istrue;
		istrue = InquiryControl.deleteData(inquiryId);
		
		if(istrue == true) {
			List<InquiryModel> inq = InquiryControl.getById(pid);
			request.setAttribute("inq", inq);
			
			RequestDispatcher dis = request.getRequestDispatcher("yourInquiries.jsp");
			dis.forward(request, response);
		}else {
			System.out.println("Error");
		}
	}

}
