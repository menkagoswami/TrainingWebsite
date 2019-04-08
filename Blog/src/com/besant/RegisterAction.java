package com.besant;

import java.io.IOException;


import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import javax.servlet.RequestDispatcher;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RegisterAction extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

		String name = req.getParameter("name");
		String pass = req.getParameter("pass");
		String emailto = req.getParameter("email");
		String phn = req.getParameter("phnno");
		String status = req.getParameter("status");
		String emailfrom = "nehawami27@gmail.com";
		HttpSession session=req.getSession();
		int userid=0;
	
		//System.out.println(userid+"hiiii");
		
		
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();

		String hash = UUID.randomUUID().toString();
		System.out.println(hash);

		String result1 = null;
	/*	DBconnect db1 = new DBconnect();
		try {
			result1 = db1.entryHash(hash);
		} catch (SQLException e1) {

			e1.printStackTrace();
		}
		if(result1=="success") {
			System.out.println("hiiii");
		}
		else {
			System.out.println("byee");
		}*/
		List<Object> result = null;
		DBconnect db = new DBconnect();
		try {
			result = (List<Object>) db.regAuth(name, pass, emailto, phn, status);
		} catch (Exception e) {
			e.printStackTrace();
		}

		if(result.get(1).equals("success")){
			System.out.println(result);
			session.setAttribute("userid",result.get(1).toString());
		//	System.out.println(userid);
			out.print("You have been registered successfully,an email will be sent to you shortly");
			RequestDispatcher rd = req.getRequestDispatcher("successreg.jsp");
			try {
				rd.include(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}

			String resultmail = null;
			SendMail sm = new SendMail();
			resultmail = sm.sendregister(emailto, emailfrom, hash);

		} else {
			RequestDispatcher rd = req.getRequestDispatcher("errorreg.jsp");
			try {
				rd.include(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

	}
}
