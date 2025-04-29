package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.DriverDBUtil;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		try {
		    isTrue = DriverDBUtil.register(name, email, username, password);
		} catch (Exception e) {
		    e.printStackTrace();
		    isTrue = false;
		}

		if(isTrue == true) {
			response.getWriter().println("<script type=\"text/javascript\">");
            response.getWriter().println("alert('Registration successfully');");
            response.getWriter().println("location = 'login.jsp;");
            response.getWriter().println("</script>");
		}
		
		
		else{
			response.getWriter().println("<script type=\"text/javascript\">");
            response.getWriter().println("alert('Registration failed! Please try again.');");
            response.getWriter().println("window.history.back();");
            response.getWriter().println("</script>");
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
