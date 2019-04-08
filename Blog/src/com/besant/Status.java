package com.besant;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Status extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		System.out.println(email);
		 response.setContentType("text/html");  
		PrintWriter out = response.getWriter();

		String result = null;
		DBconnect db = new DBconnect();
		try {
			result = db.status(email);
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (result.equalsIgnoreCase("success")) {
			out.print("successfully paid, orders are");
			RequestDispatcher rd = request.getRequestDispatcher("orders.jsp");
			
				rd.include(request, response);

		}

		else {
			out.println("Payment not successful,try again");
			RequestDispatcher rd = request.getRequestDispatcher("payment.jsp");
			rd.include(request, response);
	
		}

		out.close();
	}

}
