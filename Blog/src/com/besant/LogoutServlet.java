package com.besant;

import java.io.IOException;
import java.io.PrintWriter;

//import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException{
		PrintWriter out=res.getWriter();
		try {
			req.getRequestDispatcher("login.jsp").include(req, res);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession session=req.getSession();
		session.invalidate();
		out.print("you have been successfully logged out");
		out.close();
		
	}

	
	
}
