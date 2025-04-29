package com.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.InquiryModel;
import com.service.InquiryControl;


@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String inquiry= request.getParameter("inquiry");
		String pid = request.getParameter("pid");
		String CustomerName = request.getParameter("CustomerName");
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String Date = String.valueOf(format.format(date));
		String reply = request.getParameter("reply");
		
		boolean isTrue;
		isTrue = InquiryControl.insertdata(0, pid, inquiry, CustomerName, reply, Date);
		
		if(isTrue == true) {
			System.out.println("Inserted");
			List<InquiryModel> inq = InquiryControl.getById(pid);
			request.setAttribute("inq", inq);
			
			RequestDispatcher dis = request.getRequestDispatcher("yourInquiries.jsp");
			dis.forward(request, response);
			
			RequestDispatcher dis3 = request.getRequestDispatcher("Csr.jsp");
			dis3.forward(request, response);
			
//			String alertMessage = "Data insert successfull";
//			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='InqGetAllServlet'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request,response);
		}
	}

}
