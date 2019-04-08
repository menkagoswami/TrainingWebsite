package com.besant;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Confirmregister extends HttpServlet{
	public void service(HttpServletRequest request,HttpServletResponse response) throws  IOException {
		String hash =request.getParameter("key1");
		System.out.println(hash);
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String result=null;
		
		DBconnect db = new DBconnect();
		try {
			result=db.userActive(hash);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		if (result=="success") {
			RequestDispatcher rd= request.getRequestDispatcher("login.jsp");
			try {
				rd.include(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	else {
		out.print("Error ! Register again");
		RequestDispatcher rd= request.getRequestDispatcher("register.jsp");
		try {
			rd.include(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
}