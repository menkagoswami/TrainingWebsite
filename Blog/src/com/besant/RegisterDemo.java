package com.besant;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterDemo extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String emailto = request.getParameter("emailto");
		String course = request.getParameter("course");
		String tutor = request.getParameter("tutor");
		String emailfrom = request.getParameter("emailfrom");
		System.out.println(name);
		System.out.println(emailto);
		System.out.println(course);
		System.out.println(tutor);
		System.out.println(emailfrom);

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String result = null;
		DBconnect db = new DBconnect();
		try {
			result = db.registerdemo(name, emailto, course, tutor);
		} catch (SQLException e1) {
			
			e1.printStackTrace();
		}
		if (result == "success") {
			out.print("You have been registered successfully for demo class,an email will be sent to you shortly");
			RequestDispatcher rd=request.getRequestDispatcher("registerdemo.jsp");
			try {
				rd.include(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else {
			out.print(" Error! Please register again ");
			RequestDispatcher rd=request.getRequestDispatcher("registerdemo.jsp");
			try {
				rd.include(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		String resultmail=null;
		SendMail sm =new SendMail();
	     resultmail=sm.senddemo(emailto,emailfrom);
	}
}
