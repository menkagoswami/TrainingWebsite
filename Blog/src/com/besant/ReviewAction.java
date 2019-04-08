package com.besant;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ReviewAction extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		
		String commentreview = req.getParameter("commentreview");
		String email=req.getParameter("email");
		String name=req.getParameter("name");
		System.out.println(email);
		long phnno=Long.parseLong(req.getParameter("phnno"));
		
		
		String result=null;
		DBconnectReview db=new DBconnectReview();
		try {
			result=db.reviewSubmit(name,email,commentreview,phnno);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		if(result.equalsIgnoreCase("success")) {
			res.sendRedirect("review.jsp");
		}
		else
		 {
			 res.sendRedirect("reviewfeedback.jsp");
		 }
	}

}
