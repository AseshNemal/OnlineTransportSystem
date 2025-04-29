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


@WebServlet("/UpdateInServlet")
public class UpdateInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String inquiryId= request.getParameter("inquiryId");
		String inquiry= request.getParameter("inquiry");
		String pid = request.getParameter("pid");
		String CustomerName = request.getParameter("CustomerName");
		String Reply = request.getParameter("Reply");
		String Date = request.getParameter("Date");
		
		boolean isTrue;
		isTrue = InquiryControl.updateData(inquiryId, pid, inquiry, CustomerName, Reply,Date);
		
		if(isTrue == true) {
			System.out.println("Updated");
			List<InquiryModel> inq = InquiryControl.getById(pid);
			request.setAttribute("inq", inq);
			
			RequestDispatcher dis = request.getRequestDispatcher("yourInquiries.jsp");
			dis.forward(request, response);
//			String alertMessage = "Data updated successfully";
//			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='InqGetAllServlet'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request,response);
		}
	}

}
